module Evaluator where
import Parser
import Data.List (nub)

type Environment = [(String, Exp)]
type Kontinuation = [Frame]

data Frame = HWhile Exp [Exp]
           | HIf [Exp] [(Exp, [Exp])]
           | PrintH
           | FnCallH Environment [Exp] | HFnCall String [Exp]
           | FnReturnH [Exp] Environment Kontinuation
           | HasNextH
           | NextH
           | SizeH
           | HAnd Exp          | AndH Exp
           | HOr Exp           | OrH Exp
           | HLessEqual Exp    | LessEqualH Exp
           | HGreaterEqual Exp | GreaterEqualH Exp
           | HLessThan Exp     | LessThanH Exp
           | HGreaterThan Exp  | GreaterThanH Exp 
           | HEqual Exp        | EqualH Exp
           | HNotEqual Exp     | NotEqualH Exp
           | HCons Exp         | ConsH Exp
           | HConcat Exp       | ConcatH Exp
           | HTake Exp         | TakeH Exp
           | HPlus Exp         | PlusH Exp
           | HMinus Exp        | MinusH Exp
           | HTimes Exp        | TimesH Exp
           | HDiv Exp          | DivH Exp
           | HStreamGet Exp    | StreamGetH Exp
           | InputGetH
           | NotH
           | HExponent Exp     | ExponentH Exp
           | HModulo Exp       | ModuloH Exp
           | NegateH
           | VarDecH String
           | VarAssignH String
           deriving (Show)


type Output = [Int]

type State = ([Exp], Environment, Kontinuation, Output)

-- Retrieve the value that is bound to the given variable identifier.
getBinding :: String -> Environment -> Exp
getBinding x [] = error ("Unrecognised variable " ++ x)
getBinding x ((y, exp) : env) | x == y    = exp
                               | otherwise = getBinding x env

-- Updates an existing environment in the passed environment
updateBinding :: Environment -> String -> Exp -> Environment
updateBinding env x exp = filter ((/= x) . fst) env ++ [(x, exp)] 

-- Checks for terminated expressions.
isValue :: Exp -> Bool
isValue (Int' _) = True
isValue (Boolean' _) = True
isValue (Stream []) = True
isValue (Stream (e : es)) = (isValue e) && (isValue (Stream es))
isValue _ = False

getFunctionEnvironment :: String -> [Exp] -> Environment -> (Environment, [Exp])
getFunctionEnvironment x args env = (env' ++ (filter (\(x, e) -> not (x `elem` (map snd params))) env), es)
      where (FnDec y params t es) = getBinding x env
            env'                  = zip (map snd params) (args)

setupEnvironment :: [Exp] -> Int -> [(String, Exp)]
setupEnvironment [] _ = []
setupEnvironment (e : es) i = ("input{" ++ (show i) ++ "}", e) : setupEnvironment es (i + 1) 

getFunctionFrame :: Kontinuation -> Maybe (Frame, Kontinuation)
getFunctionFrame [] = Nothing
getFunctionFrame (e@(FnCallH env es) : ks) = Just (e, ks)
getFunctionFrame (k:ks) = getFunctionFrame ks

getExpFromEnvironment :: Exp -> Environment -> Exp
getExpFromEnvironment (VarRef x) env = getBinding x env
getExpFromEnvironment e env = e


-- Small step evaluation function.
evalStep :: State -> State

-- While statement
evalStep ((While e es) : es', env, k, out) = (e : es', env, (HWhile e es) : k, out)
evalStep ((Boolean' b) : es, env, (HWhile e es') : k, out) | b         = (es' ++ [While e es'] ++ es, env, k, out)
                                                           | otherwise = (es, env, k, out)                                                       

-- If/Elif/Else statement
evalStep ((If ((e, es) : elifs)) : es', env, k, out) = (e : es', env, (HIf es elifs) : k, out)
evalStep ((Boolean' b) : es', env, (HIf es elifs) : k, out) | b          = (es ++ es', env, k, out)
                                                            | null elifs = (es', env, k, out)
                                                            | otherwise  = ((If elifs) : es', env, k, out)                                                       

-- Print statement
evalStep ((Print e) : es, env, k, out) = (e : es, env, (PrintH) : k, out)
evalStep ((Int' x) : es, env, (PrintH) : k, out) = (es, env, k, out ++ [x])

-- Function declaration statement
evalStep (e@(FnDec x params t es) : es', env, k, out) = (es', updateBinding env x e, k, out)

evalStep ((FnCall x args) : es, env, k, out) = (es', env', (FnCallH env es) : k, out)
      where (env', es') = getFunctionEnvironment x args env
evalStep ((FnReturn e) : es, env, k@(_:ks), out) = case getFunctionFrame k of
                                                Nothing -> error "AAAAA" --(e : es, env, ks, out)
                                                Just (FnCallH env' es', k') -> (e : es, env, (FnReturnH es' env' k') : k, out)

evalStep (e : es, env, (FnReturnH es' env' k') : k, out) | isValue e = (e : es', env', k', out)


-- Function return statement
--evalStep ((FnReturn x e) : es, env, k, out) = (e : es, env, (FnReturnH x) : k, out)
--evalStep ((FnEnd x) : es, env, (FnReturnH y env') : k, out) = ()
--evalStep (e : es, )

-- Has Next statement
evalStep ((HasNext e) : es, env, k, out) = (e : es, env, (HasNextH) : k, out)
evalStep ((Stream es) : es', env, (HasNextH) : k, out) = ((Boolean' (not(null es))) : es', env, k, out)

-- Next statement
evalStep ((Next e) : es, env, k, out) = (e : es, env, (NextH) : k, out)
evalStep ((Stream (e : es)) : es', env, (NextH) : k, out) = (e : es', env, k, out)
evalStep ((VarRef x) : es, env, (NextH) : k, out) = (e : es, updateBinding env x (Stream es'), k, out)
      where (Stream (e : es')) = getBinding x env

-- Size statement
evalStep ((Size e) : es, env, k, out) = (e : es, env, (SizeH) : k, out)
evalStep ((Stream es) : es', env, (SizeH) : k, out) = ((Int' (length es)) : es', env, k, out)

-- And statement
evalStep ((And e1 e2) : es, env, k, out) = (e1 : es, env, (HAnd e2) : k, out)
evalStep ((Boolean' b1) : es, env, (HAnd e2) : k, out) = (e2 : es, env, (AndH (Boolean' b1)) : k, out)
evalStep ((Boolean' b2) : es, env, (AndH (Boolean' b1)) : k, out) = ((Boolean' (b1 && b2)) : es, env, k, out)

-- Or statement
evalStep ((Or e1 e2) : es, env, k, out) = (e1 : es, env, (HOr e2) : k, out)
evalStep ((Boolean' b1) : es, env, (HOr e2) : k, out) = (e2 : es, env, (OrH (Boolean' b1)) : k, out)
evalStep ((Boolean' b2) : es, env, (OrH (Boolean' b1)) : k, out) = ((Boolean' (b1 || b2)) : es, env, k, out)

-- Less than or equal to statement
evalStep ((LE e1 e2) : es, env, k, out) = (e1 : es, env, (HLessEqual e2) : k, out)
evalStep ((Int' x) : es, env, (HLessEqual e2) : k, out) = (e2 : es, env, (LessEqualH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (LessEqualH (Int' x)) : k, out) = ((Boolean' (x <= y)) : es, env, k, out)

-- Greater than or equal to statement
evalStep ((GE e1 e2) : es, env, k, out) = (e1 : es, env, (HGreaterEqual e2) : k, out)
evalStep ((Int' x) : es, env, (HGreaterEqual e2) : k, out) = (e2 : es, env, (GreaterEqualH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (GreaterEqualH (Int' x)) : k, out) = ((Boolean' (x >= y)) : es, env, k, out)

-- Less than statement
evalStep ((LT' e1 e2) : es, env, k, out) = (e1 : es, env, (HLessThan e2) : k, out)
evalStep ((Int' x) : es, env, (HLessThan e2) : k, out) = (e2 : es, env, (LessThanH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (LessThanH (Int' x)) : k, out) = ((Boolean' (x < y)) : es, env, k, out)

-- Greater than statement
evalStep ((GT' e1 e2) : es, env, k, out) = (e1 : es, env, (HGreaterThan e2) : k, out)
evalStep ((Int' x) : es, env, (HGreaterThan e2) : k, out) = (e2 : es, env, (GreaterThanH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (GreaterThanH (Int' x)) : k, out) = ((Boolean' (x > y)) : es, env, k, out)                                      

-- Equals statement
evalStep ((EQ' e1 e2) : es, env, k, out) = (e1 : es, env, (HEqual e2) : k, out)
evalStep (e1 : es, env, (HEqual e2) : k, out) | isValue e1 = (e2 : es, env, (EqualH e1) : k, out)
evalStep (e2 : es, env, (EqualH e1) : k, out) | isValue e2 = ((Boolean' (e1 == e2)) : es, env, k, out)

-- Not equals statement
evalStep ((NE e1 e2) : es, env, k, out) = (e1 : es, env, (HNotEqual e2) : k, out)
evalStep (e1 : es, env, (HNotEqual e2) : k, out) | isValue e1 = (e2 : es, env, (NotEqualH e1) : k, out)
evalStep (e2 : es, env, (NotEqualH e1) : k, out) | isValue e2 = ((Boolean' (e1 /= e2)) : es, env, k, out)

-- Cons statement
evalStep ((Cons e1 e2) : es, env, k, out) = (e1 : es, env, (HCons e2) : k, out)
evalStep ((Int' x) : es, env, (HCons e2) : k, out) = (e2 : es, env, (ConsH (Int' x)) : k, out)
evalStep ((Stream e2) : es, env, (ConsH e1) : k, out) = ((Stream (e1 : e2)) : es, env, k, out)  

-- Concat statement
evalStep ((Concat e1 e2) : es, env, k, out) = (e1 : es, env, (HConcat e2) : k, out)
evalStep ((Stream e1) : es, env, (HConcat e2) : k, out) = (e2 : es, env, (ConcatH (Stream e1)) : k, out)
evalStep ((Stream e2) : es, env, (ConcatH (Stream e1)) : k, out) = ((Stream (e1 ++ e2)) : es, env, k, out)  

-- Take statement
evalStep ((Take e1 e2) : es, env, k, out) = (e1 : es, env, (HTake e2) : k, out)
evalStep ((Int' x) : es, env, (HTake e2) : k, out) = (e2 : es, env, (TakeH (Int' x)) : k, out)
evalStep ((Stream e2) : es, env, (TakeH (Int' x)) : k, out) = ((Stream (take x e2)) : es, env, k, out)
evalStep ((VarRef y) : es, env, (TakeH (Int' x)) : k, out) = ((Stream (take x e2)) : es, updateBinding env y (Stream (drop x e2)), k, out)
      where (Stream e2) = getBinding y env 

-- Add/Plus statement
evalStep ((Plus e1 e2) : es, env, k, out) = (e1 : es, env, (HPlus e2) : k, out)
evalStep ((Int' x) : es, env, (HPlus e2) : k, out) = (e2 : es, env, (PlusH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (PlusH (Int' x)) : k, out) = ((Int' (x + y)) : es, env, k, out)

-- Subtract/Minus statement
evalStep ((Minus e1 e2) : es, env, k, out) = (e1 : es, env, (HMinus e2) : k, out)
evalStep ((Int' x) : es, env, (HMinus e2) : k, out) = (e2 : es, env, (MinusH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (MinusH (Int' x)) : k, out) = ((Int' (x - y)) : es, env, k, out)

-- Multiply/Times statement
evalStep ((Times e1 e2) : es, env, k, out) = (e1 : es, env, (HTimes e2) : k, out)
evalStep ((Int' x) : es, env, (HTimes e2) : k, out) = (e2 : es, env, (TimesH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (TimesH (Int' x)) : k, out) = ((Int' (x * y)) : es, env, k, out)

-- Divide statement
evalStep ((Div e1 e2) : es, env, k, out) = (e1 : es, env, (HDiv e2) : k, out)
evalStep ((Int' x) : es, env, (HDiv e2) : k, out) = (e2 : es, env, (DivH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (DivH (Int' x)) : k, out) = ((Int' (x `div` y)) : es, env, k, out)

-- Stream get (by index) statement
evalStep ((StreamGet e1 e2) : es, env, k, out) = (e1 : es, env, (HStreamGet e2) : k, out)
evalStep ((Stream e1) : es, env, (HStreamGet e2) : k, out) = (e2 : es, env, (StreamGetH (Stream e1)) : k, out)
evalStep ((Int' x) : es, env, (StreamGetH (Stream e1)) : k, out) = ((e1 !! (x - 1)) : es, env, k, out)

-- Input get (by index) statement
evalStep ((InputGet e) : es, env, k, out) = (e : es, env, (InputGetH) : k, out)
evalStep ((Int' x) : es, env, (InputGetH) : k, out) = ((VarRef ("input{" ++ (show x) ++ "}")) : es, env, k, out)

-- Not statement
evalStep ((Not e) : es, env, k, out) = (e : es, env, (NotH) : k, out)
evalStep ((Boolean' b) : es, env, (NotH) : k, out) = ((Boolean' (not(b))) : es, env, k, out)

-- Exponent statement
evalStep ((Exponent e1 e2) : es, env, k, out) = (e1 : es, env, (HExponent e2) : k, out)
evalStep ((Int' x) : es, env, (HExponent e2) : k, out) = (e2 : es, env, (ExponentH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (ExponentH (Int' x)) : k, out) = ((Int' (x ^ y)) : es, env, k, out)

-- Modulo statement
evalStep ((Modulo e1 e2) : es, env, k, out) = (e1 : es, env, (HModulo e2) : k, out)
evalStep ((Int' x) : es, env, (HModulo e2) : k, out) = (e2 : es, env, (ModuloH (Int' x)) : k, out)
evalStep ((Int' y) : es, env, (ModuloH (Int' x)) : k, out) = ((Int' (x `mod` y)) : es, env, k, out)

-- Negate statement
evalStep ((Negate e) : es, env, k, out) = (e : es, env, (NegateH) : k, out)
evalStep ((Int' x) : es, env, (NegateH) : k, out) = ((Int' (negate x)) : es, env, k, out)

-- Variable declaration statement
evalStep ((VarDec t x e) : es, env, k, out) = (e : es, env, (VarDecH x) : k, out)
evalStep (e : es, env, (VarDecH x) : k, out) | isValue e = (e : es, updateBinding env x e, k, out)

-- Variable assignment statement
evalStep ((VarAssign x e) : es, env, k, out) = (e : es, env, (VarAssignH x) : k, out)
evalStep (e : es, env, (VarAssignH x) : k, out) | isValue e = (e : es, updateBinding env x e, k, out)

-- Variable reference statement
evalStep ((VarRef x) : es, env, k, out) = ((getBinding x env) : es, env, k, out)

-- Catch idempotent statements.
evalStep (e : es, env, [], out) | isValue e = (es, env, [], out)

-- Function to iterate the small step reduction to termination.
evaluate' :: [Exp] -> [Exp] -> Output
evaluate' [] _ = []
evaluate' es input = evalLoop (es, env, [], [])
  where evalLoop (es, env, k, out) = if (null es') && (null k') then out' else evalLoop (es', env', k', out')
                       where (es', env', k', out') = evalStep (es, env, k, out)
        env = setupEnvironment input 1

-- Evaluates the list of passed expressions.
evaluate :: [Exp] -> [Exp] -> Output
evaluate es input = evaluate' es input

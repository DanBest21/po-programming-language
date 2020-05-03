module Evaluator where
import Parser
import Data.List (nub)

type Kontinuation = [Frame]

data Frame = HWhile Exp [Exp] | WhileH Exp [Exp]
           | HIf [Exp] [(Exp, [Exp])]
           | PrintH
           | HFnCall [Exp] | FnCallH Exp [Exp] [Exp]
           | FnEnd [Exp] Environment
           | FnDecH String
           | FnReturnH [Exp] Environment Kontinuation
           | HasNextH
           | NextH
           | NextBreakH
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
           | VarDecBreakH String
           | VarAssignH String
           deriving (Show)

type Output = [Int]

type State = ([Exp], Environment, Kontinuation, Output)

-- Retrieve the value that is bound to the given variable identifier.
getBinding :: String -> Environment -> Exp
getBinding x [] = error $ "Unrecognised variable '" ++ x ++ "'."
getBinding x ((y, exp) : env) | x == y    = exp
                              | otherwise = getBinding x env

setBinding :: Environment -> String -> Exp -> Environment
setBinding env x exp | availableBinding = env ++ [(x, exp)]
                     | otherwise        = updateBinding env x exp
                where availableBinding  = not $ x `elem` (map fst env)

-- Updates an existing environment in the passed environment
updateBinding :: Environment -> String -> Exp -> Environment
updateBinding env x exp | existingBinding = filter ((/= x) . fst) env ++ [(x, exp)] 
                        | otherwise       = error $ "Unrecognised variable '" ++ x ++ "'."
            where existingBinding  = x `elem` (map fst env)

-- Checks for terminated expressions.
isValue :: Exp -> Bool
isValue (Int' _) = True
isValue (Boolean' _) = True
isValue (Stream []) = True
isValue (Stream (e : es)) = (isValue e) && (isValue (Stream es))
isValue (Closure _ _ _ _ _) = True
--isValue (Break) = True
isValue _ = False

mergeEnvironments :: Environment -> Environment -> Environment
mergeEnvironments env1 env2 = env1 ++ (filter (\(x, e) -> not $ x `elem` (map fst env1)) env2)

getFunctionEnvironment :: [Exp] -> Environment -> Exp -> (Environment, [Exp])
getFunctionEnvironment args genv closure = (foldr1 mergeEnvironments [argsEnv, capturedEnv, updatedGenv], es)
      where (Closure params _ es capturedEnv oldGenv) = closure
            argsEnv = zip (map snd params) (args)
            updatedGenv = map (\(x', e) -> (x', getBinding x' genv)) oldGenv

getFunctionFrame :: Kontinuation -> Maybe (Frame, Kontinuation)
getFunctionFrame [] = Nothing
getFunctionFrame (f@(FnEnd _ _) : k) = Just (f, k)
getFunctionFrame (f : k) = getFunctionFrame k

getBlockFrame :: Kontinuation -> Maybe (Frame, Kontinuation)
getBlockFrame [] = Nothing
getBlockFrame (f@(WhileH _ _) : k) = Just (f, k)
getBlockFrame (f : k) = getBlockFrame k

getGlobalEnvironment :: Environment -> Kontinuation -> Environment
getGlobalEnvironment env [] = env
getGlobalEnvironment env k = case getFunctionFrame k of
                                Nothing      -> env
                                Just (FnEnd _ env', k') -> getGlobalEnvironment env' k'

getContainingEnvironment :: Environment -> Kontinuation -> Environment
getContainingEnvironment env [] = env
getContainingEnvironment env k = case getFunctionFrame k of
                                Nothing      -> env
                                Just (FnEnd _ env', _) -> env'

getNonGlobalEnvironment :: Environment -> Kontinuation -> Environment
getNonGlobalEnvironment env [] = []
getNonGlobalEnvironment env k = case getFunctionFrame k of
                                Nothing      -> []
                                Just (FnEnd _ env', k') -> mergeEnvironments env (getNonGlobalEnvironment env' k')

getExpFromEnvironment :: Exp -> Environment -> Exp
getExpFromEnvironment (VarRef x) env = getBinding x env
getExpFromEnvironment e env = e

getClosure :: Exp -> Environment -> Environment -> Exp
getClosure (FnDec _ params t es) env genv = (Closure params t es env genv)
getClosure (FnAnonDec params t es) env genv = (Closure params t es env genv)

-- Small step evaluation function.
evalStep :: State -> State

-- While statement
evalStep ((While e es) : es', env, k, out) = (e : es', env, (HWhile e es) : k, out)
evalStep ((Boolean' b) : es', env, (HWhile e es) : k, out) | b         = (es, env, (WhileH (While e es) es') : k, out)
                                                           | otherwise = (es', env, k, out)                         

evalStep ([], env, (WhileH e es') : k, out) = (e : es', env, k, out)  

-- If/Elif/Else statement
evalStep ((If ((e, es) : elifs)) : es', env, k, out) = (e : es', env, (HIf es elifs) : k, out)
evalStep ((Boolean' b) : es', env, (HIf es elifs ) : k, out) | b          = (es ++ es', env, k, out)
                                                             | null elifs = (es', env, k, out)
                                                             | otherwise  = ((If elifs) : es', env, k, out)                                                       

-- Block statement
evalStep ((Block es) : es', env, k, out) = (es ++ es', env, k, out)

-- Print statement
evalStep ((Print e) : es, env, k, out) = (e : es, env, (PrintH) : k, out)
evalStep ((Int' x) : es, env, (PrintH) : k, out) = (es, env, k, out ++ [x])

-- Function statement
evalStep ((FnCall e args) : es, env, k, out) = (e : es, env, (HFnCall args) : k, out)
evalStep (e : es, env, (HFnCall args) : k, out) | isValue e = (args, env, (FnCallH e es []) : k, out)
evalStep (e : es, env, (FnCallH e' es' args) : k, out) | isValue e = (es, env, (FnCallH e' es' (args ++ [e])) : k, out)
evalStep ([], env, (FnCallH e es args) : k, out) = (es', env', (FnEnd es env) : k, out)
      where (env', es') = getFunctionEnvironment args (getGlobalEnvironment env k) e
evalStep ((FnReturn e) : es, env, k, out) = case getFunctionFrame k of
                                                Nothing -> error "Can only return inside a function."
                                                Just (FnEnd es' env', k') -> (e : es, env, (FnReturnH es' env' k') : k, out)

-- Function return statement
evalStep (e : es, env, (FnReturnH es' env' k') : k, out) | isValue e = (e : es', env', k', out)

-- Function declaration statement
evalStep (e@(FnDec x params t es) : es', env, k, out) = (closure : es', setBinding env x closure, k, out)
      where closure = getClosure e (getNonGlobalEnvironment env k) (getContainingEnvironment env k)

-- Anonymous function declaration statement
evalStep (e@(FnAnonDec params t es) : es', env, k, out) = (closure : es', env, k, out)
      where closure = getClosure e (getNonGlobalEnvironment env k) (getContainingEnvironment env k)
      
-- Function end statement if the function does not return a value.
evalStep ([], env, (FnEnd es' env') : k, out) = (es', env', k, out)

-- Has Next statement
evalStep ((HasNext e) : es, env, k, out) = (e : es, env, (HasNextH) : k, out)
evalStep ((Stream es) : es', env, (HasNextH) : k, out) = ((Boolean' (not(null es))) : es', env, k, out)

-- Next statement
evalStep ((Next e) : es, env, k, out) = (e : es, env, (NextH) : k, out)
evalStep ((Stream (e : es)) : es', env, (NextH) : k, out) = (e : es', env, k, out)
evalStep ((VarRef x) : es, env, (NextH) : k, out) | null es'  = error "Cannot call next on empty stream."
                                                  | otherwise = ((head es') : es, updateBinding env x (Stream (tail es')), k, out)
      where (Stream es') = getBinding x env

-- Process statement
evalStep ((VarDecBreak t x e@(NextBreak _)) : es, env, k, out) = (e : es, env, (VarDecBreakH x) : k, out)
evalStep (e : es, env, (VarDecBreakH x) : k, out) | isValue e = (es, setBinding env x e, k, out)

evalStep ((NextBreak e) : es, env, k, out) = (e : es, env, (NextBreakH) : k, out)
evalStep ((Stream (e : es)) : es', env, (NextBreakH) : k, out) = (e : es', env, k, out)
evalStep ((VarRef x) : es, env, (NextBreakH) : k, out) | null es'  = (Break : es, env, k, out)
                                                       | otherwise = ((head es') : es, updateBinding env x (Stream (tail es')), k, out)
      where (Stream es') = getBinding x env

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
evalStep ((Int' x) : es, env, (StreamGetH (Stream e1)) : k, out) | x < 1         = error $ "Invalid index of '" ++ (show x) ++ "' - must be at least 1."
                                                                 | length e1 < x = error $ "Index given '" ++ (show x) ++ "' exceeds stream length of '" ++ (show $ length e1) ++ "'."
                                                                 | otherwise     =  ((e1 !! (x - 1)) : es, env, k, out)

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
evalStep (e : es, env, (VarDecH x) : k, out) | isValue e = (e : es, setBinding env x e, k, out)

-- Variable assignment statement
evalStep ((VarAssign x e) : es, env, k, out) = (e : es, env, (VarAssignH x) : k, out)
evalStep (e : es, env, (VarAssignH x) : k, out) | isValue e = (e : es, updateBinding env x e, k, out)

-- Variable reference statement
evalStep ((VarRef x) : es, env, k, out) = ((getBinding x env) : es, env, k, out)

-- Break statement
evalStep ((Break) : es, env, k, out) = case getBlockFrame k of
                                          Nothing -> error "Can only break inside a while loop."
                                          Just (WhileH _ es', k') -> (es', env, k', out)

-- Catch idempotent statements.
evalStep (e : es, env, (FnEnd es' env') : k, out) | isValue e = (es, env, (FnEnd es' env') : k, out)
evalStep (e : es, env, (WhileH e' es') : k, out) | isValue e = (es, env, (WhileH e' es') : k, out)
evalStep (e : es, env, [], out) | isValue e = (es, env, [], out)

evalStep ((Import _) : es, env, k, out) = error "Import statements can only exist at the beginning of a file."

evalStep (es, env, k, out) = error $ "es: " ++ (show es) ++ "\nenv: " ++ (show env) ++ "\nk: " ++ (show k) ++ "\nout: " ++ (show out)

setupEnvironment :: [Exp] -> Int -> [(String, Exp)]
setupEnvironment [] _ = []
setupEnvironment (e : es) i = ("input{" ++ (show i) ++ "}", e) : setupEnvironment es (i + 1) 

-- Function to iterate the small step reduction to termination, returning the final environment
load :: [Exp] -> [Exp] -> Environment -> (Environment, Output)
load [] _ _ = ([], [])
load es input startingEnv = evalLoop (es, env, [], [])
  where evalLoop (es, env, k, out) = if (null es') && (null k') then (env', out') else evalLoop (es', env', k', out')
                       where (es', env', k', out') = evalStep (es, env, k, out)
        env = mergeEnvironments startingEnv (setupEnvironment input 1) 

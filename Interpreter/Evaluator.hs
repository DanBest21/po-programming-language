module Evaluator where
import Parser

type Environment = [(String, Exp)]

data Frame = HWhile Exp [Exp]
           | HIf [Exp] [(Exp, [Exp])]
           | PrintH
           | HasNextH
           | NextH
           | SizeH
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

type Kontinuation = [Frame]

type Output = [Int]

type State = ([Exp], Environment, Kontinuation, Output)

-- Retrieve the value that is bound to the given variable identifier.
getVariable :: String -> Environment -> Exp
getVariable x [] = error ("Unrecognised variable " ++ x)
getVariable x ((y, exp) : env) | x == y    = exp
                               | otherwise = getVariable x env

-- Sets a new variable in the passed environment.
setVariable :: Environment -> String -> Exp -> Environment
setVariable env x exp = (x, exp) : env

-- Updates an existing environment in the passed environment
updateVariable :: Environment -> String -> Exp -> Environment
updateVariable env x exp = filter ((/= x) . fst) env ++ [(x, exp)] 

-- Checks for terminated expressions.
isValue :: Exp -> Bool
isValue (Int' _) = True
isValue (Boolean' _) = True
isValue (Stream []) = True
isValue (Stream (e : es)) = (isValue e) && (isValue (Stream es))
isValue _ = False

setupEnvironment :: [Exp] -> Int -> [(String, Exp)]
setupEnvironment [] _ = []
setupEnvironment (e : es) i = ("input{" ++ (show i) ++ "}", e) : setupEnvironment es (i + 1) 

-- Small step evaluation function.
evalStep :: State -> State

-- While statement
evalStep ((While e es) : es', env, k, out) = (e : es', env, (HWhile e es) : k, out)
evalStep ((Boolean' b) : es, env, (HWhile e es') : k, out) | b         = (es' ++ [While e es'] ++ es, env, k, out)
                                                           | otherwise = (es, env, k, out)                                                       

-- If/Elif/Else statement
evalStep ((If ((e, es) : elifs)) : es', env, k, out) = (e : es', env, (HIf es elifs) : k, out)
evalStep ((Boolean' b) : es', env, (HIf es elifs) : k, out) | b         = (es ++ es', env, k, out)
                                                            | otherwise = ((If elifs) : es', env, k, out)                                                       

-- Print statement
evalStep ((Print e) : es, env, k, out) = (e : es, env, (PrintH) : k, out)
evalStep ((Int' x) : es, env, (PrintH) : k, out) = (es, env, k, out ++ [x])

-- Has Next statement
evalStep ((HasNext e) : es, env, k, out) = (e : es, env, (HasNextH) : k, out)
evalStep ((Stream es) : es', env, (HasNextH) : k, out) = ((Boolean' (not(null es))) : es', env, k, out)

-- Next statement
evalStep ((Next e) : es, env, k, out) = (e : es, env, (NextH) : k, out)
evalStep ((Stream (e : es)) : es', env, (NextH) : k, out) = (e : es', env, k, out)
evalStep ((VarRef x) : es, env, (NextH) : k, out) = (e : es, updateVariable env x (Stream es'), k, out)
      where (Stream (e : es')) = getVariable x env

-- Size statement
evalStep ((Size e) : es, env, k, out) = (e : es, env, (SizeH) : k, out)
evalStep ((Stream es) : es', env, (SizeH) : k, out) = ((Int' (length es)) : es', env, k, out)

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
evalStep ((NE e1 e2) : es, env, k, out) = (e1 : es, env, (HEqual e2) : k, out)
evalStep (e1 : es, env, (HEqual e2) : k, out) | isValue e1 = (e2 : es, env, (EqualH e1) : k, out)
evalStep (e2 : es, env, (EqualH e1) : k, out) | isValue e2 = ((Boolean' (e1 /= e2)) : es, env, k, out)

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
evalStep ((VarRef y) : es, env, (TakeH (Int' x)) : k, out) = ((Stream (take x e2)) : es, updateVariable env y (Stream (drop x e2)), k, out)
      where (Stream e2) = getVariable y env 

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
evalStep (e : es, env, (VarDecH x) : k, out) | isValue e = (es, setVariable env x e, k, out)

-- Variable assignment statement
evalStep ((VarAssign x e) : es, env, k, out) = (e : es, env, (VarAssignH x) : k, out)
evalStep (e : es, env, (VarAssignH x) : k, out) | isValue e = (es, updateVariable env x e, k, out)

-- Variable reference statement
evalStep ((VarRef x) : es, env, k, out) = ((getVariable x env) : es, env, k, out)

-- Catch idempotent statements.
evalStep (e : es, env, [], out) | isValue e = (es, env, [], out)

-- Function to iterate the small step reduction to termination.
evaluate' :: [Exp] -> [Exp] -> Output
evaluate' es input = evalLoop (es, env, [], [])
  where evalLoop (es, env, k, out) = if (null es') && (null k') then out' else evalLoop (es', env', k', out')
                       where (es', env', k', out') = evalStep (es, env, k, out)
        env = setupEnvironment input 1

-- Evaluates the list of passed expressions.
evaluate :: [Exp] -> [Exp] -> Output
evaluate es input = evaluate' es ([Stream [Int' 1, Int' 2, Int' 3, Int' 4, Int' 5]])
module Evaluator where
import Parser

type Environment = [(String, Exp)]

data Frame = HWhile Exp [Exp]
           | HIf [Exp] [(Exp, [Exp])]
           | PrintH
           | HasNextH
           | NextH
           | SizeH
           | VarDecH String
           | VarAssignH String
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
           deriving (Show)

type Kontinuation = [Frame]

type InputOutput = ([Exp], [Int])

type State = ([Exp], Environment, Kontinuation, InputOutput)

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

-- Small step evaluation function.
evalStep :: State -> State

-- While statement
evalStep ((While e es) : es', env, k, io) = (e : es', env, (HWhile e es) : k, io)
evalStep ((Boolean' b) : es, env, (HWhile e es') : k, io) | b         = (es' ++ [While e es'] ++ es, env, k, io)
                                                          | otherwise = (es, env, k, io)                                                       

-- If/Elif/Else statement
evalStep ((If ((e, es) : elifs)) : es', env, k, io) = (e : es', env, (HIf es elifs) : k, io)
evalStep ((Boolean' b) : es', env, (HIf es elifs) : k, io) | b         = (es ++ es', env, k, io)
                                                           | otherwise = ((If elifs) : es', env, k, io)                                                       

-- Print statement
evalStep ((Print e) : es, env, k, io) = (e : es, env, (PrintH) : k, io)
evalStep ((Int' x) : es, env, (PrintH) : k, io) = (es, env, k, (fst io, snd io ++ [x]))

-- Has Next statement
evalStep ((HasNext e) : es, env, k, io) = (e : es, env, (HasNextH) : k, io)
evalStep ((Stream es) : es', env, (HasNextH) : k, io) = ((Boolean' (not(null es))) : es', env, k, io)

-- Next statement
evalStep ((Next e) : es, env, k, io) = (e : es, env, (NextH) : k, io)
evalStep ((Stream (e : es)) : es', env, (NextH) : k, io) = (e : es', env, k, io)
evalStep ((VarRef x) : es, env, (NextH) : k, io) = (e : es, updateVariable env x (Stream es'), k, io)
      where (Stream (e : es')) = getVariable x env

-- Size statement
evalStep ((Size e) : es, env, k, io) = (e : es, env, (SizeH) : k, io)
evalStep ((Stream es) : es', env, (SizeH) : k, io) = ((Int' (length es)) : es', env, k, io)

-- Variable declaration statement
evalStep ((VarDec t x e) : es, env, k, io) = (e : es, env, (VarDecH x) : k, io)
evalStep (e : es, env, (VarDecH x) : k, io) | isValue e = (es, setVariable env x e, k, io)

-- Variable assignment statement
evalStep ((VarAssign x e) : es, env, k, io) = (e : es, env, (VarAssignH x) : k, io)
evalStep (e : es, env, (VarAssignH x) : k, io) | isValue e = (es, updateVariable env x e, k, io)

-- Variable reference statement
evalStep ((VarRef x) : es, env, k, io) = ((getVariable x env) : es, env, k, io)

-- Less than or equal to statement
evalStep ((LE e1 e2) : es, env, k, io) = (e1 : es, env, (HLessEqual e2) : k, io)
evalStep ((Int' x) : es, env, (HLessEqual e2) : k, io) = (e2 : es, env, (LessEqualH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (LessEqualH (Int' x)) : k, io) = ((Boolean' (x <= y)) : es, env, k, io)

-- Greater than or equal to statement
evalStep ((GE e1 e2) : es, env, k, io) = (e1 : es, env, (HGreaterEqual e2) : k, io)
evalStep ((Int' x) : es, env, (HGreaterEqual e2) : k, io) = (e2 : es, env, (GreaterEqualH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (GreaterEqualH (Int' x)) : k, io) = ((Boolean' (x >= y)) : es, env, k, io)

-- Less than statement
evalStep ((LT' e1 e2) : es, env, k, io) = (e1 : es, env, (HLessThan e2) : k, io)
evalStep ((Int' x) : es, env, (HLessThan e2) : k, io) = (e2 : es, env, (LessThanH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (LessThanH (Int' x)) : k, io) = ((Boolean' (x < y)) : es, env, k, io)

-- Greater than statement
evalStep ((GT' e1 e2) : es, env, k, io) = (e1 : es, env, (HGreaterThan e2) : k, io)
evalStep ((Int' x) : es, env, (HGreaterThan e2) : k, io) = (e2 : es, env, (GreaterThanH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (GreaterThanH (Int' x)) : k, io) = ((Boolean' (x > y)) : es, env, k, io)                                      

-- Equals statement
evalStep ((EQ' e1 e2) : es, env, k, io) = (e1 : es, env, (HEqual e2) : k, io)
evalStep (e1 : es, env, (HEqual e2) : k, io) | isValue e1 = (e2 : es, env, (EqualH e1) : k, io)
evalStep (e2 : es, env, (EqualH e1) : k, io) | isValue e2 = ((Boolean' (e1 == e2)) : es, env, k, io)

-- Not equals statement
evalStep ((NE e1 e2) : es, env, k, io) = (e1 : es, env, (HEqual e2) : k, io)
evalStep (e1 : es, env, (HEqual e2) : k, io) | isValue e1 = (e2 : es, env, (EqualH e1) : k, io)
evalStep (e2 : es, env, (EqualH e1) : k, io) | isValue e2 = ((Boolean' (e1 /= e2)) : es, env, k, io)

-- Cons statement
evalStep ((Cons e1 e2) : es, env, k, io) = (e1 : es, env, (HCons e2) : k, io)
evalStep ((Int' x) : es, env, (HCons e2) : k, io) = (e2 : es, env, (ConsH (Int' x)) : k, io)
evalStep ((Stream e2) : es, env, (ConsH e1) : k, io) = ((Stream (e1 : e2)) : es, env, k, io)  

-- Concat statement
evalStep ((Concat e1 e2) : es, env, k, io) = (e1 : es, env, (HConcat e2) : k, io)
evalStep ((Stream e1) : es, env, (HConcat e2) : k, io) = (e2 : es, env, (ConcatH (Stream e1)) : k, io)
evalStep ((Stream e2) : es, env, (ConcatH (Stream e1)) : k, io) = ((Stream (e1 ++ e2)) : es, env, k, io)  

-- Take statement

-- Add/Plus statement
evalStep ((Plus e1 e2) : es, env, k, io) = (e1 : es, env, (HPlus e2) : k, io)
evalStep ((Int' x) : es, env, (HPlus e2) : k, io) = (e2 : es, env, (PlusH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (PlusH (Int' x)) : k, io) = ((Int' (x + y)) : es, env, k, io)

-- Subtract/Minus statement
evalStep ((Minus e1 e2) : es, env, k, io) = (e1 : es, env, (HMinus e2) : k, io)
evalStep ((Int' x) : es, env, (HMinus e2) : k, io) = (e2 : es, env, (MinusH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (MinusH (Int' x)) : k, io) = ((Int' (x - y)) : es, env, k, io)

-- Multiply/Times statement
evalStep ((Times e1 e2) : es, env, k, io) = (e1 : es, env, (HTimes e2) : k, io)
evalStep ((Int' x) : es, env, (HTimes e2) : k, io) = (e2 : es, env, (TimesH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (TimesH (Int' x)) : k, io) = ((Int' (x * y)) : es, env, k, io)

-- Divide statement
evalStep ((Div e1 e2) : es, env, k, io) = (e1 : es, env, (HDiv e2) : k, io)
evalStep ((Int' x) : es, env, (HDiv e2) : k, io) = (e2 : es, env, (DivH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (DivH (Int' x)) : k, io) = ((Int' (x `div` y)) : es, env, k, io)

-- Stream get (by index) statement

-- Input get (by index) statement

-- Not statement
evalStep ((Not e) : es, env, k, io) = (e : es, env, (NotH) : k, io)
evalStep ((Boolean' b) : es, env, (NotH) : k, io) = ((Boolean' (not(b))) : es, env, k, io)

-- Exponent statement
evalStep ((Exponent e1 e2) : es, env, k, io) = (e1 : es, env, (HExponent e2) : k, io)
evalStep ((Int' x) : es, env, (HExponent e2) : k, io) = (e2 : es, env, (ExponentH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (ExponentH (Int' x)) : k, io) = ((Int' (x ^ y)) : es, env, k, io)

-- Modulo statement
evalStep ((Modulo e1 e2) : es, env, k, io) = (e1 : es, env, (HModulo e2) : k, io)
evalStep ((Int' x) : es, env, (HModulo e2) : k, io) = (e2 : es, env, (ModuloH (Int' x)) : k, io)
evalStep ((Int' y) : es, env, (ModuloH (Int' x)) : k, io) = ((Int' (x `mod` y)) : es, env, k, io)

-- Negate statement
evalStep ((Negate e) : es, env, k, io) = (e : es, env, (NegateH) : k, io)
evalStep ((Int' x) : es, env, (NegateH) : k, io) = ((Int' (negate x)) : es, env, k, io)

-- Function to iterate the small step reduction to termination.
evaluate' :: [Exp] -> InputOutput -> InputOutput
evaluate' es io = evalLoop (es, [], [], io)
  where evalLoop (es, env, k, io) = if (null es') && (null k') then io' else evalLoop (es', env', k', io')
                       where (es', env', k', io') = evalStep (es, env, k, io)

-- Evaluates the list of passed expressions.
evaluate :: [Exp] -> InputOutput
evaluate es = evaluate' es ([],[])
module Evaluator where
import Parser

type Environment = [(String, Exp)]

data Frame = HWhile [Exp] Environment
           | HIf [Exp] Environment
           | HElif [Exp] Environment
           | HElse [Exp] Environment
           | PrintH
           | HasNextH
           | NextH
           | SizeH
           | StreamH
           | VarH Type
           | VarRefH
           | HLessEqual Exp Environment    | LessEqualH Exp
           | HGreaterEqual Exp Environment | GreaterEqualH Exp 
           | HEqual Exp Environment        | EqualH Exp
           | HNotEqual Exp Environment     | NotEqualH Exp
           | HCons Exp Environment         | ConsH Exp
           | HConcat Exp Environment       | ConcatH Exp
           | HTake Exp Environment         | TakeH Exp
           | HAssign Exp Environment       | AssignH String
           | HPlus Exp Environment         | PlusH Exp
           | HMinus Exp Environment        | MinusH Exp
           | HTimes Exp Environment        | TimesH Exp
           | HDiv Exp Environment          | DivH Exp
           | HStreamGet Exp Environment    | StreamGetH Exp
           | InputGetH
           | NotH
           | HExponent Exp Environment     | ExponentH Exp
           | HModulo Exp Environment       | ModuloH Exp
           | HLessThan Exp Environment     | LessThanH Exp
           | HGreaterThan Exp Environment  | GreaterThanH Exp
           | NegateH
           deriving (Show)

type Kontinuation = [Frame]

type Output = [Int]

type State = ([Exp], Environment, Kontinuation, Output)

-- Retrieve the value that is bound to the given variable identifier.
getVariable :: String -> Environment -> Exp
getVariable x [] = error ("Unrecognised variable " ++ x)
getVariable x ((y, exp) : env) | x == y    = exp
                               | otherwise = getVariable x env

-- Updating environment with new variable binding.
update :: Environment -> String -> Exp -> Environment
update env x exp = (x, exp) : env                              

-- Checks for terminated expressions.
isValue :: Exp -> Bool
isValue (Int' _) = True
isValue (Boolean' _) = True
isValue (Stream (e : es)) = isValue e && isValue (Stream es)
isValue _ = False

-- Small step evaluation function.
evalStep :: State -> State

-- If statement
evalStep ((If e es) : es', env, k, out) = (e : es', env, (HIf es env) : k, out)
evalStep ((Boolean' b) : es, env, (HIf es' env') : k, out) | b         = (es' ++ es, env, k, out)
                                                           | otherwise = (es, env, k, out)                                                       

-- Print statement
evalStep ((Print e) : es, env, k, out) = (e : es, env, (PrintH) : k, out)
evalStep ((Int' x) : es, env, (PrintH) : k, out) = (es, env, k, out ++ [x]) 

-- Function to iterate the small step reduction to termination.
evaluate' :: [Exp] -> Output -> Output
evaluate' es out = evalLoop (es, [], [], out)
  where evalLoop (es, env, k, out) = if (null es') && (null k') then out' else evalLoop (es', env', k', out')
                       where (es', env', k', out') = evalStep (es, env, k, out)

-- Evaluates the list of passed expressions.
evaluate :: [Exp] -> Output
evaluate es = evaluate' es []
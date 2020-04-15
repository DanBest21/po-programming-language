module Evaluator where
import Parser

type Environment = [(String, Exp)]

data Frame = HWhile [Exp] Environment      | WhileH Exp
           | HIf [Exp] Environment         | IfH Exp
           | HElif [Exp] Environment       | ElifH Exp
           | HElse [Exp] Environment       | ElseH Exp
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

type Kontinuation = [Frame]

type Output = [Int]

type State = (Exp, Environment, Kontinuation, Output)

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
evalStep _ = ((Int' 0), [], [], [])

-- Function to iterate the small step reduction to termination.
evaluateExp :: Exp -> Output
evaluateExp e = evalLoop (e, [], [], [])
  where evalLoop (e, env, k, out) = if (e' == e) && (isValue e') && (null k) then out else evalLoop (e', env', k', out')
                       where (e', env', k', out') = evalStep (e, env, k, out)

evaluate :: [Exp] -> Output
evaluate (e : es) = 
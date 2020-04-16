module Evaluator where
import Parser

type Environment = [(String, Exp)]

data Frame = HWhile Exp [Exp] Environment
           | HIf [Exp] [(Exp, [Exp])] Environment
           | PrintH
           | HasNextH
           | NextH
           | SizeH
           | VarDecH String
           | VarAssignH String
           | HLessEqual Exp Environment    | LessEqualH Exp
           | HGreaterEqual Exp Environment | GreaterEqualH Exp 
           | HEqual Exp Environment        | EqualH Exp
           | HNotEqual Exp Environment     | NotEqualH Exp
           | HCons Exp Environment         | ConsH Exp
           | HConcat Exp Environment       | ConcatH Exp
           | HTake Exp Environment         | TakeH Exp
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
isValue (Stream (e : es)) = isValue e && isValue (Stream es)
isValue _ = False

-- Small step evaluation function.
evalStep :: State -> State

-- While statement
evalStep ((While e es) : es', env, k, out) = (e : es', env, (HWhile e es env) : k, out)
evalStep ((Boolean' b) : es, env, (HWhile e es' env') : k, out) | b         = (es' ++ [While e es'] ++ es, env', k, out)
                                                                | otherwise = (es, env, k, out)                                                       

-- If/Elif/Else statement
evalStep ((If ((e, es) : elifs)) : es', env, k, out) = (e : es', env, (HIf es elifs env) : k, out)
evalStep ((Boolean' b) : es, env, (HIf es' elifs env') : k, out) | b         = (es' ++ es, env', k, out)
                                                                 | otherwise = ((If elifs) : es, env', k, out)                                                       

-- Print statement
evalStep ((Print e) : es, env, k, out) = (e : es, env, (PrintH) : k, out)
evalStep ((Int' x) : es, env, (PrintH) : k, out) = (es, env, k, out ++ [x])

-- Has Next statement
evalStep ((HasNext e) : es, env, k, out) = (e : es, env, (HasNextH) : k, out)
evalStep ((Stream es) : es', env, (HasNextH) : k, out) = ((Boolean' (null es)) : es', env, k, out)

-- Next statement
evalStep ((Next e) : es, env, k, out) = (e : es, env, (NextH) : k, out)
evalStep ((Stream (e : es)) : es', env, (NextH) : k, out) = (e : es', env, k, out)
evalStep ((VarRef x) : es, env, (NextH) : k, out) = (e : es, updateVariable env x (Stream es'), k, out)
      where (Stream (e : es')) = getVariable x env

-- Size statement
evalStep ((Size e) : es, env, k, out) = (e : es, env, (SizeH) : k, out)
evalStep ((Stream es) : es', env, (SizeH) : k, out) = ((Int' (length es)) : es', env, k, out)

-- Variable declaration statement
evalStep ((VarDec t x e) : es, env, k, out) = (e : es, env, (VarDecH x) : k, out)
evalStep (e : es, env, (VarDecH x) : k, out) | isValue e = (es, setVariable env x e, k, out)

-- Variable assignment statement
evalStep ((VarAssign x e) : es, env, k, out) = (e : es, env, (VarAssignH x) : k, out)
evalStep (e : es, env, (VarAssignH x) : k, out) | isValue e = (es, updateVariable env x e, k, out)

-- Variable reference statement
evalStep ((VarRef x) : es, env, k, out) = ((getVariable x env) : es, env, k, out)

-- Function to iterate the small step reduction to termination.
evaluate' :: [Exp] -> Output -> Output
evaluate' es out = evalLoop (es, [], [], out)
  where evalLoop (es, env, k, out) = if (null es') && (null k') then out' else evalLoop (es', env', k', out')
                       where (es', env', k', out') = evalStep (es, env, k, out)

-- Evaluates the list of passed expressions.
evaluate :: [Exp] -> Output
evaluate es = evaluate' es []
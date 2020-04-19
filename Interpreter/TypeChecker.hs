module TypeChecker where
import Parser

type TypeEnvironment = [(String, Type)]

-- Error function
throwTypeError :: String -> Type -> Type -> a
throwTypeError e expType actType = error ("Type error in " ++ e ++ ":\nExpected type:\t" ++ (show expType) ++ "\nActual type:\t" ++ (show actType)) 

getBinding :: String -> TypeEnvironment -> Type
getBinding x [] = error "Variable binding not found"
getBinding x ((y, t) : tenv) | x == y    = t
                             | otherwise = getBinding x tenv

setBinding :: String -> Type -> TypeEnvironment -> TypeEnvironment
setBinding x t tenv = (x, t) : tenv

-- Updates an existing environment in the passed environment
updateBinding :: String -> Type -> TypeEnvironment -> TypeEnvironment
updateBinding x t env = filter ((/= x) . fst) env ++ [(x, t)] 

typeOf :: TypeEnvironment -> Exp -> Type

-- Int type
typeOf tenv (Int' _) = TypeInt

-- Boolean type
typeOf tenv (Boolean' _) = TypeBoolean

-- Stream type
typeOf tenv (Stream _) = TypeStream

-- While type checker
typeOf tenv (While e es) | tWellTyped = typeOfExps tenv es
                         | otherwise  = throwTypeError "while statement" t TypeBoolean
    where t          = typeOf tenv e
          tWellTyped = t == TypeBoolean

-- Iterates through each expression to check it is the valid type
typeOfExps :: TypeEnvironment -> [Exp] -> Type
typeOfExps tenv [] = TypeNone
typeOfExps tenv (e : es) = seq (typeOf tenv e) (typeOfExps tenv es)
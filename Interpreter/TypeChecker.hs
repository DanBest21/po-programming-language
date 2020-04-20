module TypeChecker where
import Parser
import Data.List

type TypeEnvironment = [(String, Type)]

-- Error function
throwTypeError :: String -> Type -> Type -> a
throwTypeError e expType actType = error ("Type error in " ++ e ++ ":\nExpected type:\t" ++ (show expType) ++ "\nActual type:\t" ++ (show actType)) 

getVariableType :: String -> TypeEnvironment -> Type
getVariableType x [] = error "Variable binding not found"
getVariableType x ((y, t) : tenv) | x == y    = t
                             | otherwise = getVariableType x tenv

-- Updates an existing environment in the passed environment
updateVariableType :: String -> Type -> TypeEnvironment -> TypeEnvironment
updateVariableType x t env = filter ((/= x) . fst) env ++ [(x, t)] 

typeOf :: TypeEnvironment -> Exp -> (Type, TypeEnvironment)

-- Int type
typeOf tenv (Int' _) = (TypeInt, tenv)

-- Boolean type
typeOf tenv (Boolean' _) = (TypeBoolean, tenv)

-- Stream type
typeOf tenv (Stream []) = (TypeStream, tenv)
typeOf tenv (Stream (e : es)) | tWellTyped = typeOf tenv (Stream es)
                              | otherwise  = throwTypeError "stream definition" TypeInt t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeInt

-- While type checker
typeOf tenv (While e es) | tWellTyped = typeOfExps tenv' es
                         | otherwise  = throwTypeError "while statement" TypeBoolean t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeBoolean

-- If/Elif/Else type checker
-- Empty expression list can only be generated from a recursive typeOf call.
typeOf tenv (If []) = (TypeNone, tenv)
typeOf tenv (If ((e, es) : elifs)) | tWellTyped = typeOf (nub (tenv1 ++ tenv2)) (If elifs)
                                   | otherwise  = throwTypeError "if statement" TypeBoolean t1
      where (t1, tenv1) = typeOf tenv e
            (t2, tenv2) = typeOfExps tenv1 es
            tWellTyped  = (t1 == TypeBoolean) && (t2 == TypeNone)

-- Print type checker
typeOf tenv (Print e) | tWellTyped = (TypeNone, tenv')
                      | otherwise  = throwTypeError "print statement" TypeInt t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeInt

-- Has Next type checker
typeOf tenv (HasNext e) | tWellTyped = (TypeBoolean, tenv')
                        | otherwise  = throwTypeError "has_next expression" TypeStream t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeStream

-- Next type checker
typeOf tenv (Next e) | tWellTyped = (TypeInt, tenv')
                     | otherwise  = throwTypeError "next expression" TypeStream t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeStream

-- Size type checker
typeOf tenv (Size e) | tWellTyped = (TypeInt, tenv')
                     | otherwise  = throwTypeError "size expression" TypeStream t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeStream

-- And type checker
typeOf tenv (And e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                        | not tWellTyped1            = throwTypeError "left-hand side of and expression" TypeBoolean t1
                        | not tWellTyped2            = throwTypeError "right-hand side of and expression" TypeBoolean t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeBoolean, t2 == TypeBoolean)

-- Or type checker
typeOf tenv (Or e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                       | not tWellTyped1            = throwTypeError "left-hand side of or expression" TypeBoolean t1
                       | not tWellTyped2            = throwTypeError "right-hand side of or expression" TypeBoolean t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeBoolean, t2 == TypeBoolean)

-- Less than or equal to type checker
typeOf tenv (LE e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                       | not tWellTyped1            = throwTypeError "left-hand side of '<=' expression" TypeInt t1
                       | not tWellTyped2            = throwTypeError "right-hand side of '<=' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Greater than or equal to type checker
typeOf tenv (GE e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                       | not tWellTyped1            = throwTypeError "left-hand side of '>=' expression" TypeInt t1
                       | not tWellTyped2            = throwTypeError "right-hand side of '>=' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Less than type checker
typeOf tenv (LT' e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                        | not tWellTyped1            = throwTypeError "left-hand side of '<' expression" TypeInt t1
                        | not tWellTyped2            = throwTypeError "right-hand side of '<' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Greater than type checker
typeOf tenv (GT' e1 e2) | tWellTyped1 && tWellTyped2 = (TypeBoolean, nub (tenv1 ++ tenv2))
                        | not tWellTyped1            = throwTypeError "left-hand side of '>' expression" TypeInt t1
                        | not tWellTyped2            = throwTypeError "right-hand side of '>' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Equal to type checker
typeOf tenv (EQ' e1 e2) | tWellTyped = (TypeBoolean, nub (tenv1 ++ tenv2)) 
                        | otherwise  = throwTypeError "'==' expression" t1 t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            tWellTyped = t1 == t2

-- Not equal to type checker
typeOf tenv (NE e1 e2) | tWellTyped = (TypeBoolean, nub (tenv1 ++ tenv2))
                       | otherwise  = throwTypeError "'!=' expression" t1 t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            tWellTyped = t1 == t2

-- Cons type checker
typeOf tenv (Cons e1 e2) | tWellTyped1 && tWellTyped2 = (TypeStream, nub (tenv1 ++ tenv2))
                         | not tWellTyped1            = throwTypeError "left-hand side of ':' expression" TypeInt t1
                         | not tWellTyped2            = throwTypeError "right-hand side of ':' expression" TypeStream t2  
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeStream)

-- Concat type checker
typeOf tenv (Concat e1 e2) | tWellTyped1 && tWellTyped2 = (TypeStream, nub (tenv1 ++ tenv2))
                           | not tWellTyped1            = throwTypeError "left-hand side of '++' expression" TypeStream t1
                           | not tWellTyped2            = throwTypeError "right-hand side of '++' expression" TypeStream t2  
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeStream, t2 == TypeStream)

-- Take type checker
typeOf tenv (Take e1 e2) | tWellTyped1 && tWellTyped2 = (TypeStream, nub (tenv1 ++ tenv2))
                         | not tWellTyped1            = throwTypeError "left-hand side of '<-' expression" TypeInt t1
                         | not tWellTyped2            = throwTypeError "right-hand side of '<-' expression" TypeStream t2  
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeStream)

-- Plus type checker
typeOf tenv (Plus e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                         | not tWellTyped1            = throwTypeError "left-hand side of '+' expression" TypeInt t1
                         | not tWellTyped2            = throwTypeError "right-hand side of '+' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Minus type checker
typeOf tenv (Minus e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                          | not tWellTyped1            = throwTypeError "left-hand side of '-' expression" TypeInt t1
                          | not tWellTyped2            = throwTypeError "right-hand side of '-' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Times type checker
typeOf tenv (Times e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                          | not tWellTyped1            = throwTypeError "left-hand side of '*' expression" TypeInt t1
                          | not tWellTyped2            = throwTypeError "right-hand side of '*' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Divide type checker
typeOf tenv (Div e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                        | not tWellTyped1            = throwTypeError "left-hand side of '/' expression" TypeInt t1
                        | not tWellTyped2            = throwTypeError "right-hand side of '/' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Stream get (by index) type checker
typeOf tenv (StreamGet e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                              | not tWellTyped1            = throwTypeError "stream access" TypeStream t1
                              | not tWellTyped2            = throwTypeError "stream index" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeStream, t2 == TypeInt)

-- Input get (by index) type checker
typeOf tenv (InputGet e) | tWellTyped = (TypeStream, tenv')
                         | otherwise  = throwTypeError "input index" TypeInt t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeInt

-- Not type checker
typeOf tenv (Not e) | tWellTyped = (TypeBoolean, tenv')
                    | otherwise  = throwTypeError "'!' expression" TypeBoolean t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeBoolean

-- Exponent type checker
typeOf tenv (Exponent e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                             | not tWellTyped1            = throwTypeError "left-hand side of '^' expression" TypeInt t1
                             | not tWellTyped2            = throwTypeError "right-hand side of '^' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Modulo type checker
typeOf tenv (Modulo e1 e2) | tWellTyped1 && tWellTyped2 = (TypeInt, nub (tenv1 ++ tenv2))
                           | not tWellTyped1            = throwTypeError "left-hand side of '%' expression" TypeInt t1
                           | not tWellTyped2            = throwTypeError "right-hand side of '%' expression" TypeInt t2
      where ((t1, tenv1), (t2, tenv2)) = (typeOf tenv e1, typeOf tenv e2)
            (tWellTyped1, tWellTyped2) = (t1 == TypeInt, t2 == TypeInt)

-- Negate type checker
typeOf tenv (Negate e) | tWellTyped = (TypeInt, tenv')
                       | otherwise  = throwTypeError "negate expression" TypeInt t
      where (t, tenv') = typeOf tenv e
            tWellTyped = t == TypeInt

-- Variable declaration type checker
typeOf tenv (VarDec t1 x e) | tWellTyped = (TypeNone, updateVariableType x t1 tenv')
                            | otherwise  = throwTypeError ("declaration of variable '" ++ x ++ "'") t1 t2
      where (t2, tenv') = typeOf tenv e
            tWellTyped  = t1 == t2

-- Variable assignment type checker
typeOf tenv (VarAssign x e) | tWellTyped = (TypeNone, updateVariableType x t1 tenv')
                            | otherwise  = throwTypeError ("assignment of variable '" ++ x ++ "'") t1 t2
      where (t1, (t2, tenv')) = (getVariableType x tenv, typeOf tenv e)
            tWellTyped        = t1 == t2

-- Variable reference type checker
typeOf tenv (VarRef x) = (getVariableType x tenv, tenv)

-- Iterates through each expression to check it is the valid type
typeOfExps :: TypeEnvironment -> [Exp] -> (Type, TypeEnvironment)
typeOfExps tenv [] = (TypeNone, tenv)
typeOfExps tenv (e : es) = seq t (typeOfExps tenv' es)
      where (t, tenv') = typeOf tenv e
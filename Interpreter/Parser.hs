{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,534) ([61440,2023,17040,0,0,0,0,0,0,0,0,0,0,61440,65511,49915,7,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,0,0,0,0,0,0,0,0,4,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,0,8248,8,0,31736,1954,0,0,64,0,63488,33659,7,0,8248,8,59376,36871,66,0,0,32,0,0,512,0,0,8192,0,0,31736,1930,0,49024,30887,0,63488,33403,7,32383,10496,4,0,0,0,0,16384,0,0,0,0,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,0,10168,24,0,31616,386,0,14336,2080,0,0,33280,0,32768,26559,122,0,896,130,0,14336,2080,0,32768,33283,0,0,9784,24,0,640,130,0,10240,2080,0,32768,33282,0,32768,10169,120,0,31640,1922,0,47104,6183,0,32768,33403,1,32768,10175,121,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,0,31736,1922,0,0,0,0,0,0,0,32383,10496,4,0,0,0,0,0,256,0,0,4096,0,32768,26559,120,0,25472,386,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,1,0,61440,2023,17040,0,32768,42943,120,0,0,0,0,0,128,61440,2023,17040,0,32383,10496,4,0,0,16,0,0,256,0,0,0,0,128,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","Assign","int_type","stream_type","bool_type","input","print","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 52
        bit_end = (st + 1) * 52
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..51]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (15) = happyShift action_10
action_0 (16) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (22) = happyShift action_15
action_0 (23) = happyShift action_16
action_0 (24) = happyShift action_17
action_0 (25) = happyShift action_18
action_0 (26) = happyShift action_19
action_0 (27) = happyShift action_20
action_0 (37) = happyShift action_21
action_0 (40) = happyShift action_22
action_0 (42) = happyShift action_23
action_0 (47) = happyShift action_24
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (52) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (13) = happyShift action_8
action_4 (14) = happyShift action_9
action_4 (15) = happyShift action_10
action_4 (16) = happyShift action_11
action_4 (17) = happyShift action_12
action_4 (18) = happyShift action_13
action_4 (19) = happyShift action_14
action_4 (22) = happyShift action_15
action_4 (23) = happyShift action_16
action_4 (24) = happyShift action_17
action_4 (25) = happyShift action_18
action_4 (26) = happyShift action_19
action_4 (27) = happyShift action_20
action_4 (28) = happyShift action_41
action_4 (29) = happyShift action_42
action_4 (30) = happyShift action_43
action_4 (31) = happyShift action_44
action_4 (32) = happyShift action_45
action_4 (33) = happyShift action_46
action_4 (34) = happyShift action_47
action_4 (36) = happyShift action_48
action_4 (37) = happyShift action_49
action_4 (38) = happyShift action_50
action_4 (39) = happyShift action_51
action_4 (40) = happyShift action_22
action_4 (42) = happyShift action_52
action_4 (47) = happyShift action_24
action_4 (48) = happyShift action_53
action_4 (49) = happyShift action_54
action_4 (50) = happyShift action_55
action_4 (51) = happyShift action_56
action_4 (5) = happyGoto action_40
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 (27) = happyShift action_39
action_6 (12) = happyGoto action_38
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_21

action_8 _ = happyReduce_45

action_9 _ = happyReduce_47

action_10 _ = happyReduce_46

action_11 (44) = happyShift action_37
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (13) = happyShift action_8
action_12 (14) = happyShift action_9
action_12 (15) = happyShift action_10
action_12 (16) = happyShift action_11
action_12 (17) = happyShift action_12
action_12 (18) = happyShift action_13
action_12 (19) = happyShift action_14
action_12 (22) = happyShift action_15
action_12 (23) = happyShift action_16
action_12 (24) = happyShift action_17
action_12 (25) = happyShift action_18
action_12 (26) = happyShift action_19
action_12 (27) = happyShift action_20
action_12 (37) = happyShift action_21
action_12 (40) = happyShift action_22
action_12 (42) = happyShift action_23
action_12 (47) = happyShift action_24
action_12 (6) = happyGoto action_36
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (15) = happyShift action_10
action_13 (16) = happyShift action_11
action_13 (17) = happyShift action_12
action_13 (18) = happyShift action_13
action_13 (19) = happyShift action_14
action_13 (22) = happyShift action_15
action_13 (23) = happyShift action_16
action_13 (24) = happyShift action_17
action_13 (25) = happyShift action_18
action_13 (26) = happyShift action_19
action_13 (27) = happyShift action_20
action_13 (37) = happyShift action_21
action_13 (40) = happyShift action_22
action_13 (42) = happyShift action_23
action_13 (47) = happyShift action_24
action_13 (6) = happyGoto action_35
action_13 (7) = happyGoto action_5
action_13 (11) = happyGoto action_6
action_13 (12) = happyGoto action_7
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_8
action_14 (14) = happyShift action_9
action_14 (15) = happyShift action_10
action_14 (16) = happyShift action_11
action_14 (17) = happyShift action_12
action_14 (18) = happyShift action_13
action_14 (19) = happyShift action_14
action_14 (22) = happyShift action_15
action_14 (23) = happyShift action_16
action_14 (24) = happyShift action_17
action_14 (25) = happyShift action_18
action_14 (26) = happyShift action_19
action_14 (27) = happyShift action_20
action_14 (37) = happyShift action_21
action_14 (40) = happyShift action_22
action_14 (42) = happyShift action_23
action_14 (47) = happyShift action_24
action_14 (6) = happyGoto action_34
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 (12) = happyGoto action_7
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_8
action_15 (14) = happyShift action_9
action_15 (15) = happyShift action_10
action_15 (16) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (22) = happyShift action_15
action_15 (23) = happyShift action_16
action_15 (24) = happyShift action_17
action_15 (25) = happyShift action_18
action_15 (26) = happyShift action_19
action_15 (27) = happyShift action_20
action_15 (37) = happyShift action_21
action_15 (40) = happyShift action_22
action_15 (42) = happyShift action_23
action_15 (47) = happyShift action_24
action_15 (6) = happyGoto action_33
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 (12) = happyGoto action_7
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_8
action_16 (14) = happyShift action_9
action_16 (15) = happyShift action_10
action_16 (16) = happyShift action_11
action_16 (17) = happyShift action_12
action_16 (18) = happyShift action_13
action_16 (19) = happyShift action_14
action_16 (22) = happyShift action_15
action_16 (23) = happyShift action_16
action_16 (24) = happyShift action_17
action_16 (25) = happyShift action_18
action_16 (26) = happyShift action_19
action_16 (27) = happyShift action_20
action_16 (37) = happyShift action_21
action_16 (40) = happyShift action_22
action_16 (42) = happyShift action_23
action_16 (47) = happyShift action_24
action_16 (6) = happyGoto action_32
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_8
action_17 (14) = happyShift action_9
action_17 (15) = happyShift action_10
action_17 (16) = happyShift action_11
action_17 (17) = happyShift action_12
action_17 (18) = happyShift action_13
action_17 (19) = happyShift action_14
action_17 (22) = happyShift action_15
action_17 (23) = happyShift action_16
action_17 (24) = happyShift action_17
action_17 (25) = happyShift action_18
action_17 (26) = happyShift action_19
action_17 (27) = happyShift action_20
action_17 (37) = happyShift action_21
action_17 (40) = happyShift action_22
action_17 (42) = happyShift action_23
action_17 (47) = happyShift action_24
action_17 (6) = happyGoto action_31
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (12) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_10

action_19 _ = happyReduce_11

action_20 (35) = happyShift action_30
action_20 _ = happyReduce_22

action_21 (13) = happyShift action_8
action_21 (14) = happyShift action_9
action_21 (15) = happyShift action_10
action_21 (16) = happyShift action_11
action_21 (17) = happyShift action_12
action_21 (18) = happyShift action_13
action_21 (19) = happyShift action_14
action_21 (22) = happyShift action_15
action_21 (23) = happyShift action_16
action_21 (24) = happyShift action_17
action_21 (25) = happyShift action_18
action_21 (26) = happyShift action_19
action_21 (27) = happyShift action_20
action_21 (37) = happyShift action_21
action_21 (40) = happyShift action_22
action_21 (42) = happyShift action_23
action_21 (47) = happyShift action_24
action_21 (6) = happyGoto action_29
action_21 (7) = happyGoto action_5
action_21 (11) = happyGoto action_6
action_21 (12) = happyGoto action_7
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (13) = happyShift action_8
action_22 (14) = happyShift action_9
action_22 (15) = happyShift action_10
action_22 (16) = happyShift action_11
action_22 (17) = happyShift action_12
action_22 (18) = happyShift action_13
action_22 (19) = happyShift action_14
action_22 (22) = happyShift action_15
action_22 (23) = happyShift action_16
action_22 (24) = happyShift action_17
action_22 (25) = happyShift action_18
action_22 (26) = happyShift action_19
action_22 (27) = happyShift action_20
action_22 (37) = happyShift action_21
action_22 (40) = happyShift action_22
action_22 (42) = happyShift action_23
action_22 (47) = happyShift action_24
action_22 (6) = happyGoto action_28
action_22 (7) = happyGoto action_5
action_22 (11) = happyGoto action_6
action_22 (12) = happyGoto action_7
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (13) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (15) = happyShift action_10
action_23 (16) = happyShift action_11
action_23 (17) = happyShift action_12
action_23 (18) = happyShift action_13
action_23 (19) = happyShift action_14
action_23 (22) = happyShift action_15
action_23 (23) = happyShift action_16
action_23 (24) = happyShift action_17
action_23 (25) = happyShift action_18
action_23 (26) = happyShift action_19
action_23 (27) = happyShift action_20
action_23 (37) = happyShift action_21
action_23 (40) = happyShift action_22
action_23 (42) = happyShift action_23
action_23 (47) = happyShift action_24
action_23 (6) = happyGoto action_26
action_23 (7) = happyGoto action_5
action_23 (10) = happyGoto action_27
action_23 (11) = happyGoto action_6
action_23 (12) = happyGoto action_7
action_23 _ = happyReduce_42

action_24 (13) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (15) = happyShift action_10
action_24 (16) = happyShift action_11
action_24 (17) = happyShift action_12
action_24 (18) = happyShift action_13
action_24 (19) = happyShift action_14
action_24 (22) = happyShift action_15
action_24 (23) = happyShift action_16
action_24 (24) = happyShift action_17
action_24 (25) = happyShift action_18
action_24 (26) = happyShift action_19
action_24 (27) = happyShift action_20
action_24 (37) = happyShift action_21
action_24 (40) = happyShift action_22
action_24 (42) = happyShift action_23
action_24 (47) = happyShift action_24
action_24 (6) = happyGoto action_25
action_24 (7) = happyGoto action_5
action_24 (11) = happyGoto action_6
action_24 (12) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (32) = happyShift action_45
action_25 (33) = happyShift action_46
action_25 (34) = happyShift action_47
action_25 (42) = happyShift action_75
action_25 (48) = happyShift action_53
action_25 _ = happyReduce_30

action_26 (28) = happyShift action_41
action_26 (29) = happyShift action_42
action_26 (30) = happyShift action_43
action_26 (31) = happyShift action_44
action_26 (32) = happyShift action_45
action_26 (33) = happyShift action_46
action_26 (34) = happyShift action_47
action_26 (36) = happyShift action_48
action_26 (37) = happyShift action_74
action_26 (38) = happyShift action_50
action_26 (39) = happyShift action_51
action_26 (42) = happyShift action_75
action_26 (46) = happyShift action_81
action_26 (48) = happyShift action_53
action_26 (49) = happyShift action_54
action_26 (50) = happyShift action_55
action_26 (51) = happyShift action_56
action_26 _ = happyReduce_43

action_27 (43) = happyShift action_80
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_41
action_28 (29) = happyShift action_42
action_28 (30) = happyShift action_43
action_28 (31) = happyShift action_44
action_28 (32) = happyShift action_45
action_28 (33) = happyShift action_46
action_28 (34) = happyShift action_47
action_28 (36) = happyShift action_48
action_28 (37) = happyShift action_74
action_28 (38) = happyShift action_50
action_28 (39) = happyShift action_51
action_28 (41) = happyShift action_79
action_28 (42) = happyShift action_75
action_28 (48) = happyShift action_53
action_28 (49) = happyShift action_54
action_28 (50) = happyShift action_55
action_28 (51) = happyShift action_56
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (32) = happyShift action_45
action_29 (33) = happyShift action_46
action_29 (34) = happyShift action_47
action_29 (42) = happyShift action_75
action_29 (48) = happyShift action_53
action_29 _ = happyReduce_35

action_30 (13) = happyShift action_8
action_30 (14) = happyShift action_9
action_30 (15) = happyShift action_10
action_30 (16) = happyShift action_11
action_30 (17) = happyShift action_12
action_30 (18) = happyShift action_13
action_30 (19) = happyShift action_14
action_30 (22) = happyShift action_15
action_30 (23) = happyShift action_16
action_30 (24) = happyShift action_17
action_30 (25) = happyShift action_18
action_30 (26) = happyShift action_19
action_30 (27) = happyShift action_20
action_30 (37) = happyShift action_21
action_30 (40) = happyShift action_22
action_30 (42) = happyShift action_23
action_30 (47) = happyShift action_24
action_30 (6) = happyGoto action_78
action_30 (7) = happyGoto action_5
action_30 (11) = happyGoto action_6
action_30 (12) = happyGoto action_7
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (42) = happyShift action_75
action_31 _ = happyReduce_9

action_32 (42) = happyShift action_75
action_32 _ = happyReduce_8

action_33 (42) = happyShift action_75
action_33 _ = happyReduce_7

action_34 (28) = happyShift action_41
action_34 (29) = happyShift action_42
action_34 (30) = happyShift action_43
action_34 (31) = happyShift action_44
action_34 (32) = happyShift action_45
action_34 (33) = happyShift action_46
action_34 (34) = happyShift action_47
action_34 (36) = happyShift action_48
action_34 (37) = happyShift action_74
action_34 (38) = happyShift action_50
action_34 (39) = happyShift action_51
action_34 (42) = happyShift action_75
action_34 (44) = happyShift action_77
action_34 (48) = happyShift action_53
action_34 (49) = happyShift action_54
action_34 (50) = happyShift action_55
action_34 (51) = happyShift action_56
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (28) = happyShift action_41
action_35 (29) = happyShift action_42
action_35 (30) = happyShift action_43
action_35 (31) = happyShift action_44
action_35 (32) = happyShift action_45
action_35 (33) = happyShift action_46
action_35 (34) = happyShift action_47
action_35 (36) = happyShift action_48
action_35 (37) = happyShift action_74
action_35 (38) = happyShift action_50
action_35 (39) = happyShift action_51
action_35 (42) = happyShift action_75
action_35 (44) = happyShift action_76
action_35 (48) = happyShift action_53
action_35 (49) = happyShift action_54
action_35 (50) = happyShift action_55
action_35 (51) = happyShift action_56
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (28) = happyShift action_41
action_36 (29) = happyShift action_42
action_36 (30) = happyShift action_43
action_36 (31) = happyShift action_44
action_36 (32) = happyShift action_45
action_36 (33) = happyShift action_46
action_36 (34) = happyShift action_47
action_36 (36) = happyShift action_48
action_36 (37) = happyShift action_74
action_36 (38) = happyShift action_50
action_36 (39) = happyShift action_51
action_36 (42) = happyShift action_75
action_36 (48) = happyShift action_53
action_36 (49) = happyShift action_54
action_36 (50) = happyShift action_55
action_36 (51) = happyShift action_56
action_36 _ = happyReduce_29

action_37 (13) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (15) = happyShift action_10
action_37 (16) = happyShift action_11
action_37 (17) = happyShift action_12
action_37 (18) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (22) = happyShift action_15
action_37 (23) = happyShift action_16
action_37 (24) = happyShift action_17
action_37 (25) = happyShift action_18
action_37 (26) = happyShift action_19
action_37 (27) = happyShift action_20
action_37 (37) = happyShift action_21
action_37 (40) = happyShift action_22
action_37 (42) = happyShift action_23
action_37 (47) = happyShift action_24
action_37 (6) = happyGoto action_73
action_37 (7) = happyGoto action_5
action_37 (11) = happyGoto action_6
action_37 (12) = happyGoto action_7
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_20

action_39 (35) = happyShift action_30
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_4

action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (15) = happyShift action_10
action_41 (16) = happyShift action_11
action_41 (17) = happyShift action_12
action_41 (18) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (22) = happyShift action_15
action_41 (23) = happyShift action_16
action_41 (24) = happyShift action_17
action_41 (25) = happyShift action_18
action_41 (26) = happyShift action_19
action_41 (27) = happyShift action_20
action_41 (37) = happyShift action_21
action_41 (40) = happyShift action_22
action_41 (42) = happyShift action_23
action_41 (47) = happyShift action_24
action_41 (6) = happyGoto action_72
action_41 (7) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 (12) = happyGoto action_7
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (13) = happyShift action_8
action_42 (14) = happyShift action_9
action_42 (15) = happyShift action_10
action_42 (16) = happyShift action_11
action_42 (17) = happyShift action_12
action_42 (18) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (22) = happyShift action_15
action_42 (23) = happyShift action_16
action_42 (24) = happyShift action_17
action_42 (25) = happyShift action_18
action_42 (26) = happyShift action_19
action_42 (27) = happyShift action_20
action_42 (37) = happyShift action_21
action_42 (40) = happyShift action_22
action_42 (42) = happyShift action_23
action_42 (47) = happyShift action_24
action_42 (6) = happyGoto action_71
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 (12) = happyGoto action_7
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (13) = happyShift action_8
action_43 (14) = happyShift action_9
action_43 (15) = happyShift action_10
action_43 (16) = happyShift action_11
action_43 (17) = happyShift action_12
action_43 (18) = happyShift action_13
action_43 (19) = happyShift action_14
action_43 (22) = happyShift action_15
action_43 (23) = happyShift action_16
action_43 (24) = happyShift action_17
action_43 (25) = happyShift action_18
action_43 (26) = happyShift action_19
action_43 (27) = happyShift action_20
action_43 (37) = happyShift action_21
action_43 (40) = happyShift action_22
action_43 (42) = happyShift action_23
action_43 (47) = happyShift action_24
action_43 (6) = happyGoto action_70
action_43 (7) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 (12) = happyGoto action_7
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (15) = happyShift action_10
action_44 (16) = happyShift action_11
action_44 (17) = happyShift action_12
action_44 (18) = happyShift action_13
action_44 (19) = happyShift action_14
action_44 (22) = happyShift action_15
action_44 (23) = happyShift action_16
action_44 (24) = happyShift action_17
action_44 (25) = happyShift action_18
action_44 (26) = happyShift action_19
action_44 (27) = happyShift action_20
action_44 (37) = happyShift action_21
action_44 (40) = happyShift action_22
action_44 (42) = happyShift action_23
action_44 (47) = happyShift action_24
action_44 (6) = happyGoto action_69
action_44 (7) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 (12) = happyGoto action_7
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (13) = happyShift action_8
action_45 (14) = happyShift action_9
action_45 (15) = happyShift action_10
action_45 (16) = happyShift action_11
action_45 (17) = happyShift action_12
action_45 (18) = happyShift action_13
action_45 (19) = happyShift action_14
action_45 (22) = happyShift action_15
action_45 (23) = happyShift action_16
action_45 (24) = happyShift action_17
action_45 (25) = happyShift action_18
action_45 (26) = happyShift action_19
action_45 (27) = happyShift action_20
action_45 (37) = happyShift action_21
action_45 (40) = happyShift action_22
action_45 (42) = happyShift action_23
action_45 (47) = happyShift action_24
action_45 (6) = happyGoto action_68
action_45 (7) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 (12) = happyGoto action_7
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (13) = happyShift action_8
action_46 (14) = happyShift action_9
action_46 (15) = happyShift action_10
action_46 (16) = happyShift action_11
action_46 (17) = happyShift action_12
action_46 (18) = happyShift action_13
action_46 (19) = happyShift action_14
action_46 (22) = happyShift action_15
action_46 (23) = happyShift action_16
action_46 (24) = happyShift action_17
action_46 (25) = happyShift action_18
action_46 (26) = happyShift action_19
action_46 (27) = happyShift action_20
action_46 (37) = happyShift action_21
action_46 (40) = happyShift action_22
action_46 (42) = happyShift action_23
action_46 (47) = happyShift action_24
action_46 (6) = happyGoto action_67
action_46 (7) = happyGoto action_5
action_46 (11) = happyGoto action_6
action_46 (12) = happyGoto action_7
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (13) = happyShift action_8
action_47 (14) = happyShift action_9
action_47 (15) = happyShift action_10
action_47 (16) = happyShift action_11
action_47 (17) = happyShift action_12
action_47 (18) = happyShift action_13
action_47 (19) = happyShift action_14
action_47 (22) = happyShift action_15
action_47 (23) = happyShift action_16
action_47 (24) = happyShift action_17
action_47 (25) = happyShift action_18
action_47 (26) = happyShift action_19
action_47 (27) = happyShift action_20
action_47 (37) = happyShift action_21
action_47 (40) = happyShift action_22
action_47 (42) = happyShift action_23
action_47 (47) = happyShift action_24
action_47 (6) = happyGoto action_66
action_47 (7) = happyGoto action_5
action_47 (11) = happyGoto action_6
action_47 (12) = happyGoto action_7
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (13) = happyShift action_8
action_48 (14) = happyShift action_9
action_48 (15) = happyShift action_10
action_48 (16) = happyShift action_11
action_48 (17) = happyShift action_12
action_48 (18) = happyShift action_13
action_48 (19) = happyShift action_14
action_48 (22) = happyShift action_15
action_48 (23) = happyShift action_16
action_48 (24) = happyShift action_17
action_48 (25) = happyShift action_18
action_48 (26) = happyShift action_19
action_48 (27) = happyShift action_20
action_48 (37) = happyShift action_21
action_48 (40) = happyShift action_22
action_48 (42) = happyShift action_23
action_48 (47) = happyShift action_24
action_48 (6) = happyGoto action_65
action_48 (7) = happyGoto action_5
action_48 (11) = happyGoto action_6
action_48 (12) = happyGoto action_7
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (13) = happyShift action_8
action_49 (14) = happyShift action_9
action_49 (15) = happyShift action_10
action_49 (16) = happyShift action_11
action_49 (17) = happyShift action_12
action_49 (18) = happyShift action_13
action_49 (19) = happyShift action_14
action_49 (22) = happyShift action_15
action_49 (23) = happyShift action_16
action_49 (24) = happyShift action_17
action_49 (25) = happyShift action_18
action_49 (26) = happyShift action_19
action_49 (27) = happyShift action_20
action_49 (37) = happyShift action_21
action_49 (40) = happyShift action_22
action_49 (42) = happyShift action_23
action_49 (47) = happyShift action_24
action_49 (6) = happyGoto action_64
action_49 (7) = happyGoto action_5
action_49 (11) = happyGoto action_6
action_49 (12) = happyGoto action_7
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (13) = happyShift action_8
action_50 (14) = happyShift action_9
action_50 (15) = happyShift action_10
action_50 (16) = happyShift action_11
action_50 (17) = happyShift action_12
action_50 (18) = happyShift action_13
action_50 (19) = happyShift action_14
action_50 (22) = happyShift action_15
action_50 (23) = happyShift action_16
action_50 (24) = happyShift action_17
action_50 (25) = happyShift action_18
action_50 (26) = happyShift action_19
action_50 (27) = happyShift action_20
action_50 (37) = happyShift action_21
action_50 (40) = happyShift action_22
action_50 (42) = happyShift action_23
action_50 (47) = happyShift action_24
action_50 (6) = happyGoto action_63
action_50 (7) = happyGoto action_5
action_50 (11) = happyGoto action_6
action_50 (12) = happyGoto action_7
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (13) = happyShift action_8
action_51 (14) = happyShift action_9
action_51 (15) = happyShift action_10
action_51 (16) = happyShift action_11
action_51 (17) = happyShift action_12
action_51 (18) = happyShift action_13
action_51 (19) = happyShift action_14
action_51 (22) = happyShift action_15
action_51 (23) = happyShift action_16
action_51 (24) = happyShift action_17
action_51 (25) = happyShift action_18
action_51 (26) = happyShift action_19
action_51 (27) = happyShift action_20
action_51 (37) = happyShift action_21
action_51 (40) = happyShift action_22
action_51 (42) = happyShift action_23
action_51 (47) = happyShift action_24
action_51 (6) = happyGoto action_62
action_51 (7) = happyGoto action_5
action_51 (11) = happyGoto action_6
action_51 (12) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (13) = happyShift action_8
action_52 (14) = happyShift action_9
action_52 (15) = happyShift action_10
action_52 (16) = happyShift action_11
action_52 (17) = happyShift action_12
action_52 (18) = happyShift action_13
action_52 (19) = happyShift action_14
action_52 (22) = happyShift action_15
action_52 (23) = happyShift action_16
action_52 (24) = happyShift action_17
action_52 (25) = happyShift action_18
action_52 (26) = happyShift action_19
action_52 (27) = happyShift action_20
action_52 (37) = happyShift action_21
action_52 (40) = happyShift action_22
action_52 (42) = happyShift action_23
action_52 (47) = happyShift action_24
action_52 (6) = happyGoto action_61
action_52 (7) = happyGoto action_5
action_52 (10) = happyGoto action_27
action_52 (11) = happyGoto action_6
action_52 (12) = happyGoto action_7
action_52 _ = happyReduce_42

action_53 (13) = happyShift action_8
action_53 (14) = happyShift action_9
action_53 (15) = happyShift action_10
action_53 (16) = happyShift action_11
action_53 (17) = happyShift action_12
action_53 (18) = happyShift action_13
action_53 (19) = happyShift action_14
action_53 (22) = happyShift action_15
action_53 (23) = happyShift action_16
action_53 (24) = happyShift action_17
action_53 (25) = happyShift action_18
action_53 (26) = happyShift action_19
action_53 (27) = happyShift action_20
action_53 (37) = happyShift action_21
action_53 (40) = happyShift action_22
action_53 (42) = happyShift action_23
action_53 (47) = happyShift action_24
action_53 (6) = happyGoto action_60
action_53 (7) = happyGoto action_5
action_53 (11) = happyGoto action_6
action_53 (12) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (13) = happyShift action_8
action_54 (14) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (16) = happyShift action_11
action_54 (17) = happyShift action_12
action_54 (18) = happyShift action_13
action_54 (19) = happyShift action_14
action_54 (22) = happyShift action_15
action_54 (23) = happyShift action_16
action_54 (24) = happyShift action_17
action_54 (25) = happyShift action_18
action_54 (26) = happyShift action_19
action_54 (27) = happyShift action_20
action_54 (37) = happyShift action_21
action_54 (40) = happyShift action_22
action_54 (42) = happyShift action_23
action_54 (47) = happyShift action_24
action_54 (6) = happyGoto action_59
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 (12) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (13) = happyShift action_8
action_55 (14) = happyShift action_9
action_55 (15) = happyShift action_10
action_55 (16) = happyShift action_11
action_55 (17) = happyShift action_12
action_55 (18) = happyShift action_13
action_55 (19) = happyShift action_14
action_55 (22) = happyShift action_15
action_55 (23) = happyShift action_16
action_55 (24) = happyShift action_17
action_55 (25) = happyShift action_18
action_55 (26) = happyShift action_19
action_55 (27) = happyShift action_20
action_55 (37) = happyShift action_21
action_55 (40) = happyShift action_22
action_55 (42) = happyShift action_23
action_55 (47) = happyShift action_24
action_55 (6) = happyGoto action_58
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (12) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (13) = happyShift action_8
action_56 (14) = happyShift action_9
action_56 (15) = happyShift action_10
action_56 (16) = happyShift action_11
action_56 (17) = happyShift action_12
action_56 (18) = happyShift action_13
action_56 (19) = happyShift action_14
action_56 (22) = happyShift action_15
action_56 (23) = happyShift action_16
action_56 (24) = happyShift action_17
action_56 (25) = happyShift action_18
action_56 (26) = happyShift action_19
action_56 (27) = happyShift action_20
action_56 (37) = happyShift action_21
action_56 (40) = happyShift action_22
action_56 (42) = happyShift action_23
action_56 (47) = happyShift action_24
action_56 (6) = happyGoto action_57
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (12) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (32) = happyShift action_45
action_57 (33) = happyShift action_46
action_57 (34) = happyShift action_47
action_57 (36) = happyShift action_48
action_57 (37) = happyShift action_74
action_57 (38) = happyShift action_50
action_57 (39) = happyShift action_51
action_57 (42) = happyShift action_75
action_57 (48) = happyShift action_53
action_57 (49) = happyShift action_54
action_57 _ = happyReduce_34

action_58 (32) = happyShift action_45
action_58 (33) = happyShift action_46
action_58 (34) = happyShift action_47
action_58 (36) = happyShift action_48
action_58 (37) = happyShift action_74
action_58 (38) = happyShift action_50
action_58 (39) = happyShift action_51
action_58 (42) = happyShift action_75
action_58 (48) = happyShift action_53
action_58 (49) = happyShift action_54
action_58 _ = happyReduce_33

action_59 (32) = happyShift action_45
action_59 (33) = happyShift action_46
action_59 (34) = happyShift action_47
action_59 (42) = happyShift action_75
action_59 (48) = happyShift action_53
action_59 _ = happyReduce_32

action_60 (42) = happyShift action_75
action_60 (48) = happyShift action_53
action_60 _ = happyReduce_31

action_61 (28) = happyShift action_41
action_61 (29) = happyShift action_42
action_61 (30) = happyShift action_43
action_61 (31) = happyShift action_44
action_61 (32) = happyShift action_45
action_61 (33) = happyShift action_46
action_61 (34) = happyShift action_47
action_61 (36) = happyShift action_48
action_61 (37) = happyShift action_74
action_61 (38) = happyShift action_50
action_61 (39) = happyShift action_51
action_61 (42) = happyShift action_75
action_61 (43) = happyShift action_88
action_61 (46) = happyShift action_81
action_61 (48) = happyShift action_53
action_61 (49) = happyShift action_54
action_61 (50) = happyShift action_55
action_61 (51) = happyShift action_56
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (32) = happyShift action_45
action_62 (33) = happyShift action_46
action_62 (34) = happyShift action_47
action_62 (42) = happyShift action_75
action_62 (48) = happyShift action_53
action_62 _ = happyReduce_26

action_63 (32) = happyShift action_45
action_63 (33) = happyShift action_46
action_63 (34) = happyShift action_47
action_63 (42) = happyShift action_75
action_63 (48) = happyShift action_53
action_63 _ = happyReduce_25

action_64 (32) = happyShift action_45
action_64 (33) = happyShift action_46
action_64 (34) = happyShift action_47
action_64 (42) = happyShift action_75
action_64 (48) = happyShift action_53
action_64 _ = happyReduce_35

action_65 (32) = happyShift action_45
action_65 (33) = happyShift action_46
action_65 (34) = happyShift action_47
action_65 (38) = happyShift action_50
action_65 (39) = happyShift action_51
action_65 (42) = happyShift action_75
action_65 (48) = happyShift action_53
action_65 (49) = happyShift action_54
action_65 _ = happyReduce_23

action_66 (32) = happyShift action_45
action_66 (34) = happyShift action_47
action_66 (42) = happyShift action_75
action_66 (48) = happyShift action_53
action_66 _ = happyReduce_19

action_67 (32) = happyShift action_45
action_67 (34) = happyShift action_47
action_67 (42) = happyShift action_75
action_67 (48) = happyShift action_53
action_67 _ = happyReduce_18

action_68 (32) = happyShift action_45
action_68 (34) = happyShift action_47
action_68 (42) = happyShift action_75
action_68 (48) = happyShift action_53
action_68 _ = happyReduce_17

action_69 (28) = happyShift action_41
action_69 (29) = happyShift action_42
action_69 (32) = happyShift action_45
action_69 (33) = happyShift action_46
action_69 (34) = happyShift action_47
action_69 (36) = happyShift action_48
action_69 (37) = happyShift action_74
action_69 (38) = happyShift action_50
action_69 (39) = happyShift action_51
action_69 (42) = happyShift action_75
action_69 (48) = happyShift action_53
action_69 (49) = happyShift action_54
action_69 (50) = happyShift action_55
action_69 (51) = happyShift action_56
action_69 _ = happyReduce_16

action_70 (28) = happyShift action_41
action_70 (29) = happyShift action_42
action_70 (32) = happyShift action_45
action_70 (33) = happyShift action_46
action_70 (34) = happyShift action_47
action_70 (36) = happyShift action_48
action_70 (37) = happyShift action_74
action_70 (38) = happyShift action_50
action_70 (39) = happyShift action_51
action_70 (42) = happyShift action_75
action_70 (48) = happyShift action_53
action_70 (49) = happyShift action_54
action_70 (50) = happyShift action_55
action_70 (51) = happyShift action_56
action_70 _ = happyReduce_15

action_71 (32) = happyShift action_45
action_71 (33) = happyShift action_46
action_71 (34) = happyShift action_47
action_71 (36) = happyShift action_48
action_71 (37) = happyShift action_74
action_71 (38) = happyShift action_50
action_71 (39) = happyShift action_51
action_71 (42) = happyShift action_75
action_71 (48) = happyShift action_53
action_71 (49) = happyShift action_54
action_71 _ = happyReduce_14

action_72 (32) = happyShift action_45
action_72 (33) = happyShift action_46
action_72 (34) = happyShift action_47
action_72 (36) = happyShift action_48
action_72 (37) = happyShift action_74
action_72 (38) = happyShift action_50
action_72 (39) = happyShift action_51
action_72 (42) = happyShift action_75
action_72 (48) = happyShift action_53
action_72 (49) = happyShift action_54
action_72 _ = happyReduce_13

action_73 (28) = happyShift action_41
action_73 (29) = happyShift action_42
action_73 (30) = happyShift action_43
action_73 (31) = happyShift action_44
action_73 (32) = happyShift action_45
action_73 (33) = happyShift action_46
action_73 (34) = happyShift action_47
action_73 (36) = happyShift action_48
action_73 (37) = happyShift action_74
action_73 (38) = happyShift action_50
action_73 (39) = happyShift action_51
action_73 (42) = happyShift action_75
action_73 (45) = happyShift action_87
action_73 (48) = happyShift action_53
action_73 (49) = happyShift action_54
action_73 (50) = happyShift action_55
action_73 (51) = happyShift action_56
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (13) = happyShift action_8
action_74 (14) = happyShift action_9
action_74 (15) = happyShift action_10
action_74 (16) = happyShift action_11
action_74 (17) = happyShift action_12
action_74 (18) = happyShift action_13
action_74 (19) = happyShift action_14
action_74 (22) = happyShift action_15
action_74 (23) = happyShift action_16
action_74 (24) = happyShift action_17
action_74 (25) = happyShift action_18
action_74 (26) = happyShift action_19
action_74 (27) = happyShift action_20
action_74 (37) = happyShift action_21
action_74 (40) = happyShift action_22
action_74 (42) = happyShift action_23
action_74 (47) = happyShift action_24
action_74 (6) = happyGoto action_86
action_74 (7) = happyGoto action_5
action_74 (11) = happyGoto action_6
action_74 (12) = happyGoto action_7
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (13) = happyShift action_8
action_75 (14) = happyShift action_9
action_75 (15) = happyShift action_10
action_75 (16) = happyShift action_11
action_75 (17) = happyShift action_12
action_75 (18) = happyShift action_13
action_75 (19) = happyShift action_14
action_75 (22) = happyShift action_15
action_75 (23) = happyShift action_16
action_75 (24) = happyShift action_17
action_75 (25) = happyShift action_18
action_75 (26) = happyShift action_19
action_75 (27) = happyShift action_20
action_75 (37) = happyShift action_21
action_75 (40) = happyShift action_22
action_75 (42) = happyShift action_23
action_75 (47) = happyShift action_24
action_75 (6) = happyGoto action_85
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 (12) = happyGoto action_7
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (13) = happyShift action_8
action_76 (14) = happyShift action_9
action_76 (15) = happyShift action_10
action_76 (16) = happyShift action_11
action_76 (17) = happyShift action_12
action_76 (18) = happyShift action_13
action_76 (19) = happyShift action_14
action_76 (22) = happyShift action_15
action_76 (23) = happyShift action_16
action_76 (24) = happyShift action_17
action_76 (25) = happyShift action_18
action_76 (26) = happyShift action_19
action_76 (27) = happyShift action_20
action_76 (37) = happyShift action_21
action_76 (40) = happyShift action_22
action_76 (42) = happyShift action_23
action_76 (47) = happyShift action_24
action_76 (4) = happyGoto action_84
action_76 (5) = happyGoto action_3
action_76 (6) = happyGoto action_4
action_76 (7) = happyGoto action_5
action_76 (11) = happyGoto action_6
action_76 (12) = happyGoto action_7
action_76 _ = happyReduce_1

action_77 (13) = happyShift action_8
action_77 (14) = happyShift action_9
action_77 (15) = happyShift action_10
action_77 (16) = happyShift action_11
action_77 (17) = happyShift action_12
action_77 (18) = happyShift action_13
action_77 (19) = happyShift action_14
action_77 (22) = happyShift action_15
action_77 (23) = happyShift action_16
action_77 (24) = happyShift action_17
action_77 (25) = happyShift action_18
action_77 (26) = happyShift action_19
action_77 (27) = happyShift action_20
action_77 (37) = happyShift action_21
action_77 (40) = happyShift action_22
action_77 (42) = happyShift action_23
action_77 (47) = happyShift action_24
action_77 (4) = happyGoto action_83
action_77 (5) = happyGoto action_3
action_77 (6) = happyGoto action_4
action_77 (7) = happyGoto action_5
action_77 (11) = happyGoto action_6
action_77 (12) = happyGoto action_7
action_77 _ = happyReduce_1

action_78 (28) = happyShift action_41
action_78 (29) = happyShift action_42
action_78 (30) = happyShift action_43
action_78 (31) = happyShift action_44
action_78 (32) = happyShift action_45
action_78 (33) = happyShift action_46
action_78 (34) = happyShift action_47
action_78 (36) = happyShift action_48
action_78 (37) = happyShift action_74
action_78 (38) = happyShift action_50
action_78 (39) = happyShift action_51
action_78 (42) = happyShift action_75
action_78 (48) = happyShift action_53
action_78 (49) = happyShift action_54
action_78 (50) = happyShift action_55
action_78 (51) = happyShift action_56
action_78 _ = happyReduce_48

action_79 _ = happyReduce_36

action_80 _ = happyReduce_12

action_81 (13) = happyShift action_8
action_81 (14) = happyShift action_9
action_81 (15) = happyShift action_10
action_81 (16) = happyShift action_11
action_81 (17) = happyShift action_12
action_81 (18) = happyShift action_13
action_81 (19) = happyShift action_14
action_81 (22) = happyShift action_15
action_81 (23) = happyShift action_16
action_81 (24) = happyShift action_17
action_81 (25) = happyShift action_18
action_81 (26) = happyShift action_19
action_81 (27) = happyShift action_20
action_81 (37) = happyShift action_21
action_81 (40) = happyShift action_22
action_81 (42) = happyShift action_23
action_81 (47) = happyShift action_24
action_81 (6) = happyGoto action_26
action_81 (7) = happyGoto action_5
action_81 (10) = happyGoto action_82
action_81 (11) = happyGoto action_6
action_81 (12) = happyGoto action_7
action_81 _ = happyReduce_42

action_82 _ = happyReduce_44

action_83 (45) = happyShift action_90
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (45) = happyShift action_89
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (28) = happyShift action_41
action_85 (29) = happyShift action_42
action_85 (30) = happyShift action_43
action_85 (31) = happyShift action_44
action_85 (32) = happyShift action_45
action_85 (33) = happyShift action_46
action_85 (34) = happyShift action_47
action_85 (36) = happyShift action_48
action_85 (37) = happyShift action_74
action_85 (38) = happyShift action_50
action_85 (39) = happyShift action_51
action_85 (42) = happyShift action_75
action_85 (43) = happyShift action_88
action_85 (48) = happyShift action_53
action_85 (49) = happyShift action_54
action_85 (50) = happyShift action_55
action_85 (51) = happyShift action_56
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (32) = happyShift action_45
action_86 (33) = happyShift action_46
action_86 (34) = happyShift action_47
action_86 (38) = happyShift action_50
action_86 (39) = happyShift action_51
action_86 (42) = happyShift action_75
action_86 (48) = happyShift action_53
action_86 (49) = happyShift action_54
action_86 _ = happyReduce_24

action_87 _ = happyReduce_28

action_88 _ = happyReduce_27

action_89 _ = happyReduce_5

action_90 (20) = happyShift action_92
action_90 (8) = happyGoto action_91
action_90 _ = happyReduce_38

action_91 (21) = happyShift action_95
action_91 (9) = happyGoto action_94
action_91 _ = happyReduce_40

action_92 (13) = happyShift action_8
action_92 (14) = happyShift action_9
action_92 (15) = happyShift action_10
action_92 (16) = happyShift action_11
action_92 (17) = happyShift action_12
action_92 (18) = happyShift action_13
action_92 (19) = happyShift action_14
action_92 (22) = happyShift action_15
action_92 (23) = happyShift action_16
action_92 (24) = happyShift action_17
action_92 (25) = happyShift action_18
action_92 (26) = happyShift action_19
action_92 (27) = happyShift action_20
action_92 (37) = happyShift action_21
action_92 (40) = happyShift action_22
action_92 (42) = happyShift action_23
action_92 (47) = happyShift action_24
action_92 (6) = happyGoto action_93
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 (12) = happyGoto action_7
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (28) = happyShift action_41
action_93 (29) = happyShift action_42
action_93 (30) = happyShift action_43
action_93 (31) = happyShift action_44
action_93 (32) = happyShift action_45
action_93 (33) = happyShift action_46
action_93 (34) = happyShift action_47
action_93 (36) = happyShift action_48
action_93 (37) = happyShift action_74
action_93 (38) = happyShift action_50
action_93 (39) = happyShift action_51
action_93 (42) = happyShift action_75
action_93 (44) = happyShift action_97
action_93 (48) = happyShift action_53
action_93 (49) = happyShift action_54
action_93 (50) = happyShift action_55
action_93 (51) = happyShift action_56
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_37

action_95 (44) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (13) = happyShift action_8
action_96 (14) = happyShift action_9
action_96 (15) = happyShift action_10
action_96 (16) = happyShift action_11
action_96 (17) = happyShift action_12
action_96 (18) = happyShift action_13
action_96 (19) = happyShift action_14
action_96 (22) = happyShift action_15
action_96 (23) = happyShift action_16
action_96 (24) = happyShift action_17
action_96 (25) = happyShift action_18
action_96 (26) = happyShift action_19
action_96 (27) = happyShift action_20
action_96 (37) = happyShift action_21
action_96 (40) = happyShift action_22
action_96 (42) = happyShift action_23
action_96 (47) = happyShift action_24
action_96 (4) = happyGoto action_99
action_96 (5) = happyGoto action_3
action_96 (6) = happyGoto action_4
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 (12) = happyGoto action_7
action_96 _ = happyReduce_1

action_97 (13) = happyShift action_8
action_97 (14) = happyShift action_9
action_97 (15) = happyShift action_10
action_97 (16) = happyShift action_11
action_97 (17) = happyShift action_12
action_97 (18) = happyShift action_13
action_97 (19) = happyShift action_14
action_97 (22) = happyShift action_15
action_97 (23) = happyShift action_16
action_97 (24) = happyShift action_17
action_97 (25) = happyShift action_18
action_97 (26) = happyShift action_19
action_97 (27) = happyShift action_20
action_97 (37) = happyShift action_21
action_97 (40) = happyShift action_22
action_97 (42) = happyShift action_23
action_97 (47) = happyShift action_24
action_97 (4) = happyGoto action_98
action_97 (5) = happyGoto action_3
action_97 (6) = happyGoto action_4
action_97 (7) = happyGoto action_5
action_97 (11) = happyGoto action_6
action_97 (12) = happyGoto action_7
action_97 _ = happyReduce_1

action_98 (45) = happyShift action_101
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (45) = happyShift action_100
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_41

action_101 (20) = happyShift action_92
action_101 (8) = happyGoto action_102
action_101 _ = happyReduce_38

action_102 _ = happyReduce_39

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int' happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean' happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Stream happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LE happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GE happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (NE happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Take happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  6 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Var happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_2  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 7 7 happyReduction_37
happyReduction_37 ((HappyAbsSyn9  happy_var_7) `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If ((happy_var_2, happy_var_4) : (happy_var_6 ++ happy_var_7))
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_0  8 happyReduction_38
happyReduction_38  =  HappyAbsSyn8
		 ([]
	)

happyReduce_39 = happyReduce 6 8 happyReduction_39
happyReduction_39 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_0  9 happyReduction_40
happyReduction_40  =  HappyAbsSyn9
		 ([]
	)

happyReduce_41 = happyReduce 4 9 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_0  10 happyReduction_42
happyReduction_42  =  HappyAbsSyn10
		 ([]
	)

happyReduce_43 = happySpecReduce_1  10 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  10 happyReduction_44
happyReduction_44 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  11 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_46 = happySpecReduce_1  11 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_47 = happySpecReduce_1  11 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_48 = happySpecReduce_3  12 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn12
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 13;
	TokenStreamType _ -> cont 14;
	TokenBoolType _ -> cont 15;
	TokenInput _ -> cont 16;
	TokenPrint _ -> cont 17;
	TokenWhile _ -> cont 18;
	TokenIf _ -> cont 19;
	TokenElif _ -> cont 20;
	TokenElse _ -> cont 21;
	TokenHasNext _ -> cont 22;
	TokenNext _ -> cont 23;
	TokenSize _ -> cont 24;
	TokenInt _ happy_dollar_dollar -> cont 25;
	TokenBool _ happy_dollar_dollar -> cont 26;
	TokenVar _ happy_dollar_dollar -> cont 27;
	TokenLE _ -> cont 28;
	TokenGE _ -> cont 29;
	TokenEQ _ -> cont 30;
	TokenNE _ -> cont 31;
	TokenCons _ -> cont 32;
	TokenConcat _ -> cont 33;
	TokenTake _ -> cont 34;
	TokenAssign _ -> cont 35;
	TokenPlus _ -> cont 36;
	TokenMinus _ -> cont 37;
	TokenTimes _ -> cont 38;
	TokenDiv _ -> cont 39;
	TokenLParen _ -> cont 40;
	TokenRParen _ -> cont 41;
	TokenLSquare _ -> cont 42;
	TokenRSquare _ -> cont 43;
	TokenLCurly _ -> cont 44;
	TokenRCurly _ -> cont 45;
	TokenComma _ -> cont 46;
	TokenNot _ -> cont 47;
	TokenExponent _ -> cont 48;
	TokenModulo _ -> cont 49;
	TokenLT _ -> cont 50;
	TokenGT _ -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError ts = error errorMessage
    where lineCol = words (tokenPosn (last ts))
          errorMessage = "Parse error at line " ++ (lineCol !! 0) ++ ", column " ++ (lineCol !! 1)

data Type = TypeInt 
          | TypeBoolean 
          | TypeStream 
          deriving (Eq, Show)

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
         | Print Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | Int' Int
         | Boolean' Bool
         | Stream [Exp]
         | Var Type Exp
         | VarRef String
         | LE Exp Exp
         | GE Exp Exp
         | EQ' Exp Exp
         | NE Exp Exp
         | Cons Exp Exp
         | Concat Exp Exp
         | Take Exp Exp
         | Assign String Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | StreamGet Exp Exp
         | InputGet Exp
         | Not Exp
         | Exponent Exp Exp
         | Modulo Exp Exp
         | LT' Exp Exp
         | GT' Exp Exp
         | Negate Exp
         deriving (Eq, Show)
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc1900_0/ghc_2.h" #-}


























































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

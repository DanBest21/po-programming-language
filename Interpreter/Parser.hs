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
happyExpList = Happy_Data_Array.listArray (0,656) ([61440,2023,17040,0,0,0,0,0,0,0,0,0,0,61440,65511,49915,7,384,0,0,4096,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,0,0,0,0,0,0,0,0,1024,0,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,0,14336,2080,0,63488,41595,7,0,16384,0,0,31736,1923,0,14336,2080,61440,2023,17040,0,0,8192,0,0,0,2,0,0,32,0,63488,35451,7,32768,42943,120,0,31736,1922,32512,126,1065,0,0,0,0,0,64,0,0,0,8,32512,126,1065,0,0,2048,0,0,0,0,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,0,31616,386,0,47104,6183,0,32768,33283,0,0,8192,8,0,31736,1958,0,14336,2080,0,32768,33283,0,0,8248,8,0,25472,386,0,10240,2080,0,32768,33282,0,0,8232,8,0,31640,1922,0,47488,30759,0,32768,33403,1,0,10168,24,59376,36871,66,0,49024,30887,61440,2023,17040,0,32768,10175,121,59376,36871,66,32512,126,1065,61440,2023,17040,0,32383,10496,4,0,31736,1922,0,0,0,0,0,0,0,32383,10496,4,0,0,0,0,0,256,0,0,4096,0,32768,26559,120,0,25472,386,0,0,0,0,0,4096,0,32383,10496,4,0,0,16,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (23) = happyShift action_18
action_0 (24) = happyShift action_19
action_0 (25) = happyShift action_20
action_0 (26) = happyShift action_21
action_0 (27) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (40) = happyShift action_24
action_0 (42) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (52) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (13) = happyShift action_10
action_4 (14) = happyShift action_11
action_4 (15) = happyShift action_12
action_4 (16) = happyShift action_13
action_4 (17) = happyShift action_14
action_4 (18) = happyShift action_15
action_4 (19) = happyShift action_16
action_4 (22) = happyShift action_17
action_4 (23) = happyShift action_18
action_4 (24) = happyShift action_19
action_4 (25) = happyShift action_20
action_4 (26) = happyShift action_21
action_4 (27) = happyShift action_22
action_4 (28) = happyShift action_46
action_4 (29) = happyShift action_47
action_4 (30) = happyShift action_48
action_4 (31) = happyShift action_49
action_4 (32) = happyShift action_50
action_4 (33) = happyShift action_51
action_4 (34) = happyShift action_52
action_4 (36) = happyShift action_53
action_4 (37) = happyShift action_54
action_4 (38) = happyShift action_55
action_4 (39) = happyShift action_56
action_4 (40) = happyShift action_24
action_4 (42) = happyShift action_57
action_4 (47) = happyShift action_26
action_4 (48) = happyShift action_58
action_4 (49) = happyShift action_59
action_4 (50) = happyShift action_60
action_4 (51) = happyShift action_61
action_4 (5) = happyGoto action_45
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (8) = happyGoto action_6
action_4 (9) = happyGoto action_7
action_4 (11) = happyGoto action_8
action_4 (12) = happyGoto action_9
action_4 _ = happyReduce_3

action_5 (20) = happyShift action_43
action_5 (21) = happyShift action_44
action_5 _ = happyReduce_6

action_6 (21) = happyShift action_42
action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 (27) = happyShift action_41
action_8 (12) = happyGoto action_40
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_23

action_10 _ = happyReduce_46

action_11 _ = happyReduce_48

action_12 _ = happyReduce_47

action_13 (44) = happyShift action_39
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_10
action_14 (14) = happyShift action_11
action_14 (15) = happyShift action_12
action_14 (16) = happyShift action_13
action_14 (17) = happyShift action_14
action_14 (18) = happyShift action_15
action_14 (19) = happyShift action_16
action_14 (22) = happyShift action_17
action_14 (23) = happyShift action_18
action_14 (24) = happyShift action_19
action_14 (25) = happyShift action_20
action_14 (26) = happyShift action_21
action_14 (27) = happyShift action_22
action_14 (37) = happyShift action_23
action_14 (40) = happyShift action_24
action_14 (42) = happyShift action_25
action_14 (47) = happyShift action_26
action_14 (6) = happyGoto action_38
action_14 (7) = happyGoto action_5
action_14 (8) = happyGoto action_6
action_14 (9) = happyGoto action_7
action_14 (11) = happyGoto action_8
action_14 (12) = happyGoto action_9
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_10
action_15 (14) = happyShift action_11
action_15 (15) = happyShift action_12
action_15 (16) = happyShift action_13
action_15 (17) = happyShift action_14
action_15 (18) = happyShift action_15
action_15 (19) = happyShift action_16
action_15 (22) = happyShift action_17
action_15 (23) = happyShift action_18
action_15 (24) = happyShift action_19
action_15 (25) = happyShift action_20
action_15 (26) = happyShift action_21
action_15 (27) = happyShift action_22
action_15 (37) = happyShift action_23
action_15 (40) = happyShift action_24
action_15 (42) = happyShift action_25
action_15 (47) = happyShift action_26
action_15 (6) = happyGoto action_37
action_15 (7) = happyGoto action_5
action_15 (8) = happyGoto action_6
action_15 (9) = happyGoto action_7
action_15 (11) = happyGoto action_8
action_15 (12) = happyGoto action_9
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (17) = happyShift action_14
action_16 (18) = happyShift action_15
action_16 (19) = happyShift action_16
action_16 (22) = happyShift action_17
action_16 (23) = happyShift action_18
action_16 (24) = happyShift action_19
action_16 (25) = happyShift action_20
action_16 (26) = happyShift action_21
action_16 (27) = happyShift action_22
action_16 (37) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (42) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (6) = happyGoto action_36
action_16 (7) = happyGoto action_5
action_16 (8) = happyGoto action_6
action_16 (9) = happyGoto action_7
action_16 (11) = happyGoto action_8
action_16 (12) = happyGoto action_9
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (16) = happyShift action_13
action_17 (17) = happyShift action_14
action_17 (18) = happyShift action_15
action_17 (19) = happyShift action_16
action_17 (22) = happyShift action_17
action_17 (23) = happyShift action_18
action_17 (24) = happyShift action_19
action_17 (25) = happyShift action_20
action_17 (26) = happyShift action_21
action_17 (27) = happyShift action_22
action_17 (37) = happyShift action_23
action_17 (40) = happyShift action_24
action_17 (42) = happyShift action_25
action_17 (47) = happyShift action_26
action_17 (6) = happyGoto action_35
action_17 (7) = happyGoto action_5
action_17 (8) = happyGoto action_6
action_17 (9) = happyGoto action_7
action_17 (11) = happyGoto action_8
action_17 (12) = happyGoto action_9
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (17) = happyShift action_14
action_18 (18) = happyShift action_15
action_18 (19) = happyShift action_16
action_18 (22) = happyShift action_17
action_18 (23) = happyShift action_18
action_18 (24) = happyShift action_19
action_18 (25) = happyShift action_20
action_18 (26) = happyShift action_21
action_18 (27) = happyShift action_22
action_18 (37) = happyShift action_23
action_18 (40) = happyShift action_24
action_18 (42) = happyShift action_25
action_18 (47) = happyShift action_26
action_18 (6) = happyGoto action_34
action_18 (7) = happyGoto action_5
action_18 (8) = happyGoto action_6
action_18 (9) = happyGoto action_7
action_18 (11) = happyGoto action_8
action_18 (12) = happyGoto action_9
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (13) = happyShift action_10
action_19 (14) = happyShift action_11
action_19 (15) = happyShift action_12
action_19 (16) = happyShift action_13
action_19 (17) = happyShift action_14
action_19 (18) = happyShift action_15
action_19 (19) = happyShift action_16
action_19 (22) = happyShift action_17
action_19 (23) = happyShift action_18
action_19 (24) = happyShift action_19
action_19 (25) = happyShift action_20
action_19 (26) = happyShift action_21
action_19 (27) = happyShift action_22
action_19 (37) = happyShift action_23
action_19 (40) = happyShift action_24
action_19 (42) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (6) = happyGoto action_33
action_19 (7) = happyGoto action_5
action_19 (8) = happyGoto action_6
action_19 (9) = happyGoto action_7
action_19 (11) = happyGoto action_8
action_19 (12) = happyGoto action_9
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_12

action_21 _ = happyReduce_13

action_22 (35) = happyShift action_32
action_22 _ = happyReduce_24

action_23 (13) = happyShift action_10
action_23 (14) = happyShift action_11
action_23 (15) = happyShift action_12
action_23 (16) = happyShift action_13
action_23 (17) = happyShift action_14
action_23 (18) = happyShift action_15
action_23 (19) = happyShift action_16
action_23 (22) = happyShift action_17
action_23 (23) = happyShift action_18
action_23 (24) = happyShift action_19
action_23 (25) = happyShift action_20
action_23 (26) = happyShift action_21
action_23 (27) = happyShift action_22
action_23 (37) = happyShift action_23
action_23 (40) = happyShift action_24
action_23 (42) = happyShift action_25
action_23 (47) = happyShift action_26
action_23 (6) = happyGoto action_31
action_23 (7) = happyGoto action_5
action_23 (8) = happyGoto action_6
action_23 (9) = happyGoto action_7
action_23 (11) = happyGoto action_8
action_23 (12) = happyGoto action_9
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_11
action_24 (15) = happyShift action_12
action_24 (16) = happyShift action_13
action_24 (17) = happyShift action_14
action_24 (18) = happyShift action_15
action_24 (19) = happyShift action_16
action_24 (22) = happyShift action_17
action_24 (23) = happyShift action_18
action_24 (24) = happyShift action_19
action_24 (25) = happyShift action_20
action_24 (26) = happyShift action_21
action_24 (27) = happyShift action_22
action_24 (37) = happyShift action_23
action_24 (40) = happyShift action_24
action_24 (42) = happyShift action_25
action_24 (47) = happyShift action_26
action_24 (6) = happyGoto action_30
action_24 (7) = happyGoto action_5
action_24 (8) = happyGoto action_6
action_24 (9) = happyGoto action_7
action_24 (11) = happyGoto action_8
action_24 (12) = happyGoto action_9
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (13) = happyShift action_10
action_25 (14) = happyShift action_11
action_25 (15) = happyShift action_12
action_25 (16) = happyShift action_13
action_25 (17) = happyShift action_14
action_25 (18) = happyShift action_15
action_25 (19) = happyShift action_16
action_25 (22) = happyShift action_17
action_25 (23) = happyShift action_18
action_25 (24) = happyShift action_19
action_25 (25) = happyShift action_20
action_25 (26) = happyShift action_21
action_25 (27) = happyShift action_22
action_25 (37) = happyShift action_23
action_25 (40) = happyShift action_24
action_25 (42) = happyShift action_25
action_25 (47) = happyShift action_26
action_25 (6) = happyGoto action_28
action_25 (7) = happyGoto action_5
action_25 (8) = happyGoto action_6
action_25 (9) = happyGoto action_7
action_25 (10) = happyGoto action_29
action_25 (11) = happyGoto action_8
action_25 (12) = happyGoto action_9
action_25 _ = happyReduce_43

action_26 (13) = happyShift action_10
action_26 (14) = happyShift action_11
action_26 (15) = happyShift action_12
action_26 (16) = happyShift action_13
action_26 (17) = happyShift action_14
action_26 (18) = happyShift action_15
action_26 (19) = happyShift action_16
action_26 (22) = happyShift action_17
action_26 (23) = happyShift action_18
action_26 (24) = happyShift action_19
action_26 (25) = happyShift action_20
action_26 (26) = happyShift action_21
action_26 (27) = happyShift action_22
action_26 (37) = happyShift action_23
action_26 (40) = happyShift action_24
action_26 (42) = happyShift action_25
action_26 (47) = happyShift action_26
action_26 (6) = happyGoto action_27
action_26 (7) = happyGoto action_5
action_26 (8) = happyGoto action_6
action_26 (9) = happyGoto action_7
action_26 (11) = happyGoto action_8
action_26 (12) = happyGoto action_9
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (32) = happyShift action_50
action_27 (33) = happyShift action_51
action_27 (34) = happyShift action_52
action_27 (42) = happyShift action_83
action_27 (48) = happyShift action_58
action_27 _ = happyReduce_32

action_28 (28) = happyShift action_46
action_28 (29) = happyShift action_47
action_28 (30) = happyShift action_48
action_28 (31) = happyShift action_49
action_28 (32) = happyShift action_50
action_28 (33) = happyShift action_51
action_28 (34) = happyShift action_52
action_28 (36) = happyShift action_53
action_28 (37) = happyShift action_82
action_28 (38) = happyShift action_55
action_28 (39) = happyShift action_56
action_28 (42) = happyShift action_83
action_28 (46) = happyShift action_89
action_28 (48) = happyShift action_58
action_28 (49) = happyShift action_59
action_28 (50) = happyShift action_60
action_28 (51) = happyShift action_61
action_28 _ = happyReduce_44

action_29 (43) = happyShift action_88
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (28) = happyShift action_46
action_30 (29) = happyShift action_47
action_30 (30) = happyShift action_48
action_30 (31) = happyShift action_49
action_30 (32) = happyShift action_50
action_30 (33) = happyShift action_51
action_30 (34) = happyShift action_52
action_30 (36) = happyShift action_53
action_30 (37) = happyShift action_82
action_30 (38) = happyShift action_55
action_30 (39) = happyShift action_56
action_30 (41) = happyShift action_87
action_30 (42) = happyShift action_83
action_30 (48) = happyShift action_58
action_30 (49) = happyShift action_59
action_30 (50) = happyShift action_60
action_30 (51) = happyShift action_61
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (32) = happyShift action_50
action_31 (33) = happyShift action_51
action_31 (34) = happyShift action_52
action_31 (42) = happyShift action_83
action_31 (48) = happyShift action_58
action_31 _ = happyReduce_37

action_32 (13) = happyShift action_10
action_32 (14) = happyShift action_11
action_32 (15) = happyShift action_12
action_32 (16) = happyShift action_13
action_32 (17) = happyShift action_14
action_32 (18) = happyShift action_15
action_32 (19) = happyShift action_16
action_32 (22) = happyShift action_17
action_32 (23) = happyShift action_18
action_32 (24) = happyShift action_19
action_32 (25) = happyShift action_20
action_32 (26) = happyShift action_21
action_32 (27) = happyShift action_22
action_32 (37) = happyShift action_23
action_32 (40) = happyShift action_24
action_32 (42) = happyShift action_25
action_32 (47) = happyShift action_26
action_32 (6) = happyGoto action_86
action_32 (7) = happyGoto action_5
action_32 (8) = happyGoto action_6
action_32 (9) = happyGoto action_7
action_32 (11) = happyGoto action_8
action_32 (12) = happyGoto action_9
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (42) = happyShift action_83
action_33 _ = happyReduce_11

action_34 (42) = happyShift action_83
action_34 _ = happyReduce_10

action_35 (42) = happyShift action_83
action_35 _ = happyReduce_9

action_36 (28) = happyShift action_46
action_36 (29) = happyShift action_47
action_36 (30) = happyShift action_48
action_36 (31) = happyShift action_49
action_36 (32) = happyShift action_50
action_36 (33) = happyShift action_51
action_36 (34) = happyShift action_52
action_36 (36) = happyShift action_53
action_36 (37) = happyShift action_82
action_36 (38) = happyShift action_55
action_36 (39) = happyShift action_56
action_36 (42) = happyShift action_83
action_36 (44) = happyShift action_85
action_36 (48) = happyShift action_58
action_36 (49) = happyShift action_59
action_36 (50) = happyShift action_60
action_36 (51) = happyShift action_61
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_46
action_37 (29) = happyShift action_47
action_37 (30) = happyShift action_48
action_37 (31) = happyShift action_49
action_37 (32) = happyShift action_50
action_37 (33) = happyShift action_51
action_37 (34) = happyShift action_52
action_37 (36) = happyShift action_53
action_37 (37) = happyShift action_82
action_37 (38) = happyShift action_55
action_37 (39) = happyShift action_56
action_37 (42) = happyShift action_83
action_37 (44) = happyShift action_84
action_37 (48) = happyShift action_58
action_37 (49) = happyShift action_59
action_37 (50) = happyShift action_60
action_37 (51) = happyShift action_61
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (28) = happyShift action_46
action_38 (29) = happyShift action_47
action_38 (30) = happyShift action_48
action_38 (31) = happyShift action_49
action_38 (32) = happyShift action_50
action_38 (33) = happyShift action_51
action_38 (34) = happyShift action_52
action_38 (36) = happyShift action_53
action_38 (37) = happyShift action_82
action_38 (38) = happyShift action_55
action_38 (39) = happyShift action_56
action_38 (42) = happyShift action_83
action_38 (48) = happyShift action_58
action_38 (49) = happyShift action_59
action_38 (50) = happyShift action_60
action_38 (51) = happyShift action_61
action_38 _ = happyReduce_31

action_39 (13) = happyShift action_10
action_39 (14) = happyShift action_11
action_39 (15) = happyShift action_12
action_39 (16) = happyShift action_13
action_39 (17) = happyShift action_14
action_39 (18) = happyShift action_15
action_39 (19) = happyShift action_16
action_39 (22) = happyShift action_17
action_39 (23) = happyShift action_18
action_39 (24) = happyShift action_19
action_39 (25) = happyShift action_20
action_39 (26) = happyShift action_21
action_39 (27) = happyShift action_22
action_39 (37) = happyShift action_23
action_39 (40) = happyShift action_24
action_39 (42) = happyShift action_25
action_39 (47) = happyShift action_26
action_39 (6) = happyGoto action_81
action_39 (7) = happyGoto action_5
action_39 (8) = happyGoto action_6
action_39 (9) = happyGoto action_7
action_39 (11) = happyGoto action_8
action_39 (12) = happyGoto action_9
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_22

action_41 (35) = happyShift action_32
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (44) = happyShift action_80
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (13) = happyShift action_10
action_43 (14) = happyShift action_11
action_43 (15) = happyShift action_12
action_43 (16) = happyShift action_13
action_43 (17) = happyShift action_14
action_43 (18) = happyShift action_15
action_43 (19) = happyShift action_16
action_43 (22) = happyShift action_17
action_43 (23) = happyShift action_18
action_43 (24) = happyShift action_19
action_43 (25) = happyShift action_20
action_43 (26) = happyShift action_21
action_43 (27) = happyShift action_22
action_43 (37) = happyShift action_23
action_43 (40) = happyShift action_24
action_43 (42) = happyShift action_25
action_43 (47) = happyShift action_26
action_43 (6) = happyGoto action_79
action_43 (7) = happyGoto action_5
action_43 (8) = happyGoto action_6
action_43 (9) = happyGoto action_7
action_43 (11) = happyGoto action_8
action_43 (12) = happyGoto action_9
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (44) = happyShift action_78
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_4

action_46 (13) = happyShift action_10
action_46 (14) = happyShift action_11
action_46 (15) = happyShift action_12
action_46 (16) = happyShift action_13
action_46 (17) = happyShift action_14
action_46 (18) = happyShift action_15
action_46 (19) = happyShift action_16
action_46 (22) = happyShift action_17
action_46 (23) = happyShift action_18
action_46 (24) = happyShift action_19
action_46 (25) = happyShift action_20
action_46 (26) = happyShift action_21
action_46 (27) = happyShift action_22
action_46 (37) = happyShift action_23
action_46 (40) = happyShift action_24
action_46 (42) = happyShift action_25
action_46 (47) = happyShift action_26
action_46 (6) = happyGoto action_77
action_46 (7) = happyGoto action_5
action_46 (8) = happyGoto action_6
action_46 (9) = happyGoto action_7
action_46 (11) = happyGoto action_8
action_46 (12) = happyGoto action_9
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (13) = happyShift action_10
action_47 (14) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (16) = happyShift action_13
action_47 (17) = happyShift action_14
action_47 (18) = happyShift action_15
action_47 (19) = happyShift action_16
action_47 (22) = happyShift action_17
action_47 (23) = happyShift action_18
action_47 (24) = happyShift action_19
action_47 (25) = happyShift action_20
action_47 (26) = happyShift action_21
action_47 (27) = happyShift action_22
action_47 (37) = happyShift action_23
action_47 (40) = happyShift action_24
action_47 (42) = happyShift action_25
action_47 (47) = happyShift action_26
action_47 (6) = happyGoto action_76
action_47 (7) = happyGoto action_5
action_47 (8) = happyGoto action_6
action_47 (9) = happyGoto action_7
action_47 (11) = happyGoto action_8
action_47 (12) = happyGoto action_9
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (13) = happyShift action_10
action_48 (14) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (16) = happyShift action_13
action_48 (17) = happyShift action_14
action_48 (18) = happyShift action_15
action_48 (19) = happyShift action_16
action_48 (22) = happyShift action_17
action_48 (23) = happyShift action_18
action_48 (24) = happyShift action_19
action_48 (25) = happyShift action_20
action_48 (26) = happyShift action_21
action_48 (27) = happyShift action_22
action_48 (37) = happyShift action_23
action_48 (40) = happyShift action_24
action_48 (42) = happyShift action_25
action_48 (47) = happyShift action_26
action_48 (6) = happyGoto action_75
action_48 (7) = happyGoto action_5
action_48 (8) = happyGoto action_6
action_48 (9) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (13) = happyShift action_10
action_49 (14) = happyShift action_11
action_49 (15) = happyShift action_12
action_49 (16) = happyShift action_13
action_49 (17) = happyShift action_14
action_49 (18) = happyShift action_15
action_49 (19) = happyShift action_16
action_49 (22) = happyShift action_17
action_49 (23) = happyShift action_18
action_49 (24) = happyShift action_19
action_49 (25) = happyShift action_20
action_49 (26) = happyShift action_21
action_49 (27) = happyShift action_22
action_49 (37) = happyShift action_23
action_49 (40) = happyShift action_24
action_49 (42) = happyShift action_25
action_49 (47) = happyShift action_26
action_49 (6) = happyGoto action_74
action_49 (7) = happyGoto action_5
action_49 (8) = happyGoto action_6
action_49 (9) = happyGoto action_7
action_49 (11) = happyGoto action_8
action_49 (12) = happyGoto action_9
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (13) = happyShift action_10
action_50 (14) = happyShift action_11
action_50 (15) = happyShift action_12
action_50 (16) = happyShift action_13
action_50 (17) = happyShift action_14
action_50 (18) = happyShift action_15
action_50 (19) = happyShift action_16
action_50 (22) = happyShift action_17
action_50 (23) = happyShift action_18
action_50 (24) = happyShift action_19
action_50 (25) = happyShift action_20
action_50 (26) = happyShift action_21
action_50 (27) = happyShift action_22
action_50 (37) = happyShift action_23
action_50 (40) = happyShift action_24
action_50 (42) = happyShift action_25
action_50 (47) = happyShift action_26
action_50 (6) = happyGoto action_73
action_50 (7) = happyGoto action_5
action_50 (8) = happyGoto action_6
action_50 (9) = happyGoto action_7
action_50 (11) = happyGoto action_8
action_50 (12) = happyGoto action_9
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (13) = happyShift action_10
action_51 (14) = happyShift action_11
action_51 (15) = happyShift action_12
action_51 (16) = happyShift action_13
action_51 (17) = happyShift action_14
action_51 (18) = happyShift action_15
action_51 (19) = happyShift action_16
action_51 (22) = happyShift action_17
action_51 (23) = happyShift action_18
action_51 (24) = happyShift action_19
action_51 (25) = happyShift action_20
action_51 (26) = happyShift action_21
action_51 (27) = happyShift action_22
action_51 (37) = happyShift action_23
action_51 (40) = happyShift action_24
action_51 (42) = happyShift action_25
action_51 (47) = happyShift action_26
action_51 (6) = happyGoto action_72
action_51 (7) = happyGoto action_5
action_51 (8) = happyGoto action_6
action_51 (9) = happyGoto action_7
action_51 (11) = happyGoto action_8
action_51 (12) = happyGoto action_9
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (13) = happyShift action_10
action_52 (14) = happyShift action_11
action_52 (15) = happyShift action_12
action_52 (16) = happyShift action_13
action_52 (17) = happyShift action_14
action_52 (18) = happyShift action_15
action_52 (19) = happyShift action_16
action_52 (22) = happyShift action_17
action_52 (23) = happyShift action_18
action_52 (24) = happyShift action_19
action_52 (25) = happyShift action_20
action_52 (26) = happyShift action_21
action_52 (27) = happyShift action_22
action_52 (37) = happyShift action_23
action_52 (40) = happyShift action_24
action_52 (42) = happyShift action_25
action_52 (47) = happyShift action_26
action_52 (6) = happyGoto action_71
action_52 (7) = happyGoto action_5
action_52 (8) = happyGoto action_6
action_52 (9) = happyGoto action_7
action_52 (11) = happyGoto action_8
action_52 (12) = happyGoto action_9
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (13) = happyShift action_10
action_53 (14) = happyShift action_11
action_53 (15) = happyShift action_12
action_53 (16) = happyShift action_13
action_53 (17) = happyShift action_14
action_53 (18) = happyShift action_15
action_53 (19) = happyShift action_16
action_53 (22) = happyShift action_17
action_53 (23) = happyShift action_18
action_53 (24) = happyShift action_19
action_53 (25) = happyShift action_20
action_53 (26) = happyShift action_21
action_53 (27) = happyShift action_22
action_53 (37) = happyShift action_23
action_53 (40) = happyShift action_24
action_53 (42) = happyShift action_25
action_53 (47) = happyShift action_26
action_53 (6) = happyGoto action_70
action_53 (7) = happyGoto action_5
action_53 (8) = happyGoto action_6
action_53 (9) = happyGoto action_7
action_53 (11) = happyGoto action_8
action_53 (12) = happyGoto action_9
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (13) = happyShift action_10
action_54 (14) = happyShift action_11
action_54 (15) = happyShift action_12
action_54 (16) = happyShift action_13
action_54 (17) = happyShift action_14
action_54 (18) = happyShift action_15
action_54 (19) = happyShift action_16
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (25) = happyShift action_20
action_54 (26) = happyShift action_21
action_54 (27) = happyShift action_22
action_54 (37) = happyShift action_23
action_54 (40) = happyShift action_24
action_54 (42) = happyShift action_25
action_54 (47) = happyShift action_26
action_54 (6) = happyGoto action_69
action_54 (7) = happyGoto action_5
action_54 (8) = happyGoto action_6
action_54 (9) = happyGoto action_7
action_54 (11) = happyGoto action_8
action_54 (12) = happyGoto action_9
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (13) = happyShift action_10
action_55 (14) = happyShift action_11
action_55 (15) = happyShift action_12
action_55 (16) = happyShift action_13
action_55 (17) = happyShift action_14
action_55 (18) = happyShift action_15
action_55 (19) = happyShift action_16
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (26) = happyShift action_21
action_55 (27) = happyShift action_22
action_55 (37) = happyShift action_23
action_55 (40) = happyShift action_24
action_55 (42) = happyShift action_25
action_55 (47) = happyShift action_26
action_55 (6) = happyGoto action_68
action_55 (7) = happyGoto action_5
action_55 (8) = happyGoto action_6
action_55 (9) = happyGoto action_7
action_55 (11) = happyGoto action_8
action_55 (12) = happyGoto action_9
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (13) = happyShift action_10
action_56 (14) = happyShift action_11
action_56 (15) = happyShift action_12
action_56 (16) = happyShift action_13
action_56 (17) = happyShift action_14
action_56 (18) = happyShift action_15
action_56 (19) = happyShift action_16
action_56 (22) = happyShift action_17
action_56 (23) = happyShift action_18
action_56 (24) = happyShift action_19
action_56 (25) = happyShift action_20
action_56 (26) = happyShift action_21
action_56 (27) = happyShift action_22
action_56 (37) = happyShift action_23
action_56 (40) = happyShift action_24
action_56 (42) = happyShift action_25
action_56 (47) = happyShift action_26
action_56 (6) = happyGoto action_67
action_56 (7) = happyGoto action_5
action_56 (8) = happyGoto action_6
action_56 (9) = happyGoto action_7
action_56 (11) = happyGoto action_8
action_56 (12) = happyGoto action_9
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (13) = happyShift action_10
action_57 (14) = happyShift action_11
action_57 (15) = happyShift action_12
action_57 (16) = happyShift action_13
action_57 (17) = happyShift action_14
action_57 (18) = happyShift action_15
action_57 (19) = happyShift action_16
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (25) = happyShift action_20
action_57 (26) = happyShift action_21
action_57 (27) = happyShift action_22
action_57 (37) = happyShift action_23
action_57 (40) = happyShift action_24
action_57 (42) = happyShift action_25
action_57 (47) = happyShift action_26
action_57 (6) = happyGoto action_66
action_57 (7) = happyGoto action_5
action_57 (8) = happyGoto action_6
action_57 (9) = happyGoto action_7
action_57 (10) = happyGoto action_29
action_57 (11) = happyGoto action_8
action_57 (12) = happyGoto action_9
action_57 _ = happyReduce_43

action_58 (13) = happyShift action_10
action_58 (14) = happyShift action_11
action_58 (15) = happyShift action_12
action_58 (16) = happyShift action_13
action_58 (17) = happyShift action_14
action_58 (18) = happyShift action_15
action_58 (19) = happyShift action_16
action_58 (22) = happyShift action_17
action_58 (23) = happyShift action_18
action_58 (24) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (26) = happyShift action_21
action_58 (27) = happyShift action_22
action_58 (37) = happyShift action_23
action_58 (40) = happyShift action_24
action_58 (42) = happyShift action_25
action_58 (47) = happyShift action_26
action_58 (6) = happyGoto action_65
action_58 (7) = happyGoto action_5
action_58 (8) = happyGoto action_6
action_58 (9) = happyGoto action_7
action_58 (11) = happyGoto action_8
action_58 (12) = happyGoto action_9
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (13) = happyShift action_10
action_59 (14) = happyShift action_11
action_59 (15) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (17) = happyShift action_14
action_59 (18) = happyShift action_15
action_59 (19) = happyShift action_16
action_59 (22) = happyShift action_17
action_59 (23) = happyShift action_18
action_59 (24) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (26) = happyShift action_21
action_59 (27) = happyShift action_22
action_59 (37) = happyShift action_23
action_59 (40) = happyShift action_24
action_59 (42) = happyShift action_25
action_59 (47) = happyShift action_26
action_59 (6) = happyGoto action_64
action_59 (7) = happyGoto action_5
action_59 (8) = happyGoto action_6
action_59 (9) = happyGoto action_7
action_59 (11) = happyGoto action_8
action_59 (12) = happyGoto action_9
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (13) = happyShift action_10
action_60 (14) = happyShift action_11
action_60 (15) = happyShift action_12
action_60 (16) = happyShift action_13
action_60 (17) = happyShift action_14
action_60 (18) = happyShift action_15
action_60 (19) = happyShift action_16
action_60 (22) = happyShift action_17
action_60 (23) = happyShift action_18
action_60 (24) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (26) = happyShift action_21
action_60 (27) = happyShift action_22
action_60 (37) = happyShift action_23
action_60 (40) = happyShift action_24
action_60 (42) = happyShift action_25
action_60 (47) = happyShift action_26
action_60 (6) = happyGoto action_63
action_60 (7) = happyGoto action_5
action_60 (8) = happyGoto action_6
action_60 (9) = happyGoto action_7
action_60 (11) = happyGoto action_8
action_60 (12) = happyGoto action_9
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (13) = happyShift action_10
action_61 (14) = happyShift action_11
action_61 (15) = happyShift action_12
action_61 (16) = happyShift action_13
action_61 (17) = happyShift action_14
action_61 (18) = happyShift action_15
action_61 (19) = happyShift action_16
action_61 (22) = happyShift action_17
action_61 (23) = happyShift action_18
action_61 (24) = happyShift action_19
action_61 (25) = happyShift action_20
action_61 (26) = happyShift action_21
action_61 (27) = happyShift action_22
action_61 (37) = happyShift action_23
action_61 (40) = happyShift action_24
action_61 (42) = happyShift action_25
action_61 (47) = happyShift action_26
action_61 (6) = happyGoto action_62
action_61 (7) = happyGoto action_5
action_61 (8) = happyGoto action_6
action_61 (9) = happyGoto action_7
action_61 (11) = happyGoto action_8
action_61 (12) = happyGoto action_9
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (32) = happyShift action_50
action_62 (33) = happyShift action_51
action_62 (34) = happyShift action_52
action_62 (36) = happyShift action_53
action_62 (37) = happyShift action_82
action_62 (38) = happyShift action_55
action_62 (39) = happyShift action_56
action_62 (42) = happyShift action_83
action_62 (48) = happyShift action_58
action_62 (49) = happyShift action_59
action_62 _ = happyReduce_36

action_63 (32) = happyShift action_50
action_63 (33) = happyShift action_51
action_63 (34) = happyShift action_52
action_63 (36) = happyShift action_53
action_63 (37) = happyShift action_82
action_63 (38) = happyShift action_55
action_63 (39) = happyShift action_56
action_63 (42) = happyShift action_83
action_63 (48) = happyShift action_58
action_63 (49) = happyShift action_59
action_63 _ = happyReduce_35

action_64 (32) = happyShift action_50
action_64 (33) = happyShift action_51
action_64 (34) = happyShift action_52
action_64 (42) = happyShift action_83
action_64 (48) = happyShift action_58
action_64 _ = happyReduce_34

action_65 (42) = happyShift action_83
action_65 (48) = happyShift action_58
action_65 _ = happyReduce_33

action_66 (28) = happyShift action_46
action_66 (29) = happyShift action_47
action_66 (30) = happyShift action_48
action_66 (31) = happyShift action_49
action_66 (32) = happyShift action_50
action_66 (33) = happyShift action_51
action_66 (34) = happyShift action_52
action_66 (36) = happyShift action_53
action_66 (37) = happyShift action_82
action_66 (38) = happyShift action_55
action_66 (39) = happyShift action_56
action_66 (42) = happyShift action_83
action_66 (43) = happyShift action_99
action_66 (46) = happyShift action_89
action_66 (48) = happyShift action_58
action_66 (49) = happyShift action_59
action_66 (50) = happyShift action_60
action_66 (51) = happyShift action_61
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (32) = happyShift action_50
action_67 (33) = happyShift action_51
action_67 (34) = happyShift action_52
action_67 (42) = happyShift action_83
action_67 (48) = happyShift action_58
action_67 _ = happyReduce_28

action_68 (32) = happyShift action_50
action_68 (33) = happyShift action_51
action_68 (34) = happyShift action_52
action_68 (42) = happyShift action_83
action_68 (48) = happyShift action_58
action_68 _ = happyReduce_27

action_69 (32) = happyShift action_50
action_69 (33) = happyShift action_51
action_69 (34) = happyShift action_52
action_69 (42) = happyShift action_83
action_69 (48) = happyShift action_58
action_69 _ = happyReduce_37

action_70 (32) = happyShift action_50
action_70 (33) = happyShift action_51
action_70 (34) = happyShift action_52
action_70 (38) = happyShift action_55
action_70 (39) = happyShift action_56
action_70 (42) = happyShift action_83
action_70 (48) = happyShift action_58
action_70 (49) = happyShift action_59
action_70 _ = happyReduce_25

action_71 (32) = happyShift action_50
action_71 (34) = happyShift action_52
action_71 (42) = happyShift action_83
action_71 (48) = happyShift action_58
action_71 _ = happyReduce_21

action_72 (32) = happyShift action_50
action_72 (34) = happyShift action_52
action_72 (42) = happyShift action_83
action_72 (48) = happyShift action_58
action_72 _ = happyReduce_20

action_73 (32) = happyShift action_50
action_73 (34) = happyShift action_52
action_73 (42) = happyShift action_83
action_73 (48) = happyShift action_58
action_73 _ = happyReduce_19

action_74 (28) = happyShift action_46
action_74 (29) = happyShift action_47
action_74 (32) = happyShift action_50
action_74 (33) = happyShift action_51
action_74 (34) = happyShift action_52
action_74 (36) = happyShift action_53
action_74 (37) = happyShift action_82
action_74 (38) = happyShift action_55
action_74 (39) = happyShift action_56
action_74 (42) = happyShift action_83
action_74 (48) = happyShift action_58
action_74 (49) = happyShift action_59
action_74 (50) = happyShift action_60
action_74 (51) = happyShift action_61
action_74 _ = happyReduce_18

action_75 (28) = happyShift action_46
action_75 (29) = happyShift action_47
action_75 (32) = happyShift action_50
action_75 (33) = happyShift action_51
action_75 (34) = happyShift action_52
action_75 (36) = happyShift action_53
action_75 (37) = happyShift action_82
action_75 (38) = happyShift action_55
action_75 (39) = happyShift action_56
action_75 (42) = happyShift action_83
action_75 (48) = happyShift action_58
action_75 (49) = happyShift action_59
action_75 (50) = happyShift action_60
action_75 (51) = happyShift action_61
action_75 _ = happyReduce_17

action_76 (32) = happyShift action_50
action_76 (33) = happyShift action_51
action_76 (34) = happyShift action_52
action_76 (36) = happyShift action_53
action_76 (37) = happyShift action_82
action_76 (38) = happyShift action_55
action_76 (39) = happyShift action_56
action_76 (42) = happyShift action_83
action_76 (48) = happyShift action_58
action_76 (49) = happyShift action_59
action_76 _ = happyReduce_16

action_77 (32) = happyShift action_50
action_77 (33) = happyShift action_51
action_77 (34) = happyShift action_52
action_77 (36) = happyShift action_53
action_77 (37) = happyShift action_82
action_77 (38) = happyShift action_55
action_77 (39) = happyShift action_56
action_77 (42) = happyShift action_83
action_77 (48) = happyShift action_58
action_77 (49) = happyShift action_59
action_77 _ = happyReduce_15

action_78 (13) = happyShift action_10
action_78 (14) = happyShift action_11
action_78 (15) = happyShift action_12
action_78 (16) = happyShift action_13
action_78 (17) = happyShift action_14
action_78 (18) = happyShift action_15
action_78 (19) = happyShift action_16
action_78 (22) = happyShift action_17
action_78 (23) = happyShift action_18
action_78 (24) = happyShift action_19
action_78 (25) = happyShift action_20
action_78 (26) = happyShift action_21
action_78 (27) = happyShift action_22
action_78 (37) = happyShift action_23
action_78 (40) = happyShift action_24
action_78 (42) = happyShift action_25
action_78 (47) = happyShift action_26
action_78 (5) = happyGoto action_98
action_78 (6) = happyGoto action_4
action_78 (7) = happyGoto action_5
action_78 (8) = happyGoto action_6
action_78 (9) = happyGoto action_7
action_78 (11) = happyGoto action_8
action_78 (12) = happyGoto action_9
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (28) = happyShift action_46
action_79 (29) = happyShift action_47
action_79 (30) = happyShift action_48
action_79 (31) = happyShift action_49
action_79 (32) = happyShift action_50
action_79 (33) = happyShift action_51
action_79 (34) = happyShift action_52
action_79 (36) = happyShift action_53
action_79 (37) = happyShift action_82
action_79 (38) = happyShift action_55
action_79 (39) = happyShift action_56
action_79 (42) = happyShift action_83
action_79 (44) = happyShift action_97
action_79 (48) = happyShift action_58
action_79 (49) = happyShift action_59
action_79 (50) = happyShift action_60
action_79 (51) = happyShift action_61
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (13) = happyShift action_10
action_80 (14) = happyShift action_11
action_80 (15) = happyShift action_12
action_80 (16) = happyShift action_13
action_80 (17) = happyShift action_14
action_80 (18) = happyShift action_15
action_80 (19) = happyShift action_16
action_80 (22) = happyShift action_17
action_80 (23) = happyShift action_18
action_80 (24) = happyShift action_19
action_80 (25) = happyShift action_20
action_80 (26) = happyShift action_21
action_80 (27) = happyShift action_22
action_80 (37) = happyShift action_23
action_80 (40) = happyShift action_24
action_80 (42) = happyShift action_25
action_80 (47) = happyShift action_26
action_80 (5) = happyGoto action_96
action_80 (6) = happyGoto action_4
action_80 (7) = happyGoto action_5
action_80 (8) = happyGoto action_6
action_80 (9) = happyGoto action_7
action_80 (11) = happyGoto action_8
action_80 (12) = happyGoto action_9
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (28) = happyShift action_46
action_81 (29) = happyShift action_47
action_81 (30) = happyShift action_48
action_81 (31) = happyShift action_49
action_81 (32) = happyShift action_50
action_81 (33) = happyShift action_51
action_81 (34) = happyShift action_52
action_81 (36) = happyShift action_53
action_81 (37) = happyShift action_82
action_81 (38) = happyShift action_55
action_81 (39) = happyShift action_56
action_81 (42) = happyShift action_83
action_81 (45) = happyShift action_95
action_81 (48) = happyShift action_58
action_81 (49) = happyShift action_59
action_81 (50) = happyShift action_60
action_81 (51) = happyShift action_61
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (13) = happyShift action_10
action_82 (14) = happyShift action_11
action_82 (15) = happyShift action_12
action_82 (16) = happyShift action_13
action_82 (17) = happyShift action_14
action_82 (18) = happyShift action_15
action_82 (19) = happyShift action_16
action_82 (22) = happyShift action_17
action_82 (23) = happyShift action_18
action_82 (24) = happyShift action_19
action_82 (25) = happyShift action_20
action_82 (26) = happyShift action_21
action_82 (27) = happyShift action_22
action_82 (37) = happyShift action_23
action_82 (40) = happyShift action_24
action_82 (42) = happyShift action_25
action_82 (47) = happyShift action_26
action_82 (6) = happyGoto action_94
action_82 (7) = happyGoto action_5
action_82 (8) = happyGoto action_6
action_82 (9) = happyGoto action_7
action_82 (11) = happyGoto action_8
action_82 (12) = happyGoto action_9
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (13) = happyShift action_10
action_83 (14) = happyShift action_11
action_83 (15) = happyShift action_12
action_83 (16) = happyShift action_13
action_83 (17) = happyShift action_14
action_83 (18) = happyShift action_15
action_83 (19) = happyShift action_16
action_83 (22) = happyShift action_17
action_83 (23) = happyShift action_18
action_83 (24) = happyShift action_19
action_83 (25) = happyShift action_20
action_83 (26) = happyShift action_21
action_83 (27) = happyShift action_22
action_83 (37) = happyShift action_23
action_83 (40) = happyShift action_24
action_83 (42) = happyShift action_25
action_83 (47) = happyShift action_26
action_83 (6) = happyGoto action_93
action_83 (7) = happyGoto action_5
action_83 (8) = happyGoto action_6
action_83 (9) = happyGoto action_7
action_83 (11) = happyGoto action_8
action_83 (12) = happyGoto action_9
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (13) = happyShift action_10
action_84 (14) = happyShift action_11
action_84 (15) = happyShift action_12
action_84 (16) = happyShift action_13
action_84 (17) = happyShift action_14
action_84 (18) = happyShift action_15
action_84 (19) = happyShift action_16
action_84 (22) = happyShift action_17
action_84 (23) = happyShift action_18
action_84 (24) = happyShift action_19
action_84 (25) = happyShift action_20
action_84 (26) = happyShift action_21
action_84 (27) = happyShift action_22
action_84 (37) = happyShift action_23
action_84 (40) = happyShift action_24
action_84 (42) = happyShift action_25
action_84 (47) = happyShift action_26
action_84 (5) = happyGoto action_92
action_84 (6) = happyGoto action_4
action_84 (7) = happyGoto action_5
action_84 (8) = happyGoto action_6
action_84 (9) = happyGoto action_7
action_84 (11) = happyGoto action_8
action_84 (12) = happyGoto action_9
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (13) = happyShift action_10
action_85 (14) = happyShift action_11
action_85 (15) = happyShift action_12
action_85 (16) = happyShift action_13
action_85 (17) = happyShift action_14
action_85 (18) = happyShift action_15
action_85 (19) = happyShift action_16
action_85 (22) = happyShift action_17
action_85 (23) = happyShift action_18
action_85 (24) = happyShift action_19
action_85 (25) = happyShift action_20
action_85 (26) = happyShift action_21
action_85 (27) = happyShift action_22
action_85 (37) = happyShift action_23
action_85 (40) = happyShift action_24
action_85 (42) = happyShift action_25
action_85 (47) = happyShift action_26
action_85 (5) = happyGoto action_91
action_85 (6) = happyGoto action_4
action_85 (7) = happyGoto action_5
action_85 (8) = happyGoto action_6
action_85 (9) = happyGoto action_7
action_85 (11) = happyGoto action_8
action_85 (12) = happyGoto action_9
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (28) = happyShift action_46
action_86 (29) = happyShift action_47
action_86 (30) = happyShift action_48
action_86 (31) = happyShift action_49
action_86 (32) = happyShift action_50
action_86 (33) = happyShift action_51
action_86 (34) = happyShift action_52
action_86 (36) = happyShift action_53
action_86 (37) = happyShift action_82
action_86 (38) = happyShift action_55
action_86 (39) = happyShift action_56
action_86 (42) = happyShift action_83
action_86 (48) = happyShift action_58
action_86 (49) = happyShift action_59
action_86 (50) = happyShift action_60
action_86 (51) = happyShift action_61
action_86 _ = happyReduce_49

action_87 _ = happyReduce_38

action_88 _ = happyReduce_14

action_89 (13) = happyShift action_10
action_89 (14) = happyShift action_11
action_89 (15) = happyShift action_12
action_89 (16) = happyShift action_13
action_89 (17) = happyShift action_14
action_89 (18) = happyShift action_15
action_89 (19) = happyShift action_16
action_89 (22) = happyShift action_17
action_89 (23) = happyShift action_18
action_89 (24) = happyShift action_19
action_89 (25) = happyShift action_20
action_89 (26) = happyShift action_21
action_89 (27) = happyShift action_22
action_89 (37) = happyShift action_23
action_89 (40) = happyShift action_24
action_89 (42) = happyShift action_25
action_89 (47) = happyShift action_26
action_89 (6) = happyGoto action_28
action_89 (7) = happyGoto action_5
action_89 (8) = happyGoto action_6
action_89 (9) = happyGoto action_7
action_89 (10) = happyGoto action_90
action_89 (11) = happyGoto action_8
action_89 (12) = happyGoto action_9
action_89 _ = happyReduce_43

action_90 _ = happyReduce_45

action_91 (45) = happyShift action_104
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (45) = happyShift action_103
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (28) = happyShift action_46
action_93 (29) = happyShift action_47
action_93 (30) = happyShift action_48
action_93 (31) = happyShift action_49
action_93 (32) = happyShift action_50
action_93 (33) = happyShift action_51
action_93 (34) = happyShift action_52
action_93 (36) = happyShift action_53
action_93 (37) = happyShift action_82
action_93 (38) = happyShift action_55
action_93 (39) = happyShift action_56
action_93 (42) = happyShift action_83
action_93 (43) = happyShift action_99
action_93 (48) = happyShift action_58
action_93 (49) = happyShift action_59
action_93 (50) = happyShift action_60
action_93 (51) = happyShift action_61
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (32) = happyShift action_50
action_94 (33) = happyShift action_51
action_94 (34) = happyShift action_52
action_94 (38) = happyShift action_55
action_94 (39) = happyShift action_56
action_94 (42) = happyShift action_83
action_94 (48) = happyShift action_58
action_94 (49) = happyShift action_59
action_94 _ = happyReduce_26

action_95 _ = happyReduce_30

action_96 (45) = happyShift action_102
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (13) = happyShift action_10
action_97 (14) = happyShift action_11
action_97 (15) = happyShift action_12
action_97 (16) = happyShift action_13
action_97 (17) = happyShift action_14
action_97 (18) = happyShift action_15
action_97 (19) = happyShift action_16
action_97 (22) = happyShift action_17
action_97 (23) = happyShift action_18
action_97 (24) = happyShift action_19
action_97 (25) = happyShift action_20
action_97 (26) = happyShift action_21
action_97 (27) = happyShift action_22
action_97 (37) = happyShift action_23
action_97 (40) = happyShift action_24
action_97 (42) = happyShift action_25
action_97 (47) = happyShift action_26
action_97 (5) = happyGoto action_101
action_97 (6) = happyGoto action_4
action_97 (7) = happyGoto action_5
action_97 (8) = happyGoto action_6
action_97 (9) = happyGoto action_7
action_97 (11) = happyGoto action_8
action_97 (12) = happyGoto action_9
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (45) = happyShift action_100
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_29

action_100 _ = happyReduce_41

action_101 (45) = happyShift action_105
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_42

action_103 _ = happyReduce_5

action_104 _ = happyReduce_39

action_105 _ = happyReduce_40

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
	(HappyAbsSyn5  happy_var_4) `HappyStk`
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

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int' happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean' happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Stream happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LE happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GE happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (NE happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Take happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Var happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 6 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 6 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_2  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  6 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  6 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happyReduce 5 7 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 6 8 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Elif happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 5 9 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 5 9 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_0  10 happyReduction_43
happyReduction_43  =  HappyAbsSyn10
		 ([]
	)

happyReduce_44 = happySpecReduce_1  10 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  10 happyReduction_45
happyReduction_45 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  11 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_47 = happySpecReduce_1  11 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_48 = happySpecReduce_1  11 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_49 = happySpecReduce_3  12 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn12
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

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
         | If Exp [Exp]
         | Elif Exp [Exp]
         | Else [Exp]
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

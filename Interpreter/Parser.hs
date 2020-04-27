{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,1160) ([0,58879,3100,2624,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,58879,8191,3040,31,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,58879,3100,2624,1,0,4096,0,0,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,0,0,0,0,0,0,0,0,0,0,0,8128,2,0,0,16,0,0,0,4096,0,0,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,0,5632,2048,2,0,58112,57367,7817,0,0,0,4096,0,0,0,0,16384,0,0,6115,3552,30,0,0,22,520,0,0,0,0,0,0,0,0,0,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,0,0,2048,0,0,0,0,8,0,0,0,2048,0,0,58112,57367,7721,0,512,6115,2528,30,0,0,0,32,0,0,6115,10720,30,0,58112,57367,7689,0,0,0,512,0,0,58112,57367,7689,0,58879,3100,2624,1,0,0,64,0,0,0,0,0,0,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,0,0,57366,1545,0,0,5632,2528,6,0,0,22,520,0,0,0,2048,2,0,58112,57367,7833,0,0,5632,2048,2,0,0,22,520,0,0,5632,2048,2,0,0,32790,1545,0,0,4608,2048,2,0,0,18,520,0,0,49152,543,0,0,0,18,520,0,0,5728,2528,30,0,24576,57366,7689,0,0,5632,2528,6,0,0,57366,1545,0,0,6113,2528,30,0,57344,57367,7689,0,58879,3100,2624,1,0,58112,57367,7753,0,58879,3100,2624,1,65280,7397,16396,266,0,58879,3100,2624,1,1792,0,0,0,0,58879,3100,2624,1,65280,7397,16396,266,0,0,0,2048,0,65280,7397,16396,266,0,0,6115,35296,30,0,0,0,4,0,0,6115,2528,30,0,58112,57367,7689,0,0,6115,2528,30,0,58112,57367,7689,0,0,6115,2528,30,0,58112,57367,7689,0,0,6115,2528,30,0,0,0,0,0,0,4,0,0,0,0,0,0,0,58879,3100,2624,1,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,58879,3100,2624,1,0,0,0,64,0,0,16,0,32,0,0,0,64,0,0,0,16384,0,0,4096,0,0,0,0,0,1024,0,0,58112,57367,7705,0,0,5632,2432,6,0,0,0,0,0,0,6115,2528,30,0,0,0,0,0,0,8192,8192,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,128,0,0,0,32768,0,0,8,0,0,0,0,0,0,0,65280,7397,16396,266,0,0,0,0,0,0,16,0,0,0,58879,3100,2624,1,0,4096,0,8192,0,0,16,0,32,0,0,0,128,0,7,0,0,0,1792,0,0,0,0,58879,3100,2624,1,0,0,0,64,0,0,0,8192,0,0,0,0,0,0,58879,3100,2624,1,0,0,0,0,0,0,0,0,0,0,58112,57367,7721,0,0,0,0,0,0,0,0,32,0,58879,3100,2624,1,65280,7397,16396,266,0,0,0,0,0,65280,7397,16396,266,0,0,0,0,0,0,0,0,64,0,0,0,16384,0,0,0,0,64,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","ParamList","ArgList","ProcessList","VarList","int_type","stream_type","boolean_type","input","print","fn","return","while","process","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'--'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","'...'","%eof"]
        bit_start = st * 72
        bit_end = (st + 1) * 72
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..71]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (21) = happyShift action_12
action_0 (22) = happyShift action_13
action_0 (23) = happyShift action_14
action_0 (24) = happyShift action_15
action_0 (25) = happyShift action_16
action_0 (27) = happyShift action_17
action_0 (30) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (32) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (43) = happyShift action_24
action_0 (44) = happyShift action_25
action_0 (55) = happyShift action_26
action_0 (58) = happyShift action_27
action_0 (60) = happyShift action_28
action_0 (65) = happyShift action_29
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (72) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (17) = happyShift action_8
action_4 (18) = happyShift action_9
action_4 (19) = happyShift action_10
action_4 (20) = happyShift action_11
action_4 (21) = happyShift action_12
action_4 (22) = happyShift action_13
action_4 (23) = happyShift action_14
action_4 (24) = happyShift action_15
action_4 (25) = happyShift action_16
action_4 (27) = happyShift action_17
action_4 (30) = happyShift action_18
action_4 (31) = happyShift action_19
action_4 (32) = happyShift action_20
action_4 (33) = happyShift action_59
action_4 (34) = happyShift action_60
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (37) = happyShift action_23
action_4 (38) = happyShift action_61
action_4 (39) = happyShift action_62
action_4 (40) = happyShift action_63
action_4 (41) = happyShift action_64
action_4 (42) = happyShift action_65
action_4 (43) = happyShift action_66
action_4 (44) = happyShift action_25
action_4 (45) = happyShift action_67
action_4 (54) = happyShift action_68
action_4 (55) = happyShift action_69
action_4 (56) = happyShift action_70
action_4 (57) = happyShift action_71
action_4 (58) = happyShift action_27
action_4 (60) = happyShift action_72
action_4 (65) = happyShift action_29
action_4 (66) = happyShift action_73
action_4 (67) = happyShift action_74
action_4 (68) = happyShift action_75
action_4 (69) = happyShift action_76
action_4 (5) = happyGoto action_58
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_7

action_6 (37) = happyShift action_57
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_41

action_8 _ = happyReduce_61

action_9 _ = happyReduce_63

action_10 _ = happyReduce_62

action_11 (62) = happyShift action_56
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (17) = happyShift action_8
action_12 (18) = happyShift action_9
action_12 (19) = happyShift action_10
action_12 (20) = happyShift action_11
action_12 (21) = happyShift action_12
action_12 (22) = happyShift action_13
action_12 (23) = happyShift action_14
action_12 (24) = happyShift action_15
action_12 (25) = happyShift action_16
action_12 (27) = happyShift action_17
action_12 (30) = happyShift action_18
action_12 (31) = happyShift action_19
action_12 (32) = happyShift action_20
action_12 (35) = happyShift action_21
action_12 (36) = happyShift action_22
action_12 (37) = happyShift action_23
action_12 (43) = happyShift action_24
action_12 (44) = happyShift action_25
action_12 (55) = happyShift action_26
action_12 (58) = happyShift action_27
action_12 (60) = happyShift action_28
action_12 (65) = happyShift action_29
action_12 (6) = happyGoto action_55
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (37) = happyShift action_54
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (17) = happyShift action_8
action_14 (18) = happyShift action_9
action_14 (19) = happyShift action_10
action_14 (20) = happyShift action_11
action_14 (21) = happyShift action_12
action_14 (22) = happyShift action_13
action_14 (23) = happyShift action_14
action_14 (24) = happyShift action_15
action_14 (25) = happyShift action_16
action_14 (27) = happyShift action_17
action_14 (30) = happyShift action_18
action_14 (31) = happyShift action_19
action_14 (32) = happyShift action_20
action_14 (35) = happyShift action_21
action_14 (36) = happyShift action_22
action_14 (37) = happyShift action_23
action_14 (43) = happyShift action_24
action_14 (44) = happyShift action_25
action_14 (55) = happyShift action_26
action_14 (58) = happyShift action_27
action_14 (60) = happyShift action_28
action_14 (65) = happyShift action_29
action_14 (6) = happyGoto action_53
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 (12) = happyGoto action_7
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (17) = happyShift action_8
action_15 (18) = happyShift action_9
action_15 (19) = happyShift action_10
action_15 (20) = happyShift action_11
action_15 (21) = happyShift action_12
action_15 (22) = happyShift action_13
action_15 (23) = happyShift action_14
action_15 (24) = happyShift action_15
action_15 (25) = happyShift action_16
action_15 (27) = happyShift action_17
action_15 (30) = happyShift action_18
action_15 (31) = happyShift action_19
action_15 (32) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (37) = happyShift action_23
action_15 (43) = happyShift action_24
action_15 (44) = happyShift action_25
action_15 (55) = happyShift action_26
action_15 (58) = happyShift action_27
action_15 (60) = happyShift action_28
action_15 (65) = happyShift action_29
action_15 (6) = happyGoto action_52
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 (12) = happyGoto action_7
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (17) = happyShift action_8
action_16 (18) = happyShift action_9
action_16 (19) = happyShift action_10
action_16 (20) = happyShift action_11
action_16 (21) = happyShift action_12
action_16 (22) = happyShift action_13
action_16 (23) = happyShift action_14
action_16 (24) = happyShift action_15
action_16 (25) = happyShift action_16
action_16 (27) = happyShift action_17
action_16 (30) = happyShift action_18
action_16 (31) = happyShift action_19
action_16 (32) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (37) = happyShift action_23
action_16 (43) = happyShift action_24
action_16 (44) = happyShift action_25
action_16 (55) = happyShift action_26
action_16 (58) = happyShift action_27
action_16 (60) = happyShift action_28
action_16 (65) = happyShift action_29
action_16 (6) = happyGoto action_50
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 (15) = happyGoto action_51
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (17) = happyShift action_8
action_17 (18) = happyShift action_9
action_17 (19) = happyShift action_10
action_17 (20) = happyShift action_11
action_17 (21) = happyShift action_12
action_17 (22) = happyShift action_13
action_17 (23) = happyShift action_14
action_17 (24) = happyShift action_15
action_17 (25) = happyShift action_16
action_17 (27) = happyShift action_17
action_17 (30) = happyShift action_18
action_17 (31) = happyShift action_19
action_17 (32) = happyShift action_20
action_17 (35) = happyShift action_21
action_17 (36) = happyShift action_22
action_17 (37) = happyShift action_23
action_17 (43) = happyShift action_24
action_17 (44) = happyShift action_25
action_17 (55) = happyShift action_26
action_17 (58) = happyShift action_27
action_17 (60) = happyShift action_28
action_17 (65) = happyShift action_29
action_17 (6) = happyGoto action_49
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (12) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (17) = happyShift action_8
action_18 (18) = happyShift action_9
action_18 (19) = happyShift action_10
action_18 (20) = happyShift action_11
action_18 (21) = happyShift action_12
action_18 (22) = happyShift action_13
action_18 (23) = happyShift action_14
action_18 (24) = happyShift action_15
action_18 (25) = happyShift action_16
action_18 (27) = happyShift action_17
action_18 (30) = happyShift action_18
action_18 (31) = happyShift action_19
action_18 (32) = happyShift action_20
action_18 (35) = happyShift action_21
action_18 (36) = happyShift action_22
action_18 (37) = happyShift action_23
action_18 (43) = happyShift action_24
action_18 (44) = happyShift action_25
action_18 (55) = happyShift action_26
action_18 (58) = happyShift action_27
action_18 (60) = happyShift action_28
action_18 (65) = happyShift action_29
action_18 (6) = happyGoto action_48
action_18 (7) = happyGoto action_5
action_18 (11) = happyGoto action_6
action_18 (12) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (17) = happyShift action_8
action_19 (18) = happyShift action_9
action_19 (19) = happyShift action_10
action_19 (20) = happyShift action_11
action_19 (21) = happyShift action_12
action_19 (22) = happyShift action_13
action_19 (23) = happyShift action_14
action_19 (24) = happyShift action_15
action_19 (25) = happyShift action_16
action_19 (27) = happyShift action_17
action_19 (30) = happyShift action_18
action_19 (31) = happyShift action_19
action_19 (32) = happyShift action_20
action_19 (35) = happyShift action_21
action_19 (36) = happyShift action_22
action_19 (37) = happyShift action_23
action_19 (43) = happyShift action_24
action_19 (44) = happyShift action_25
action_19 (55) = happyShift action_26
action_19 (58) = happyShift action_27
action_19 (60) = happyShift action_28
action_19 (65) = happyShift action_29
action_19 (6) = happyGoto action_47
action_19 (7) = happyGoto action_5
action_19 (11) = happyGoto action_6
action_19 (12) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (17) = happyShift action_8
action_20 (18) = happyShift action_9
action_20 (19) = happyShift action_10
action_20 (20) = happyShift action_11
action_20 (21) = happyShift action_12
action_20 (22) = happyShift action_13
action_20 (23) = happyShift action_14
action_20 (24) = happyShift action_15
action_20 (25) = happyShift action_16
action_20 (27) = happyShift action_17
action_20 (30) = happyShift action_18
action_20 (31) = happyShift action_19
action_20 (32) = happyShift action_20
action_20 (35) = happyShift action_21
action_20 (36) = happyShift action_22
action_20 (37) = happyShift action_23
action_20 (43) = happyShift action_24
action_20 (44) = happyShift action_25
action_20 (55) = happyShift action_26
action_20 (58) = happyShift action_27
action_20 (60) = happyShift action_28
action_20 (65) = happyShift action_29
action_20 (6) = happyGoto action_46
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 (12) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_13

action_22 _ = happyReduce_14

action_23 (47) = happyShift action_38
action_23 (48) = happyShift action_39
action_23 (49) = happyShift action_40
action_23 (50) = happyShift action_41
action_23 (51) = happyShift action_42
action_23 (52) = happyShift action_43
action_23 (53) = happyShift action_44
action_23 (58) = happyShift action_45
action_23 _ = happyReduce_33

action_24 (37) = happyShift action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (37) = happyShift action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (17) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (19) = happyShift action_10
action_26 (20) = happyShift action_11
action_26 (21) = happyShift action_12
action_26 (22) = happyShift action_13
action_26 (23) = happyShift action_14
action_26 (24) = happyShift action_15
action_26 (25) = happyShift action_16
action_26 (27) = happyShift action_17
action_26 (30) = happyShift action_18
action_26 (31) = happyShift action_19
action_26 (32) = happyShift action_20
action_26 (35) = happyShift action_21
action_26 (36) = happyShift action_22
action_26 (37) = happyShift action_23
action_26 (43) = happyShift action_24
action_26 (44) = happyShift action_25
action_26 (55) = happyShift action_26
action_26 (58) = happyShift action_27
action_26 (60) = happyShift action_28
action_26 (65) = happyShift action_29
action_26 (6) = happyGoto action_35
action_26 (7) = happyGoto action_5
action_26 (11) = happyGoto action_6
action_26 (12) = happyGoto action_7
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (17) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (19) = happyShift action_10
action_27 (20) = happyShift action_11
action_27 (21) = happyShift action_12
action_27 (22) = happyShift action_13
action_27 (23) = happyShift action_14
action_27 (24) = happyShift action_15
action_27 (25) = happyShift action_16
action_27 (27) = happyShift action_17
action_27 (30) = happyShift action_18
action_27 (31) = happyShift action_19
action_27 (32) = happyShift action_20
action_27 (35) = happyShift action_21
action_27 (36) = happyShift action_22
action_27 (37) = happyShift action_23
action_27 (43) = happyShift action_24
action_27 (44) = happyShift action_25
action_27 (55) = happyShift action_26
action_27 (58) = happyShift action_27
action_27 (60) = happyShift action_28
action_27 (65) = happyShift action_29
action_27 (6) = happyGoto action_34
action_27 (7) = happyGoto action_5
action_27 (11) = happyGoto action_6
action_27 (12) = happyGoto action_7
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (19) = happyShift action_10
action_28 (20) = happyShift action_11
action_28 (21) = happyShift action_12
action_28 (22) = happyShift action_13
action_28 (23) = happyShift action_14
action_28 (24) = happyShift action_15
action_28 (25) = happyShift action_16
action_28 (27) = happyShift action_17
action_28 (30) = happyShift action_18
action_28 (31) = happyShift action_19
action_28 (32) = happyShift action_20
action_28 (35) = happyShift action_33
action_28 (36) = happyShift action_22
action_28 (37) = happyShift action_23
action_28 (43) = happyShift action_24
action_28 (44) = happyShift action_25
action_28 (55) = happyShift action_26
action_28 (58) = happyShift action_27
action_28 (60) = happyShift action_28
action_28 (65) = happyShift action_29
action_28 (6) = happyGoto action_31
action_28 (7) = happyGoto action_5
action_28 (10) = happyGoto action_32
action_28 (11) = happyGoto action_6
action_28 (12) = happyGoto action_7
action_28 _ = happyReduce_56

action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_11
action_29 (21) = happyShift action_12
action_29 (22) = happyShift action_13
action_29 (23) = happyShift action_14
action_29 (24) = happyShift action_15
action_29 (25) = happyShift action_16
action_29 (27) = happyShift action_17
action_29 (30) = happyShift action_18
action_29 (31) = happyShift action_19
action_29 (32) = happyShift action_20
action_29 (35) = happyShift action_21
action_29 (36) = happyShift action_22
action_29 (37) = happyShift action_23
action_29 (43) = happyShift action_24
action_29 (44) = happyShift action_25
action_29 (55) = happyShift action_26
action_29 (58) = happyShift action_27
action_29 (60) = happyShift action_28
action_29 (65) = happyShift action_29
action_29 (6) = happyGoto action_30
action_29 (7) = happyGoto action_5
action_29 (11) = happyGoto action_6
action_29 (12) = happyGoto action_7
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (42) = happyShift action_65
action_30 (43) = happyShift action_98
action_30 (45) = happyShift action_67
action_30 (60) = happyShift action_100
action_30 (66) = happyShift action_73
action_30 _ = happyReduce_44

action_31 (33) = happyShift action_59
action_31 (34) = happyShift action_60
action_31 (38) = happyShift action_61
action_31 (39) = happyShift action_62
action_31 (40) = happyShift action_63
action_31 (41) = happyShift action_64
action_31 (42) = happyShift action_65
action_31 (43) = happyShift action_98
action_31 (45) = happyShift action_67
action_31 (54) = happyShift action_68
action_31 (55) = happyShift action_99
action_31 (56) = happyShift action_70
action_31 (57) = happyShift action_71
action_31 (60) = happyShift action_100
action_31 (64) = happyShift action_118
action_31 (66) = happyShift action_73
action_31 (67) = happyShift action_74
action_31 (68) = happyShift action_75
action_31 (69) = happyShift action_76
action_31 _ = happyReduce_57

action_32 (61) = happyShift action_117
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (71) = happyShift action_116
action_33 _ = happyReduce_13

action_34 (33) = happyShift action_59
action_34 (34) = happyShift action_60
action_34 (38) = happyShift action_61
action_34 (39) = happyShift action_62
action_34 (40) = happyShift action_63
action_34 (41) = happyShift action_64
action_34 (42) = happyShift action_65
action_34 (43) = happyShift action_98
action_34 (45) = happyShift action_67
action_34 (54) = happyShift action_68
action_34 (55) = happyShift action_99
action_34 (56) = happyShift action_70
action_34 (57) = happyShift action_71
action_34 (59) = happyShift action_115
action_34 (60) = happyShift action_100
action_34 (66) = happyShift action_73
action_34 (67) = happyShift action_74
action_34 (68) = happyShift action_75
action_34 (69) = happyShift action_76
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (42) = happyShift action_65
action_35 (43) = happyShift action_98
action_35 (45) = happyShift action_67
action_35 (60) = happyShift action_100
action_35 (66) = happyShift action_73
action_35 _ = happyReduce_49

action_36 _ = happyReduce_32

action_37 _ = happyReduce_31

action_38 (17) = happyShift action_8
action_38 (18) = happyShift action_9
action_38 (19) = happyShift action_10
action_38 (20) = happyShift action_11
action_38 (21) = happyShift action_12
action_38 (22) = happyShift action_13
action_38 (23) = happyShift action_14
action_38 (24) = happyShift action_15
action_38 (25) = happyShift action_16
action_38 (27) = happyShift action_17
action_38 (30) = happyShift action_18
action_38 (31) = happyShift action_19
action_38 (32) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (37) = happyShift action_23
action_38 (43) = happyShift action_24
action_38 (44) = happyShift action_25
action_38 (55) = happyShift action_26
action_38 (58) = happyShift action_27
action_38 (60) = happyShift action_28
action_38 (65) = happyShift action_29
action_38 (6) = happyGoto action_114
action_38 (7) = happyGoto action_5
action_38 (11) = happyGoto action_6
action_38 (12) = happyGoto action_7
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (17) = happyShift action_8
action_39 (18) = happyShift action_9
action_39 (19) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (21) = happyShift action_12
action_39 (22) = happyShift action_13
action_39 (23) = happyShift action_14
action_39 (24) = happyShift action_15
action_39 (25) = happyShift action_16
action_39 (27) = happyShift action_17
action_39 (30) = happyShift action_18
action_39 (31) = happyShift action_19
action_39 (32) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (37) = happyShift action_23
action_39 (43) = happyShift action_24
action_39 (44) = happyShift action_25
action_39 (55) = happyShift action_26
action_39 (58) = happyShift action_27
action_39 (60) = happyShift action_28
action_39 (65) = happyShift action_29
action_39 (6) = happyGoto action_113
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (12) = happyGoto action_7
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (17) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (19) = happyShift action_10
action_40 (20) = happyShift action_11
action_40 (21) = happyShift action_12
action_40 (22) = happyShift action_13
action_40 (23) = happyShift action_14
action_40 (24) = happyShift action_15
action_40 (25) = happyShift action_16
action_40 (27) = happyShift action_17
action_40 (30) = happyShift action_18
action_40 (31) = happyShift action_19
action_40 (32) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (37) = happyShift action_23
action_40 (43) = happyShift action_24
action_40 (44) = happyShift action_25
action_40 (55) = happyShift action_26
action_40 (58) = happyShift action_27
action_40 (60) = happyShift action_28
action_40 (65) = happyShift action_29
action_40 (6) = happyGoto action_112
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (12) = happyGoto action_7
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (17) = happyShift action_8
action_41 (18) = happyShift action_9
action_41 (19) = happyShift action_10
action_41 (20) = happyShift action_11
action_41 (21) = happyShift action_12
action_41 (22) = happyShift action_13
action_41 (23) = happyShift action_14
action_41 (24) = happyShift action_15
action_41 (25) = happyShift action_16
action_41 (27) = happyShift action_17
action_41 (30) = happyShift action_18
action_41 (31) = happyShift action_19
action_41 (32) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (37) = happyShift action_23
action_41 (43) = happyShift action_24
action_41 (44) = happyShift action_25
action_41 (55) = happyShift action_26
action_41 (58) = happyShift action_27
action_41 (60) = happyShift action_28
action_41 (65) = happyShift action_29
action_41 (6) = happyGoto action_111
action_41 (7) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 (12) = happyGoto action_7
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_8
action_42 (18) = happyShift action_9
action_42 (19) = happyShift action_10
action_42 (20) = happyShift action_11
action_42 (21) = happyShift action_12
action_42 (22) = happyShift action_13
action_42 (23) = happyShift action_14
action_42 (24) = happyShift action_15
action_42 (25) = happyShift action_16
action_42 (27) = happyShift action_17
action_42 (30) = happyShift action_18
action_42 (31) = happyShift action_19
action_42 (32) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (37) = happyShift action_23
action_42 (43) = happyShift action_24
action_42 (44) = happyShift action_25
action_42 (55) = happyShift action_26
action_42 (58) = happyShift action_27
action_42 (60) = happyShift action_28
action_42 (65) = happyShift action_29
action_42 (6) = happyGoto action_110
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 (12) = happyGoto action_7
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_8
action_43 (18) = happyShift action_9
action_43 (19) = happyShift action_10
action_43 (20) = happyShift action_11
action_43 (21) = happyShift action_12
action_43 (22) = happyShift action_13
action_43 (23) = happyShift action_14
action_43 (24) = happyShift action_15
action_43 (25) = happyShift action_16
action_43 (27) = happyShift action_17
action_43 (30) = happyShift action_18
action_43 (31) = happyShift action_19
action_43 (32) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (37) = happyShift action_23
action_43 (43) = happyShift action_24
action_43 (44) = happyShift action_25
action_43 (55) = happyShift action_26
action_43 (58) = happyShift action_27
action_43 (60) = happyShift action_28
action_43 (65) = happyShift action_29
action_43 (6) = happyGoto action_109
action_43 (7) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 (12) = happyGoto action_7
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (17) = happyShift action_8
action_44 (18) = happyShift action_9
action_44 (19) = happyShift action_10
action_44 (20) = happyShift action_11
action_44 (21) = happyShift action_12
action_44 (22) = happyShift action_13
action_44 (23) = happyShift action_14
action_44 (24) = happyShift action_15
action_44 (25) = happyShift action_16
action_44 (27) = happyShift action_17
action_44 (30) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (32) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (43) = happyShift action_24
action_44 (44) = happyShift action_25
action_44 (55) = happyShift action_26
action_44 (58) = happyShift action_27
action_44 (60) = happyShift action_28
action_44 (65) = happyShift action_29
action_44 (6) = happyGoto action_108
action_44 (7) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 (12) = happyGoto action_7
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (17) = happyShift action_8
action_45 (18) = happyShift action_9
action_45 (19) = happyShift action_10
action_45 (20) = happyShift action_11
action_45 (21) = happyShift action_12
action_45 (22) = happyShift action_13
action_45 (23) = happyShift action_14
action_45 (24) = happyShift action_15
action_45 (25) = happyShift action_16
action_45 (27) = happyShift action_17
action_45 (30) = happyShift action_18
action_45 (31) = happyShift action_19
action_45 (32) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (37) = happyShift action_23
action_45 (43) = happyShift action_24
action_45 (44) = happyShift action_25
action_45 (55) = happyShift action_26
action_45 (58) = happyShift action_27
action_45 (60) = happyShift action_28
action_45 (65) = happyShift action_29
action_45 (6) = happyGoto action_106
action_45 (7) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 (12) = happyGoto action_7
action_45 (14) = happyGoto action_107
action_45 _ = happyReduce_69

action_46 (60) = happyShift action_100
action_46 _ = happyReduce_10

action_47 (60) = happyShift action_100
action_47 _ = happyReduce_9

action_48 (60) = happyShift action_100
action_48 _ = happyReduce_8

action_49 (33) = happyShift action_59
action_49 (34) = happyShift action_60
action_49 (38) = happyShift action_61
action_49 (39) = happyShift action_62
action_49 (40) = happyShift action_63
action_49 (41) = happyShift action_64
action_49 (42) = happyShift action_65
action_49 (43) = happyShift action_98
action_49 (45) = happyShift action_67
action_49 (54) = happyShift action_68
action_49 (55) = happyShift action_99
action_49 (56) = happyShift action_70
action_49 (57) = happyShift action_71
action_49 (60) = happyShift action_100
action_49 (62) = happyShift action_105
action_49 (66) = happyShift action_73
action_49 (67) = happyShift action_74
action_49 (68) = happyShift action_75
action_49 (69) = happyShift action_76
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (26) = happyShift action_104
action_50 (33) = happyShift action_59
action_50 (34) = happyShift action_60
action_50 (38) = happyShift action_61
action_50 (39) = happyShift action_62
action_50 (40) = happyShift action_63
action_50 (41) = happyShift action_64
action_50 (42) = happyShift action_65
action_50 (43) = happyShift action_98
action_50 (45) = happyShift action_67
action_50 (54) = happyShift action_68
action_50 (55) = happyShift action_99
action_50 (56) = happyShift action_70
action_50 (57) = happyShift action_71
action_50 (60) = happyShift action_100
action_50 (66) = happyShift action_73
action_50 (67) = happyShift action_74
action_50 (68) = happyShift action_75
action_50 (69) = happyShift action_76
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (62) = happyShift action_103
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (33) = happyShift action_59
action_52 (34) = happyShift action_60
action_52 (38) = happyShift action_61
action_52 (39) = happyShift action_62
action_52 (40) = happyShift action_63
action_52 (41) = happyShift action_64
action_52 (42) = happyShift action_65
action_52 (43) = happyShift action_98
action_52 (45) = happyShift action_67
action_52 (54) = happyShift action_68
action_52 (55) = happyShift action_99
action_52 (56) = happyShift action_70
action_52 (57) = happyShift action_71
action_52 (60) = happyShift action_100
action_52 (62) = happyShift action_102
action_52 (66) = happyShift action_73
action_52 (67) = happyShift action_74
action_52 (68) = happyShift action_75
action_52 (69) = happyShift action_76
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (33) = happyShift action_59
action_53 (34) = happyShift action_60
action_53 (38) = happyShift action_61
action_53 (39) = happyShift action_62
action_53 (40) = happyShift action_63
action_53 (41) = happyShift action_64
action_53 (42) = happyShift action_65
action_53 (43) = happyShift action_98
action_53 (45) = happyShift action_67
action_53 (54) = happyShift action_68
action_53 (55) = happyShift action_99
action_53 (56) = happyShift action_70
action_53 (57) = happyShift action_71
action_53 (60) = happyShift action_100
action_53 (66) = happyShift action_73
action_53 (67) = happyShift action_74
action_53 (68) = happyShift action_75
action_53 (69) = happyShift action_76
action_53 _ = happyReduce_43

action_54 (58) = happyShift action_101
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (33) = happyShift action_59
action_55 (34) = happyShift action_60
action_55 (38) = happyShift action_61
action_55 (39) = happyShift action_62
action_55 (40) = happyShift action_63
action_55 (41) = happyShift action_64
action_55 (42) = happyShift action_65
action_55 (43) = happyShift action_98
action_55 (45) = happyShift action_67
action_55 (54) = happyShift action_68
action_55 (55) = happyShift action_99
action_55 (56) = happyShift action_70
action_55 (57) = happyShift action_71
action_55 (60) = happyShift action_100
action_55 (66) = happyShift action_73
action_55 (67) = happyShift action_74
action_55 (68) = happyShift action_75
action_55 (69) = happyShift action_76
action_55 _ = happyReduce_40

action_56 (17) = happyShift action_8
action_56 (18) = happyShift action_9
action_56 (19) = happyShift action_10
action_56 (20) = happyShift action_11
action_56 (21) = happyShift action_12
action_56 (22) = happyShift action_13
action_56 (23) = happyShift action_14
action_56 (24) = happyShift action_15
action_56 (25) = happyShift action_16
action_56 (27) = happyShift action_17
action_56 (30) = happyShift action_18
action_56 (31) = happyShift action_19
action_56 (32) = happyShift action_20
action_56 (35) = happyShift action_21
action_56 (36) = happyShift action_22
action_56 (37) = happyShift action_23
action_56 (43) = happyShift action_24
action_56 (44) = happyShift action_25
action_56 (55) = happyShift action_26
action_56 (58) = happyShift action_27
action_56 (60) = happyShift action_28
action_56 (65) = happyShift action_29
action_56 (6) = happyGoto action_97
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (12) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (47) = happyShift action_96
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_4

action_59 (17) = happyShift action_8
action_59 (18) = happyShift action_9
action_59 (19) = happyShift action_10
action_59 (20) = happyShift action_11
action_59 (21) = happyShift action_12
action_59 (22) = happyShift action_13
action_59 (23) = happyShift action_14
action_59 (24) = happyShift action_15
action_59 (25) = happyShift action_16
action_59 (27) = happyShift action_17
action_59 (30) = happyShift action_18
action_59 (31) = happyShift action_19
action_59 (32) = happyShift action_20
action_59 (35) = happyShift action_21
action_59 (36) = happyShift action_22
action_59 (37) = happyShift action_23
action_59 (43) = happyShift action_24
action_59 (44) = happyShift action_25
action_59 (55) = happyShift action_26
action_59 (58) = happyShift action_27
action_59 (60) = happyShift action_28
action_59 (65) = happyShift action_29
action_59 (6) = happyGoto action_95
action_59 (7) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 (12) = happyGoto action_7
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (17) = happyShift action_8
action_60 (18) = happyShift action_9
action_60 (19) = happyShift action_10
action_60 (20) = happyShift action_11
action_60 (21) = happyShift action_12
action_60 (22) = happyShift action_13
action_60 (23) = happyShift action_14
action_60 (24) = happyShift action_15
action_60 (25) = happyShift action_16
action_60 (27) = happyShift action_17
action_60 (30) = happyShift action_18
action_60 (31) = happyShift action_19
action_60 (32) = happyShift action_20
action_60 (35) = happyShift action_21
action_60 (36) = happyShift action_22
action_60 (37) = happyShift action_23
action_60 (43) = happyShift action_24
action_60 (44) = happyShift action_25
action_60 (55) = happyShift action_26
action_60 (58) = happyShift action_27
action_60 (60) = happyShift action_28
action_60 (65) = happyShift action_29
action_60 (6) = happyGoto action_94
action_60 (7) = happyGoto action_5
action_60 (11) = happyGoto action_6
action_60 (12) = happyGoto action_7
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (17) = happyShift action_8
action_61 (18) = happyShift action_9
action_61 (19) = happyShift action_10
action_61 (20) = happyShift action_11
action_61 (21) = happyShift action_12
action_61 (22) = happyShift action_13
action_61 (23) = happyShift action_14
action_61 (24) = happyShift action_15
action_61 (25) = happyShift action_16
action_61 (27) = happyShift action_17
action_61 (30) = happyShift action_18
action_61 (31) = happyShift action_19
action_61 (32) = happyShift action_20
action_61 (35) = happyShift action_21
action_61 (36) = happyShift action_22
action_61 (37) = happyShift action_23
action_61 (43) = happyShift action_24
action_61 (44) = happyShift action_25
action_61 (55) = happyShift action_26
action_61 (58) = happyShift action_27
action_61 (60) = happyShift action_28
action_61 (65) = happyShift action_29
action_61 (6) = happyGoto action_93
action_61 (7) = happyGoto action_5
action_61 (11) = happyGoto action_6
action_61 (12) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (17) = happyShift action_8
action_62 (18) = happyShift action_9
action_62 (19) = happyShift action_10
action_62 (20) = happyShift action_11
action_62 (21) = happyShift action_12
action_62 (22) = happyShift action_13
action_62 (23) = happyShift action_14
action_62 (24) = happyShift action_15
action_62 (25) = happyShift action_16
action_62 (27) = happyShift action_17
action_62 (30) = happyShift action_18
action_62 (31) = happyShift action_19
action_62 (32) = happyShift action_20
action_62 (35) = happyShift action_21
action_62 (36) = happyShift action_22
action_62 (37) = happyShift action_23
action_62 (43) = happyShift action_24
action_62 (44) = happyShift action_25
action_62 (55) = happyShift action_26
action_62 (58) = happyShift action_27
action_62 (60) = happyShift action_28
action_62 (65) = happyShift action_29
action_62 (6) = happyGoto action_92
action_62 (7) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 (12) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (17) = happyShift action_8
action_63 (18) = happyShift action_9
action_63 (19) = happyShift action_10
action_63 (20) = happyShift action_11
action_63 (21) = happyShift action_12
action_63 (22) = happyShift action_13
action_63 (23) = happyShift action_14
action_63 (24) = happyShift action_15
action_63 (25) = happyShift action_16
action_63 (27) = happyShift action_17
action_63 (30) = happyShift action_18
action_63 (31) = happyShift action_19
action_63 (32) = happyShift action_20
action_63 (35) = happyShift action_21
action_63 (36) = happyShift action_22
action_63 (37) = happyShift action_23
action_63 (43) = happyShift action_24
action_63 (44) = happyShift action_25
action_63 (55) = happyShift action_26
action_63 (58) = happyShift action_27
action_63 (60) = happyShift action_28
action_63 (65) = happyShift action_29
action_63 (6) = happyGoto action_91
action_63 (7) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (12) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (17) = happyShift action_8
action_64 (18) = happyShift action_9
action_64 (19) = happyShift action_10
action_64 (20) = happyShift action_11
action_64 (21) = happyShift action_12
action_64 (22) = happyShift action_13
action_64 (23) = happyShift action_14
action_64 (24) = happyShift action_15
action_64 (25) = happyShift action_16
action_64 (27) = happyShift action_17
action_64 (30) = happyShift action_18
action_64 (31) = happyShift action_19
action_64 (32) = happyShift action_20
action_64 (35) = happyShift action_21
action_64 (36) = happyShift action_22
action_64 (37) = happyShift action_23
action_64 (43) = happyShift action_24
action_64 (44) = happyShift action_25
action_64 (55) = happyShift action_26
action_64 (58) = happyShift action_27
action_64 (60) = happyShift action_28
action_64 (65) = happyShift action_29
action_64 (6) = happyGoto action_90
action_64 (7) = happyGoto action_5
action_64 (11) = happyGoto action_6
action_64 (12) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (17) = happyShift action_8
action_65 (18) = happyShift action_9
action_65 (19) = happyShift action_10
action_65 (20) = happyShift action_11
action_65 (21) = happyShift action_12
action_65 (22) = happyShift action_13
action_65 (23) = happyShift action_14
action_65 (24) = happyShift action_15
action_65 (25) = happyShift action_16
action_65 (27) = happyShift action_17
action_65 (30) = happyShift action_18
action_65 (31) = happyShift action_19
action_65 (32) = happyShift action_20
action_65 (35) = happyShift action_21
action_65 (36) = happyShift action_22
action_65 (37) = happyShift action_23
action_65 (43) = happyShift action_24
action_65 (44) = happyShift action_25
action_65 (55) = happyShift action_26
action_65 (58) = happyShift action_27
action_65 (60) = happyShift action_28
action_65 (65) = happyShift action_29
action_65 (6) = happyGoto action_89
action_65 (7) = happyGoto action_5
action_65 (11) = happyGoto action_6
action_65 (12) = happyGoto action_7
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (17) = happyShift action_8
action_66 (18) = happyShift action_9
action_66 (19) = happyShift action_10
action_66 (20) = happyShift action_11
action_66 (21) = happyShift action_12
action_66 (22) = happyShift action_13
action_66 (23) = happyShift action_14
action_66 (24) = happyShift action_15
action_66 (25) = happyShift action_16
action_66 (27) = happyShift action_17
action_66 (30) = happyShift action_18
action_66 (31) = happyShift action_19
action_66 (32) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (36) = happyShift action_22
action_66 (37) = happyShift action_88
action_66 (43) = happyShift action_24
action_66 (44) = happyShift action_25
action_66 (55) = happyShift action_26
action_66 (58) = happyShift action_27
action_66 (60) = happyShift action_28
action_66 (65) = happyShift action_29
action_66 (6) = happyGoto action_87
action_66 (7) = happyGoto action_5
action_66 (11) = happyGoto action_6
action_66 (12) = happyGoto action_7
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (17) = happyShift action_8
action_67 (18) = happyShift action_9
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_11
action_67 (21) = happyShift action_12
action_67 (22) = happyShift action_13
action_67 (23) = happyShift action_14
action_67 (24) = happyShift action_15
action_67 (25) = happyShift action_16
action_67 (27) = happyShift action_17
action_67 (30) = happyShift action_18
action_67 (31) = happyShift action_19
action_67 (32) = happyShift action_20
action_67 (35) = happyShift action_21
action_67 (36) = happyShift action_22
action_67 (37) = happyShift action_23
action_67 (43) = happyShift action_24
action_67 (44) = happyShift action_25
action_67 (55) = happyShift action_26
action_67 (58) = happyShift action_27
action_67 (60) = happyShift action_28
action_67 (65) = happyShift action_29
action_67 (6) = happyGoto action_86
action_67 (7) = happyGoto action_5
action_67 (11) = happyGoto action_6
action_67 (12) = happyGoto action_7
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (17) = happyShift action_8
action_68 (18) = happyShift action_9
action_68 (19) = happyShift action_10
action_68 (20) = happyShift action_11
action_68 (21) = happyShift action_12
action_68 (22) = happyShift action_13
action_68 (23) = happyShift action_14
action_68 (24) = happyShift action_15
action_68 (25) = happyShift action_16
action_68 (27) = happyShift action_17
action_68 (30) = happyShift action_18
action_68 (31) = happyShift action_19
action_68 (32) = happyShift action_20
action_68 (35) = happyShift action_21
action_68 (36) = happyShift action_22
action_68 (37) = happyShift action_23
action_68 (43) = happyShift action_24
action_68 (44) = happyShift action_25
action_68 (55) = happyShift action_26
action_68 (58) = happyShift action_27
action_68 (60) = happyShift action_28
action_68 (65) = happyShift action_29
action_68 (6) = happyGoto action_85
action_68 (7) = happyGoto action_5
action_68 (11) = happyGoto action_6
action_68 (12) = happyGoto action_7
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (17) = happyShift action_8
action_69 (18) = happyShift action_9
action_69 (19) = happyShift action_10
action_69 (20) = happyShift action_11
action_69 (21) = happyShift action_12
action_69 (22) = happyShift action_13
action_69 (23) = happyShift action_14
action_69 (24) = happyShift action_15
action_69 (25) = happyShift action_16
action_69 (27) = happyShift action_17
action_69 (30) = happyShift action_18
action_69 (31) = happyShift action_19
action_69 (32) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (36) = happyShift action_22
action_69 (37) = happyShift action_23
action_69 (43) = happyShift action_24
action_69 (44) = happyShift action_25
action_69 (55) = happyShift action_26
action_69 (58) = happyShift action_27
action_69 (60) = happyShift action_28
action_69 (65) = happyShift action_29
action_69 (6) = happyGoto action_84
action_69 (7) = happyGoto action_5
action_69 (11) = happyGoto action_6
action_69 (12) = happyGoto action_7
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (17) = happyShift action_8
action_70 (18) = happyShift action_9
action_70 (19) = happyShift action_10
action_70 (20) = happyShift action_11
action_70 (21) = happyShift action_12
action_70 (22) = happyShift action_13
action_70 (23) = happyShift action_14
action_70 (24) = happyShift action_15
action_70 (25) = happyShift action_16
action_70 (27) = happyShift action_17
action_70 (30) = happyShift action_18
action_70 (31) = happyShift action_19
action_70 (32) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (37) = happyShift action_23
action_70 (43) = happyShift action_24
action_70 (44) = happyShift action_25
action_70 (55) = happyShift action_26
action_70 (58) = happyShift action_27
action_70 (60) = happyShift action_28
action_70 (65) = happyShift action_29
action_70 (6) = happyGoto action_83
action_70 (7) = happyGoto action_5
action_70 (11) = happyGoto action_6
action_70 (12) = happyGoto action_7
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (17) = happyShift action_8
action_71 (18) = happyShift action_9
action_71 (19) = happyShift action_10
action_71 (20) = happyShift action_11
action_71 (21) = happyShift action_12
action_71 (22) = happyShift action_13
action_71 (23) = happyShift action_14
action_71 (24) = happyShift action_15
action_71 (25) = happyShift action_16
action_71 (27) = happyShift action_17
action_71 (30) = happyShift action_18
action_71 (31) = happyShift action_19
action_71 (32) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (37) = happyShift action_23
action_71 (43) = happyShift action_24
action_71 (44) = happyShift action_25
action_71 (55) = happyShift action_26
action_71 (58) = happyShift action_27
action_71 (60) = happyShift action_28
action_71 (65) = happyShift action_29
action_71 (6) = happyGoto action_82
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 (12) = happyGoto action_7
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (17) = happyShift action_8
action_72 (18) = happyShift action_9
action_72 (19) = happyShift action_10
action_72 (20) = happyShift action_11
action_72 (21) = happyShift action_12
action_72 (22) = happyShift action_13
action_72 (23) = happyShift action_14
action_72 (24) = happyShift action_15
action_72 (25) = happyShift action_16
action_72 (27) = happyShift action_17
action_72 (30) = happyShift action_18
action_72 (31) = happyShift action_19
action_72 (32) = happyShift action_20
action_72 (35) = happyShift action_33
action_72 (36) = happyShift action_22
action_72 (37) = happyShift action_23
action_72 (43) = happyShift action_24
action_72 (44) = happyShift action_25
action_72 (55) = happyShift action_26
action_72 (58) = happyShift action_27
action_72 (60) = happyShift action_28
action_72 (65) = happyShift action_29
action_72 (6) = happyGoto action_81
action_72 (7) = happyGoto action_5
action_72 (10) = happyGoto action_32
action_72 (11) = happyGoto action_6
action_72 (12) = happyGoto action_7
action_72 _ = happyReduce_56

action_73 (17) = happyShift action_8
action_73 (18) = happyShift action_9
action_73 (19) = happyShift action_10
action_73 (20) = happyShift action_11
action_73 (21) = happyShift action_12
action_73 (22) = happyShift action_13
action_73 (23) = happyShift action_14
action_73 (24) = happyShift action_15
action_73 (25) = happyShift action_16
action_73 (27) = happyShift action_17
action_73 (30) = happyShift action_18
action_73 (31) = happyShift action_19
action_73 (32) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (37) = happyShift action_23
action_73 (43) = happyShift action_24
action_73 (44) = happyShift action_25
action_73 (55) = happyShift action_26
action_73 (58) = happyShift action_27
action_73 (60) = happyShift action_28
action_73 (65) = happyShift action_29
action_73 (6) = happyGoto action_80
action_73 (7) = happyGoto action_5
action_73 (11) = happyGoto action_6
action_73 (12) = happyGoto action_7
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (17) = happyShift action_8
action_74 (18) = happyShift action_9
action_74 (19) = happyShift action_10
action_74 (20) = happyShift action_11
action_74 (21) = happyShift action_12
action_74 (22) = happyShift action_13
action_74 (23) = happyShift action_14
action_74 (24) = happyShift action_15
action_74 (25) = happyShift action_16
action_74 (27) = happyShift action_17
action_74 (30) = happyShift action_18
action_74 (31) = happyShift action_19
action_74 (32) = happyShift action_20
action_74 (35) = happyShift action_21
action_74 (36) = happyShift action_22
action_74 (37) = happyShift action_23
action_74 (43) = happyShift action_24
action_74 (44) = happyShift action_25
action_74 (55) = happyShift action_26
action_74 (58) = happyShift action_27
action_74 (60) = happyShift action_28
action_74 (65) = happyShift action_29
action_74 (6) = happyGoto action_79
action_74 (7) = happyGoto action_5
action_74 (11) = happyGoto action_6
action_74 (12) = happyGoto action_7
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (17) = happyShift action_8
action_75 (18) = happyShift action_9
action_75 (19) = happyShift action_10
action_75 (20) = happyShift action_11
action_75 (21) = happyShift action_12
action_75 (22) = happyShift action_13
action_75 (23) = happyShift action_14
action_75 (24) = happyShift action_15
action_75 (25) = happyShift action_16
action_75 (27) = happyShift action_17
action_75 (30) = happyShift action_18
action_75 (31) = happyShift action_19
action_75 (32) = happyShift action_20
action_75 (35) = happyShift action_21
action_75 (36) = happyShift action_22
action_75 (37) = happyShift action_23
action_75 (43) = happyShift action_24
action_75 (44) = happyShift action_25
action_75 (55) = happyShift action_26
action_75 (58) = happyShift action_27
action_75 (60) = happyShift action_28
action_75 (65) = happyShift action_29
action_75 (6) = happyGoto action_78
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 (12) = happyGoto action_7
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (17) = happyShift action_8
action_76 (18) = happyShift action_9
action_76 (19) = happyShift action_10
action_76 (20) = happyShift action_11
action_76 (21) = happyShift action_12
action_76 (22) = happyShift action_13
action_76 (23) = happyShift action_14
action_76 (24) = happyShift action_15
action_76 (25) = happyShift action_16
action_76 (27) = happyShift action_17
action_76 (30) = happyShift action_18
action_76 (31) = happyShift action_19
action_76 (32) = happyShift action_20
action_76 (35) = happyShift action_21
action_76 (36) = happyShift action_22
action_76 (37) = happyShift action_23
action_76 (43) = happyShift action_24
action_76 (44) = happyShift action_25
action_76 (55) = happyShift action_26
action_76 (58) = happyShift action_27
action_76 (60) = happyShift action_28
action_76 (65) = happyShift action_29
action_76 (6) = happyGoto action_77
action_76 (7) = happyGoto action_5
action_76 (11) = happyGoto action_6
action_76 (12) = happyGoto action_7
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (42) = happyShift action_65
action_77 (43) = happyShift action_98
action_77 (45) = happyShift action_67
action_77 (54) = happyShift action_68
action_77 (55) = happyShift action_99
action_77 (56) = happyShift action_70
action_77 (57) = happyShift action_71
action_77 (60) = happyShift action_100
action_77 (66) = happyShift action_73
action_77 (67) = happyShift action_74
action_77 _ = happyReduce_48

action_78 (42) = happyShift action_65
action_78 (43) = happyShift action_98
action_78 (45) = happyShift action_67
action_78 (54) = happyShift action_68
action_78 (55) = happyShift action_99
action_78 (56) = happyShift action_70
action_78 (57) = happyShift action_71
action_78 (60) = happyShift action_100
action_78 (66) = happyShift action_73
action_78 (67) = happyShift action_74
action_78 _ = happyReduce_47

action_79 (42) = happyShift action_65
action_79 (43) = happyShift action_98
action_79 (45) = happyShift action_67
action_79 (60) = happyShift action_100
action_79 (66) = happyShift action_73
action_79 _ = happyReduce_46

action_80 (60) = happyShift action_100
action_80 (66) = happyShift action_73
action_80 _ = happyReduce_45

action_81 (33) = happyShift action_59
action_81 (34) = happyShift action_60
action_81 (38) = happyShift action_61
action_81 (39) = happyShift action_62
action_81 (40) = happyShift action_63
action_81 (41) = happyShift action_64
action_81 (42) = happyShift action_65
action_81 (43) = happyShift action_98
action_81 (45) = happyShift action_67
action_81 (54) = happyShift action_68
action_81 (55) = happyShift action_99
action_81 (56) = happyShift action_70
action_81 (57) = happyShift action_71
action_81 (60) = happyShift action_100
action_81 (61) = happyShift action_133
action_81 (64) = happyShift action_118
action_81 (66) = happyShift action_73
action_81 (67) = happyShift action_74
action_81 (68) = happyShift action_75
action_81 (69) = happyShift action_76
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (42) = happyShift action_65
action_82 (43) = happyShift action_98
action_82 (45) = happyShift action_67
action_82 (60) = happyShift action_100
action_82 (66) = happyShift action_73
action_82 _ = happyReduce_37

action_83 (42) = happyShift action_65
action_83 (43) = happyShift action_98
action_83 (45) = happyShift action_67
action_83 (60) = happyShift action_100
action_83 (66) = happyShift action_73
action_83 _ = happyReduce_36

action_84 (42) = happyShift action_65
action_84 (43) = happyShift action_98
action_84 (45) = happyShift action_67
action_84 (60) = happyShift action_100
action_84 (66) = happyShift action_73
action_84 _ = happyReduce_49

action_85 (42) = happyShift action_65
action_85 (43) = happyShift action_98
action_85 (45) = happyShift action_67
action_85 (56) = happyShift action_70
action_85 (57) = happyShift action_71
action_85 (60) = happyShift action_100
action_85 (66) = happyShift action_73
action_85 (67) = happyShift action_74
action_85 _ = happyReduce_34

action_86 (42) = happyShift action_65
action_86 (45) = happyShift action_67
action_86 (60) = happyShift action_100
action_86 (66) = happyShift action_73
action_86 _ = happyReduce_22

action_87 (42) = happyShift action_65
action_87 (45) = happyShift action_67
action_87 (60) = happyShift action_100
action_87 (66) = happyShift action_73
action_87 _ = happyReduce_21

action_88 (47) = happyShift action_38
action_88 (48) = happyShift action_39
action_88 (49) = happyShift action_40
action_88 (50) = happyShift action_41
action_88 (51) = happyShift action_42
action_88 (52) = happyShift action_43
action_88 (53) = happyShift action_44
action_88 (58) = happyShift action_45
action_88 _ = happyReduce_33

action_89 (42) = happyShift action_65
action_89 (45) = happyShift action_67
action_89 (60) = happyShift action_100
action_89 (66) = happyShift action_73
action_89 _ = happyReduce_20

action_90 (38) = happyShift action_61
action_90 (39) = happyShift action_62
action_90 (42) = happyShift action_65
action_90 (43) = happyShift action_98
action_90 (45) = happyShift action_67
action_90 (54) = happyShift action_68
action_90 (55) = happyShift action_99
action_90 (56) = happyShift action_70
action_90 (57) = happyShift action_71
action_90 (60) = happyShift action_100
action_90 (66) = happyShift action_73
action_90 (67) = happyShift action_74
action_90 (68) = happyShift action_75
action_90 (69) = happyShift action_76
action_90 _ = happyReduce_19

action_91 (38) = happyShift action_61
action_91 (39) = happyShift action_62
action_91 (42) = happyShift action_65
action_91 (43) = happyShift action_98
action_91 (45) = happyShift action_67
action_91 (54) = happyShift action_68
action_91 (55) = happyShift action_99
action_91 (56) = happyShift action_70
action_91 (57) = happyShift action_71
action_91 (60) = happyShift action_100
action_91 (66) = happyShift action_73
action_91 (67) = happyShift action_74
action_91 (68) = happyShift action_75
action_91 (69) = happyShift action_76
action_91 _ = happyReduce_18

action_92 (42) = happyShift action_65
action_92 (43) = happyShift action_98
action_92 (45) = happyShift action_67
action_92 (54) = happyShift action_68
action_92 (55) = happyShift action_99
action_92 (56) = happyShift action_70
action_92 (57) = happyShift action_71
action_92 (60) = happyShift action_100
action_92 (66) = happyShift action_73
action_92 (67) = happyShift action_74
action_92 _ = happyReduce_17

action_93 (42) = happyShift action_65
action_93 (43) = happyShift action_98
action_93 (45) = happyShift action_67
action_93 (54) = happyShift action_68
action_93 (55) = happyShift action_99
action_93 (56) = happyShift action_70
action_93 (57) = happyShift action_71
action_93 (60) = happyShift action_100
action_93 (66) = happyShift action_73
action_93 (67) = happyShift action_74
action_93 _ = happyReduce_16

action_94 (33) = happyShift action_59
action_94 (38) = happyShift action_61
action_94 (39) = happyShift action_62
action_94 (40) = happyShift action_63
action_94 (41) = happyShift action_64
action_94 (42) = happyShift action_65
action_94 (43) = happyShift action_98
action_94 (45) = happyShift action_67
action_94 (54) = happyShift action_68
action_94 (55) = happyShift action_99
action_94 (56) = happyShift action_70
action_94 (57) = happyShift action_71
action_94 (60) = happyShift action_100
action_94 (66) = happyShift action_73
action_94 (67) = happyShift action_74
action_94 (68) = happyShift action_75
action_94 (69) = happyShift action_76
action_94 _ = happyReduce_12

action_95 (38) = happyShift action_61
action_95 (39) = happyShift action_62
action_95 (40) = happyShift action_63
action_95 (41) = happyShift action_64
action_95 (42) = happyShift action_65
action_95 (43) = happyShift action_98
action_95 (45) = happyShift action_67
action_95 (54) = happyShift action_68
action_95 (55) = happyShift action_99
action_95 (56) = happyShift action_70
action_95 (57) = happyShift action_71
action_95 (60) = happyShift action_100
action_95 (66) = happyShift action_73
action_95 (67) = happyShift action_74
action_95 (68) = happyShift action_75
action_95 (69) = happyShift action_76
action_95 _ = happyReduce_11

action_96 (17) = happyShift action_8
action_96 (18) = happyShift action_9
action_96 (19) = happyShift action_10
action_96 (20) = happyShift action_11
action_96 (21) = happyShift action_12
action_96 (22) = happyShift action_13
action_96 (23) = happyShift action_14
action_96 (24) = happyShift action_15
action_96 (25) = happyShift action_16
action_96 (27) = happyShift action_17
action_96 (30) = happyShift action_18
action_96 (31) = happyShift action_19
action_96 (32) = happyShift action_20
action_96 (35) = happyShift action_21
action_96 (36) = happyShift action_22
action_96 (37) = happyShift action_23
action_96 (43) = happyShift action_24
action_96 (44) = happyShift action_25
action_96 (55) = happyShift action_26
action_96 (58) = happyShift action_27
action_96 (60) = happyShift action_28
action_96 (65) = happyShift action_29
action_96 (6) = happyGoto action_132
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 (12) = happyGoto action_7
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (33) = happyShift action_59
action_97 (34) = happyShift action_60
action_97 (38) = happyShift action_61
action_97 (39) = happyShift action_62
action_97 (40) = happyShift action_63
action_97 (41) = happyShift action_64
action_97 (42) = happyShift action_65
action_97 (43) = happyShift action_98
action_97 (45) = happyShift action_67
action_97 (54) = happyShift action_68
action_97 (55) = happyShift action_99
action_97 (56) = happyShift action_70
action_97 (57) = happyShift action_71
action_97 (60) = happyShift action_100
action_97 (63) = happyShift action_131
action_97 (66) = happyShift action_73
action_97 (67) = happyShift action_74
action_97 (68) = happyShift action_75
action_97 (69) = happyShift action_76
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (17) = happyShift action_8
action_98 (18) = happyShift action_9
action_98 (19) = happyShift action_10
action_98 (20) = happyShift action_11
action_98 (21) = happyShift action_12
action_98 (22) = happyShift action_13
action_98 (23) = happyShift action_14
action_98 (24) = happyShift action_15
action_98 (25) = happyShift action_16
action_98 (27) = happyShift action_17
action_98 (30) = happyShift action_18
action_98 (31) = happyShift action_19
action_98 (32) = happyShift action_20
action_98 (35) = happyShift action_21
action_98 (36) = happyShift action_22
action_98 (37) = happyShift action_23
action_98 (43) = happyShift action_24
action_98 (44) = happyShift action_25
action_98 (55) = happyShift action_26
action_98 (58) = happyShift action_27
action_98 (60) = happyShift action_28
action_98 (65) = happyShift action_29
action_98 (6) = happyGoto action_87
action_98 (7) = happyGoto action_5
action_98 (11) = happyGoto action_6
action_98 (12) = happyGoto action_7
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (17) = happyShift action_8
action_99 (18) = happyShift action_9
action_99 (19) = happyShift action_10
action_99 (20) = happyShift action_11
action_99 (21) = happyShift action_12
action_99 (22) = happyShift action_13
action_99 (23) = happyShift action_14
action_99 (24) = happyShift action_15
action_99 (25) = happyShift action_16
action_99 (27) = happyShift action_17
action_99 (30) = happyShift action_18
action_99 (31) = happyShift action_19
action_99 (32) = happyShift action_20
action_99 (35) = happyShift action_21
action_99 (36) = happyShift action_22
action_99 (37) = happyShift action_23
action_99 (43) = happyShift action_24
action_99 (44) = happyShift action_25
action_99 (55) = happyShift action_26
action_99 (58) = happyShift action_27
action_99 (60) = happyShift action_28
action_99 (65) = happyShift action_29
action_99 (6) = happyGoto action_130
action_99 (7) = happyGoto action_5
action_99 (11) = happyGoto action_6
action_99 (12) = happyGoto action_7
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (17) = happyShift action_8
action_100 (18) = happyShift action_9
action_100 (19) = happyShift action_10
action_100 (20) = happyShift action_11
action_100 (21) = happyShift action_12
action_100 (22) = happyShift action_13
action_100 (23) = happyShift action_14
action_100 (24) = happyShift action_15
action_100 (25) = happyShift action_16
action_100 (27) = happyShift action_17
action_100 (30) = happyShift action_18
action_100 (31) = happyShift action_19
action_100 (32) = happyShift action_20
action_100 (35) = happyShift action_21
action_100 (36) = happyShift action_22
action_100 (37) = happyShift action_23
action_100 (43) = happyShift action_24
action_100 (44) = happyShift action_25
action_100 (55) = happyShift action_26
action_100 (58) = happyShift action_27
action_100 (60) = happyShift action_28
action_100 (65) = happyShift action_29
action_100 (6) = happyGoto action_129
action_100 (7) = happyGoto action_5
action_100 (11) = happyGoto action_6
action_100 (12) = happyGoto action_7
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (17) = happyShift action_8
action_101 (18) = happyShift action_9
action_101 (19) = happyShift action_10
action_101 (11) = happyGoto action_127
action_101 (13) = happyGoto action_128
action_101 _ = happyReduce_66

action_102 (17) = happyShift action_8
action_102 (18) = happyShift action_9
action_102 (19) = happyShift action_10
action_102 (20) = happyShift action_11
action_102 (21) = happyShift action_12
action_102 (22) = happyShift action_13
action_102 (23) = happyShift action_14
action_102 (24) = happyShift action_15
action_102 (25) = happyShift action_16
action_102 (27) = happyShift action_17
action_102 (30) = happyShift action_18
action_102 (31) = happyShift action_19
action_102 (32) = happyShift action_20
action_102 (35) = happyShift action_21
action_102 (36) = happyShift action_22
action_102 (37) = happyShift action_23
action_102 (43) = happyShift action_24
action_102 (44) = happyShift action_25
action_102 (55) = happyShift action_26
action_102 (58) = happyShift action_27
action_102 (60) = happyShift action_28
action_102 (65) = happyShift action_29
action_102 (4) = happyGoto action_126
action_102 (5) = happyGoto action_3
action_102 (6) = happyGoto action_4
action_102 (7) = happyGoto action_5
action_102 (11) = happyGoto action_6
action_102 (12) = happyGoto action_7
action_102 _ = happyReduce_1

action_103 (17) = happyShift action_8
action_103 (18) = happyShift action_9
action_103 (19) = happyShift action_10
action_103 (20) = happyShift action_11
action_103 (21) = happyShift action_12
action_103 (22) = happyShift action_13
action_103 (23) = happyShift action_14
action_103 (24) = happyShift action_15
action_103 (25) = happyShift action_16
action_103 (27) = happyShift action_17
action_103 (30) = happyShift action_18
action_103 (31) = happyShift action_19
action_103 (32) = happyShift action_20
action_103 (35) = happyShift action_21
action_103 (36) = happyShift action_22
action_103 (37) = happyShift action_23
action_103 (43) = happyShift action_24
action_103 (44) = happyShift action_25
action_103 (55) = happyShift action_26
action_103 (58) = happyShift action_27
action_103 (60) = happyShift action_28
action_103 (65) = happyShift action_29
action_103 (4) = happyGoto action_125
action_103 (5) = happyGoto action_3
action_103 (6) = happyGoto action_4
action_103 (7) = happyGoto action_5
action_103 (11) = happyGoto action_6
action_103 (12) = happyGoto action_7
action_103 _ = happyReduce_1

action_104 (60) = happyShift action_124
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (17) = happyShift action_8
action_105 (18) = happyShift action_9
action_105 (19) = happyShift action_10
action_105 (20) = happyShift action_11
action_105 (21) = happyShift action_12
action_105 (22) = happyShift action_13
action_105 (23) = happyShift action_14
action_105 (24) = happyShift action_15
action_105 (25) = happyShift action_16
action_105 (27) = happyShift action_17
action_105 (30) = happyShift action_18
action_105 (31) = happyShift action_19
action_105 (32) = happyShift action_20
action_105 (35) = happyShift action_21
action_105 (36) = happyShift action_22
action_105 (37) = happyShift action_23
action_105 (43) = happyShift action_24
action_105 (44) = happyShift action_25
action_105 (55) = happyShift action_26
action_105 (58) = happyShift action_27
action_105 (60) = happyShift action_28
action_105 (65) = happyShift action_29
action_105 (4) = happyGoto action_123
action_105 (5) = happyGoto action_3
action_105 (6) = happyGoto action_4
action_105 (7) = happyGoto action_5
action_105 (11) = happyGoto action_6
action_105 (12) = happyGoto action_7
action_105 _ = happyReduce_1

action_106 (33) = happyShift action_59
action_106 (34) = happyShift action_60
action_106 (38) = happyShift action_61
action_106 (39) = happyShift action_62
action_106 (40) = happyShift action_63
action_106 (41) = happyShift action_64
action_106 (42) = happyShift action_65
action_106 (43) = happyShift action_98
action_106 (45) = happyShift action_67
action_106 (54) = happyShift action_68
action_106 (55) = happyShift action_99
action_106 (56) = happyShift action_70
action_106 (57) = happyShift action_71
action_106 (60) = happyShift action_100
action_106 (64) = happyShift action_122
action_106 (66) = happyShift action_73
action_106 (67) = happyShift action_74
action_106 (68) = happyShift action_75
action_106 (69) = happyShift action_76
action_106 _ = happyReduce_70

action_107 (59) = happyShift action_121
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (33) = happyShift action_59
action_108 (34) = happyShift action_60
action_108 (38) = happyShift action_61
action_108 (39) = happyShift action_62
action_108 (40) = happyShift action_63
action_108 (41) = happyShift action_64
action_108 (42) = happyShift action_65
action_108 (43) = happyShift action_98
action_108 (45) = happyShift action_67
action_108 (54) = happyShift action_68
action_108 (55) = happyShift action_99
action_108 (56) = happyShift action_70
action_108 (57) = happyShift action_71
action_108 (60) = happyShift action_100
action_108 (66) = happyShift action_73
action_108 (67) = happyShift action_74
action_108 (68) = happyShift action_75
action_108 (69) = happyShift action_76
action_108 _ = happyReduce_30

action_109 (33) = happyShift action_59
action_109 (34) = happyShift action_60
action_109 (38) = happyShift action_61
action_109 (39) = happyShift action_62
action_109 (40) = happyShift action_63
action_109 (41) = happyShift action_64
action_109 (42) = happyShift action_65
action_109 (43) = happyShift action_98
action_109 (45) = happyShift action_67
action_109 (54) = happyShift action_68
action_109 (55) = happyShift action_99
action_109 (56) = happyShift action_70
action_109 (57) = happyShift action_71
action_109 (60) = happyShift action_100
action_109 (66) = happyShift action_73
action_109 (67) = happyShift action_74
action_109 (68) = happyShift action_75
action_109 (69) = happyShift action_76
action_109 _ = happyReduce_29

action_110 (33) = happyShift action_59
action_110 (34) = happyShift action_60
action_110 (38) = happyShift action_61
action_110 (39) = happyShift action_62
action_110 (40) = happyShift action_63
action_110 (41) = happyShift action_64
action_110 (42) = happyShift action_65
action_110 (43) = happyShift action_98
action_110 (45) = happyShift action_67
action_110 (54) = happyShift action_68
action_110 (55) = happyShift action_99
action_110 (56) = happyShift action_70
action_110 (57) = happyShift action_71
action_110 (60) = happyShift action_100
action_110 (66) = happyShift action_73
action_110 (67) = happyShift action_74
action_110 (68) = happyShift action_75
action_110 (69) = happyShift action_76
action_110 _ = happyReduce_28

action_111 (33) = happyShift action_59
action_111 (34) = happyShift action_60
action_111 (38) = happyShift action_61
action_111 (39) = happyShift action_62
action_111 (40) = happyShift action_63
action_111 (41) = happyShift action_64
action_111 (42) = happyShift action_65
action_111 (43) = happyShift action_98
action_111 (45) = happyShift action_67
action_111 (54) = happyShift action_68
action_111 (55) = happyShift action_99
action_111 (56) = happyShift action_70
action_111 (57) = happyShift action_71
action_111 (60) = happyShift action_100
action_111 (66) = happyShift action_73
action_111 (67) = happyShift action_74
action_111 (68) = happyShift action_75
action_111 (69) = happyShift action_76
action_111 _ = happyReduce_27

action_112 (33) = happyShift action_59
action_112 (34) = happyShift action_60
action_112 (38) = happyShift action_61
action_112 (39) = happyShift action_62
action_112 (40) = happyShift action_63
action_112 (41) = happyShift action_64
action_112 (42) = happyShift action_65
action_112 (43) = happyShift action_98
action_112 (45) = happyShift action_67
action_112 (54) = happyShift action_68
action_112 (55) = happyShift action_99
action_112 (56) = happyShift action_70
action_112 (57) = happyShift action_71
action_112 (60) = happyShift action_100
action_112 (66) = happyShift action_73
action_112 (67) = happyShift action_74
action_112 (68) = happyShift action_75
action_112 (69) = happyShift action_76
action_112 _ = happyReduce_26

action_113 (33) = happyShift action_59
action_113 (34) = happyShift action_60
action_113 (38) = happyShift action_61
action_113 (39) = happyShift action_62
action_113 (40) = happyShift action_63
action_113 (41) = happyShift action_64
action_113 (42) = happyShift action_65
action_113 (43) = happyShift action_98
action_113 (45) = happyShift action_67
action_113 (54) = happyShift action_68
action_113 (55) = happyShift action_99
action_113 (56) = happyShift action_70
action_113 (57) = happyShift action_71
action_113 (60) = happyShift action_100
action_113 (66) = happyShift action_73
action_113 (67) = happyShift action_74
action_113 (68) = happyShift action_75
action_113 (69) = happyShift action_76
action_113 _ = happyReduce_25

action_114 (33) = happyShift action_59
action_114 (34) = happyShift action_60
action_114 (38) = happyShift action_61
action_114 (39) = happyShift action_62
action_114 (40) = happyShift action_63
action_114 (41) = happyShift action_64
action_114 (42) = happyShift action_65
action_114 (43) = happyShift action_98
action_114 (45) = happyShift action_67
action_114 (54) = happyShift action_68
action_114 (55) = happyShift action_99
action_114 (56) = happyShift action_70
action_114 (57) = happyShift action_71
action_114 (60) = happyShift action_100
action_114 (66) = happyShift action_73
action_114 (67) = happyShift action_74
action_114 (68) = happyShift action_75
action_114 (69) = happyShift action_76
action_114 _ = happyReduce_24

action_115 _ = happyReduce_50

action_116 (35) = happyShift action_120
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_15

action_118 (17) = happyShift action_8
action_118 (18) = happyShift action_9
action_118 (19) = happyShift action_10
action_118 (20) = happyShift action_11
action_118 (21) = happyShift action_12
action_118 (22) = happyShift action_13
action_118 (23) = happyShift action_14
action_118 (24) = happyShift action_15
action_118 (25) = happyShift action_16
action_118 (27) = happyShift action_17
action_118 (30) = happyShift action_18
action_118 (31) = happyShift action_19
action_118 (32) = happyShift action_20
action_118 (35) = happyShift action_33
action_118 (36) = happyShift action_22
action_118 (37) = happyShift action_23
action_118 (43) = happyShift action_24
action_118 (44) = happyShift action_25
action_118 (55) = happyShift action_26
action_118 (58) = happyShift action_27
action_118 (60) = happyShift action_28
action_118 (65) = happyShift action_29
action_118 (6) = happyGoto action_31
action_118 (7) = happyGoto action_5
action_118 (10) = happyGoto action_119
action_118 (11) = happyGoto action_6
action_118 (12) = happyGoto action_7
action_118 _ = happyReduce_56

action_119 _ = happyReduce_58

action_120 (64) = happyShift action_143
action_120 _ = happyReduce_59

action_121 _ = happyReduce_42

action_122 (17) = happyShift action_8
action_122 (18) = happyShift action_9
action_122 (19) = happyShift action_10
action_122 (20) = happyShift action_11
action_122 (21) = happyShift action_12
action_122 (22) = happyShift action_13
action_122 (23) = happyShift action_14
action_122 (24) = happyShift action_15
action_122 (25) = happyShift action_16
action_122 (27) = happyShift action_17
action_122 (30) = happyShift action_18
action_122 (31) = happyShift action_19
action_122 (32) = happyShift action_20
action_122 (35) = happyShift action_21
action_122 (36) = happyShift action_22
action_122 (37) = happyShift action_23
action_122 (43) = happyShift action_24
action_122 (44) = happyShift action_25
action_122 (55) = happyShift action_26
action_122 (58) = happyShift action_27
action_122 (60) = happyShift action_28
action_122 (65) = happyShift action_29
action_122 (6) = happyGoto action_106
action_122 (7) = happyGoto action_5
action_122 (11) = happyGoto action_6
action_122 (12) = happyGoto action_7
action_122 (14) = happyGoto action_142
action_122 _ = happyReduce_69

action_123 (63) = happyShift action_141
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (37) = happyShift action_139
action_124 (70) = happyShift action_140
action_124 (16) = happyGoto action_138
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (63) = happyShift action_137
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (63) = happyShift action_136
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (37) = happyShift action_135
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (59) = happyShift action_134
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (33) = happyShift action_59
action_129 (34) = happyShift action_60
action_129 (38) = happyShift action_61
action_129 (39) = happyShift action_62
action_129 (40) = happyShift action_63
action_129 (41) = happyShift action_64
action_129 (42) = happyShift action_65
action_129 (43) = happyShift action_98
action_129 (45) = happyShift action_67
action_129 (54) = happyShift action_68
action_129 (55) = happyShift action_99
action_129 (56) = happyShift action_70
action_129 (57) = happyShift action_71
action_129 (60) = happyShift action_100
action_129 (61) = happyShift action_133
action_129 (66) = happyShift action_73
action_129 (67) = happyShift action_74
action_129 (68) = happyShift action_75
action_129 (69) = happyShift action_76
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (42) = happyShift action_65
action_130 (43) = happyShift action_98
action_130 (45) = happyShift action_67
action_130 (56) = happyShift action_70
action_130 (57) = happyShift action_71
action_130 (60) = happyShift action_100
action_130 (66) = happyShift action_73
action_130 (67) = happyShift action_74
action_130 _ = happyReduce_35

action_131 _ = happyReduce_39

action_132 (33) = happyShift action_59
action_132 (34) = happyShift action_60
action_132 (38) = happyShift action_61
action_132 (39) = happyShift action_62
action_132 (40) = happyShift action_63
action_132 (41) = happyShift action_64
action_132 (42) = happyShift action_65
action_132 (43) = happyShift action_98
action_132 (45) = happyShift action_67
action_132 (54) = happyShift action_68
action_132 (55) = happyShift action_99
action_132 (56) = happyShift action_70
action_132 (57) = happyShift action_71
action_132 (60) = happyShift action_100
action_132 (66) = happyShift action_73
action_132 (67) = happyShift action_74
action_132 (68) = happyShift action_75
action_132 (69) = happyShift action_76
action_132 _ = happyReduce_23

action_133 _ = happyReduce_38

action_134 (46) = happyShift action_151
action_134 (62) = happyShift action_152
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (64) = happyShift action_150
action_135 _ = happyReduce_67

action_136 _ = happyReduce_5

action_137 _ = happyReduce_6

action_138 (61) = happyShift action_149
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (64) = happyShift action_148
action_139 _ = happyReduce_74

action_140 (64) = happyShift action_147
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (28) = happyShift action_146
action_141 (8) = happyGoto action_145
action_141 _ = happyReduce_52

action_142 _ = happyReduce_71

action_143 (17) = happyShift action_8
action_143 (18) = happyShift action_9
action_143 (19) = happyShift action_10
action_143 (20) = happyShift action_11
action_143 (21) = happyShift action_12
action_143 (22) = happyShift action_13
action_143 (23) = happyShift action_14
action_143 (24) = happyShift action_15
action_143 (25) = happyShift action_16
action_143 (27) = happyShift action_17
action_143 (30) = happyShift action_18
action_143 (31) = happyShift action_19
action_143 (32) = happyShift action_20
action_143 (35) = happyShift action_33
action_143 (36) = happyShift action_22
action_143 (37) = happyShift action_23
action_143 (43) = happyShift action_24
action_143 (44) = happyShift action_25
action_143 (55) = happyShift action_26
action_143 (58) = happyShift action_27
action_143 (60) = happyShift action_28
action_143 (65) = happyShift action_29
action_143 (6) = happyGoto action_31
action_143 (7) = happyGoto action_5
action_143 (10) = happyGoto action_144
action_143 (11) = happyGoto action_6
action_143 (12) = happyGoto action_7
action_143 _ = happyReduce_56

action_144 _ = happyReduce_60

action_145 (29) = happyShift action_161
action_145 (9) = happyGoto action_160
action_145 _ = happyReduce_54

action_146 (17) = happyShift action_8
action_146 (18) = happyShift action_9
action_146 (19) = happyShift action_10
action_146 (20) = happyShift action_11
action_146 (21) = happyShift action_12
action_146 (22) = happyShift action_13
action_146 (23) = happyShift action_14
action_146 (24) = happyShift action_15
action_146 (25) = happyShift action_16
action_146 (27) = happyShift action_17
action_146 (30) = happyShift action_18
action_146 (31) = happyShift action_19
action_146 (32) = happyShift action_20
action_146 (35) = happyShift action_21
action_146 (36) = happyShift action_22
action_146 (37) = happyShift action_23
action_146 (43) = happyShift action_24
action_146 (44) = happyShift action_25
action_146 (55) = happyShift action_26
action_146 (58) = happyShift action_27
action_146 (60) = happyShift action_28
action_146 (65) = happyShift action_29
action_146 (6) = happyGoto action_159
action_146 (7) = happyGoto action_5
action_146 (11) = happyGoto action_6
action_146 (12) = happyGoto action_7
action_146 _ = happyFail (happyExpListPerState 146)

action_147 (37) = happyShift action_139
action_147 (70) = happyShift action_140
action_147 (16) = happyGoto action_158
action_147 _ = happyFail (happyExpListPerState 147)

action_148 (37) = happyShift action_139
action_148 (70) = happyShift action_140
action_148 (16) = happyGoto action_157
action_148 _ = happyFail (happyExpListPerState 148)

action_149 (64) = happyShift action_156
action_149 _ = happyReduce_72

action_150 (17) = happyShift action_8
action_150 (18) = happyShift action_9
action_150 (19) = happyShift action_10
action_150 (11) = happyGoto action_127
action_150 (13) = happyGoto action_155
action_150 _ = happyReduce_66

action_151 (17) = happyShift action_8
action_151 (18) = happyShift action_9
action_151 (19) = happyShift action_10
action_151 (11) = happyGoto action_154
action_151 _ = happyFail (happyExpListPerState 151)

action_152 (17) = happyShift action_8
action_152 (18) = happyShift action_9
action_152 (19) = happyShift action_10
action_152 (20) = happyShift action_11
action_152 (21) = happyShift action_12
action_152 (22) = happyShift action_13
action_152 (23) = happyShift action_14
action_152 (24) = happyShift action_15
action_152 (25) = happyShift action_16
action_152 (27) = happyShift action_17
action_152 (30) = happyShift action_18
action_152 (31) = happyShift action_19
action_152 (32) = happyShift action_20
action_152 (35) = happyShift action_21
action_152 (36) = happyShift action_22
action_152 (37) = happyShift action_23
action_152 (43) = happyShift action_24
action_152 (44) = happyShift action_25
action_152 (55) = happyShift action_26
action_152 (58) = happyShift action_27
action_152 (60) = happyShift action_28
action_152 (65) = happyShift action_29
action_152 (4) = happyGoto action_153
action_152 (5) = happyGoto action_3
action_152 (6) = happyGoto action_4
action_152 (7) = happyGoto action_5
action_152 (11) = happyGoto action_6
action_152 (12) = happyGoto action_7
action_152 _ = happyReduce_1

action_153 (63) = happyShift action_166
action_153 _ = happyFail (happyExpListPerState 153)

action_154 (62) = happyShift action_165
action_154 _ = happyFail (happyExpListPerState 154)

action_155 _ = happyReduce_68

action_156 (17) = happyShift action_8
action_156 (18) = happyShift action_9
action_156 (19) = happyShift action_10
action_156 (20) = happyShift action_11
action_156 (21) = happyShift action_12
action_156 (22) = happyShift action_13
action_156 (23) = happyShift action_14
action_156 (24) = happyShift action_15
action_156 (25) = happyShift action_16
action_156 (27) = happyShift action_17
action_156 (30) = happyShift action_18
action_156 (31) = happyShift action_19
action_156 (32) = happyShift action_20
action_156 (35) = happyShift action_21
action_156 (36) = happyShift action_22
action_156 (37) = happyShift action_23
action_156 (43) = happyShift action_24
action_156 (44) = happyShift action_25
action_156 (55) = happyShift action_26
action_156 (58) = happyShift action_27
action_156 (60) = happyShift action_28
action_156 (65) = happyShift action_29
action_156 (6) = happyGoto action_50
action_156 (7) = happyGoto action_5
action_156 (11) = happyGoto action_6
action_156 (12) = happyGoto action_7
action_156 (15) = happyGoto action_164
action_156 _ = happyFail (happyExpListPerState 156)

action_157 _ = happyReduce_76

action_158 _ = happyReduce_75

action_159 (33) = happyShift action_59
action_159 (34) = happyShift action_60
action_159 (38) = happyShift action_61
action_159 (39) = happyShift action_62
action_159 (40) = happyShift action_63
action_159 (41) = happyShift action_64
action_159 (42) = happyShift action_65
action_159 (43) = happyShift action_98
action_159 (45) = happyShift action_67
action_159 (54) = happyShift action_68
action_159 (55) = happyShift action_99
action_159 (56) = happyShift action_70
action_159 (57) = happyShift action_71
action_159 (60) = happyShift action_100
action_159 (62) = happyShift action_163
action_159 (66) = happyShift action_73
action_159 (67) = happyShift action_74
action_159 (68) = happyShift action_75
action_159 (69) = happyShift action_76
action_159 _ = happyFail (happyExpListPerState 159)

action_160 _ = happyReduce_51

action_161 (62) = happyShift action_162
action_161 _ = happyFail (happyExpListPerState 161)

action_162 (17) = happyShift action_8
action_162 (18) = happyShift action_9
action_162 (19) = happyShift action_10
action_162 (20) = happyShift action_11
action_162 (21) = happyShift action_12
action_162 (22) = happyShift action_13
action_162 (23) = happyShift action_14
action_162 (24) = happyShift action_15
action_162 (25) = happyShift action_16
action_162 (27) = happyShift action_17
action_162 (30) = happyShift action_18
action_162 (31) = happyShift action_19
action_162 (32) = happyShift action_20
action_162 (35) = happyShift action_21
action_162 (36) = happyShift action_22
action_162 (37) = happyShift action_23
action_162 (43) = happyShift action_24
action_162 (44) = happyShift action_25
action_162 (55) = happyShift action_26
action_162 (58) = happyShift action_27
action_162 (60) = happyShift action_28
action_162 (65) = happyShift action_29
action_162 (4) = happyGoto action_169
action_162 (5) = happyGoto action_3
action_162 (6) = happyGoto action_4
action_162 (7) = happyGoto action_5
action_162 (11) = happyGoto action_6
action_162 (12) = happyGoto action_7
action_162 _ = happyReduce_1

action_163 (17) = happyShift action_8
action_163 (18) = happyShift action_9
action_163 (19) = happyShift action_10
action_163 (20) = happyShift action_11
action_163 (21) = happyShift action_12
action_163 (22) = happyShift action_13
action_163 (23) = happyShift action_14
action_163 (24) = happyShift action_15
action_163 (25) = happyShift action_16
action_163 (27) = happyShift action_17
action_163 (30) = happyShift action_18
action_163 (31) = happyShift action_19
action_163 (32) = happyShift action_20
action_163 (35) = happyShift action_21
action_163 (36) = happyShift action_22
action_163 (37) = happyShift action_23
action_163 (43) = happyShift action_24
action_163 (44) = happyShift action_25
action_163 (55) = happyShift action_26
action_163 (58) = happyShift action_27
action_163 (60) = happyShift action_28
action_163 (65) = happyShift action_29
action_163 (4) = happyGoto action_168
action_163 (5) = happyGoto action_3
action_163 (6) = happyGoto action_4
action_163 (7) = happyGoto action_5
action_163 (11) = happyGoto action_6
action_163 (12) = happyGoto action_7
action_163 _ = happyReduce_1

action_164 _ = happyReduce_73

action_165 (17) = happyShift action_8
action_165 (18) = happyShift action_9
action_165 (19) = happyShift action_10
action_165 (20) = happyShift action_11
action_165 (21) = happyShift action_12
action_165 (22) = happyShift action_13
action_165 (23) = happyShift action_14
action_165 (24) = happyShift action_15
action_165 (25) = happyShift action_16
action_165 (27) = happyShift action_17
action_165 (30) = happyShift action_18
action_165 (31) = happyShift action_19
action_165 (32) = happyShift action_20
action_165 (35) = happyShift action_21
action_165 (36) = happyShift action_22
action_165 (37) = happyShift action_23
action_165 (43) = happyShift action_24
action_165 (44) = happyShift action_25
action_165 (55) = happyShift action_26
action_165 (58) = happyShift action_27
action_165 (60) = happyShift action_28
action_165 (65) = happyShift action_29
action_165 (4) = happyGoto action_167
action_165 (5) = happyGoto action_3
action_165 (6) = happyGoto action_4
action_165 (7) = happyGoto action_5
action_165 (11) = happyGoto action_6
action_165 (12) = happyGoto action_7
action_165 _ = happyReduce_1

action_166 _ = happyReduce_64

action_167 (63) = happyShift action_172
action_167 _ = happyFail (happyExpListPerState 167)

action_168 (63) = happyShift action_171
action_168 _ = happyFail (happyExpListPerState 168)

action_169 (63) = happyShift action_170
action_169 _ = happyFail (happyExpListPerState 169)

action_170 _ = happyReduce_55

action_171 (28) = happyShift action_146
action_171 (8) = happyGoto action_173
action_171 _ = happyReduce_52

action_172 _ = happyReduce_65

action_173 _ = happyReduce_53

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

happyReduce_6 = happyReduce 5 6 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (convertProcessToWhile happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int' happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean' happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Stream happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  6 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LE happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  6 happyReduction_17
happyReduction_17 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GE happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (NE happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Take happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 4 6 happyReduction_23
happyReduction_23 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (VarDec happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Plus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Minus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Times (VarRef happy_var_1) happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Div (VarRef happy_var_1) happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Exponent (VarRef happy_var_1) happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Modulo (VarRef happy_var_1) happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  6 happyReduction_31
happyReduction_31 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Plus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  6 happyReduction_32
happyReduction_32 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Minus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  6 happyReduction_33
happyReduction_33 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_2  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  6 happyReduction_41
happyReduction_41 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 6 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_2  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  6 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  6 happyReduction_46
happyReduction_46 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  6 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  6 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  6 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  6 happyReduction_50
happyReduction_50 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happyReduce 7 7 happyReduction_51
happyReduction_51 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_52 = happySpecReduce_0  8 happyReduction_52
happyReduction_52  =  HappyAbsSyn8
		 ([]
	)

happyReduce_53 = happyReduce 6 8 happyReduction_53
happyReduction_53 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_0  9 happyReduction_54
happyReduction_54  =  HappyAbsSyn9
		 ([]
	)

happyReduce_55 = happyReduce 4 9 happyReduction_55
happyReduction_55 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_56 = happySpecReduce_0  10 happyReduction_56
happyReduction_56  =  HappyAbsSyn10
		 ([]
	)

happyReduce_57 = happySpecReduce_1  10 happyReduction_57
happyReduction_57 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  10 happyReduction_58
happyReduction_58 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  10 happyReduction_59
happyReduction_59 (HappyTerminal (TokenInt _ happy_var_3))
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn10
		 (generateStream happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happyReduce 5 10 happyReduction_60
happyReduction_60 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 ((generateStream happy_var_1 happy_var_3) ++ happy_var_5
	) `HappyStk` happyRest

happyReduce_61 = happySpecReduce_1  11 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_62 = happySpecReduce_1  11 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_63 = happySpecReduce_1  11 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_64 = happyReduce 8 12 happyReduction_64
happyReduction_64 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FnDec happy_var_2 happy_var_4 TypeNone (happy_var_7)
	) `HappyStk` happyRest

happyReduce_65 = happyReduce 10 12 happyReduction_65
happyReduction_65 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FnDec happy_var_2 happy_var_4 happy_var_7 (happy_var_9)
	) `HappyStk` happyRest

happyReduce_66 = happySpecReduce_0  13 happyReduction_66
happyReduction_66  =  HappyAbsSyn13
		 ([]
	)

happyReduce_67 = happySpecReduce_2  13 happyReduction_67
happyReduction_67 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn13
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_67 _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 4 13 happyReduction_68
happyReduction_68 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_69 = happySpecReduce_0  14 happyReduction_69
happyReduction_69  =  HappyAbsSyn14
		 ([]
	)

happyReduce_70 = happySpecReduce_1  14 happyReduction_70
happyReduction_70 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  14 happyReduction_71
happyReduction_71 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happyReduce 5 15 happyReduction_72
happyReduction_72 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_73 = happyReduce 7 15 happyReduction_73
happyReduction_73 ((HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 ((happy_var_1, happy_var_4) : happy_var_7
	) `HappyStk` happyRest

happyReduce_74 = happySpecReduce_1  16 happyReduction_74
happyReduction_74 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_74 _  = notHappyAtAll 

happyReduce_75 = happySpecReduce_3  16 happyReduction_75
happyReduction_75 (HappyAbsSyn16  happy_var_3)
	_
	_
	 =  HappyAbsSyn16
		 ("_" : happy_var_3
	)
happyReduction_75 _ _ _  = notHappyAtAll 

happyReduce_76 = happySpecReduce_3  16 happyReduction_76
happyReduction_76 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_76 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 72 72 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 17;
	TokenStreamType _ -> cont 18;
	TokenBooleanType _ -> cont 19;
	TokenInput _ -> cont 20;
	TokenPrint _ -> cont 21;
	TokenFunction _ -> cont 22;
	TokenReturn _ -> cont 23;
	TokenWhile _ -> cont 24;
	TokenProcess _ -> cont 25;
	TokenAs _ -> cont 26;
	TokenIf _ -> cont 27;
	TokenElif _ -> cont 28;
	TokenElse _ -> cont 29;
	TokenHasNext _ -> cont 30;
	TokenNext _ -> cont 31;
	TokenSize _ -> cont 32;
	TokenAnd _ -> cont 33;
	TokenOr _ -> cont 34;
	TokenInt _ happy_dollar_dollar -> cont 35;
	TokenBool _ happy_dollar_dollar -> cont 36;
	TokenVar _ happy_dollar_dollar -> cont 37;
	TokenLE _ -> cont 38;
	TokenGE _ -> cont 39;
	TokenEQ _ -> cont 40;
	TokenNE _ -> cont 41;
	TokenCons _ -> cont 42;
	TokenPlusPlus _ -> cont 43;
	TokenMinusMinus _ -> cont 44;
	TokenTake _ -> cont 45;
	TokenReturnArrow _ -> cont 46;
	TokenAssign _ -> cont 47;
	TokenPlusEquals _ -> cont 48;
	TokenMinusEquals _ -> cont 49;
	TokenTimesEquals _ -> cont 50;
	TokenDivEquals _ -> cont 51;
	TokenExponentEquals _ -> cont 52;
	TokenModuloEquals _ -> cont 53;
	TokenPlus _ -> cont 54;
	TokenMinus _ -> cont 55;
	TokenTimes _ -> cont 56;
	TokenDiv _ -> cont 57;
	TokenLParen _ -> cont 58;
	TokenRParen _ -> cont 59;
	TokenLSquare _ -> cont 60;
	TokenRSquare _ -> cont 61;
	TokenLCurly _ -> cont 62;
	TokenRCurly _ -> cont 63;
	TokenComma _ -> cont 64;
	TokenNot _ -> cont 65;
	TokenExponent _ -> cont 66;
	TokenModulo _ -> cont 67;
	TokenLT _ -> cont 68;
	TokenGT _ -> cont 69;
	TokenUnderscore _ -> cont 70;
	TokenEllipsis _ -> cont 71;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 72 tk tks = happyError' (tks, explist)
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
parseError [] = error "Unknown error in parsing"
parseError (t : ts) = error errorMessage
    where (line, col) = tokenPosn t
          errorMessage = "Parse error at line " ++ (show line) ++ ", column " ++ (show col)

data Type = TypeNone
          | TypeInt 
          | TypeBoolean 
          | TypeStream
          | TypeFunction Type [Type]
          deriving (Eq)

instance Show Type where
     show (TypeNone) = "<no_type>" 
     show (TypeInt) = "int"
     show (TypeBoolean) = "boolean"
     show (TypeStream) = "stream"
     show (TypeFunction _ _) = "function" 

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
         | Block [Exp]
         | Print Exp
         | FnDec String [(Type, String)] Type [Exp]
         | FnCall String [Exp]
         | FnReturn Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | And Exp Exp
         | Or Exp Exp
         | Int' Int
         | Boolean' Bool
         | Stream [Exp]
         | LE Exp Exp
         | GE Exp Exp
         | LT' Exp Exp
         | GT' Exp Exp
         | EQ' Exp Exp
         | NE Exp Exp
         | Cons Exp Exp
         | Concat Exp Exp
         | Take Exp Exp
         | Plus Exp Exp
         | Minus Exp Exp
         | Times Exp Exp
         | Div Exp Exp
         | StreamGet Exp Exp
         | InputGet Exp
         | Not Exp
         | Exponent Exp Exp
         | Modulo Exp Exp
         | Negate Exp
         | VarDec Type String Exp
         | VarAssign String Exp
         | VarRef String
         deriving (Eq, Show)

checkIfReference :: Exp -> Bool
checkIfReference (VarRef e) = True
checkIfReference (InputGet e) = True
checkIfReference _ = False

convertProcessToWhile :: [(Exp, [String])] -> [Exp] -> Exp
convertProcessToWhile plist es = Block (streamDecs ++ [While cond (varDecs ++ es)]) 
     where ((s, size) : plistsize) = [ (if (not $ checkIfReference e) then (VarRef ("_processStream" ++ (show i))) else e, length vars) | ((e, vars), i) <- zip plist [1..] ]
           cond                    = foldr (\(e, n) (And x y) -> And x (And y (GE (Size e) (Int' n)))) (And (GE (Size s) (Int' size)) (Boolean' True)) (plistsize)
           streamDecs              = [ VarDec TypeStream ("_processStream" ++ show(i)) s | ((s, _), i) <- zip plist [1..], not (checkIfReference s) ]
           varDecs                 = [ VarDec TypeInt x (Next (if (not $ checkIfReference s) then (VarRef ("_processStream" ++ (show i))) else s)) | ((s, xs), i) <- zip plist [1..], x <- xs ]

generateStream :: Int -> Int -> [Exp]
generateStream x y | x == y = [Int' x] 
                   | x < y  = (Int' x) : generateStream (x + 1) y
                   | x > y  = (Int' x) : generateStream (x - 1) y
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

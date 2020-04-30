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
happyExpList = Happy_Data_Array.listArray (0,831) ([0,58879,28,34080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65280,65509,61455,3973,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,65280,7397,8192,133,0,0,4,0,0,24560,462,20992,8,64512,29591,32768,532,0,58879,28,34080,0,32704,1849,18432,33,61440,52831,1,2130,0,38908,115,5248,2,65280,7397,8192,133,0,0,0,0,0,0,0,0,0,0,0,16256,4,0,58879,28,34080,0,32704,1849,18432,33,61440,52831,1,2130,0,38908,115,5248,2,0,0,14,260,0,49152,1016,53564,3,0,0,32768,0,0,35840,49215,15387,0,0,3584,1024,1,32704,1849,18432,33,61440,52831,1,2130,0,38908,115,5248,2,65280,7397,8192,133,49152,14719,7,8520,0,24560,462,20992,8,64512,29591,32768,532,0,58879,28,34080,0,0,0,0,1,0,0,0,64,0,0,0,4096,0,0,58112,61455,3860,0,49280,1016,49468,3,0,0,0,1,0,35840,49215,15443,0,0,4067,1264,15,0,0,16384,0,0,12288,254,61519,0,38908,115,5248,2,0,0,32,0,0,0,0,0,0,24560,462,20992,8,64512,29591,32768,532,0,58879,28,34080,0,32704,1849,18432,33,61440,52831,1,2130,0,38908,115,5248,2,65280,7397,8192,133,49152,14719,7,8520,0,24560,462,20992,8,64512,29591,32768,532,0,58879,28,34080,0,32704,1849,18432,33,61440,52831,1,2130,0,38908,115,5248,2,65280,7397,8192,133,49152,14719,7,8520,0,24560,462,20992,8,64512,29591,32768,532,0,0,3584,1264,3,0,32768,15363,193,0,0,224,4160,0,0,0,4096,4,0,58112,61455,3916,0,0,896,16640,0,0,57344,16384,16,0,0,56,1040,0,0,3584,1216,3,0,32768,2,65,0,0,160,4160,0,0,10240,4096,4,0,24576,61454,3844,0,0,920,49468,3,0,57344,20224,48,0,0,49208,3091,0,0,4065,1264,15,0,63488,15363,961,61440,52831,1,2130,0,0,16268,37824,60,65280,7397,8192,133,49152,14719,7,8520,0,112,0,0,0,64512,29591,32768,532,0,58879,28,34080,0,0,0,0,1,61440,52831,1,2130,0,0,16268,5056,61,0,0,0,2,0,49152,1016,49468,3,0,65072,20224,240,0,35840,49215,15379,0,0,4067,1264,15,0,63680,15363,961,0,12288,254,61519,0,0,16268,5056,60,0,0,0,0,0,0,0,0,0,24560,462,20992,8,0,0,0,0,0,0,0,0,0,32704,1849,18432,33,0,0,0,512,0,0,64,0,64,0,0,0,32,0,0,0,2048,0,0,256,0,0,0,0,0,8,0,0,4067,3312,15,0,32768,12291,193,0,0,0,0,0,0,16268,5056,60,0,0,0,0,0,0,1024,1024,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1024,0,0,0,0,1,0,8,0,0,0,0,0,0,0,0,1,0,0,64512,29591,32768,532,0,0,16,0,16,0,1024,0,1024,0,0,0,1024,0,28,0,0,0,1792,0,0,0,49152,14719,7,8520,0,0,0,0,2,0,0,0,64,0,0,0,0,0,32704,1849,18432,33,0,0,0,0,0,0,0,0,0,0,58112,61455,3860,0,0,0,0,0,0,0,0,1,64512,29591,32768,532,0,58879,28,34080,0,0,0,0,0,61440,52831,1,2130,0,0,0,0,0,0,0,0,32,0,0,0,2048,0,0,0,0,2,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","ParamList","ArgList","ProcessList","VarList","int_type","stream_type","boolean_type","input","print","fn","return","while","process","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","%eof"]
        bit_start = st * 70
        bit_end = (st + 1) * 70
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..69]
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
action_0 (54) = happyShift action_24
action_0 (57) = happyShift action_25
action_0 (59) = happyShift action_26
action_0 (64) = happyShift action_27
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (70) = happyAccept
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
action_4 (33) = happyShift action_54
action_4 (34) = happyShift action_55
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (37) = happyShift action_23
action_4 (38) = happyShift action_56
action_4 (39) = happyShift action_57
action_4 (40) = happyShift action_58
action_4 (41) = happyShift action_59
action_4 (42) = happyShift action_60
action_4 (43) = happyShift action_61
action_4 (44) = happyShift action_62
action_4 (53) = happyShift action_63
action_4 (54) = happyShift action_64
action_4 (55) = happyShift action_65
action_4 (56) = happyShift action_66
action_4 (57) = happyShift action_25
action_4 (59) = happyShift action_67
action_4 (64) = happyShift action_27
action_4 (65) = happyShift action_68
action_4 (66) = happyShift action_69
action_4 (67) = happyShift action_70
action_4 (68) = happyShift action_71
action_4 (5) = happyGoto action_53
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_7

action_6 (37) = happyShift action_52
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_39

action_8 _ = happyReduce_57

action_9 _ = happyReduce_59

action_10 _ = happyReduce_58

action_11 (61) = happyShift action_51
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
action_12 (54) = happyShift action_24
action_12 (57) = happyShift action_25
action_12 (59) = happyShift action_26
action_12 (64) = happyShift action_27
action_12 (6) = happyGoto action_50
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (37) = happyShift action_49
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
action_14 (54) = happyShift action_24
action_14 (57) = happyShift action_25
action_14 (59) = happyShift action_26
action_14 (64) = happyShift action_27
action_14 (6) = happyGoto action_48
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
action_15 (54) = happyShift action_24
action_15 (57) = happyShift action_25
action_15 (59) = happyShift action_26
action_15 (64) = happyShift action_27
action_15 (6) = happyGoto action_47
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
action_16 (54) = happyShift action_24
action_16 (57) = happyShift action_25
action_16 (59) = happyShift action_26
action_16 (64) = happyShift action_27
action_16 (6) = happyGoto action_45
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 (15) = happyGoto action_46
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
action_17 (54) = happyShift action_24
action_17 (57) = happyShift action_25
action_17 (59) = happyShift action_26
action_17 (64) = happyShift action_27
action_17 (6) = happyGoto action_44
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
action_18 (54) = happyShift action_24
action_18 (57) = happyShift action_25
action_18 (59) = happyShift action_26
action_18 (64) = happyShift action_27
action_18 (6) = happyGoto action_43
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
action_19 (54) = happyShift action_24
action_19 (57) = happyShift action_25
action_19 (59) = happyShift action_26
action_19 (64) = happyShift action_27
action_19 (6) = happyGoto action_42
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
action_20 (54) = happyShift action_24
action_20 (57) = happyShift action_25
action_20 (59) = happyShift action_26
action_20 (64) = happyShift action_27
action_20 (6) = happyGoto action_41
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 (12) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_13

action_22 _ = happyReduce_14

action_23 (46) = happyShift action_33
action_23 (47) = happyShift action_34
action_23 (48) = happyShift action_35
action_23 (49) = happyShift action_36
action_23 (50) = happyShift action_37
action_23 (51) = happyShift action_38
action_23 (52) = happyShift action_39
action_23 (57) = happyShift action_40
action_23 _ = happyReduce_31

action_24 (17) = happyShift action_8
action_24 (18) = happyShift action_9
action_24 (19) = happyShift action_10
action_24 (20) = happyShift action_11
action_24 (21) = happyShift action_12
action_24 (22) = happyShift action_13
action_24 (23) = happyShift action_14
action_24 (24) = happyShift action_15
action_24 (25) = happyShift action_16
action_24 (27) = happyShift action_17
action_24 (30) = happyShift action_18
action_24 (31) = happyShift action_19
action_24 (32) = happyShift action_20
action_24 (35) = happyShift action_21
action_24 (36) = happyShift action_22
action_24 (37) = happyShift action_23
action_24 (54) = happyShift action_24
action_24 (57) = happyShift action_25
action_24 (59) = happyShift action_26
action_24 (64) = happyShift action_27
action_24 (6) = happyGoto action_32
action_24 (7) = happyGoto action_5
action_24 (11) = happyGoto action_6
action_24 (12) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_8
action_25 (18) = happyShift action_9
action_25 (19) = happyShift action_10
action_25 (20) = happyShift action_11
action_25 (21) = happyShift action_12
action_25 (22) = happyShift action_13
action_25 (23) = happyShift action_14
action_25 (24) = happyShift action_15
action_25 (25) = happyShift action_16
action_25 (27) = happyShift action_17
action_25 (30) = happyShift action_18
action_25 (31) = happyShift action_19
action_25 (32) = happyShift action_20
action_25 (35) = happyShift action_21
action_25 (36) = happyShift action_22
action_25 (37) = happyShift action_23
action_25 (54) = happyShift action_24
action_25 (57) = happyShift action_25
action_25 (59) = happyShift action_26
action_25 (64) = happyShift action_27
action_25 (6) = happyGoto action_31
action_25 (7) = happyGoto action_5
action_25 (11) = happyGoto action_6
action_25 (12) = happyGoto action_7
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
action_26 (54) = happyShift action_24
action_26 (57) = happyShift action_25
action_26 (59) = happyShift action_26
action_26 (64) = happyShift action_27
action_26 (6) = happyGoto action_29
action_26 (7) = happyGoto action_5
action_26 (10) = happyGoto action_30
action_26 (11) = happyGoto action_6
action_26 (12) = happyGoto action_7
action_26 _ = happyReduce_54

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
action_27 (54) = happyShift action_24
action_27 (57) = happyShift action_25
action_27 (59) = happyShift action_26
action_27 (64) = happyShift action_27
action_27 (6) = happyGoto action_28
action_27 (7) = happyGoto action_5
action_27 (11) = happyGoto action_6
action_27 (12) = happyGoto action_7
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (42) = happyShift action_60
action_28 (43) = happyShift action_61
action_28 (44) = happyShift action_62
action_28 (59) = happyShift action_93
action_28 (65) = happyShift action_68
action_28 _ = happyReduce_42

action_29 (33) = happyShift action_54
action_29 (34) = happyShift action_55
action_29 (38) = happyShift action_56
action_29 (39) = happyShift action_57
action_29 (40) = happyShift action_58
action_29 (41) = happyShift action_59
action_29 (42) = happyShift action_60
action_29 (43) = happyShift action_61
action_29 (44) = happyShift action_62
action_29 (53) = happyShift action_63
action_29 (54) = happyShift action_92
action_29 (55) = happyShift action_65
action_29 (56) = happyShift action_66
action_29 (59) = happyShift action_93
action_29 (63) = happyShift action_110
action_29 (65) = happyShift action_68
action_29 (66) = happyShift action_69
action_29 (67) = happyShift action_70
action_29 (68) = happyShift action_71
action_29 _ = happyReduce_55

action_30 (60) = happyShift action_109
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (33) = happyShift action_54
action_31 (34) = happyShift action_55
action_31 (38) = happyShift action_56
action_31 (39) = happyShift action_57
action_31 (40) = happyShift action_58
action_31 (41) = happyShift action_59
action_31 (42) = happyShift action_60
action_31 (43) = happyShift action_61
action_31 (44) = happyShift action_62
action_31 (53) = happyShift action_63
action_31 (54) = happyShift action_92
action_31 (55) = happyShift action_65
action_31 (56) = happyShift action_66
action_31 (58) = happyShift action_108
action_31 (59) = happyShift action_93
action_31 (65) = happyShift action_68
action_31 (66) = happyShift action_69
action_31 (67) = happyShift action_70
action_31 (68) = happyShift action_71
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (42) = happyShift action_60
action_32 (43) = happyShift action_61
action_32 (44) = happyShift action_62
action_32 (59) = happyShift action_93
action_32 (65) = happyShift action_68
action_32 _ = happyReduce_47

action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (19) = happyShift action_10
action_33 (20) = happyShift action_11
action_33 (21) = happyShift action_12
action_33 (22) = happyShift action_13
action_33 (23) = happyShift action_14
action_33 (24) = happyShift action_15
action_33 (25) = happyShift action_16
action_33 (27) = happyShift action_17
action_33 (30) = happyShift action_18
action_33 (31) = happyShift action_19
action_33 (32) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (36) = happyShift action_22
action_33 (37) = happyShift action_23
action_33 (54) = happyShift action_24
action_33 (57) = happyShift action_25
action_33 (59) = happyShift action_26
action_33 (64) = happyShift action_27
action_33 (6) = happyGoto action_107
action_33 (7) = happyGoto action_5
action_33 (11) = happyGoto action_6
action_33 (12) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (19) = happyShift action_10
action_34 (20) = happyShift action_11
action_34 (21) = happyShift action_12
action_34 (22) = happyShift action_13
action_34 (23) = happyShift action_14
action_34 (24) = happyShift action_15
action_34 (25) = happyShift action_16
action_34 (27) = happyShift action_17
action_34 (30) = happyShift action_18
action_34 (31) = happyShift action_19
action_34 (32) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (36) = happyShift action_22
action_34 (37) = happyShift action_23
action_34 (54) = happyShift action_24
action_34 (57) = happyShift action_25
action_34 (59) = happyShift action_26
action_34 (64) = happyShift action_27
action_34 (6) = happyGoto action_106
action_34 (7) = happyGoto action_5
action_34 (11) = happyGoto action_6
action_34 (12) = happyGoto action_7
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (17) = happyShift action_8
action_35 (18) = happyShift action_9
action_35 (19) = happyShift action_10
action_35 (20) = happyShift action_11
action_35 (21) = happyShift action_12
action_35 (22) = happyShift action_13
action_35 (23) = happyShift action_14
action_35 (24) = happyShift action_15
action_35 (25) = happyShift action_16
action_35 (27) = happyShift action_17
action_35 (30) = happyShift action_18
action_35 (31) = happyShift action_19
action_35 (32) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (36) = happyShift action_22
action_35 (37) = happyShift action_23
action_35 (54) = happyShift action_24
action_35 (57) = happyShift action_25
action_35 (59) = happyShift action_26
action_35 (64) = happyShift action_27
action_35 (6) = happyGoto action_105
action_35 (7) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 (12) = happyGoto action_7
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (20) = happyShift action_11
action_36 (21) = happyShift action_12
action_36 (22) = happyShift action_13
action_36 (23) = happyShift action_14
action_36 (24) = happyShift action_15
action_36 (25) = happyShift action_16
action_36 (27) = happyShift action_17
action_36 (30) = happyShift action_18
action_36 (31) = happyShift action_19
action_36 (32) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (37) = happyShift action_23
action_36 (54) = happyShift action_24
action_36 (57) = happyShift action_25
action_36 (59) = happyShift action_26
action_36 (64) = happyShift action_27
action_36 (6) = happyGoto action_104
action_36 (7) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 (12) = happyGoto action_7
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (17) = happyShift action_8
action_37 (18) = happyShift action_9
action_37 (19) = happyShift action_10
action_37 (20) = happyShift action_11
action_37 (21) = happyShift action_12
action_37 (22) = happyShift action_13
action_37 (23) = happyShift action_14
action_37 (24) = happyShift action_15
action_37 (25) = happyShift action_16
action_37 (27) = happyShift action_17
action_37 (30) = happyShift action_18
action_37 (31) = happyShift action_19
action_37 (32) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (36) = happyShift action_22
action_37 (37) = happyShift action_23
action_37 (54) = happyShift action_24
action_37 (57) = happyShift action_25
action_37 (59) = happyShift action_26
action_37 (64) = happyShift action_27
action_37 (6) = happyGoto action_103
action_37 (7) = happyGoto action_5
action_37 (11) = happyGoto action_6
action_37 (12) = happyGoto action_7
action_37 _ = happyFail (happyExpListPerState 37)

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
action_38 (54) = happyShift action_24
action_38 (57) = happyShift action_25
action_38 (59) = happyShift action_26
action_38 (64) = happyShift action_27
action_38 (6) = happyGoto action_102
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
action_39 (54) = happyShift action_24
action_39 (57) = happyShift action_25
action_39 (59) = happyShift action_26
action_39 (64) = happyShift action_27
action_39 (6) = happyGoto action_101
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
action_40 (54) = happyShift action_24
action_40 (57) = happyShift action_25
action_40 (59) = happyShift action_26
action_40 (64) = happyShift action_27
action_40 (6) = happyGoto action_99
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (12) = happyGoto action_7
action_40 (14) = happyGoto action_100
action_40 _ = happyReduce_65

action_41 (59) = happyShift action_93
action_41 _ = happyReduce_10

action_42 (59) = happyShift action_93
action_42 _ = happyReduce_9

action_43 (59) = happyShift action_93
action_43 _ = happyReduce_8

action_44 (33) = happyShift action_54
action_44 (34) = happyShift action_55
action_44 (38) = happyShift action_56
action_44 (39) = happyShift action_57
action_44 (40) = happyShift action_58
action_44 (41) = happyShift action_59
action_44 (42) = happyShift action_60
action_44 (43) = happyShift action_61
action_44 (44) = happyShift action_62
action_44 (53) = happyShift action_63
action_44 (54) = happyShift action_92
action_44 (55) = happyShift action_65
action_44 (56) = happyShift action_66
action_44 (59) = happyShift action_93
action_44 (61) = happyShift action_98
action_44 (65) = happyShift action_68
action_44 (66) = happyShift action_69
action_44 (67) = happyShift action_70
action_44 (68) = happyShift action_71
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (26) = happyShift action_97
action_45 (33) = happyShift action_54
action_45 (34) = happyShift action_55
action_45 (38) = happyShift action_56
action_45 (39) = happyShift action_57
action_45 (40) = happyShift action_58
action_45 (41) = happyShift action_59
action_45 (42) = happyShift action_60
action_45 (43) = happyShift action_61
action_45 (44) = happyShift action_62
action_45 (53) = happyShift action_63
action_45 (54) = happyShift action_92
action_45 (55) = happyShift action_65
action_45 (56) = happyShift action_66
action_45 (59) = happyShift action_93
action_45 (65) = happyShift action_68
action_45 (66) = happyShift action_69
action_45 (67) = happyShift action_70
action_45 (68) = happyShift action_71
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (61) = happyShift action_96
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (33) = happyShift action_54
action_47 (34) = happyShift action_55
action_47 (38) = happyShift action_56
action_47 (39) = happyShift action_57
action_47 (40) = happyShift action_58
action_47 (41) = happyShift action_59
action_47 (42) = happyShift action_60
action_47 (43) = happyShift action_61
action_47 (44) = happyShift action_62
action_47 (53) = happyShift action_63
action_47 (54) = happyShift action_92
action_47 (55) = happyShift action_65
action_47 (56) = happyShift action_66
action_47 (59) = happyShift action_93
action_47 (61) = happyShift action_95
action_47 (65) = happyShift action_68
action_47 (66) = happyShift action_69
action_47 (67) = happyShift action_70
action_47 (68) = happyShift action_71
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (33) = happyShift action_54
action_48 (34) = happyShift action_55
action_48 (38) = happyShift action_56
action_48 (39) = happyShift action_57
action_48 (40) = happyShift action_58
action_48 (41) = happyShift action_59
action_48 (42) = happyShift action_60
action_48 (43) = happyShift action_61
action_48 (44) = happyShift action_62
action_48 (53) = happyShift action_63
action_48 (54) = happyShift action_92
action_48 (55) = happyShift action_65
action_48 (56) = happyShift action_66
action_48 (59) = happyShift action_93
action_48 (65) = happyShift action_68
action_48 (66) = happyShift action_69
action_48 (67) = happyShift action_70
action_48 (68) = happyShift action_71
action_48 _ = happyReduce_41

action_49 (57) = happyShift action_94
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (33) = happyShift action_54
action_50 (34) = happyShift action_55
action_50 (38) = happyShift action_56
action_50 (39) = happyShift action_57
action_50 (40) = happyShift action_58
action_50 (41) = happyShift action_59
action_50 (42) = happyShift action_60
action_50 (43) = happyShift action_61
action_50 (44) = happyShift action_62
action_50 (53) = happyShift action_63
action_50 (54) = happyShift action_92
action_50 (55) = happyShift action_65
action_50 (56) = happyShift action_66
action_50 (59) = happyShift action_93
action_50 (65) = happyShift action_68
action_50 (66) = happyShift action_69
action_50 (67) = happyShift action_70
action_50 (68) = happyShift action_71
action_50 _ = happyReduce_38

action_51 (17) = happyShift action_8
action_51 (18) = happyShift action_9
action_51 (19) = happyShift action_10
action_51 (20) = happyShift action_11
action_51 (21) = happyShift action_12
action_51 (22) = happyShift action_13
action_51 (23) = happyShift action_14
action_51 (24) = happyShift action_15
action_51 (25) = happyShift action_16
action_51 (27) = happyShift action_17
action_51 (30) = happyShift action_18
action_51 (31) = happyShift action_19
action_51 (32) = happyShift action_20
action_51 (35) = happyShift action_21
action_51 (36) = happyShift action_22
action_51 (37) = happyShift action_23
action_51 (54) = happyShift action_24
action_51 (57) = happyShift action_25
action_51 (59) = happyShift action_26
action_51 (64) = happyShift action_27
action_51 (6) = happyGoto action_91
action_51 (7) = happyGoto action_5
action_51 (11) = happyGoto action_6
action_51 (12) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (46) = happyShift action_90
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_4

action_54 (17) = happyShift action_8
action_54 (18) = happyShift action_9
action_54 (19) = happyShift action_10
action_54 (20) = happyShift action_11
action_54 (21) = happyShift action_12
action_54 (22) = happyShift action_13
action_54 (23) = happyShift action_14
action_54 (24) = happyShift action_15
action_54 (25) = happyShift action_16
action_54 (27) = happyShift action_17
action_54 (30) = happyShift action_18
action_54 (31) = happyShift action_19
action_54 (32) = happyShift action_20
action_54 (35) = happyShift action_21
action_54 (36) = happyShift action_22
action_54 (37) = happyShift action_23
action_54 (54) = happyShift action_24
action_54 (57) = happyShift action_25
action_54 (59) = happyShift action_26
action_54 (64) = happyShift action_27
action_54 (6) = happyGoto action_89
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 (12) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (17) = happyShift action_8
action_55 (18) = happyShift action_9
action_55 (19) = happyShift action_10
action_55 (20) = happyShift action_11
action_55 (21) = happyShift action_12
action_55 (22) = happyShift action_13
action_55 (23) = happyShift action_14
action_55 (24) = happyShift action_15
action_55 (25) = happyShift action_16
action_55 (27) = happyShift action_17
action_55 (30) = happyShift action_18
action_55 (31) = happyShift action_19
action_55 (32) = happyShift action_20
action_55 (35) = happyShift action_21
action_55 (36) = happyShift action_22
action_55 (37) = happyShift action_23
action_55 (54) = happyShift action_24
action_55 (57) = happyShift action_25
action_55 (59) = happyShift action_26
action_55 (64) = happyShift action_27
action_55 (6) = happyGoto action_88
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (12) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

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
action_56 (54) = happyShift action_24
action_56 (57) = happyShift action_25
action_56 (59) = happyShift action_26
action_56 (64) = happyShift action_27
action_56 (6) = happyGoto action_87
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (12) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (17) = happyShift action_8
action_57 (18) = happyShift action_9
action_57 (19) = happyShift action_10
action_57 (20) = happyShift action_11
action_57 (21) = happyShift action_12
action_57 (22) = happyShift action_13
action_57 (23) = happyShift action_14
action_57 (24) = happyShift action_15
action_57 (25) = happyShift action_16
action_57 (27) = happyShift action_17
action_57 (30) = happyShift action_18
action_57 (31) = happyShift action_19
action_57 (32) = happyShift action_20
action_57 (35) = happyShift action_21
action_57 (36) = happyShift action_22
action_57 (37) = happyShift action_23
action_57 (54) = happyShift action_24
action_57 (57) = happyShift action_25
action_57 (59) = happyShift action_26
action_57 (64) = happyShift action_27
action_57 (6) = happyGoto action_86
action_57 (7) = happyGoto action_5
action_57 (11) = happyGoto action_6
action_57 (12) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (17) = happyShift action_8
action_58 (18) = happyShift action_9
action_58 (19) = happyShift action_10
action_58 (20) = happyShift action_11
action_58 (21) = happyShift action_12
action_58 (22) = happyShift action_13
action_58 (23) = happyShift action_14
action_58 (24) = happyShift action_15
action_58 (25) = happyShift action_16
action_58 (27) = happyShift action_17
action_58 (30) = happyShift action_18
action_58 (31) = happyShift action_19
action_58 (32) = happyShift action_20
action_58 (35) = happyShift action_21
action_58 (36) = happyShift action_22
action_58 (37) = happyShift action_23
action_58 (54) = happyShift action_24
action_58 (57) = happyShift action_25
action_58 (59) = happyShift action_26
action_58 (64) = happyShift action_27
action_58 (6) = happyGoto action_85
action_58 (7) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 (12) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

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
action_59 (54) = happyShift action_24
action_59 (57) = happyShift action_25
action_59 (59) = happyShift action_26
action_59 (64) = happyShift action_27
action_59 (6) = happyGoto action_84
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
action_60 (54) = happyShift action_24
action_60 (57) = happyShift action_25
action_60 (59) = happyShift action_26
action_60 (64) = happyShift action_27
action_60 (6) = happyGoto action_83
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
action_61 (54) = happyShift action_24
action_61 (57) = happyShift action_25
action_61 (59) = happyShift action_26
action_61 (64) = happyShift action_27
action_61 (6) = happyGoto action_82
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
action_62 (54) = happyShift action_24
action_62 (57) = happyShift action_25
action_62 (59) = happyShift action_26
action_62 (64) = happyShift action_27
action_62 (6) = happyGoto action_81
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
action_63 (54) = happyShift action_24
action_63 (57) = happyShift action_25
action_63 (59) = happyShift action_26
action_63 (64) = happyShift action_27
action_63 (6) = happyGoto action_80
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
action_64 (54) = happyShift action_24
action_64 (57) = happyShift action_25
action_64 (59) = happyShift action_26
action_64 (64) = happyShift action_27
action_64 (6) = happyGoto action_79
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
action_65 (54) = happyShift action_24
action_65 (57) = happyShift action_25
action_65 (59) = happyShift action_26
action_65 (64) = happyShift action_27
action_65 (6) = happyGoto action_78
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
action_66 (37) = happyShift action_23
action_66 (54) = happyShift action_24
action_66 (57) = happyShift action_25
action_66 (59) = happyShift action_26
action_66 (64) = happyShift action_27
action_66 (6) = happyGoto action_77
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
action_67 (54) = happyShift action_24
action_67 (57) = happyShift action_25
action_67 (59) = happyShift action_26
action_67 (64) = happyShift action_27
action_67 (6) = happyGoto action_76
action_67 (7) = happyGoto action_5
action_67 (10) = happyGoto action_30
action_67 (11) = happyGoto action_6
action_67 (12) = happyGoto action_7
action_67 _ = happyReduce_54

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
action_68 (54) = happyShift action_24
action_68 (57) = happyShift action_25
action_68 (59) = happyShift action_26
action_68 (64) = happyShift action_27
action_68 (6) = happyGoto action_75
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
action_69 (54) = happyShift action_24
action_69 (57) = happyShift action_25
action_69 (59) = happyShift action_26
action_69 (64) = happyShift action_27
action_69 (6) = happyGoto action_74
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
action_70 (54) = happyShift action_24
action_70 (57) = happyShift action_25
action_70 (59) = happyShift action_26
action_70 (64) = happyShift action_27
action_70 (6) = happyGoto action_73
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
action_71 (54) = happyShift action_24
action_71 (57) = happyShift action_25
action_71 (59) = happyShift action_26
action_71 (64) = happyShift action_27
action_71 (6) = happyGoto action_72
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 (12) = happyGoto action_7
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (42) = happyShift action_60
action_72 (43) = happyShift action_61
action_72 (44) = happyShift action_62
action_72 (53) = happyShift action_63
action_72 (54) = happyShift action_92
action_72 (55) = happyShift action_65
action_72 (56) = happyShift action_66
action_72 (59) = happyShift action_93
action_72 (65) = happyShift action_68
action_72 (66) = happyShift action_69
action_72 _ = happyReduce_46

action_73 (42) = happyShift action_60
action_73 (43) = happyShift action_61
action_73 (44) = happyShift action_62
action_73 (53) = happyShift action_63
action_73 (54) = happyShift action_92
action_73 (55) = happyShift action_65
action_73 (56) = happyShift action_66
action_73 (59) = happyShift action_93
action_73 (65) = happyShift action_68
action_73 (66) = happyShift action_69
action_73 _ = happyReduce_45

action_74 (42) = happyShift action_60
action_74 (43) = happyShift action_61
action_74 (44) = happyShift action_62
action_74 (59) = happyShift action_93
action_74 (65) = happyShift action_68
action_74 _ = happyReduce_44

action_75 (59) = happyShift action_93
action_75 (65) = happyShift action_68
action_75 _ = happyReduce_43

action_76 (33) = happyShift action_54
action_76 (34) = happyShift action_55
action_76 (38) = happyShift action_56
action_76 (39) = happyShift action_57
action_76 (40) = happyShift action_58
action_76 (41) = happyShift action_59
action_76 (42) = happyShift action_60
action_76 (43) = happyShift action_61
action_76 (44) = happyShift action_62
action_76 (53) = happyShift action_63
action_76 (54) = happyShift action_92
action_76 (55) = happyShift action_65
action_76 (56) = happyShift action_66
action_76 (59) = happyShift action_93
action_76 (60) = happyShift action_124
action_76 (63) = happyShift action_110
action_76 (65) = happyShift action_68
action_76 (66) = happyShift action_69
action_76 (67) = happyShift action_70
action_76 (68) = happyShift action_71
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (42) = happyShift action_60
action_77 (43) = happyShift action_61
action_77 (44) = happyShift action_62
action_77 (59) = happyShift action_93
action_77 (65) = happyShift action_68
action_77 _ = happyReduce_35

action_78 (42) = happyShift action_60
action_78 (43) = happyShift action_61
action_78 (44) = happyShift action_62
action_78 (59) = happyShift action_93
action_78 (65) = happyShift action_68
action_78 _ = happyReduce_34

action_79 (42) = happyShift action_60
action_79 (43) = happyShift action_61
action_79 (44) = happyShift action_62
action_79 (59) = happyShift action_93
action_79 (65) = happyShift action_68
action_79 _ = happyReduce_47

action_80 (42) = happyShift action_60
action_80 (43) = happyShift action_61
action_80 (44) = happyShift action_62
action_80 (55) = happyShift action_65
action_80 (56) = happyShift action_66
action_80 (59) = happyShift action_93
action_80 (65) = happyShift action_68
action_80 (66) = happyShift action_69
action_80 _ = happyReduce_32

action_81 (42) = happyShift action_60
action_81 (44) = happyShift action_62
action_81 (59) = happyShift action_93
action_81 (65) = happyShift action_68
action_81 _ = happyReduce_22

action_82 (42) = happyShift action_60
action_82 (44) = happyShift action_62
action_82 (59) = happyShift action_93
action_82 (65) = happyShift action_68
action_82 _ = happyReduce_21

action_83 (42) = happyShift action_60
action_83 (44) = happyShift action_62
action_83 (59) = happyShift action_93
action_83 (65) = happyShift action_68
action_83 _ = happyReduce_20

action_84 (38) = happyShift action_56
action_84 (39) = happyShift action_57
action_84 (42) = happyShift action_60
action_84 (43) = happyShift action_61
action_84 (44) = happyShift action_62
action_84 (53) = happyShift action_63
action_84 (54) = happyShift action_92
action_84 (55) = happyShift action_65
action_84 (56) = happyShift action_66
action_84 (59) = happyShift action_93
action_84 (65) = happyShift action_68
action_84 (66) = happyShift action_69
action_84 (67) = happyShift action_70
action_84 (68) = happyShift action_71
action_84 _ = happyReduce_19

action_85 (38) = happyShift action_56
action_85 (39) = happyShift action_57
action_85 (42) = happyShift action_60
action_85 (43) = happyShift action_61
action_85 (44) = happyShift action_62
action_85 (53) = happyShift action_63
action_85 (54) = happyShift action_92
action_85 (55) = happyShift action_65
action_85 (56) = happyShift action_66
action_85 (59) = happyShift action_93
action_85 (65) = happyShift action_68
action_85 (66) = happyShift action_69
action_85 (67) = happyShift action_70
action_85 (68) = happyShift action_71
action_85 _ = happyReduce_18

action_86 (42) = happyShift action_60
action_86 (43) = happyShift action_61
action_86 (44) = happyShift action_62
action_86 (53) = happyShift action_63
action_86 (54) = happyShift action_92
action_86 (55) = happyShift action_65
action_86 (56) = happyShift action_66
action_86 (59) = happyShift action_93
action_86 (65) = happyShift action_68
action_86 (66) = happyShift action_69
action_86 _ = happyReduce_17

action_87 (42) = happyShift action_60
action_87 (43) = happyShift action_61
action_87 (44) = happyShift action_62
action_87 (53) = happyShift action_63
action_87 (54) = happyShift action_92
action_87 (55) = happyShift action_65
action_87 (56) = happyShift action_66
action_87 (59) = happyShift action_93
action_87 (65) = happyShift action_68
action_87 (66) = happyShift action_69
action_87 _ = happyReduce_16

action_88 (33) = happyShift action_54
action_88 (38) = happyShift action_56
action_88 (39) = happyShift action_57
action_88 (40) = happyShift action_58
action_88 (41) = happyShift action_59
action_88 (42) = happyShift action_60
action_88 (43) = happyShift action_61
action_88 (44) = happyShift action_62
action_88 (53) = happyShift action_63
action_88 (54) = happyShift action_92
action_88 (55) = happyShift action_65
action_88 (56) = happyShift action_66
action_88 (59) = happyShift action_93
action_88 (65) = happyShift action_68
action_88 (66) = happyShift action_69
action_88 (67) = happyShift action_70
action_88 (68) = happyShift action_71
action_88 _ = happyReduce_12

action_89 (38) = happyShift action_56
action_89 (39) = happyShift action_57
action_89 (40) = happyShift action_58
action_89 (41) = happyShift action_59
action_89 (42) = happyShift action_60
action_89 (43) = happyShift action_61
action_89 (44) = happyShift action_62
action_89 (53) = happyShift action_63
action_89 (54) = happyShift action_92
action_89 (55) = happyShift action_65
action_89 (56) = happyShift action_66
action_89 (59) = happyShift action_93
action_89 (65) = happyShift action_68
action_89 (66) = happyShift action_69
action_89 (67) = happyShift action_70
action_89 (68) = happyShift action_71
action_89 _ = happyReduce_11

action_90 (17) = happyShift action_8
action_90 (18) = happyShift action_9
action_90 (19) = happyShift action_10
action_90 (20) = happyShift action_11
action_90 (21) = happyShift action_12
action_90 (22) = happyShift action_13
action_90 (23) = happyShift action_14
action_90 (24) = happyShift action_15
action_90 (25) = happyShift action_16
action_90 (27) = happyShift action_17
action_90 (30) = happyShift action_18
action_90 (31) = happyShift action_19
action_90 (32) = happyShift action_20
action_90 (35) = happyShift action_21
action_90 (36) = happyShift action_22
action_90 (37) = happyShift action_23
action_90 (54) = happyShift action_24
action_90 (57) = happyShift action_25
action_90 (59) = happyShift action_26
action_90 (64) = happyShift action_27
action_90 (6) = happyGoto action_123
action_90 (7) = happyGoto action_5
action_90 (11) = happyGoto action_6
action_90 (12) = happyGoto action_7
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (33) = happyShift action_54
action_91 (34) = happyShift action_55
action_91 (38) = happyShift action_56
action_91 (39) = happyShift action_57
action_91 (40) = happyShift action_58
action_91 (41) = happyShift action_59
action_91 (42) = happyShift action_60
action_91 (43) = happyShift action_61
action_91 (44) = happyShift action_62
action_91 (53) = happyShift action_63
action_91 (54) = happyShift action_92
action_91 (55) = happyShift action_65
action_91 (56) = happyShift action_66
action_91 (59) = happyShift action_93
action_91 (62) = happyShift action_122
action_91 (65) = happyShift action_68
action_91 (66) = happyShift action_69
action_91 (67) = happyShift action_70
action_91 (68) = happyShift action_71
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (17) = happyShift action_8
action_92 (18) = happyShift action_9
action_92 (19) = happyShift action_10
action_92 (20) = happyShift action_11
action_92 (21) = happyShift action_12
action_92 (22) = happyShift action_13
action_92 (23) = happyShift action_14
action_92 (24) = happyShift action_15
action_92 (25) = happyShift action_16
action_92 (27) = happyShift action_17
action_92 (30) = happyShift action_18
action_92 (31) = happyShift action_19
action_92 (32) = happyShift action_20
action_92 (35) = happyShift action_21
action_92 (36) = happyShift action_22
action_92 (37) = happyShift action_23
action_92 (54) = happyShift action_24
action_92 (57) = happyShift action_25
action_92 (59) = happyShift action_26
action_92 (64) = happyShift action_27
action_92 (6) = happyGoto action_121
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 (12) = happyGoto action_7
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (17) = happyShift action_8
action_93 (18) = happyShift action_9
action_93 (19) = happyShift action_10
action_93 (20) = happyShift action_11
action_93 (21) = happyShift action_12
action_93 (22) = happyShift action_13
action_93 (23) = happyShift action_14
action_93 (24) = happyShift action_15
action_93 (25) = happyShift action_16
action_93 (27) = happyShift action_17
action_93 (30) = happyShift action_18
action_93 (31) = happyShift action_19
action_93 (32) = happyShift action_20
action_93 (35) = happyShift action_21
action_93 (36) = happyShift action_22
action_93 (37) = happyShift action_23
action_93 (54) = happyShift action_24
action_93 (57) = happyShift action_25
action_93 (59) = happyShift action_26
action_93 (64) = happyShift action_27
action_93 (6) = happyGoto action_120
action_93 (7) = happyGoto action_5
action_93 (11) = happyGoto action_6
action_93 (12) = happyGoto action_7
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (17) = happyShift action_8
action_94 (18) = happyShift action_9
action_94 (19) = happyShift action_10
action_94 (11) = happyGoto action_118
action_94 (13) = happyGoto action_119
action_94 _ = happyReduce_62

action_95 (17) = happyShift action_8
action_95 (18) = happyShift action_9
action_95 (19) = happyShift action_10
action_95 (20) = happyShift action_11
action_95 (21) = happyShift action_12
action_95 (22) = happyShift action_13
action_95 (23) = happyShift action_14
action_95 (24) = happyShift action_15
action_95 (25) = happyShift action_16
action_95 (27) = happyShift action_17
action_95 (30) = happyShift action_18
action_95 (31) = happyShift action_19
action_95 (32) = happyShift action_20
action_95 (35) = happyShift action_21
action_95 (36) = happyShift action_22
action_95 (37) = happyShift action_23
action_95 (54) = happyShift action_24
action_95 (57) = happyShift action_25
action_95 (59) = happyShift action_26
action_95 (64) = happyShift action_27
action_95 (4) = happyGoto action_117
action_95 (5) = happyGoto action_3
action_95 (6) = happyGoto action_4
action_95 (7) = happyGoto action_5
action_95 (11) = happyGoto action_6
action_95 (12) = happyGoto action_7
action_95 _ = happyReduce_1

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
action_96 (54) = happyShift action_24
action_96 (57) = happyShift action_25
action_96 (59) = happyShift action_26
action_96 (64) = happyShift action_27
action_96 (4) = happyGoto action_116
action_96 (5) = happyGoto action_3
action_96 (6) = happyGoto action_4
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 (12) = happyGoto action_7
action_96 _ = happyReduce_1

action_97 (59) = happyShift action_115
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
action_98 (54) = happyShift action_24
action_98 (57) = happyShift action_25
action_98 (59) = happyShift action_26
action_98 (64) = happyShift action_27
action_98 (4) = happyGoto action_114
action_98 (5) = happyGoto action_3
action_98 (6) = happyGoto action_4
action_98 (7) = happyGoto action_5
action_98 (11) = happyGoto action_6
action_98 (12) = happyGoto action_7
action_98 _ = happyReduce_1

action_99 (33) = happyShift action_54
action_99 (34) = happyShift action_55
action_99 (38) = happyShift action_56
action_99 (39) = happyShift action_57
action_99 (40) = happyShift action_58
action_99 (41) = happyShift action_59
action_99 (42) = happyShift action_60
action_99 (43) = happyShift action_61
action_99 (44) = happyShift action_62
action_99 (53) = happyShift action_63
action_99 (54) = happyShift action_92
action_99 (55) = happyShift action_65
action_99 (56) = happyShift action_66
action_99 (59) = happyShift action_93
action_99 (63) = happyShift action_113
action_99 (65) = happyShift action_68
action_99 (66) = happyShift action_69
action_99 (67) = happyShift action_70
action_99 (68) = happyShift action_71
action_99 _ = happyReduce_66

action_100 (58) = happyShift action_112
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (33) = happyShift action_54
action_101 (34) = happyShift action_55
action_101 (38) = happyShift action_56
action_101 (39) = happyShift action_57
action_101 (40) = happyShift action_58
action_101 (41) = happyShift action_59
action_101 (42) = happyShift action_60
action_101 (43) = happyShift action_61
action_101 (44) = happyShift action_62
action_101 (53) = happyShift action_63
action_101 (54) = happyShift action_92
action_101 (55) = happyShift action_65
action_101 (56) = happyShift action_66
action_101 (59) = happyShift action_93
action_101 (65) = happyShift action_68
action_101 (66) = happyShift action_69
action_101 (67) = happyShift action_70
action_101 (68) = happyShift action_71
action_101 _ = happyReduce_30

action_102 (33) = happyShift action_54
action_102 (34) = happyShift action_55
action_102 (38) = happyShift action_56
action_102 (39) = happyShift action_57
action_102 (40) = happyShift action_58
action_102 (41) = happyShift action_59
action_102 (42) = happyShift action_60
action_102 (43) = happyShift action_61
action_102 (44) = happyShift action_62
action_102 (53) = happyShift action_63
action_102 (54) = happyShift action_92
action_102 (55) = happyShift action_65
action_102 (56) = happyShift action_66
action_102 (59) = happyShift action_93
action_102 (65) = happyShift action_68
action_102 (66) = happyShift action_69
action_102 (67) = happyShift action_70
action_102 (68) = happyShift action_71
action_102 _ = happyReduce_29

action_103 (33) = happyShift action_54
action_103 (34) = happyShift action_55
action_103 (38) = happyShift action_56
action_103 (39) = happyShift action_57
action_103 (40) = happyShift action_58
action_103 (41) = happyShift action_59
action_103 (42) = happyShift action_60
action_103 (43) = happyShift action_61
action_103 (44) = happyShift action_62
action_103 (53) = happyShift action_63
action_103 (54) = happyShift action_92
action_103 (55) = happyShift action_65
action_103 (56) = happyShift action_66
action_103 (59) = happyShift action_93
action_103 (65) = happyShift action_68
action_103 (66) = happyShift action_69
action_103 (67) = happyShift action_70
action_103 (68) = happyShift action_71
action_103 _ = happyReduce_28

action_104 (33) = happyShift action_54
action_104 (34) = happyShift action_55
action_104 (38) = happyShift action_56
action_104 (39) = happyShift action_57
action_104 (40) = happyShift action_58
action_104 (41) = happyShift action_59
action_104 (42) = happyShift action_60
action_104 (43) = happyShift action_61
action_104 (44) = happyShift action_62
action_104 (53) = happyShift action_63
action_104 (54) = happyShift action_92
action_104 (55) = happyShift action_65
action_104 (56) = happyShift action_66
action_104 (59) = happyShift action_93
action_104 (65) = happyShift action_68
action_104 (66) = happyShift action_69
action_104 (67) = happyShift action_70
action_104 (68) = happyShift action_71
action_104 _ = happyReduce_27

action_105 (33) = happyShift action_54
action_105 (34) = happyShift action_55
action_105 (38) = happyShift action_56
action_105 (39) = happyShift action_57
action_105 (40) = happyShift action_58
action_105 (41) = happyShift action_59
action_105 (42) = happyShift action_60
action_105 (43) = happyShift action_61
action_105 (44) = happyShift action_62
action_105 (53) = happyShift action_63
action_105 (54) = happyShift action_92
action_105 (55) = happyShift action_65
action_105 (56) = happyShift action_66
action_105 (59) = happyShift action_93
action_105 (65) = happyShift action_68
action_105 (66) = happyShift action_69
action_105 (67) = happyShift action_70
action_105 (68) = happyShift action_71
action_105 _ = happyReduce_26

action_106 (33) = happyShift action_54
action_106 (34) = happyShift action_55
action_106 (38) = happyShift action_56
action_106 (39) = happyShift action_57
action_106 (40) = happyShift action_58
action_106 (41) = happyShift action_59
action_106 (42) = happyShift action_60
action_106 (43) = happyShift action_61
action_106 (44) = happyShift action_62
action_106 (53) = happyShift action_63
action_106 (54) = happyShift action_92
action_106 (55) = happyShift action_65
action_106 (56) = happyShift action_66
action_106 (59) = happyShift action_93
action_106 (65) = happyShift action_68
action_106 (66) = happyShift action_69
action_106 (67) = happyShift action_70
action_106 (68) = happyShift action_71
action_106 _ = happyReduce_25

action_107 (33) = happyShift action_54
action_107 (34) = happyShift action_55
action_107 (38) = happyShift action_56
action_107 (39) = happyShift action_57
action_107 (40) = happyShift action_58
action_107 (41) = happyShift action_59
action_107 (42) = happyShift action_60
action_107 (43) = happyShift action_61
action_107 (44) = happyShift action_62
action_107 (53) = happyShift action_63
action_107 (54) = happyShift action_92
action_107 (55) = happyShift action_65
action_107 (56) = happyShift action_66
action_107 (59) = happyShift action_93
action_107 (65) = happyShift action_68
action_107 (66) = happyShift action_69
action_107 (67) = happyShift action_70
action_107 (68) = happyShift action_71
action_107 _ = happyReduce_24

action_108 _ = happyReduce_48

action_109 _ = happyReduce_15

action_110 (17) = happyShift action_8
action_110 (18) = happyShift action_9
action_110 (19) = happyShift action_10
action_110 (20) = happyShift action_11
action_110 (21) = happyShift action_12
action_110 (22) = happyShift action_13
action_110 (23) = happyShift action_14
action_110 (24) = happyShift action_15
action_110 (25) = happyShift action_16
action_110 (27) = happyShift action_17
action_110 (30) = happyShift action_18
action_110 (31) = happyShift action_19
action_110 (32) = happyShift action_20
action_110 (35) = happyShift action_21
action_110 (36) = happyShift action_22
action_110 (37) = happyShift action_23
action_110 (54) = happyShift action_24
action_110 (57) = happyShift action_25
action_110 (59) = happyShift action_26
action_110 (64) = happyShift action_27
action_110 (6) = happyGoto action_29
action_110 (7) = happyGoto action_5
action_110 (10) = happyGoto action_111
action_110 (11) = happyGoto action_6
action_110 (12) = happyGoto action_7
action_110 _ = happyReduce_54

action_111 _ = happyReduce_56

action_112 _ = happyReduce_40

action_113 (17) = happyShift action_8
action_113 (18) = happyShift action_9
action_113 (19) = happyShift action_10
action_113 (20) = happyShift action_11
action_113 (21) = happyShift action_12
action_113 (22) = happyShift action_13
action_113 (23) = happyShift action_14
action_113 (24) = happyShift action_15
action_113 (25) = happyShift action_16
action_113 (27) = happyShift action_17
action_113 (30) = happyShift action_18
action_113 (31) = happyShift action_19
action_113 (32) = happyShift action_20
action_113 (35) = happyShift action_21
action_113 (36) = happyShift action_22
action_113 (37) = happyShift action_23
action_113 (54) = happyShift action_24
action_113 (57) = happyShift action_25
action_113 (59) = happyShift action_26
action_113 (64) = happyShift action_27
action_113 (6) = happyGoto action_99
action_113 (7) = happyGoto action_5
action_113 (11) = happyGoto action_6
action_113 (12) = happyGoto action_7
action_113 (14) = happyGoto action_133
action_113 _ = happyReduce_65

action_114 (62) = happyShift action_132
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (37) = happyShift action_130
action_115 (69) = happyShift action_131
action_115 (16) = happyGoto action_129
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (62) = happyShift action_128
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (62) = happyShift action_127
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (37) = happyShift action_126
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (58) = happyShift action_125
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (33) = happyShift action_54
action_120 (34) = happyShift action_55
action_120 (38) = happyShift action_56
action_120 (39) = happyShift action_57
action_120 (40) = happyShift action_58
action_120 (41) = happyShift action_59
action_120 (42) = happyShift action_60
action_120 (43) = happyShift action_61
action_120 (44) = happyShift action_62
action_120 (53) = happyShift action_63
action_120 (54) = happyShift action_92
action_120 (55) = happyShift action_65
action_120 (56) = happyShift action_66
action_120 (59) = happyShift action_93
action_120 (60) = happyShift action_124
action_120 (65) = happyShift action_68
action_120 (66) = happyShift action_69
action_120 (67) = happyShift action_70
action_120 (68) = happyShift action_71
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (42) = happyShift action_60
action_121 (43) = happyShift action_61
action_121 (44) = happyShift action_62
action_121 (55) = happyShift action_65
action_121 (56) = happyShift action_66
action_121 (59) = happyShift action_93
action_121 (65) = happyShift action_68
action_121 (66) = happyShift action_69
action_121 _ = happyReduce_33

action_122 _ = happyReduce_37

action_123 (33) = happyShift action_54
action_123 (34) = happyShift action_55
action_123 (38) = happyShift action_56
action_123 (39) = happyShift action_57
action_123 (40) = happyShift action_58
action_123 (41) = happyShift action_59
action_123 (42) = happyShift action_60
action_123 (43) = happyShift action_61
action_123 (44) = happyShift action_62
action_123 (53) = happyShift action_63
action_123 (54) = happyShift action_92
action_123 (55) = happyShift action_65
action_123 (56) = happyShift action_66
action_123 (59) = happyShift action_93
action_123 (65) = happyShift action_68
action_123 (66) = happyShift action_69
action_123 (67) = happyShift action_70
action_123 (68) = happyShift action_71
action_123 _ = happyReduce_23

action_124 _ = happyReduce_36

action_125 (45) = happyShift action_140
action_125 (61) = happyShift action_141
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (63) = happyShift action_139
action_126 _ = happyReduce_63

action_127 _ = happyReduce_5

action_128 _ = happyReduce_6

action_129 (60) = happyShift action_138
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (63) = happyShift action_137
action_130 _ = happyReduce_70

action_131 (63) = happyShift action_136
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (28) = happyShift action_135
action_132 (8) = happyGoto action_134
action_132 _ = happyReduce_50

action_133 _ = happyReduce_67

action_134 (29) = happyShift action_150
action_134 (9) = happyGoto action_149
action_134 _ = happyReduce_52

action_135 (17) = happyShift action_8
action_135 (18) = happyShift action_9
action_135 (19) = happyShift action_10
action_135 (20) = happyShift action_11
action_135 (21) = happyShift action_12
action_135 (22) = happyShift action_13
action_135 (23) = happyShift action_14
action_135 (24) = happyShift action_15
action_135 (25) = happyShift action_16
action_135 (27) = happyShift action_17
action_135 (30) = happyShift action_18
action_135 (31) = happyShift action_19
action_135 (32) = happyShift action_20
action_135 (35) = happyShift action_21
action_135 (36) = happyShift action_22
action_135 (37) = happyShift action_23
action_135 (54) = happyShift action_24
action_135 (57) = happyShift action_25
action_135 (59) = happyShift action_26
action_135 (64) = happyShift action_27
action_135 (6) = happyGoto action_148
action_135 (7) = happyGoto action_5
action_135 (11) = happyGoto action_6
action_135 (12) = happyGoto action_7
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (37) = happyShift action_130
action_136 (69) = happyShift action_131
action_136 (16) = happyGoto action_147
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (37) = happyShift action_130
action_137 (69) = happyShift action_131
action_137 (16) = happyGoto action_146
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (63) = happyShift action_145
action_138 _ = happyReduce_68

action_139 (17) = happyShift action_8
action_139 (18) = happyShift action_9
action_139 (19) = happyShift action_10
action_139 (11) = happyGoto action_118
action_139 (13) = happyGoto action_144
action_139 _ = happyReduce_62

action_140 (17) = happyShift action_8
action_140 (18) = happyShift action_9
action_140 (19) = happyShift action_10
action_140 (11) = happyGoto action_143
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (17) = happyShift action_8
action_141 (18) = happyShift action_9
action_141 (19) = happyShift action_10
action_141 (20) = happyShift action_11
action_141 (21) = happyShift action_12
action_141 (22) = happyShift action_13
action_141 (23) = happyShift action_14
action_141 (24) = happyShift action_15
action_141 (25) = happyShift action_16
action_141 (27) = happyShift action_17
action_141 (30) = happyShift action_18
action_141 (31) = happyShift action_19
action_141 (32) = happyShift action_20
action_141 (35) = happyShift action_21
action_141 (36) = happyShift action_22
action_141 (37) = happyShift action_23
action_141 (54) = happyShift action_24
action_141 (57) = happyShift action_25
action_141 (59) = happyShift action_26
action_141 (64) = happyShift action_27
action_141 (4) = happyGoto action_142
action_141 (5) = happyGoto action_3
action_141 (6) = happyGoto action_4
action_141 (7) = happyGoto action_5
action_141 (11) = happyGoto action_6
action_141 (12) = happyGoto action_7
action_141 _ = happyReduce_1

action_142 (62) = happyShift action_155
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (61) = happyShift action_154
action_143 _ = happyFail (happyExpListPerState 143)

action_144 _ = happyReduce_64

action_145 (17) = happyShift action_8
action_145 (18) = happyShift action_9
action_145 (19) = happyShift action_10
action_145 (20) = happyShift action_11
action_145 (21) = happyShift action_12
action_145 (22) = happyShift action_13
action_145 (23) = happyShift action_14
action_145 (24) = happyShift action_15
action_145 (25) = happyShift action_16
action_145 (27) = happyShift action_17
action_145 (30) = happyShift action_18
action_145 (31) = happyShift action_19
action_145 (32) = happyShift action_20
action_145 (35) = happyShift action_21
action_145 (36) = happyShift action_22
action_145 (37) = happyShift action_23
action_145 (54) = happyShift action_24
action_145 (57) = happyShift action_25
action_145 (59) = happyShift action_26
action_145 (64) = happyShift action_27
action_145 (6) = happyGoto action_45
action_145 (7) = happyGoto action_5
action_145 (11) = happyGoto action_6
action_145 (12) = happyGoto action_7
action_145 (15) = happyGoto action_153
action_145 _ = happyFail (happyExpListPerState 145)

action_146 _ = happyReduce_72

action_147 _ = happyReduce_71

action_148 (33) = happyShift action_54
action_148 (34) = happyShift action_55
action_148 (38) = happyShift action_56
action_148 (39) = happyShift action_57
action_148 (40) = happyShift action_58
action_148 (41) = happyShift action_59
action_148 (42) = happyShift action_60
action_148 (43) = happyShift action_61
action_148 (44) = happyShift action_62
action_148 (53) = happyShift action_63
action_148 (54) = happyShift action_92
action_148 (55) = happyShift action_65
action_148 (56) = happyShift action_66
action_148 (59) = happyShift action_93
action_148 (61) = happyShift action_152
action_148 (65) = happyShift action_68
action_148 (66) = happyShift action_69
action_148 (67) = happyShift action_70
action_148 (68) = happyShift action_71
action_148 _ = happyFail (happyExpListPerState 148)

action_149 _ = happyReduce_49

action_150 (61) = happyShift action_151
action_150 _ = happyFail (happyExpListPerState 150)

action_151 (17) = happyShift action_8
action_151 (18) = happyShift action_9
action_151 (19) = happyShift action_10
action_151 (20) = happyShift action_11
action_151 (21) = happyShift action_12
action_151 (22) = happyShift action_13
action_151 (23) = happyShift action_14
action_151 (24) = happyShift action_15
action_151 (25) = happyShift action_16
action_151 (27) = happyShift action_17
action_151 (30) = happyShift action_18
action_151 (31) = happyShift action_19
action_151 (32) = happyShift action_20
action_151 (35) = happyShift action_21
action_151 (36) = happyShift action_22
action_151 (37) = happyShift action_23
action_151 (54) = happyShift action_24
action_151 (57) = happyShift action_25
action_151 (59) = happyShift action_26
action_151 (64) = happyShift action_27
action_151 (4) = happyGoto action_158
action_151 (5) = happyGoto action_3
action_151 (6) = happyGoto action_4
action_151 (7) = happyGoto action_5
action_151 (11) = happyGoto action_6
action_151 (12) = happyGoto action_7
action_151 _ = happyReduce_1

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
action_152 (54) = happyShift action_24
action_152 (57) = happyShift action_25
action_152 (59) = happyShift action_26
action_152 (64) = happyShift action_27
action_152 (4) = happyGoto action_157
action_152 (5) = happyGoto action_3
action_152 (6) = happyGoto action_4
action_152 (7) = happyGoto action_5
action_152 (11) = happyGoto action_6
action_152 (12) = happyGoto action_7
action_152 _ = happyReduce_1

action_153 _ = happyReduce_69

action_154 (17) = happyShift action_8
action_154 (18) = happyShift action_9
action_154 (19) = happyShift action_10
action_154 (20) = happyShift action_11
action_154 (21) = happyShift action_12
action_154 (22) = happyShift action_13
action_154 (23) = happyShift action_14
action_154 (24) = happyShift action_15
action_154 (25) = happyShift action_16
action_154 (27) = happyShift action_17
action_154 (30) = happyShift action_18
action_154 (31) = happyShift action_19
action_154 (32) = happyShift action_20
action_154 (35) = happyShift action_21
action_154 (36) = happyShift action_22
action_154 (37) = happyShift action_23
action_154 (54) = happyShift action_24
action_154 (57) = happyShift action_25
action_154 (59) = happyShift action_26
action_154 (64) = happyShift action_27
action_154 (4) = happyGoto action_156
action_154 (5) = happyGoto action_3
action_154 (6) = happyGoto action_4
action_154 (7) = happyGoto action_5
action_154 (11) = happyGoto action_6
action_154 (12) = happyGoto action_7
action_154 _ = happyReduce_1

action_155 _ = happyReduce_60

action_156 (62) = happyShift action_161
action_156 _ = happyFail (happyExpListPerState 156)

action_157 (62) = happyShift action_160
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (62) = happyShift action_159
action_158 _ = happyFail (happyExpListPerState 158)

action_159 _ = happyReduce_53

action_160 (28) = happyShift action_135
action_160 (8) = happyGoto action_162
action_160 _ = happyReduce_50

action_161 _ = happyReduce_61

action_162 _ = happyReduce_51

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

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 4 6 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_2  6 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  6 happyReduction_39
happyReduction_39 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happyReduce 4 6 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  6 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  6 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  6 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  6 happyReduction_46
happyReduction_46 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  6 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  6 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happyReduce 7 7 happyReduction_49
happyReduction_49 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_50 = happySpecReduce_0  8 happyReduction_50
happyReduction_50  =  HappyAbsSyn8
		 ([]
	)

happyReduce_51 = happyReduce 6 8 happyReduction_51
happyReduction_51 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_0  9 happyReduction_52
happyReduction_52  =  HappyAbsSyn9
		 ([]
	)

happyReduce_53 = happyReduce 4 9 happyReduction_53
happyReduction_53 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_54 = happySpecReduce_0  10 happyReduction_54
happyReduction_54  =  HappyAbsSyn10
		 ([]
	)

happyReduce_55 = happySpecReduce_1  10 happyReduction_55
happyReduction_55 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  10 happyReduction_56
happyReduction_56 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  11 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_58 = happySpecReduce_1  11 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_59 = happySpecReduce_1  11 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_60 = happyReduce 8 12 happyReduction_60
happyReduction_60 (_ `HappyStk`
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

happyReduce_61 = happyReduce 10 12 happyReduction_61
happyReduction_61 (_ `HappyStk`
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

happyReduce_62 = happySpecReduce_0  13 happyReduction_62
happyReduction_62  =  HappyAbsSyn13
		 ([]
	)

happyReduce_63 = happySpecReduce_2  13 happyReduction_63
happyReduction_63 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn13
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happyReduce 4 13 happyReduction_64
happyReduction_64 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_65 = happySpecReduce_0  14 happyReduction_65
happyReduction_65  =  HappyAbsSyn14
		 ([]
	)

happyReduce_66 = happySpecReduce_1  14 happyReduction_66
happyReduction_66 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_3  14 happyReduction_67
happyReduction_67 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_67 _ _ _  = notHappyAtAll 

happyReduce_68 = happyReduce 5 15 happyReduction_68
happyReduction_68 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_69 = happyReduce 7 15 happyReduction_69
happyReduction_69 ((HappyAbsSyn15  happy_var_7) `HappyStk`
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

happyReduce_70 = happySpecReduce_1  16 happyReduction_70
happyReduction_70 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_70 _  = notHappyAtAll 

happyReduce_71 = happySpecReduce_3  16 happyReduction_71
happyReduction_71 (HappyAbsSyn16  happy_var_3)
	_
	_
	 =  HappyAbsSyn16
		 ("_" : happy_var_3
	)
happyReduction_71 _ _ _  = notHappyAtAll 

happyReduce_72 = happySpecReduce_3  16 happyReduction_72
happyReduction_72 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_72 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 70 70 notHappyAtAll (HappyState action) sts stk []

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
	TokenConcat _ -> cont 43;
	TokenTake _ -> cont 44;
	TokenReturnArrow _ -> cont 45;
	TokenAssign _ -> cont 46;
	TokenPlusEquals _ -> cont 47;
	TokenMinusEquals _ -> cont 48;
	TokenTimesEquals _ -> cont 49;
	TokenDivEquals _ -> cont 50;
	TokenExponentEquals _ -> cont 51;
	TokenModuloEquals _ -> cont 52;
	TokenPlus _ -> cont 53;
	TokenMinus _ -> cont 54;
	TokenTimes _ -> cont 55;
	TokenDiv _ -> cont 56;
	TokenLParen _ -> cont 57;
	TokenRParen _ -> cont 58;
	TokenLSquare _ -> cont 59;
	TokenRSquare _ -> cont 60;
	TokenLCurly _ -> cont 61;
	TokenRCurly _ -> cont 62;
	TokenComma _ -> cont 63;
	TokenNot _ -> cont 64;
	TokenExponent _ -> cont 65;
	TokenModulo _ -> cont 66;
	TokenLT _ -> cont 67;
	TokenGT _ -> cont 68;
	TokenUnderscore _ -> cont 69;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 70 tk tks = happyError' (tks, explist)
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

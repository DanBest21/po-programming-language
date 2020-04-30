{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17
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
	| HappyAbsSyn17 t17

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,886) ([0,52222,57,2624,1,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,64703,511,61630,1,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,49120,924,41984,16,0,0,1,0,0,12280,231,10496,4,64512,29591,32768,532,0,52222,57,2624,1,65280,7397,8192,133,32768,29439,14,17040,0,32704,1849,18432,33,57344,40127,3,4260,0,0,0,0,0,0,0,0,0,0,0,32768,1087,0,65024,14795,16384,266,0,58879,28,34080,0,65408,3698,36864,66,49152,14719,7,8520,0,0,49152,32769,32,0,12288,254,62543,0,0,0,16384,0,0,35840,49215,15387,0,0,7168,2048,2,65280,7397,8192,133,32768,29439,14,17040,0,32704,1849,18432,33,57344,40127,3,4260,0,24560,462,20992,8,63488,59183,0,1065,0,38908,115,5248,2,65024,14795,16384,266,0,0,0,1024,0,0,0,0,2,0,0,0,256,0,0,64608,40449,482,0,12320,254,61519,0,0,0,32768,0,0,35840,49215,15443,0,0,8134,2528,30,0,0,0,1,0,32768,2033,33400,7,32704,1849,18432,33,0,0,1024,0,0,0,0,0,0,63488,59183,0,1065,0,38908,115,5248,2,65024,14795,16384,266,0,58879,28,34080,0,65408,3698,36864,66,49152,14719,7,8520,0,49120,924,41984,16,61440,52831,1,2130,0,12280,231,10496,4,64512,29591,32768,532,0,52222,57,2624,1,65280,7397,8192,133,32768,29439,14,17040,0,32704,1849,18432,33,57344,40127,3,4260,0,24560,462,20992,8,63488,59183,0,1065,0,38908,115,5248,2,0,0,57372,1545,0,0,3584,1264,3,0,0,7,130,0,0,0,16640,0,0,64608,40449,489,0,0,224,4160,0,0,28672,8192,8,0,0,56,1040,0,0,7168,2432,6,0,0,10,260,0,0,1280,33280,0,0,32768,2,65,0,0,460,57502,1,0,58880,20224,240,0,0,32880,6183,0,0,14336,5056,12,0,49664,57375,7689,0,0,4064,1264,15,65408,3698,36864,66,0,49152,1016,51516,3,49120,924,41984,16,61440,52831,1,2130,0,312,0,0,0,64512,29591,32768,532,0,52222,57,2624,1,0,0,0,4,32768,29439,14,17040,0,0,63680,15363,977,0,0,0,64,0,0,65072,20224,240,0,6144,32895,30759,0,0,16268,5056,60,0,50688,57375,7689,0,0,4067,1264,15,0,61824,30727,1922,0,49152,1016,49468,3,0,0,0,0,0,0,0,0,0,12280,231,10496,4,0,0,0,0,0,0,0,0,0,65280,7397,8192,133,0,0,0,4096,0,0,1024,0,1024,0,0,0,1024,0,0,0,0,2,0,0,0,0,0,0,64,0,0,0,0,0,4,0,0,0,0,0,0,61824,30727,1926,0,0,896,49456,0,0,0,0,0,0,12288,254,61519,0,0,0,0,0,0,0,64,64,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,2048,0,0,0,0,4,0,64,0,0,0,0,0,0,0,0,32,0,0,0,58879,28,34080,0,0,2048,0,2048,0,0,4,0,4,0,0,0,8,28672,2,0,0,0,56,0,0,0,64512,29591,32768,532,0,0,0,16384,0,0,0,0,16,0,0,0,0,0,32704,1849,18432,33,0,0,0,0,0,0,0,0,0,0,6144,32895,30887,0,0,0,0,0,0,0,0,32,0,58879,28,34080,0,65408,3698,36864,66,0,0,0,0,0,49120,924,41984,16,0,0,0,0,0,0,0,0,1,0,0,0,128,0,0,0,16384,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","ParamType","FnDec","ParamList","ArgList","ProcessList","VarList","int_type","stream_type","boolean_type","input","print","fn","return","while","process","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","%eof"]
        bit_start = st * 71
        bit_end = (st + 1) * 71
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..70]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (21) = happyShift action_11
action_0 (22) = happyShift action_12
action_0 (23) = happyShift action_13
action_0 (24) = happyShift action_14
action_0 (25) = happyShift action_15
action_0 (26) = happyShift action_16
action_0 (28) = happyShift action_17
action_0 (31) = happyShift action_18
action_0 (32) = happyShift action_19
action_0 (33) = happyShift action_20
action_0 (36) = happyShift action_21
action_0 (37) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (55) = happyShift action_24
action_0 (58) = happyShift action_25
action_0 (60) = happyShift action_26
action_0 (65) = happyShift action_27
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (13) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (71) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (18) = happyShift action_8
action_4 (19) = happyShift action_9
action_4 (20) = happyShift action_10
action_4 (21) = happyShift action_11
action_4 (22) = happyShift action_12
action_4 (23) = happyShift action_13
action_4 (24) = happyShift action_14
action_4 (25) = happyShift action_15
action_4 (26) = happyShift action_16
action_4 (28) = happyShift action_17
action_4 (31) = happyShift action_18
action_4 (32) = happyShift action_19
action_4 (33) = happyShift action_20
action_4 (34) = happyShift action_54
action_4 (35) = happyShift action_55
action_4 (36) = happyShift action_21
action_4 (37) = happyShift action_22
action_4 (38) = happyShift action_23
action_4 (39) = happyShift action_56
action_4 (40) = happyShift action_57
action_4 (41) = happyShift action_58
action_4 (42) = happyShift action_59
action_4 (43) = happyShift action_60
action_4 (44) = happyShift action_61
action_4 (45) = happyShift action_62
action_4 (54) = happyShift action_63
action_4 (55) = happyShift action_64
action_4 (56) = happyShift action_65
action_4 (57) = happyShift action_66
action_4 (58) = happyShift action_25
action_4 (60) = happyShift action_67
action_4 (65) = happyShift action_27
action_4 (66) = happyShift action_68
action_4 (67) = happyShift action_69
action_4 (68) = happyShift action_70
action_4 (69) = happyShift action_71
action_4 (5) = happyGoto action_53
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (13) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_7

action_6 (38) = happyShift action_52
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_39

action_8 _ = happyReduce_57

action_9 _ = happyReduce_59

action_10 _ = happyReduce_58

action_11 (62) = happyShift action_51
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (18) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (20) = happyShift action_10
action_12 (21) = happyShift action_11
action_12 (22) = happyShift action_12
action_12 (23) = happyShift action_13
action_12 (24) = happyShift action_14
action_12 (25) = happyShift action_15
action_12 (26) = happyShift action_16
action_12 (28) = happyShift action_17
action_12 (31) = happyShift action_18
action_12 (32) = happyShift action_19
action_12 (33) = happyShift action_20
action_12 (36) = happyShift action_21
action_12 (37) = happyShift action_22
action_12 (38) = happyShift action_23
action_12 (55) = happyShift action_24
action_12 (58) = happyShift action_25
action_12 (60) = happyShift action_26
action_12 (65) = happyShift action_27
action_12 (6) = happyGoto action_50
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (13) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (38) = happyShift action_49
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (18) = happyShift action_8
action_14 (19) = happyShift action_9
action_14 (20) = happyShift action_10
action_14 (21) = happyShift action_11
action_14 (22) = happyShift action_12
action_14 (23) = happyShift action_13
action_14 (24) = happyShift action_14
action_14 (25) = happyShift action_15
action_14 (26) = happyShift action_16
action_14 (28) = happyShift action_17
action_14 (31) = happyShift action_18
action_14 (32) = happyShift action_19
action_14 (33) = happyShift action_20
action_14 (36) = happyShift action_21
action_14 (37) = happyShift action_22
action_14 (38) = happyShift action_23
action_14 (55) = happyShift action_24
action_14 (58) = happyShift action_25
action_14 (60) = happyShift action_26
action_14 (65) = happyShift action_27
action_14 (6) = happyGoto action_48
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 (13) = happyGoto action_7
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (18) = happyShift action_8
action_15 (19) = happyShift action_9
action_15 (20) = happyShift action_10
action_15 (21) = happyShift action_11
action_15 (22) = happyShift action_12
action_15 (23) = happyShift action_13
action_15 (24) = happyShift action_14
action_15 (25) = happyShift action_15
action_15 (26) = happyShift action_16
action_15 (28) = happyShift action_17
action_15 (31) = happyShift action_18
action_15 (32) = happyShift action_19
action_15 (33) = happyShift action_20
action_15 (36) = happyShift action_21
action_15 (37) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (55) = happyShift action_24
action_15 (58) = happyShift action_25
action_15 (60) = happyShift action_26
action_15 (65) = happyShift action_27
action_15 (6) = happyGoto action_47
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 (13) = happyGoto action_7
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (18) = happyShift action_8
action_16 (19) = happyShift action_9
action_16 (20) = happyShift action_10
action_16 (21) = happyShift action_11
action_16 (22) = happyShift action_12
action_16 (23) = happyShift action_13
action_16 (24) = happyShift action_14
action_16 (25) = happyShift action_15
action_16 (26) = happyShift action_16
action_16 (28) = happyShift action_17
action_16 (31) = happyShift action_18
action_16 (32) = happyShift action_19
action_16 (33) = happyShift action_20
action_16 (36) = happyShift action_21
action_16 (37) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (55) = happyShift action_24
action_16 (58) = happyShift action_25
action_16 (60) = happyShift action_26
action_16 (65) = happyShift action_27
action_16 (6) = happyGoto action_45
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (13) = happyGoto action_7
action_16 (16) = happyGoto action_46
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (18) = happyShift action_8
action_17 (19) = happyShift action_9
action_17 (20) = happyShift action_10
action_17 (21) = happyShift action_11
action_17 (22) = happyShift action_12
action_17 (23) = happyShift action_13
action_17 (24) = happyShift action_14
action_17 (25) = happyShift action_15
action_17 (26) = happyShift action_16
action_17 (28) = happyShift action_17
action_17 (31) = happyShift action_18
action_17 (32) = happyShift action_19
action_17 (33) = happyShift action_20
action_17 (36) = happyShift action_21
action_17 (37) = happyShift action_22
action_17 (38) = happyShift action_23
action_17 (55) = happyShift action_24
action_17 (58) = happyShift action_25
action_17 (60) = happyShift action_26
action_17 (65) = happyShift action_27
action_17 (6) = happyGoto action_44
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (13) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (18) = happyShift action_8
action_18 (19) = happyShift action_9
action_18 (20) = happyShift action_10
action_18 (21) = happyShift action_11
action_18 (22) = happyShift action_12
action_18 (23) = happyShift action_13
action_18 (24) = happyShift action_14
action_18 (25) = happyShift action_15
action_18 (26) = happyShift action_16
action_18 (28) = happyShift action_17
action_18 (31) = happyShift action_18
action_18 (32) = happyShift action_19
action_18 (33) = happyShift action_20
action_18 (36) = happyShift action_21
action_18 (37) = happyShift action_22
action_18 (38) = happyShift action_23
action_18 (55) = happyShift action_24
action_18 (58) = happyShift action_25
action_18 (60) = happyShift action_26
action_18 (65) = happyShift action_27
action_18 (6) = happyGoto action_43
action_18 (7) = happyGoto action_5
action_18 (11) = happyGoto action_6
action_18 (13) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (18) = happyShift action_8
action_19 (19) = happyShift action_9
action_19 (20) = happyShift action_10
action_19 (21) = happyShift action_11
action_19 (22) = happyShift action_12
action_19 (23) = happyShift action_13
action_19 (24) = happyShift action_14
action_19 (25) = happyShift action_15
action_19 (26) = happyShift action_16
action_19 (28) = happyShift action_17
action_19 (31) = happyShift action_18
action_19 (32) = happyShift action_19
action_19 (33) = happyShift action_20
action_19 (36) = happyShift action_21
action_19 (37) = happyShift action_22
action_19 (38) = happyShift action_23
action_19 (55) = happyShift action_24
action_19 (58) = happyShift action_25
action_19 (60) = happyShift action_26
action_19 (65) = happyShift action_27
action_19 (6) = happyGoto action_42
action_19 (7) = happyGoto action_5
action_19 (11) = happyGoto action_6
action_19 (13) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (18) = happyShift action_8
action_20 (19) = happyShift action_9
action_20 (20) = happyShift action_10
action_20 (21) = happyShift action_11
action_20 (22) = happyShift action_12
action_20 (23) = happyShift action_13
action_20 (24) = happyShift action_14
action_20 (25) = happyShift action_15
action_20 (26) = happyShift action_16
action_20 (28) = happyShift action_17
action_20 (31) = happyShift action_18
action_20 (32) = happyShift action_19
action_20 (33) = happyShift action_20
action_20 (36) = happyShift action_21
action_20 (37) = happyShift action_22
action_20 (38) = happyShift action_23
action_20 (55) = happyShift action_24
action_20 (58) = happyShift action_25
action_20 (60) = happyShift action_26
action_20 (65) = happyShift action_27
action_20 (6) = happyGoto action_41
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 (13) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_13

action_22 _ = happyReduce_14

action_23 (47) = happyShift action_33
action_23 (48) = happyShift action_34
action_23 (49) = happyShift action_35
action_23 (50) = happyShift action_36
action_23 (51) = happyShift action_37
action_23 (52) = happyShift action_38
action_23 (53) = happyShift action_39
action_23 (58) = happyShift action_40
action_23 _ = happyReduce_31

action_24 (18) = happyShift action_8
action_24 (19) = happyShift action_9
action_24 (20) = happyShift action_10
action_24 (21) = happyShift action_11
action_24 (22) = happyShift action_12
action_24 (23) = happyShift action_13
action_24 (24) = happyShift action_14
action_24 (25) = happyShift action_15
action_24 (26) = happyShift action_16
action_24 (28) = happyShift action_17
action_24 (31) = happyShift action_18
action_24 (32) = happyShift action_19
action_24 (33) = happyShift action_20
action_24 (36) = happyShift action_21
action_24 (37) = happyShift action_22
action_24 (38) = happyShift action_23
action_24 (55) = happyShift action_24
action_24 (58) = happyShift action_25
action_24 (60) = happyShift action_26
action_24 (65) = happyShift action_27
action_24 (6) = happyGoto action_32
action_24 (7) = happyGoto action_5
action_24 (11) = happyGoto action_6
action_24 (13) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (18) = happyShift action_8
action_25 (19) = happyShift action_9
action_25 (20) = happyShift action_10
action_25 (21) = happyShift action_11
action_25 (22) = happyShift action_12
action_25 (23) = happyShift action_13
action_25 (24) = happyShift action_14
action_25 (25) = happyShift action_15
action_25 (26) = happyShift action_16
action_25 (28) = happyShift action_17
action_25 (31) = happyShift action_18
action_25 (32) = happyShift action_19
action_25 (33) = happyShift action_20
action_25 (36) = happyShift action_21
action_25 (37) = happyShift action_22
action_25 (38) = happyShift action_23
action_25 (55) = happyShift action_24
action_25 (58) = happyShift action_25
action_25 (60) = happyShift action_26
action_25 (65) = happyShift action_27
action_25 (6) = happyGoto action_31
action_25 (7) = happyGoto action_5
action_25 (11) = happyGoto action_6
action_25 (13) = happyGoto action_7
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (18) = happyShift action_8
action_26 (19) = happyShift action_9
action_26 (20) = happyShift action_10
action_26 (21) = happyShift action_11
action_26 (22) = happyShift action_12
action_26 (23) = happyShift action_13
action_26 (24) = happyShift action_14
action_26 (25) = happyShift action_15
action_26 (26) = happyShift action_16
action_26 (28) = happyShift action_17
action_26 (31) = happyShift action_18
action_26 (32) = happyShift action_19
action_26 (33) = happyShift action_20
action_26 (36) = happyShift action_21
action_26 (37) = happyShift action_22
action_26 (38) = happyShift action_23
action_26 (55) = happyShift action_24
action_26 (58) = happyShift action_25
action_26 (60) = happyShift action_26
action_26 (65) = happyShift action_27
action_26 (6) = happyGoto action_29
action_26 (7) = happyGoto action_5
action_26 (10) = happyGoto action_30
action_26 (11) = happyGoto action_6
action_26 (13) = happyGoto action_7
action_26 _ = happyReduce_54

action_27 (18) = happyShift action_8
action_27 (19) = happyShift action_9
action_27 (20) = happyShift action_10
action_27 (21) = happyShift action_11
action_27 (22) = happyShift action_12
action_27 (23) = happyShift action_13
action_27 (24) = happyShift action_14
action_27 (25) = happyShift action_15
action_27 (26) = happyShift action_16
action_27 (28) = happyShift action_17
action_27 (31) = happyShift action_18
action_27 (32) = happyShift action_19
action_27 (33) = happyShift action_20
action_27 (36) = happyShift action_21
action_27 (37) = happyShift action_22
action_27 (38) = happyShift action_23
action_27 (55) = happyShift action_24
action_27 (58) = happyShift action_25
action_27 (60) = happyShift action_26
action_27 (65) = happyShift action_27
action_27 (6) = happyGoto action_28
action_27 (7) = happyGoto action_5
action_27 (11) = happyGoto action_6
action_27 (13) = happyGoto action_7
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (43) = happyShift action_60
action_28 (44) = happyShift action_61
action_28 (45) = happyShift action_62
action_28 (60) = happyShift action_93
action_28 (66) = happyShift action_68
action_28 _ = happyReduce_42

action_29 (34) = happyShift action_54
action_29 (35) = happyShift action_55
action_29 (39) = happyShift action_56
action_29 (40) = happyShift action_57
action_29 (41) = happyShift action_58
action_29 (42) = happyShift action_59
action_29 (43) = happyShift action_60
action_29 (44) = happyShift action_61
action_29 (45) = happyShift action_62
action_29 (54) = happyShift action_63
action_29 (55) = happyShift action_92
action_29 (56) = happyShift action_65
action_29 (57) = happyShift action_66
action_29 (60) = happyShift action_93
action_29 (64) = happyShift action_110
action_29 (66) = happyShift action_68
action_29 (67) = happyShift action_69
action_29 (68) = happyShift action_70
action_29 (69) = happyShift action_71
action_29 _ = happyReduce_55

action_30 (61) = happyShift action_109
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (34) = happyShift action_54
action_31 (35) = happyShift action_55
action_31 (39) = happyShift action_56
action_31 (40) = happyShift action_57
action_31 (41) = happyShift action_58
action_31 (42) = happyShift action_59
action_31 (43) = happyShift action_60
action_31 (44) = happyShift action_61
action_31 (45) = happyShift action_62
action_31 (54) = happyShift action_63
action_31 (55) = happyShift action_92
action_31 (56) = happyShift action_65
action_31 (57) = happyShift action_66
action_31 (59) = happyShift action_108
action_31 (60) = happyShift action_93
action_31 (66) = happyShift action_68
action_31 (67) = happyShift action_69
action_31 (68) = happyShift action_70
action_31 (69) = happyShift action_71
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (43) = happyShift action_60
action_32 (44) = happyShift action_61
action_32 (45) = happyShift action_62
action_32 (60) = happyShift action_93
action_32 (66) = happyShift action_68
action_32 _ = happyReduce_47

action_33 (18) = happyShift action_8
action_33 (19) = happyShift action_9
action_33 (20) = happyShift action_10
action_33 (21) = happyShift action_11
action_33 (22) = happyShift action_12
action_33 (23) = happyShift action_13
action_33 (24) = happyShift action_14
action_33 (25) = happyShift action_15
action_33 (26) = happyShift action_16
action_33 (28) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (32) = happyShift action_19
action_33 (33) = happyShift action_20
action_33 (36) = happyShift action_21
action_33 (37) = happyShift action_22
action_33 (38) = happyShift action_23
action_33 (55) = happyShift action_24
action_33 (58) = happyShift action_25
action_33 (60) = happyShift action_26
action_33 (65) = happyShift action_27
action_33 (6) = happyGoto action_107
action_33 (7) = happyGoto action_5
action_33 (11) = happyGoto action_6
action_33 (13) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (18) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (20) = happyShift action_10
action_34 (21) = happyShift action_11
action_34 (22) = happyShift action_12
action_34 (23) = happyShift action_13
action_34 (24) = happyShift action_14
action_34 (25) = happyShift action_15
action_34 (26) = happyShift action_16
action_34 (28) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (32) = happyShift action_19
action_34 (33) = happyShift action_20
action_34 (36) = happyShift action_21
action_34 (37) = happyShift action_22
action_34 (38) = happyShift action_23
action_34 (55) = happyShift action_24
action_34 (58) = happyShift action_25
action_34 (60) = happyShift action_26
action_34 (65) = happyShift action_27
action_34 (6) = happyGoto action_106
action_34 (7) = happyGoto action_5
action_34 (11) = happyGoto action_6
action_34 (13) = happyGoto action_7
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (18) = happyShift action_8
action_35 (19) = happyShift action_9
action_35 (20) = happyShift action_10
action_35 (21) = happyShift action_11
action_35 (22) = happyShift action_12
action_35 (23) = happyShift action_13
action_35 (24) = happyShift action_14
action_35 (25) = happyShift action_15
action_35 (26) = happyShift action_16
action_35 (28) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (32) = happyShift action_19
action_35 (33) = happyShift action_20
action_35 (36) = happyShift action_21
action_35 (37) = happyShift action_22
action_35 (38) = happyShift action_23
action_35 (55) = happyShift action_24
action_35 (58) = happyShift action_25
action_35 (60) = happyShift action_26
action_35 (65) = happyShift action_27
action_35 (6) = happyGoto action_105
action_35 (7) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 (13) = happyGoto action_7
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (18) = happyShift action_8
action_36 (19) = happyShift action_9
action_36 (20) = happyShift action_10
action_36 (21) = happyShift action_11
action_36 (22) = happyShift action_12
action_36 (23) = happyShift action_13
action_36 (24) = happyShift action_14
action_36 (25) = happyShift action_15
action_36 (26) = happyShift action_16
action_36 (28) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (32) = happyShift action_19
action_36 (33) = happyShift action_20
action_36 (36) = happyShift action_21
action_36 (37) = happyShift action_22
action_36 (38) = happyShift action_23
action_36 (55) = happyShift action_24
action_36 (58) = happyShift action_25
action_36 (60) = happyShift action_26
action_36 (65) = happyShift action_27
action_36 (6) = happyGoto action_104
action_36 (7) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 (13) = happyGoto action_7
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (18) = happyShift action_8
action_37 (19) = happyShift action_9
action_37 (20) = happyShift action_10
action_37 (21) = happyShift action_11
action_37 (22) = happyShift action_12
action_37 (23) = happyShift action_13
action_37 (24) = happyShift action_14
action_37 (25) = happyShift action_15
action_37 (26) = happyShift action_16
action_37 (28) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (32) = happyShift action_19
action_37 (33) = happyShift action_20
action_37 (36) = happyShift action_21
action_37 (37) = happyShift action_22
action_37 (38) = happyShift action_23
action_37 (55) = happyShift action_24
action_37 (58) = happyShift action_25
action_37 (60) = happyShift action_26
action_37 (65) = happyShift action_27
action_37 (6) = happyGoto action_103
action_37 (7) = happyGoto action_5
action_37 (11) = happyGoto action_6
action_37 (13) = happyGoto action_7
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (18) = happyShift action_8
action_38 (19) = happyShift action_9
action_38 (20) = happyShift action_10
action_38 (21) = happyShift action_11
action_38 (22) = happyShift action_12
action_38 (23) = happyShift action_13
action_38 (24) = happyShift action_14
action_38 (25) = happyShift action_15
action_38 (26) = happyShift action_16
action_38 (28) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (32) = happyShift action_19
action_38 (33) = happyShift action_20
action_38 (36) = happyShift action_21
action_38 (37) = happyShift action_22
action_38 (38) = happyShift action_23
action_38 (55) = happyShift action_24
action_38 (58) = happyShift action_25
action_38 (60) = happyShift action_26
action_38 (65) = happyShift action_27
action_38 (6) = happyGoto action_102
action_38 (7) = happyGoto action_5
action_38 (11) = happyGoto action_6
action_38 (13) = happyGoto action_7
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (18) = happyShift action_8
action_39 (19) = happyShift action_9
action_39 (20) = happyShift action_10
action_39 (21) = happyShift action_11
action_39 (22) = happyShift action_12
action_39 (23) = happyShift action_13
action_39 (24) = happyShift action_14
action_39 (25) = happyShift action_15
action_39 (26) = happyShift action_16
action_39 (28) = happyShift action_17
action_39 (31) = happyShift action_18
action_39 (32) = happyShift action_19
action_39 (33) = happyShift action_20
action_39 (36) = happyShift action_21
action_39 (37) = happyShift action_22
action_39 (38) = happyShift action_23
action_39 (55) = happyShift action_24
action_39 (58) = happyShift action_25
action_39 (60) = happyShift action_26
action_39 (65) = happyShift action_27
action_39 (6) = happyGoto action_101
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (13) = happyGoto action_7
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_8
action_40 (19) = happyShift action_9
action_40 (20) = happyShift action_10
action_40 (21) = happyShift action_11
action_40 (22) = happyShift action_12
action_40 (23) = happyShift action_13
action_40 (24) = happyShift action_14
action_40 (25) = happyShift action_15
action_40 (26) = happyShift action_16
action_40 (28) = happyShift action_17
action_40 (31) = happyShift action_18
action_40 (32) = happyShift action_19
action_40 (33) = happyShift action_20
action_40 (36) = happyShift action_21
action_40 (37) = happyShift action_22
action_40 (38) = happyShift action_23
action_40 (55) = happyShift action_24
action_40 (58) = happyShift action_25
action_40 (60) = happyShift action_26
action_40 (65) = happyShift action_27
action_40 (6) = happyGoto action_99
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (13) = happyGoto action_7
action_40 (15) = happyGoto action_100
action_40 _ = happyReduce_67

action_41 (60) = happyShift action_93
action_41 _ = happyReduce_10

action_42 (60) = happyShift action_93
action_42 _ = happyReduce_9

action_43 (60) = happyShift action_93
action_43 _ = happyReduce_8

action_44 (34) = happyShift action_54
action_44 (35) = happyShift action_55
action_44 (39) = happyShift action_56
action_44 (40) = happyShift action_57
action_44 (41) = happyShift action_58
action_44 (42) = happyShift action_59
action_44 (43) = happyShift action_60
action_44 (44) = happyShift action_61
action_44 (45) = happyShift action_62
action_44 (54) = happyShift action_63
action_44 (55) = happyShift action_92
action_44 (56) = happyShift action_65
action_44 (57) = happyShift action_66
action_44 (60) = happyShift action_93
action_44 (62) = happyShift action_98
action_44 (66) = happyShift action_68
action_44 (67) = happyShift action_69
action_44 (68) = happyShift action_70
action_44 (69) = happyShift action_71
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (27) = happyShift action_97
action_45 (34) = happyShift action_54
action_45 (35) = happyShift action_55
action_45 (39) = happyShift action_56
action_45 (40) = happyShift action_57
action_45 (41) = happyShift action_58
action_45 (42) = happyShift action_59
action_45 (43) = happyShift action_60
action_45 (44) = happyShift action_61
action_45 (45) = happyShift action_62
action_45 (54) = happyShift action_63
action_45 (55) = happyShift action_92
action_45 (56) = happyShift action_65
action_45 (57) = happyShift action_66
action_45 (60) = happyShift action_93
action_45 (66) = happyShift action_68
action_45 (67) = happyShift action_69
action_45 (68) = happyShift action_70
action_45 (69) = happyShift action_71
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (62) = happyShift action_96
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (34) = happyShift action_54
action_47 (35) = happyShift action_55
action_47 (39) = happyShift action_56
action_47 (40) = happyShift action_57
action_47 (41) = happyShift action_58
action_47 (42) = happyShift action_59
action_47 (43) = happyShift action_60
action_47 (44) = happyShift action_61
action_47 (45) = happyShift action_62
action_47 (54) = happyShift action_63
action_47 (55) = happyShift action_92
action_47 (56) = happyShift action_65
action_47 (57) = happyShift action_66
action_47 (60) = happyShift action_93
action_47 (62) = happyShift action_95
action_47 (66) = happyShift action_68
action_47 (67) = happyShift action_69
action_47 (68) = happyShift action_70
action_47 (69) = happyShift action_71
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (34) = happyShift action_54
action_48 (35) = happyShift action_55
action_48 (39) = happyShift action_56
action_48 (40) = happyShift action_57
action_48 (41) = happyShift action_58
action_48 (42) = happyShift action_59
action_48 (43) = happyShift action_60
action_48 (44) = happyShift action_61
action_48 (45) = happyShift action_62
action_48 (54) = happyShift action_63
action_48 (55) = happyShift action_92
action_48 (56) = happyShift action_65
action_48 (57) = happyShift action_66
action_48 (60) = happyShift action_93
action_48 (66) = happyShift action_68
action_48 (67) = happyShift action_69
action_48 (68) = happyShift action_70
action_48 (69) = happyShift action_71
action_48 _ = happyReduce_41

action_49 (58) = happyShift action_94
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (34) = happyShift action_54
action_50 (35) = happyShift action_55
action_50 (39) = happyShift action_56
action_50 (40) = happyShift action_57
action_50 (41) = happyShift action_58
action_50 (42) = happyShift action_59
action_50 (43) = happyShift action_60
action_50 (44) = happyShift action_61
action_50 (45) = happyShift action_62
action_50 (54) = happyShift action_63
action_50 (55) = happyShift action_92
action_50 (56) = happyShift action_65
action_50 (57) = happyShift action_66
action_50 (60) = happyShift action_93
action_50 (66) = happyShift action_68
action_50 (67) = happyShift action_69
action_50 (68) = happyShift action_70
action_50 (69) = happyShift action_71
action_50 _ = happyReduce_38

action_51 (18) = happyShift action_8
action_51 (19) = happyShift action_9
action_51 (20) = happyShift action_10
action_51 (21) = happyShift action_11
action_51 (22) = happyShift action_12
action_51 (23) = happyShift action_13
action_51 (24) = happyShift action_14
action_51 (25) = happyShift action_15
action_51 (26) = happyShift action_16
action_51 (28) = happyShift action_17
action_51 (31) = happyShift action_18
action_51 (32) = happyShift action_19
action_51 (33) = happyShift action_20
action_51 (36) = happyShift action_21
action_51 (37) = happyShift action_22
action_51 (38) = happyShift action_23
action_51 (55) = happyShift action_24
action_51 (58) = happyShift action_25
action_51 (60) = happyShift action_26
action_51 (65) = happyShift action_27
action_51 (6) = happyGoto action_91
action_51 (7) = happyGoto action_5
action_51 (11) = happyGoto action_6
action_51 (13) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (47) = happyShift action_90
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_4

action_54 (18) = happyShift action_8
action_54 (19) = happyShift action_9
action_54 (20) = happyShift action_10
action_54 (21) = happyShift action_11
action_54 (22) = happyShift action_12
action_54 (23) = happyShift action_13
action_54 (24) = happyShift action_14
action_54 (25) = happyShift action_15
action_54 (26) = happyShift action_16
action_54 (28) = happyShift action_17
action_54 (31) = happyShift action_18
action_54 (32) = happyShift action_19
action_54 (33) = happyShift action_20
action_54 (36) = happyShift action_21
action_54 (37) = happyShift action_22
action_54 (38) = happyShift action_23
action_54 (55) = happyShift action_24
action_54 (58) = happyShift action_25
action_54 (60) = happyShift action_26
action_54 (65) = happyShift action_27
action_54 (6) = happyGoto action_89
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 (13) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (18) = happyShift action_8
action_55 (19) = happyShift action_9
action_55 (20) = happyShift action_10
action_55 (21) = happyShift action_11
action_55 (22) = happyShift action_12
action_55 (23) = happyShift action_13
action_55 (24) = happyShift action_14
action_55 (25) = happyShift action_15
action_55 (26) = happyShift action_16
action_55 (28) = happyShift action_17
action_55 (31) = happyShift action_18
action_55 (32) = happyShift action_19
action_55 (33) = happyShift action_20
action_55 (36) = happyShift action_21
action_55 (37) = happyShift action_22
action_55 (38) = happyShift action_23
action_55 (55) = happyShift action_24
action_55 (58) = happyShift action_25
action_55 (60) = happyShift action_26
action_55 (65) = happyShift action_27
action_55 (6) = happyGoto action_88
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (13) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (18) = happyShift action_8
action_56 (19) = happyShift action_9
action_56 (20) = happyShift action_10
action_56 (21) = happyShift action_11
action_56 (22) = happyShift action_12
action_56 (23) = happyShift action_13
action_56 (24) = happyShift action_14
action_56 (25) = happyShift action_15
action_56 (26) = happyShift action_16
action_56 (28) = happyShift action_17
action_56 (31) = happyShift action_18
action_56 (32) = happyShift action_19
action_56 (33) = happyShift action_20
action_56 (36) = happyShift action_21
action_56 (37) = happyShift action_22
action_56 (38) = happyShift action_23
action_56 (55) = happyShift action_24
action_56 (58) = happyShift action_25
action_56 (60) = happyShift action_26
action_56 (65) = happyShift action_27
action_56 (6) = happyGoto action_87
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (13) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (18) = happyShift action_8
action_57 (19) = happyShift action_9
action_57 (20) = happyShift action_10
action_57 (21) = happyShift action_11
action_57 (22) = happyShift action_12
action_57 (23) = happyShift action_13
action_57 (24) = happyShift action_14
action_57 (25) = happyShift action_15
action_57 (26) = happyShift action_16
action_57 (28) = happyShift action_17
action_57 (31) = happyShift action_18
action_57 (32) = happyShift action_19
action_57 (33) = happyShift action_20
action_57 (36) = happyShift action_21
action_57 (37) = happyShift action_22
action_57 (38) = happyShift action_23
action_57 (55) = happyShift action_24
action_57 (58) = happyShift action_25
action_57 (60) = happyShift action_26
action_57 (65) = happyShift action_27
action_57 (6) = happyGoto action_86
action_57 (7) = happyGoto action_5
action_57 (11) = happyGoto action_6
action_57 (13) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (18) = happyShift action_8
action_58 (19) = happyShift action_9
action_58 (20) = happyShift action_10
action_58 (21) = happyShift action_11
action_58 (22) = happyShift action_12
action_58 (23) = happyShift action_13
action_58 (24) = happyShift action_14
action_58 (25) = happyShift action_15
action_58 (26) = happyShift action_16
action_58 (28) = happyShift action_17
action_58 (31) = happyShift action_18
action_58 (32) = happyShift action_19
action_58 (33) = happyShift action_20
action_58 (36) = happyShift action_21
action_58 (37) = happyShift action_22
action_58 (38) = happyShift action_23
action_58 (55) = happyShift action_24
action_58 (58) = happyShift action_25
action_58 (60) = happyShift action_26
action_58 (65) = happyShift action_27
action_58 (6) = happyGoto action_85
action_58 (7) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 (13) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (18) = happyShift action_8
action_59 (19) = happyShift action_9
action_59 (20) = happyShift action_10
action_59 (21) = happyShift action_11
action_59 (22) = happyShift action_12
action_59 (23) = happyShift action_13
action_59 (24) = happyShift action_14
action_59 (25) = happyShift action_15
action_59 (26) = happyShift action_16
action_59 (28) = happyShift action_17
action_59 (31) = happyShift action_18
action_59 (32) = happyShift action_19
action_59 (33) = happyShift action_20
action_59 (36) = happyShift action_21
action_59 (37) = happyShift action_22
action_59 (38) = happyShift action_23
action_59 (55) = happyShift action_24
action_59 (58) = happyShift action_25
action_59 (60) = happyShift action_26
action_59 (65) = happyShift action_27
action_59 (6) = happyGoto action_84
action_59 (7) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 (13) = happyGoto action_7
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (18) = happyShift action_8
action_60 (19) = happyShift action_9
action_60 (20) = happyShift action_10
action_60 (21) = happyShift action_11
action_60 (22) = happyShift action_12
action_60 (23) = happyShift action_13
action_60 (24) = happyShift action_14
action_60 (25) = happyShift action_15
action_60 (26) = happyShift action_16
action_60 (28) = happyShift action_17
action_60 (31) = happyShift action_18
action_60 (32) = happyShift action_19
action_60 (33) = happyShift action_20
action_60 (36) = happyShift action_21
action_60 (37) = happyShift action_22
action_60 (38) = happyShift action_23
action_60 (55) = happyShift action_24
action_60 (58) = happyShift action_25
action_60 (60) = happyShift action_26
action_60 (65) = happyShift action_27
action_60 (6) = happyGoto action_83
action_60 (7) = happyGoto action_5
action_60 (11) = happyGoto action_6
action_60 (13) = happyGoto action_7
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (18) = happyShift action_8
action_61 (19) = happyShift action_9
action_61 (20) = happyShift action_10
action_61 (21) = happyShift action_11
action_61 (22) = happyShift action_12
action_61 (23) = happyShift action_13
action_61 (24) = happyShift action_14
action_61 (25) = happyShift action_15
action_61 (26) = happyShift action_16
action_61 (28) = happyShift action_17
action_61 (31) = happyShift action_18
action_61 (32) = happyShift action_19
action_61 (33) = happyShift action_20
action_61 (36) = happyShift action_21
action_61 (37) = happyShift action_22
action_61 (38) = happyShift action_23
action_61 (55) = happyShift action_24
action_61 (58) = happyShift action_25
action_61 (60) = happyShift action_26
action_61 (65) = happyShift action_27
action_61 (6) = happyGoto action_82
action_61 (7) = happyGoto action_5
action_61 (11) = happyGoto action_6
action_61 (13) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (18) = happyShift action_8
action_62 (19) = happyShift action_9
action_62 (20) = happyShift action_10
action_62 (21) = happyShift action_11
action_62 (22) = happyShift action_12
action_62 (23) = happyShift action_13
action_62 (24) = happyShift action_14
action_62 (25) = happyShift action_15
action_62 (26) = happyShift action_16
action_62 (28) = happyShift action_17
action_62 (31) = happyShift action_18
action_62 (32) = happyShift action_19
action_62 (33) = happyShift action_20
action_62 (36) = happyShift action_21
action_62 (37) = happyShift action_22
action_62 (38) = happyShift action_23
action_62 (55) = happyShift action_24
action_62 (58) = happyShift action_25
action_62 (60) = happyShift action_26
action_62 (65) = happyShift action_27
action_62 (6) = happyGoto action_81
action_62 (7) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 (13) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (18) = happyShift action_8
action_63 (19) = happyShift action_9
action_63 (20) = happyShift action_10
action_63 (21) = happyShift action_11
action_63 (22) = happyShift action_12
action_63 (23) = happyShift action_13
action_63 (24) = happyShift action_14
action_63 (25) = happyShift action_15
action_63 (26) = happyShift action_16
action_63 (28) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (32) = happyShift action_19
action_63 (33) = happyShift action_20
action_63 (36) = happyShift action_21
action_63 (37) = happyShift action_22
action_63 (38) = happyShift action_23
action_63 (55) = happyShift action_24
action_63 (58) = happyShift action_25
action_63 (60) = happyShift action_26
action_63 (65) = happyShift action_27
action_63 (6) = happyGoto action_80
action_63 (7) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (13) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (18) = happyShift action_8
action_64 (19) = happyShift action_9
action_64 (20) = happyShift action_10
action_64 (21) = happyShift action_11
action_64 (22) = happyShift action_12
action_64 (23) = happyShift action_13
action_64 (24) = happyShift action_14
action_64 (25) = happyShift action_15
action_64 (26) = happyShift action_16
action_64 (28) = happyShift action_17
action_64 (31) = happyShift action_18
action_64 (32) = happyShift action_19
action_64 (33) = happyShift action_20
action_64 (36) = happyShift action_21
action_64 (37) = happyShift action_22
action_64 (38) = happyShift action_23
action_64 (55) = happyShift action_24
action_64 (58) = happyShift action_25
action_64 (60) = happyShift action_26
action_64 (65) = happyShift action_27
action_64 (6) = happyGoto action_79
action_64 (7) = happyGoto action_5
action_64 (11) = happyGoto action_6
action_64 (13) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (18) = happyShift action_8
action_65 (19) = happyShift action_9
action_65 (20) = happyShift action_10
action_65 (21) = happyShift action_11
action_65 (22) = happyShift action_12
action_65 (23) = happyShift action_13
action_65 (24) = happyShift action_14
action_65 (25) = happyShift action_15
action_65 (26) = happyShift action_16
action_65 (28) = happyShift action_17
action_65 (31) = happyShift action_18
action_65 (32) = happyShift action_19
action_65 (33) = happyShift action_20
action_65 (36) = happyShift action_21
action_65 (37) = happyShift action_22
action_65 (38) = happyShift action_23
action_65 (55) = happyShift action_24
action_65 (58) = happyShift action_25
action_65 (60) = happyShift action_26
action_65 (65) = happyShift action_27
action_65 (6) = happyGoto action_78
action_65 (7) = happyGoto action_5
action_65 (11) = happyGoto action_6
action_65 (13) = happyGoto action_7
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (18) = happyShift action_8
action_66 (19) = happyShift action_9
action_66 (20) = happyShift action_10
action_66 (21) = happyShift action_11
action_66 (22) = happyShift action_12
action_66 (23) = happyShift action_13
action_66 (24) = happyShift action_14
action_66 (25) = happyShift action_15
action_66 (26) = happyShift action_16
action_66 (28) = happyShift action_17
action_66 (31) = happyShift action_18
action_66 (32) = happyShift action_19
action_66 (33) = happyShift action_20
action_66 (36) = happyShift action_21
action_66 (37) = happyShift action_22
action_66 (38) = happyShift action_23
action_66 (55) = happyShift action_24
action_66 (58) = happyShift action_25
action_66 (60) = happyShift action_26
action_66 (65) = happyShift action_27
action_66 (6) = happyGoto action_77
action_66 (7) = happyGoto action_5
action_66 (11) = happyGoto action_6
action_66 (13) = happyGoto action_7
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (18) = happyShift action_8
action_67 (19) = happyShift action_9
action_67 (20) = happyShift action_10
action_67 (21) = happyShift action_11
action_67 (22) = happyShift action_12
action_67 (23) = happyShift action_13
action_67 (24) = happyShift action_14
action_67 (25) = happyShift action_15
action_67 (26) = happyShift action_16
action_67 (28) = happyShift action_17
action_67 (31) = happyShift action_18
action_67 (32) = happyShift action_19
action_67 (33) = happyShift action_20
action_67 (36) = happyShift action_21
action_67 (37) = happyShift action_22
action_67 (38) = happyShift action_23
action_67 (55) = happyShift action_24
action_67 (58) = happyShift action_25
action_67 (60) = happyShift action_26
action_67 (65) = happyShift action_27
action_67 (6) = happyGoto action_76
action_67 (7) = happyGoto action_5
action_67 (10) = happyGoto action_30
action_67 (11) = happyGoto action_6
action_67 (13) = happyGoto action_7
action_67 _ = happyReduce_54

action_68 (18) = happyShift action_8
action_68 (19) = happyShift action_9
action_68 (20) = happyShift action_10
action_68 (21) = happyShift action_11
action_68 (22) = happyShift action_12
action_68 (23) = happyShift action_13
action_68 (24) = happyShift action_14
action_68 (25) = happyShift action_15
action_68 (26) = happyShift action_16
action_68 (28) = happyShift action_17
action_68 (31) = happyShift action_18
action_68 (32) = happyShift action_19
action_68 (33) = happyShift action_20
action_68 (36) = happyShift action_21
action_68 (37) = happyShift action_22
action_68 (38) = happyShift action_23
action_68 (55) = happyShift action_24
action_68 (58) = happyShift action_25
action_68 (60) = happyShift action_26
action_68 (65) = happyShift action_27
action_68 (6) = happyGoto action_75
action_68 (7) = happyGoto action_5
action_68 (11) = happyGoto action_6
action_68 (13) = happyGoto action_7
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (18) = happyShift action_8
action_69 (19) = happyShift action_9
action_69 (20) = happyShift action_10
action_69 (21) = happyShift action_11
action_69 (22) = happyShift action_12
action_69 (23) = happyShift action_13
action_69 (24) = happyShift action_14
action_69 (25) = happyShift action_15
action_69 (26) = happyShift action_16
action_69 (28) = happyShift action_17
action_69 (31) = happyShift action_18
action_69 (32) = happyShift action_19
action_69 (33) = happyShift action_20
action_69 (36) = happyShift action_21
action_69 (37) = happyShift action_22
action_69 (38) = happyShift action_23
action_69 (55) = happyShift action_24
action_69 (58) = happyShift action_25
action_69 (60) = happyShift action_26
action_69 (65) = happyShift action_27
action_69 (6) = happyGoto action_74
action_69 (7) = happyGoto action_5
action_69 (11) = happyGoto action_6
action_69 (13) = happyGoto action_7
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (18) = happyShift action_8
action_70 (19) = happyShift action_9
action_70 (20) = happyShift action_10
action_70 (21) = happyShift action_11
action_70 (22) = happyShift action_12
action_70 (23) = happyShift action_13
action_70 (24) = happyShift action_14
action_70 (25) = happyShift action_15
action_70 (26) = happyShift action_16
action_70 (28) = happyShift action_17
action_70 (31) = happyShift action_18
action_70 (32) = happyShift action_19
action_70 (33) = happyShift action_20
action_70 (36) = happyShift action_21
action_70 (37) = happyShift action_22
action_70 (38) = happyShift action_23
action_70 (55) = happyShift action_24
action_70 (58) = happyShift action_25
action_70 (60) = happyShift action_26
action_70 (65) = happyShift action_27
action_70 (6) = happyGoto action_73
action_70 (7) = happyGoto action_5
action_70 (11) = happyGoto action_6
action_70 (13) = happyGoto action_7
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (18) = happyShift action_8
action_71 (19) = happyShift action_9
action_71 (20) = happyShift action_10
action_71 (21) = happyShift action_11
action_71 (22) = happyShift action_12
action_71 (23) = happyShift action_13
action_71 (24) = happyShift action_14
action_71 (25) = happyShift action_15
action_71 (26) = happyShift action_16
action_71 (28) = happyShift action_17
action_71 (31) = happyShift action_18
action_71 (32) = happyShift action_19
action_71 (33) = happyShift action_20
action_71 (36) = happyShift action_21
action_71 (37) = happyShift action_22
action_71 (38) = happyShift action_23
action_71 (55) = happyShift action_24
action_71 (58) = happyShift action_25
action_71 (60) = happyShift action_26
action_71 (65) = happyShift action_27
action_71 (6) = happyGoto action_72
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 (13) = happyGoto action_7
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (43) = happyShift action_60
action_72 (44) = happyShift action_61
action_72 (45) = happyShift action_62
action_72 (54) = happyShift action_63
action_72 (55) = happyShift action_92
action_72 (56) = happyShift action_65
action_72 (57) = happyShift action_66
action_72 (60) = happyShift action_93
action_72 (66) = happyShift action_68
action_72 (67) = happyShift action_69
action_72 _ = happyReduce_46

action_73 (43) = happyShift action_60
action_73 (44) = happyShift action_61
action_73 (45) = happyShift action_62
action_73 (54) = happyShift action_63
action_73 (55) = happyShift action_92
action_73 (56) = happyShift action_65
action_73 (57) = happyShift action_66
action_73 (60) = happyShift action_93
action_73 (66) = happyShift action_68
action_73 (67) = happyShift action_69
action_73 _ = happyReduce_45

action_74 (43) = happyShift action_60
action_74 (44) = happyShift action_61
action_74 (45) = happyShift action_62
action_74 (60) = happyShift action_93
action_74 (66) = happyShift action_68
action_74 _ = happyReduce_44

action_75 (60) = happyShift action_93
action_75 (66) = happyShift action_68
action_75 _ = happyReduce_43

action_76 (34) = happyShift action_54
action_76 (35) = happyShift action_55
action_76 (39) = happyShift action_56
action_76 (40) = happyShift action_57
action_76 (41) = happyShift action_58
action_76 (42) = happyShift action_59
action_76 (43) = happyShift action_60
action_76 (44) = happyShift action_61
action_76 (45) = happyShift action_62
action_76 (54) = happyShift action_63
action_76 (55) = happyShift action_92
action_76 (56) = happyShift action_65
action_76 (57) = happyShift action_66
action_76 (60) = happyShift action_93
action_76 (61) = happyShift action_126
action_76 (64) = happyShift action_110
action_76 (66) = happyShift action_68
action_76 (67) = happyShift action_69
action_76 (68) = happyShift action_70
action_76 (69) = happyShift action_71
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (43) = happyShift action_60
action_77 (44) = happyShift action_61
action_77 (45) = happyShift action_62
action_77 (60) = happyShift action_93
action_77 (66) = happyShift action_68
action_77 _ = happyReduce_35

action_78 (43) = happyShift action_60
action_78 (44) = happyShift action_61
action_78 (45) = happyShift action_62
action_78 (60) = happyShift action_93
action_78 (66) = happyShift action_68
action_78 _ = happyReduce_34

action_79 (43) = happyShift action_60
action_79 (44) = happyShift action_61
action_79 (45) = happyShift action_62
action_79 (60) = happyShift action_93
action_79 (66) = happyShift action_68
action_79 _ = happyReduce_47

action_80 (43) = happyShift action_60
action_80 (44) = happyShift action_61
action_80 (45) = happyShift action_62
action_80 (56) = happyShift action_65
action_80 (57) = happyShift action_66
action_80 (60) = happyShift action_93
action_80 (66) = happyShift action_68
action_80 (67) = happyShift action_69
action_80 _ = happyReduce_32

action_81 (43) = happyShift action_60
action_81 (45) = happyShift action_62
action_81 (60) = happyShift action_93
action_81 (66) = happyShift action_68
action_81 _ = happyReduce_22

action_82 (43) = happyShift action_60
action_82 (45) = happyShift action_62
action_82 (60) = happyShift action_93
action_82 (66) = happyShift action_68
action_82 _ = happyReduce_21

action_83 (43) = happyShift action_60
action_83 (45) = happyShift action_62
action_83 (60) = happyShift action_93
action_83 (66) = happyShift action_68
action_83 _ = happyReduce_20

action_84 (39) = happyShift action_56
action_84 (40) = happyShift action_57
action_84 (43) = happyShift action_60
action_84 (44) = happyShift action_61
action_84 (45) = happyShift action_62
action_84 (54) = happyShift action_63
action_84 (55) = happyShift action_92
action_84 (56) = happyShift action_65
action_84 (57) = happyShift action_66
action_84 (60) = happyShift action_93
action_84 (66) = happyShift action_68
action_84 (67) = happyShift action_69
action_84 (68) = happyShift action_70
action_84 (69) = happyShift action_71
action_84 _ = happyReduce_19

action_85 (39) = happyShift action_56
action_85 (40) = happyShift action_57
action_85 (43) = happyShift action_60
action_85 (44) = happyShift action_61
action_85 (45) = happyShift action_62
action_85 (54) = happyShift action_63
action_85 (55) = happyShift action_92
action_85 (56) = happyShift action_65
action_85 (57) = happyShift action_66
action_85 (60) = happyShift action_93
action_85 (66) = happyShift action_68
action_85 (67) = happyShift action_69
action_85 (68) = happyShift action_70
action_85 (69) = happyShift action_71
action_85 _ = happyReduce_18

action_86 (43) = happyShift action_60
action_86 (44) = happyShift action_61
action_86 (45) = happyShift action_62
action_86 (54) = happyShift action_63
action_86 (55) = happyShift action_92
action_86 (56) = happyShift action_65
action_86 (57) = happyShift action_66
action_86 (60) = happyShift action_93
action_86 (66) = happyShift action_68
action_86 (67) = happyShift action_69
action_86 _ = happyReduce_17

action_87 (43) = happyShift action_60
action_87 (44) = happyShift action_61
action_87 (45) = happyShift action_62
action_87 (54) = happyShift action_63
action_87 (55) = happyShift action_92
action_87 (56) = happyShift action_65
action_87 (57) = happyShift action_66
action_87 (60) = happyShift action_93
action_87 (66) = happyShift action_68
action_87 (67) = happyShift action_69
action_87 _ = happyReduce_16

action_88 (34) = happyShift action_54
action_88 (39) = happyShift action_56
action_88 (40) = happyShift action_57
action_88 (41) = happyShift action_58
action_88 (42) = happyShift action_59
action_88 (43) = happyShift action_60
action_88 (44) = happyShift action_61
action_88 (45) = happyShift action_62
action_88 (54) = happyShift action_63
action_88 (55) = happyShift action_92
action_88 (56) = happyShift action_65
action_88 (57) = happyShift action_66
action_88 (60) = happyShift action_93
action_88 (66) = happyShift action_68
action_88 (67) = happyShift action_69
action_88 (68) = happyShift action_70
action_88 (69) = happyShift action_71
action_88 _ = happyReduce_12

action_89 (39) = happyShift action_56
action_89 (40) = happyShift action_57
action_89 (41) = happyShift action_58
action_89 (42) = happyShift action_59
action_89 (43) = happyShift action_60
action_89 (44) = happyShift action_61
action_89 (45) = happyShift action_62
action_89 (54) = happyShift action_63
action_89 (55) = happyShift action_92
action_89 (56) = happyShift action_65
action_89 (57) = happyShift action_66
action_89 (60) = happyShift action_93
action_89 (66) = happyShift action_68
action_89 (67) = happyShift action_69
action_89 (68) = happyShift action_70
action_89 (69) = happyShift action_71
action_89 _ = happyReduce_11

action_90 (18) = happyShift action_8
action_90 (19) = happyShift action_9
action_90 (20) = happyShift action_10
action_90 (21) = happyShift action_11
action_90 (22) = happyShift action_12
action_90 (23) = happyShift action_13
action_90 (24) = happyShift action_14
action_90 (25) = happyShift action_15
action_90 (26) = happyShift action_16
action_90 (28) = happyShift action_17
action_90 (31) = happyShift action_18
action_90 (32) = happyShift action_19
action_90 (33) = happyShift action_20
action_90 (36) = happyShift action_21
action_90 (37) = happyShift action_22
action_90 (38) = happyShift action_23
action_90 (55) = happyShift action_24
action_90 (58) = happyShift action_25
action_90 (60) = happyShift action_26
action_90 (65) = happyShift action_27
action_90 (6) = happyGoto action_125
action_90 (7) = happyGoto action_5
action_90 (11) = happyGoto action_6
action_90 (13) = happyGoto action_7
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (34) = happyShift action_54
action_91 (35) = happyShift action_55
action_91 (39) = happyShift action_56
action_91 (40) = happyShift action_57
action_91 (41) = happyShift action_58
action_91 (42) = happyShift action_59
action_91 (43) = happyShift action_60
action_91 (44) = happyShift action_61
action_91 (45) = happyShift action_62
action_91 (54) = happyShift action_63
action_91 (55) = happyShift action_92
action_91 (56) = happyShift action_65
action_91 (57) = happyShift action_66
action_91 (60) = happyShift action_93
action_91 (63) = happyShift action_124
action_91 (66) = happyShift action_68
action_91 (67) = happyShift action_69
action_91 (68) = happyShift action_70
action_91 (69) = happyShift action_71
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (18) = happyShift action_8
action_92 (19) = happyShift action_9
action_92 (20) = happyShift action_10
action_92 (21) = happyShift action_11
action_92 (22) = happyShift action_12
action_92 (23) = happyShift action_13
action_92 (24) = happyShift action_14
action_92 (25) = happyShift action_15
action_92 (26) = happyShift action_16
action_92 (28) = happyShift action_17
action_92 (31) = happyShift action_18
action_92 (32) = happyShift action_19
action_92 (33) = happyShift action_20
action_92 (36) = happyShift action_21
action_92 (37) = happyShift action_22
action_92 (38) = happyShift action_23
action_92 (55) = happyShift action_24
action_92 (58) = happyShift action_25
action_92 (60) = happyShift action_26
action_92 (65) = happyShift action_27
action_92 (6) = happyGoto action_123
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 (13) = happyGoto action_7
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (18) = happyShift action_8
action_93 (19) = happyShift action_9
action_93 (20) = happyShift action_10
action_93 (21) = happyShift action_11
action_93 (22) = happyShift action_12
action_93 (23) = happyShift action_13
action_93 (24) = happyShift action_14
action_93 (25) = happyShift action_15
action_93 (26) = happyShift action_16
action_93 (28) = happyShift action_17
action_93 (31) = happyShift action_18
action_93 (32) = happyShift action_19
action_93 (33) = happyShift action_20
action_93 (36) = happyShift action_21
action_93 (37) = happyShift action_22
action_93 (38) = happyShift action_23
action_93 (55) = happyShift action_24
action_93 (58) = happyShift action_25
action_93 (60) = happyShift action_26
action_93 (65) = happyShift action_27
action_93 (6) = happyGoto action_122
action_93 (7) = happyGoto action_5
action_93 (11) = happyGoto action_6
action_93 (13) = happyGoto action_7
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (18) = happyShift action_8
action_94 (19) = happyShift action_9
action_94 (20) = happyShift action_10
action_94 (23) = happyShift action_121
action_94 (11) = happyGoto action_118
action_94 (12) = happyGoto action_119
action_94 (14) = happyGoto action_120
action_94 _ = happyReduce_64

action_95 (18) = happyShift action_8
action_95 (19) = happyShift action_9
action_95 (20) = happyShift action_10
action_95 (21) = happyShift action_11
action_95 (22) = happyShift action_12
action_95 (23) = happyShift action_13
action_95 (24) = happyShift action_14
action_95 (25) = happyShift action_15
action_95 (26) = happyShift action_16
action_95 (28) = happyShift action_17
action_95 (31) = happyShift action_18
action_95 (32) = happyShift action_19
action_95 (33) = happyShift action_20
action_95 (36) = happyShift action_21
action_95 (37) = happyShift action_22
action_95 (38) = happyShift action_23
action_95 (55) = happyShift action_24
action_95 (58) = happyShift action_25
action_95 (60) = happyShift action_26
action_95 (65) = happyShift action_27
action_95 (4) = happyGoto action_117
action_95 (5) = happyGoto action_3
action_95 (6) = happyGoto action_4
action_95 (7) = happyGoto action_5
action_95 (11) = happyGoto action_6
action_95 (13) = happyGoto action_7
action_95 _ = happyReduce_1

action_96 (18) = happyShift action_8
action_96 (19) = happyShift action_9
action_96 (20) = happyShift action_10
action_96 (21) = happyShift action_11
action_96 (22) = happyShift action_12
action_96 (23) = happyShift action_13
action_96 (24) = happyShift action_14
action_96 (25) = happyShift action_15
action_96 (26) = happyShift action_16
action_96 (28) = happyShift action_17
action_96 (31) = happyShift action_18
action_96 (32) = happyShift action_19
action_96 (33) = happyShift action_20
action_96 (36) = happyShift action_21
action_96 (37) = happyShift action_22
action_96 (38) = happyShift action_23
action_96 (55) = happyShift action_24
action_96 (58) = happyShift action_25
action_96 (60) = happyShift action_26
action_96 (65) = happyShift action_27
action_96 (4) = happyGoto action_116
action_96 (5) = happyGoto action_3
action_96 (6) = happyGoto action_4
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 (13) = happyGoto action_7
action_96 _ = happyReduce_1

action_97 (60) = happyShift action_115
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (18) = happyShift action_8
action_98 (19) = happyShift action_9
action_98 (20) = happyShift action_10
action_98 (21) = happyShift action_11
action_98 (22) = happyShift action_12
action_98 (23) = happyShift action_13
action_98 (24) = happyShift action_14
action_98 (25) = happyShift action_15
action_98 (26) = happyShift action_16
action_98 (28) = happyShift action_17
action_98 (31) = happyShift action_18
action_98 (32) = happyShift action_19
action_98 (33) = happyShift action_20
action_98 (36) = happyShift action_21
action_98 (37) = happyShift action_22
action_98 (38) = happyShift action_23
action_98 (55) = happyShift action_24
action_98 (58) = happyShift action_25
action_98 (60) = happyShift action_26
action_98 (65) = happyShift action_27
action_98 (4) = happyGoto action_114
action_98 (5) = happyGoto action_3
action_98 (6) = happyGoto action_4
action_98 (7) = happyGoto action_5
action_98 (11) = happyGoto action_6
action_98 (13) = happyGoto action_7
action_98 _ = happyReduce_1

action_99 (34) = happyShift action_54
action_99 (35) = happyShift action_55
action_99 (39) = happyShift action_56
action_99 (40) = happyShift action_57
action_99 (41) = happyShift action_58
action_99 (42) = happyShift action_59
action_99 (43) = happyShift action_60
action_99 (44) = happyShift action_61
action_99 (45) = happyShift action_62
action_99 (54) = happyShift action_63
action_99 (55) = happyShift action_92
action_99 (56) = happyShift action_65
action_99 (57) = happyShift action_66
action_99 (60) = happyShift action_93
action_99 (64) = happyShift action_113
action_99 (66) = happyShift action_68
action_99 (67) = happyShift action_69
action_99 (68) = happyShift action_70
action_99 (69) = happyShift action_71
action_99 _ = happyReduce_68

action_100 (59) = happyShift action_112
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (34) = happyShift action_54
action_101 (35) = happyShift action_55
action_101 (39) = happyShift action_56
action_101 (40) = happyShift action_57
action_101 (41) = happyShift action_58
action_101 (42) = happyShift action_59
action_101 (43) = happyShift action_60
action_101 (44) = happyShift action_61
action_101 (45) = happyShift action_62
action_101 (54) = happyShift action_63
action_101 (55) = happyShift action_92
action_101 (56) = happyShift action_65
action_101 (57) = happyShift action_66
action_101 (60) = happyShift action_93
action_101 (66) = happyShift action_68
action_101 (67) = happyShift action_69
action_101 (68) = happyShift action_70
action_101 (69) = happyShift action_71
action_101 _ = happyReduce_30

action_102 (34) = happyShift action_54
action_102 (35) = happyShift action_55
action_102 (39) = happyShift action_56
action_102 (40) = happyShift action_57
action_102 (41) = happyShift action_58
action_102 (42) = happyShift action_59
action_102 (43) = happyShift action_60
action_102 (44) = happyShift action_61
action_102 (45) = happyShift action_62
action_102 (54) = happyShift action_63
action_102 (55) = happyShift action_92
action_102 (56) = happyShift action_65
action_102 (57) = happyShift action_66
action_102 (60) = happyShift action_93
action_102 (66) = happyShift action_68
action_102 (67) = happyShift action_69
action_102 (68) = happyShift action_70
action_102 (69) = happyShift action_71
action_102 _ = happyReduce_29

action_103 (34) = happyShift action_54
action_103 (35) = happyShift action_55
action_103 (39) = happyShift action_56
action_103 (40) = happyShift action_57
action_103 (41) = happyShift action_58
action_103 (42) = happyShift action_59
action_103 (43) = happyShift action_60
action_103 (44) = happyShift action_61
action_103 (45) = happyShift action_62
action_103 (54) = happyShift action_63
action_103 (55) = happyShift action_92
action_103 (56) = happyShift action_65
action_103 (57) = happyShift action_66
action_103 (60) = happyShift action_93
action_103 (66) = happyShift action_68
action_103 (67) = happyShift action_69
action_103 (68) = happyShift action_70
action_103 (69) = happyShift action_71
action_103 _ = happyReduce_28

action_104 (34) = happyShift action_54
action_104 (35) = happyShift action_55
action_104 (39) = happyShift action_56
action_104 (40) = happyShift action_57
action_104 (41) = happyShift action_58
action_104 (42) = happyShift action_59
action_104 (43) = happyShift action_60
action_104 (44) = happyShift action_61
action_104 (45) = happyShift action_62
action_104 (54) = happyShift action_63
action_104 (55) = happyShift action_92
action_104 (56) = happyShift action_65
action_104 (57) = happyShift action_66
action_104 (60) = happyShift action_93
action_104 (66) = happyShift action_68
action_104 (67) = happyShift action_69
action_104 (68) = happyShift action_70
action_104 (69) = happyShift action_71
action_104 _ = happyReduce_27

action_105 (34) = happyShift action_54
action_105 (35) = happyShift action_55
action_105 (39) = happyShift action_56
action_105 (40) = happyShift action_57
action_105 (41) = happyShift action_58
action_105 (42) = happyShift action_59
action_105 (43) = happyShift action_60
action_105 (44) = happyShift action_61
action_105 (45) = happyShift action_62
action_105 (54) = happyShift action_63
action_105 (55) = happyShift action_92
action_105 (56) = happyShift action_65
action_105 (57) = happyShift action_66
action_105 (60) = happyShift action_93
action_105 (66) = happyShift action_68
action_105 (67) = happyShift action_69
action_105 (68) = happyShift action_70
action_105 (69) = happyShift action_71
action_105 _ = happyReduce_26

action_106 (34) = happyShift action_54
action_106 (35) = happyShift action_55
action_106 (39) = happyShift action_56
action_106 (40) = happyShift action_57
action_106 (41) = happyShift action_58
action_106 (42) = happyShift action_59
action_106 (43) = happyShift action_60
action_106 (44) = happyShift action_61
action_106 (45) = happyShift action_62
action_106 (54) = happyShift action_63
action_106 (55) = happyShift action_92
action_106 (56) = happyShift action_65
action_106 (57) = happyShift action_66
action_106 (60) = happyShift action_93
action_106 (66) = happyShift action_68
action_106 (67) = happyShift action_69
action_106 (68) = happyShift action_70
action_106 (69) = happyShift action_71
action_106 _ = happyReduce_25

action_107 (34) = happyShift action_54
action_107 (35) = happyShift action_55
action_107 (39) = happyShift action_56
action_107 (40) = happyShift action_57
action_107 (41) = happyShift action_58
action_107 (42) = happyShift action_59
action_107 (43) = happyShift action_60
action_107 (44) = happyShift action_61
action_107 (45) = happyShift action_62
action_107 (54) = happyShift action_63
action_107 (55) = happyShift action_92
action_107 (56) = happyShift action_65
action_107 (57) = happyShift action_66
action_107 (60) = happyShift action_93
action_107 (66) = happyShift action_68
action_107 (67) = happyShift action_69
action_107 (68) = happyShift action_70
action_107 (69) = happyShift action_71
action_107 _ = happyReduce_24

action_108 _ = happyReduce_48

action_109 _ = happyReduce_15

action_110 (18) = happyShift action_8
action_110 (19) = happyShift action_9
action_110 (20) = happyShift action_10
action_110 (21) = happyShift action_11
action_110 (22) = happyShift action_12
action_110 (23) = happyShift action_13
action_110 (24) = happyShift action_14
action_110 (25) = happyShift action_15
action_110 (26) = happyShift action_16
action_110 (28) = happyShift action_17
action_110 (31) = happyShift action_18
action_110 (32) = happyShift action_19
action_110 (33) = happyShift action_20
action_110 (36) = happyShift action_21
action_110 (37) = happyShift action_22
action_110 (38) = happyShift action_23
action_110 (55) = happyShift action_24
action_110 (58) = happyShift action_25
action_110 (60) = happyShift action_26
action_110 (65) = happyShift action_27
action_110 (6) = happyGoto action_29
action_110 (7) = happyGoto action_5
action_110 (10) = happyGoto action_111
action_110 (11) = happyGoto action_6
action_110 (13) = happyGoto action_7
action_110 _ = happyReduce_54

action_111 _ = happyReduce_56

action_112 _ = happyReduce_40

action_113 (18) = happyShift action_8
action_113 (19) = happyShift action_9
action_113 (20) = happyShift action_10
action_113 (21) = happyShift action_11
action_113 (22) = happyShift action_12
action_113 (23) = happyShift action_13
action_113 (24) = happyShift action_14
action_113 (25) = happyShift action_15
action_113 (26) = happyShift action_16
action_113 (28) = happyShift action_17
action_113 (31) = happyShift action_18
action_113 (32) = happyShift action_19
action_113 (33) = happyShift action_20
action_113 (36) = happyShift action_21
action_113 (37) = happyShift action_22
action_113 (38) = happyShift action_23
action_113 (55) = happyShift action_24
action_113 (58) = happyShift action_25
action_113 (60) = happyShift action_26
action_113 (65) = happyShift action_27
action_113 (6) = happyGoto action_99
action_113 (7) = happyGoto action_5
action_113 (11) = happyGoto action_6
action_113 (13) = happyGoto action_7
action_113 (15) = happyGoto action_135
action_113 _ = happyReduce_67

action_114 (63) = happyShift action_134
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (38) = happyShift action_132
action_115 (70) = happyShift action_133
action_115 (17) = happyGoto action_131
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (63) = happyShift action_130
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (63) = happyShift action_129
action_117 _ = happyFail (happyExpListPerState 117)

action_118 _ = happyReduce_60

action_119 (38) = happyShift action_128
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (59) = happyShift action_127
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_61

action_122 (34) = happyShift action_54
action_122 (35) = happyShift action_55
action_122 (39) = happyShift action_56
action_122 (40) = happyShift action_57
action_122 (41) = happyShift action_58
action_122 (42) = happyShift action_59
action_122 (43) = happyShift action_60
action_122 (44) = happyShift action_61
action_122 (45) = happyShift action_62
action_122 (54) = happyShift action_63
action_122 (55) = happyShift action_92
action_122 (56) = happyShift action_65
action_122 (57) = happyShift action_66
action_122 (60) = happyShift action_93
action_122 (61) = happyShift action_126
action_122 (66) = happyShift action_68
action_122 (67) = happyShift action_69
action_122 (68) = happyShift action_70
action_122 (69) = happyShift action_71
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (43) = happyShift action_60
action_123 (44) = happyShift action_61
action_123 (45) = happyShift action_62
action_123 (56) = happyShift action_65
action_123 (57) = happyShift action_66
action_123 (60) = happyShift action_93
action_123 (66) = happyShift action_68
action_123 (67) = happyShift action_69
action_123 _ = happyReduce_33

action_124 _ = happyReduce_37

action_125 (34) = happyShift action_54
action_125 (35) = happyShift action_55
action_125 (39) = happyShift action_56
action_125 (40) = happyShift action_57
action_125 (41) = happyShift action_58
action_125 (42) = happyShift action_59
action_125 (43) = happyShift action_60
action_125 (44) = happyShift action_61
action_125 (45) = happyShift action_62
action_125 (54) = happyShift action_63
action_125 (55) = happyShift action_92
action_125 (56) = happyShift action_65
action_125 (57) = happyShift action_66
action_125 (60) = happyShift action_93
action_125 (66) = happyShift action_68
action_125 (67) = happyShift action_69
action_125 (68) = happyShift action_70
action_125 (69) = happyShift action_71
action_125 _ = happyReduce_23

action_126 _ = happyReduce_36

action_127 (46) = happyShift action_142
action_127 (62) = happyShift action_143
action_127 _ = happyFail (happyExpListPerState 127)

action_128 (64) = happyShift action_141
action_128 _ = happyReduce_65

action_129 _ = happyReduce_5

action_130 _ = happyReduce_6

action_131 (61) = happyShift action_140
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (64) = happyShift action_139
action_132 _ = happyReduce_72

action_133 (64) = happyShift action_138
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (29) = happyShift action_137
action_134 (8) = happyGoto action_136
action_134 _ = happyReduce_50

action_135 _ = happyReduce_69

action_136 (30) = happyShift action_152
action_136 (9) = happyGoto action_151
action_136 _ = happyReduce_52

action_137 (18) = happyShift action_8
action_137 (19) = happyShift action_9
action_137 (20) = happyShift action_10
action_137 (21) = happyShift action_11
action_137 (22) = happyShift action_12
action_137 (23) = happyShift action_13
action_137 (24) = happyShift action_14
action_137 (25) = happyShift action_15
action_137 (26) = happyShift action_16
action_137 (28) = happyShift action_17
action_137 (31) = happyShift action_18
action_137 (32) = happyShift action_19
action_137 (33) = happyShift action_20
action_137 (36) = happyShift action_21
action_137 (37) = happyShift action_22
action_137 (38) = happyShift action_23
action_137 (55) = happyShift action_24
action_137 (58) = happyShift action_25
action_137 (60) = happyShift action_26
action_137 (65) = happyShift action_27
action_137 (6) = happyGoto action_150
action_137 (7) = happyGoto action_5
action_137 (11) = happyGoto action_6
action_137 (13) = happyGoto action_7
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (38) = happyShift action_132
action_138 (70) = happyShift action_133
action_138 (17) = happyGoto action_149
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (38) = happyShift action_132
action_139 (70) = happyShift action_133
action_139 (17) = happyGoto action_148
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (64) = happyShift action_147
action_140 _ = happyReduce_70

action_141 (18) = happyShift action_8
action_141 (19) = happyShift action_9
action_141 (20) = happyShift action_10
action_141 (23) = happyShift action_121
action_141 (11) = happyGoto action_118
action_141 (12) = happyGoto action_119
action_141 (14) = happyGoto action_146
action_141 _ = happyReduce_64

action_142 (18) = happyShift action_8
action_142 (19) = happyShift action_9
action_142 (20) = happyShift action_10
action_142 (11) = happyGoto action_145
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (18) = happyShift action_8
action_143 (19) = happyShift action_9
action_143 (20) = happyShift action_10
action_143 (21) = happyShift action_11
action_143 (22) = happyShift action_12
action_143 (23) = happyShift action_13
action_143 (24) = happyShift action_14
action_143 (25) = happyShift action_15
action_143 (26) = happyShift action_16
action_143 (28) = happyShift action_17
action_143 (31) = happyShift action_18
action_143 (32) = happyShift action_19
action_143 (33) = happyShift action_20
action_143 (36) = happyShift action_21
action_143 (37) = happyShift action_22
action_143 (38) = happyShift action_23
action_143 (55) = happyShift action_24
action_143 (58) = happyShift action_25
action_143 (60) = happyShift action_26
action_143 (65) = happyShift action_27
action_143 (4) = happyGoto action_144
action_143 (5) = happyGoto action_3
action_143 (6) = happyGoto action_4
action_143 (7) = happyGoto action_5
action_143 (11) = happyGoto action_6
action_143 (13) = happyGoto action_7
action_143 _ = happyReduce_1

action_144 (63) = happyShift action_157
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (62) = happyShift action_156
action_145 _ = happyFail (happyExpListPerState 145)

action_146 _ = happyReduce_66

action_147 (18) = happyShift action_8
action_147 (19) = happyShift action_9
action_147 (20) = happyShift action_10
action_147 (21) = happyShift action_11
action_147 (22) = happyShift action_12
action_147 (23) = happyShift action_13
action_147 (24) = happyShift action_14
action_147 (25) = happyShift action_15
action_147 (26) = happyShift action_16
action_147 (28) = happyShift action_17
action_147 (31) = happyShift action_18
action_147 (32) = happyShift action_19
action_147 (33) = happyShift action_20
action_147 (36) = happyShift action_21
action_147 (37) = happyShift action_22
action_147 (38) = happyShift action_23
action_147 (55) = happyShift action_24
action_147 (58) = happyShift action_25
action_147 (60) = happyShift action_26
action_147 (65) = happyShift action_27
action_147 (6) = happyGoto action_45
action_147 (7) = happyGoto action_5
action_147 (11) = happyGoto action_6
action_147 (13) = happyGoto action_7
action_147 (16) = happyGoto action_155
action_147 _ = happyFail (happyExpListPerState 147)

action_148 _ = happyReduce_74

action_149 _ = happyReduce_73

action_150 (34) = happyShift action_54
action_150 (35) = happyShift action_55
action_150 (39) = happyShift action_56
action_150 (40) = happyShift action_57
action_150 (41) = happyShift action_58
action_150 (42) = happyShift action_59
action_150 (43) = happyShift action_60
action_150 (44) = happyShift action_61
action_150 (45) = happyShift action_62
action_150 (54) = happyShift action_63
action_150 (55) = happyShift action_92
action_150 (56) = happyShift action_65
action_150 (57) = happyShift action_66
action_150 (60) = happyShift action_93
action_150 (62) = happyShift action_154
action_150 (66) = happyShift action_68
action_150 (67) = happyShift action_69
action_150 (68) = happyShift action_70
action_150 (69) = happyShift action_71
action_150 _ = happyFail (happyExpListPerState 150)

action_151 _ = happyReduce_49

action_152 (62) = happyShift action_153
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (18) = happyShift action_8
action_153 (19) = happyShift action_9
action_153 (20) = happyShift action_10
action_153 (21) = happyShift action_11
action_153 (22) = happyShift action_12
action_153 (23) = happyShift action_13
action_153 (24) = happyShift action_14
action_153 (25) = happyShift action_15
action_153 (26) = happyShift action_16
action_153 (28) = happyShift action_17
action_153 (31) = happyShift action_18
action_153 (32) = happyShift action_19
action_153 (33) = happyShift action_20
action_153 (36) = happyShift action_21
action_153 (37) = happyShift action_22
action_153 (38) = happyShift action_23
action_153 (55) = happyShift action_24
action_153 (58) = happyShift action_25
action_153 (60) = happyShift action_26
action_153 (65) = happyShift action_27
action_153 (4) = happyGoto action_160
action_153 (5) = happyGoto action_3
action_153 (6) = happyGoto action_4
action_153 (7) = happyGoto action_5
action_153 (11) = happyGoto action_6
action_153 (13) = happyGoto action_7
action_153 _ = happyReduce_1

action_154 (18) = happyShift action_8
action_154 (19) = happyShift action_9
action_154 (20) = happyShift action_10
action_154 (21) = happyShift action_11
action_154 (22) = happyShift action_12
action_154 (23) = happyShift action_13
action_154 (24) = happyShift action_14
action_154 (25) = happyShift action_15
action_154 (26) = happyShift action_16
action_154 (28) = happyShift action_17
action_154 (31) = happyShift action_18
action_154 (32) = happyShift action_19
action_154 (33) = happyShift action_20
action_154 (36) = happyShift action_21
action_154 (37) = happyShift action_22
action_154 (38) = happyShift action_23
action_154 (55) = happyShift action_24
action_154 (58) = happyShift action_25
action_154 (60) = happyShift action_26
action_154 (65) = happyShift action_27
action_154 (4) = happyGoto action_159
action_154 (5) = happyGoto action_3
action_154 (6) = happyGoto action_4
action_154 (7) = happyGoto action_5
action_154 (11) = happyGoto action_6
action_154 (13) = happyGoto action_7
action_154 _ = happyReduce_1

action_155 _ = happyReduce_71

action_156 (18) = happyShift action_8
action_156 (19) = happyShift action_9
action_156 (20) = happyShift action_10
action_156 (21) = happyShift action_11
action_156 (22) = happyShift action_12
action_156 (23) = happyShift action_13
action_156 (24) = happyShift action_14
action_156 (25) = happyShift action_15
action_156 (26) = happyShift action_16
action_156 (28) = happyShift action_17
action_156 (31) = happyShift action_18
action_156 (32) = happyShift action_19
action_156 (33) = happyShift action_20
action_156 (36) = happyShift action_21
action_156 (37) = happyShift action_22
action_156 (38) = happyShift action_23
action_156 (55) = happyShift action_24
action_156 (58) = happyShift action_25
action_156 (60) = happyShift action_26
action_156 (65) = happyShift action_27
action_156 (4) = happyGoto action_158
action_156 (5) = happyGoto action_3
action_156 (6) = happyGoto action_4
action_156 (7) = happyGoto action_5
action_156 (11) = happyGoto action_6
action_156 (13) = happyGoto action_7
action_156 _ = happyReduce_1

action_157 _ = happyReduce_62

action_158 (63) = happyShift action_163
action_158 _ = happyFail (happyExpListPerState 158)

action_159 (63) = happyShift action_162
action_159 _ = happyFail (happyExpListPerState 159)

action_160 (63) = happyShift action_161
action_160 _ = happyFail (happyExpListPerState 160)

action_161 _ = happyReduce_53

action_162 (29) = happyShift action_137
action_162 (8) = happyGoto action_164
action_162 _ = happyReduce_50

action_163 _ = happyReduce_63

action_164 _ = happyReduce_51

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
	(HappyAbsSyn16  happy_var_2) `HappyStk`
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
happyReduction_39 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happyReduce 4 6 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
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

happyReduce_60 = happySpecReduce_1  12 happyReduction_60
happyReduction_60 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  12 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn12
		 (TypeFn
	)

happyReduce_62 = happyReduce 8 13 happyReduction_62
happyReduction_62 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (FnDec happy_var_2 happy_var_4 TypeNone (happy_var_7)
	) `HappyStk` happyRest

happyReduce_63 = happyReduce 10 13 happyReduction_63
happyReduction_63 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (FnDec happy_var_2 happy_var_4 happy_var_7 (happy_var_9)
	) `HappyStk` happyRest

happyReduce_64 = happySpecReduce_0  14 happyReduction_64
happyReduction_64  =  HappyAbsSyn14
		 ([]
	)

happyReduce_65 = happySpecReduce_2  14 happyReduction_65
happyReduction_65 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn14
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happyReduce 4 14 happyReduction_66
happyReduction_66 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn12  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_67 = happySpecReduce_0  15 happyReduction_67
happyReduction_67  =  HappyAbsSyn15
		 ([]
	)

happyReduce_68 = happySpecReduce_1  15 happyReduction_68
happyReduction_68 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  15 happyReduction_69
happyReduction_69 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1 : happy_var_3
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happyReduce 5 16 happyReduction_70
happyReduction_70 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_71 = happyReduce 7 16 happyReduction_71
happyReduction_71 ((HappyAbsSyn16  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 ((happy_var_1, happy_var_4) : happy_var_7
	) `HappyStk` happyRest

happyReduce_72 = happySpecReduce_1  17 happyReduction_72
happyReduction_72 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn17
		 ([happy_var_1]
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_3  17 happyReduction_73
happyReduction_73 (HappyAbsSyn17  happy_var_3)
	_
	_
	 =  HappyAbsSyn17
		 ("_" : happy_var_3
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  17 happyReduction_74
happyReduction_74 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn17
		 (happy_var_1 : happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 71 71 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 18;
	TokenStreamType _ -> cont 19;
	TokenBooleanType _ -> cont 20;
	TokenInput _ -> cont 21;
	TokenPrint _ -> cont 22;
	TokenFunction _ -> cont 23;
	TokenReturn _ -> cont 24;
	TokenWhile _ -> cont 25;
	TokenProcess _ -> cont 26;
	TokenAs _ -> cont 27;
	TokenIf _ -> cont 28;
	TokenElif _ -> cont 29;
	TokenElse _ -> cont 30;
	TokenHasNext _ -> cont 31;
	TokenNext _ -> cont 32;
	TokenSize _ -> cont 33;
	TokenAnd _ -> cont 34;
	TokenOr _ -> cont 35;
	TokenInt _ happy_dollar_dollar -> cont 36;
	TokenBool _ happy_dollar_dollar -> cont 37;
	TokenVar _ happy_dollar_dollar -> cont 38;
	TokenLE _ -> cont 39;
	TokenGE _ -> cont 40;
	TokenEQ _ -> cont 41;
	TokenNE _ -> cont 42;
	TokenCons _ -> cont 43;
	TokenConcat _ -> cont 44;
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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 71 tk tks = happyError' (tks, explist)
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
          | TypeFn
          | TypeFunction Type [Type]
          deriving (Eq)

instance Show Type where
     show (TypeNone) = "<no_type>" 
     show (TypeInt) = "int"
     show (TypeBoolean) = "boolean"
     show (TypeStream) = "stream"
     show (TypeFn) = "fn"
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

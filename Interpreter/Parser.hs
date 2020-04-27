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
happyExpList = Happy_Data_Array.listArray (0,923) ([0,58879,3100,2624,1,0,0,0,0,0,0,0,0,0,0,0,0,0,61440,65119,511,61630,1,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,24560,49614,41984,16,0,32768,0,0,0,38908,12403,10496,4,65024,14795,32792,532,0,58879,3100,2624,1,65408,3698,8198,133,49152,14719,775,17040,0,49120,33692,18433,33,61440,52831,193,4260,0,0,0,0,0,0,0,0,0,0,0,32768,1087,0,0,4096,0,0,0,0,8,0,0,32704,1849,36867,66,57344,40127,387,8520,0,24560,49614,41984,16,63488,59183,96,2130,0,0,22528,8192,8,0,50688,49199,15635,0,0,0,4096,0,0,61824,61451,3846,0,0,1408,33280,0,0,0,0,0,0,0,0,0,0,12280,24807,20992,8,64512,29591,48,1065,0,52222,6201,5248,2,65280,7397,16396,266,32768,29439,1550,34080,0,32704,1849,36867,66,57344,40127,387,8520,0,24560,49614,41984,16,0,0,0,64,0,0,0,8192,0,0,0,0,16,0,0,6115,10720,30,0,61825,61451,3844,0,0,0,2048,0,0,64608,15362,965,0,12288,382,57502,1,0,0,4096,0,0,35840,32863,30759,0,52222,6201,5248,2,0,0,64,0,0,0,0,0,0,32704,1849,36867,66,57344,40127,387,8520,0,24560,49614,41984,16,63488,59183,96,2130,0,38908,12403,10496,4,65024,14795,32792,532,0,58879,3100,2624,1,65408,3698,8198,133,49152,14719,775,17040,0,49120,33692,18433,33,61440,52831,193,4260,0,12280,24807,20992,8,64512,29591,48,1065,0,52222,6201,5248,2,65280,7397,16396,266,32768,29439,1550,34080,0,32704,1849,36867,66,57344,40127,387,8520,0,0,24576,40449,96,0,0,176,12367,0,0,22528,8192,8,0,0,0,1040,0,0,6115,39392,30,0,0,11,260,0,0,1408,33280,0,0,49152,2,65,0,0,352,24728,0,0,36864,16384,16,0,0,72,2080,0,0,32768,1087,0,0,0,18,520,0,0,2864,1264,15,0,38912,30725,1922,0,0,704,49468,0,0,24576,40449,96,0,2048,191,61519,0,0,24448,10112,120,65024,14795,32792,532,0,0,6115,18912,30,65408,3698,8198,133,49152,14719,775,17040,0,49120,33692,18433,33,28672,0,0,0,0,12280,24807,20992,8,64512,29591,48,1065,0,0,0,4096,0,65280,7397,16396,266,0,32768,3057,17648,15,0,0,0,1,0,24576,764,49468,3,0,32304,40449,480,0,6144,191,61519,0,0,24460,10112,120,0,50688,49199,15379,0,0,6115,2528,30,0,61824,61451,3844,0,0,0,0,0,0,0,0,0,61440,52831,193,4260,0,0,0,0,0,0,0,0,0,0,52222,6201,5248,2,0,0,0,64,0,0,8,0,16,0,0,0,16,0,0,0,2048,0,0,256,0,0,0,0,0,32,0,0,24460,26496,120,0,0,44,3091,0,0,0,0,0,0,61824,61451,3844,0,0,0,0,0,0,0,4,4,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,128,0,0,0,16384,0,0,2,0,0,0,0,0,0,0,0,1,0,0,63488,59183,96,2130,0,0,64,0,128,0,8192,0,16384,0,0,0,32768,0,896,0,0,0,49152,1,0,0,0,49120,33692,18433,33,0,0,0,1024,0,0,0,0,1,0,0,0,0,0,52222,6201,5248,2,0,0,0,0,0,0,0,0,0,0,63680,30725,1930,0,0,0,0,0,0,0,0,2,63488,59183,96,2130,0,38908,12403,10496,4,0,0,0,0,0,58879,3100,2624,1,0,0,0,0,0,0,0,4096,0,0,0,0,8,0,0,0,1024,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","ParamList","ArgList","ProcessList","VarList","int_type","stream_type","boolean_type","input","print","fn","return","while","process","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'--'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","%eof"]
        bit_start = st * 71
        bit_end = (st + 1) * 71
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..70]
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

action_2 (71) = happyAccept
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
action_4 (33) = happyShift action_58
action_4 (34) = happyShift action_59
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (37) = happyShift action_23
action_4 (38) = happyShift action_60
action_4 (39) = happyShift action_61
action_4 (40) = happyShift action_62
action_4 (41) = happyShift action_63
action_4 (42) = happyShift action_64
action_4 (43) = happyShift action_65
action_4 (44) = happyShift action_25
action_4 (45) = happyShift action_66
action_4 (54) = happyShift action_67
action_4 (55) = happyShift action_68
action_4 (56) = happyShift action_69
action_4 (57) = happyShift action_70
action_4 (58) = happyShift action_27
action_4 (60) = happyShift action_71
action_4 (65) = happyShift action_29
action_4 (66) = happyShift action_72
action_4 (67) = happyShift action_73
action_4 (68) = happyShift action_74
action_4 (69) = happyShift action_75
action_4 (5) = happyGoto action_57
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_7

action_6 (37) = happyShift action_56
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_41

action_8 _ = happyReduce_59

action_9 _ = happyReduce_61

action_10 _ = happyReduce_60

action_11 (62) = happyShift action_55
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
action_12 (6) = happyGoto action_54
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (37) = happyShift action_53
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
action_14 (6) = happyGoto action_52
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
action_15 (6) = happyGoto action_51
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
action_16 (6) = happyGoto action_49
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 (15) = happyGoto action_50
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
action_17 (6) = happyGoto action_48
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
action_18 (6) = happyGoto action_47
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
action_19 (6) = happyGoto action_46
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
action_20 (6) = happyGoto action_45
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 (12) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_13

action_22 _ = happyReduce_14

action_23 (47) = happyShift action_37
action_23 (48) = happyShift action_38
action_23 (49) = happyShift action_39
action_23 (50) = happyShift action_40
action_23 (51) = happyShift action_41
action_23 (52) = happyShift action_42
action_23 (53) = happyShift action_43
action_23 (58) = happyShift action_44
action_23 _ = happyReduce_33

action_24 (37) = happyShift action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (37) = happyShift action_35
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
action_26 (6) = happyGoto action_34
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
action_27 (6) = happyGoto action_33
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
action_28 (35) = happyShift action_21
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

action_30 (42) = happyShift action_64
action_30 (43) = happyShift action_97
action_30 (45) = happyShift action_66
action_30 (60) = happyShift action_99
action_30 (66) = happyShift action_72
action_30 _ = happyReduce_44

action_31 (33) = happyShift action_58
action_31 (34) = happyShift action_59
action_31 (38) = happyShift action_60
action_31 (39) = happyShift action_61
action_31 (40) = happyShift action_62
action_31 (41) = happyShift action_63
action_31 (42) = happyShift action_64
action_31 (43) = happyShift action_97
action_31 (45) = happyShift action_66
action_31 (54) = happyShift action_67
action_31 (55) = happyShift action_98
action_31 (56) = happyShift action_69
action_31 (57) = happyShift action_70
action_31 (60) = happyShift action_99
action_31 (64) = happyShift action_116
action_31 (66) = happyShift action_72
action_31 (67) = happyShift action_73
action_31 (68) = happyShift action_74
action_31 (69) = happyShift action_75
action_31 _ = happyReduce_57

action_32 (61) = happyShift action_115
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (33) = happyShift action_58
action_33 (34) = happyShift action_59
action_33 (38) = happyShift action_60
action_33 (39) = happyShift action_61
action_33 (40) = happyShift action_62
action_33 (41) = happyShift action_63
action_33 (42) = happyShift action_64
action_33 (43) = happyShift action_97
action_33 (45) = happyShift action_66
action_33 (54) = happyShift action_67
action_33 (55) = happyShift action_98
action_33 (56) = happyShift action_69
action_33 (57) = happyShift action_70
action_33 (59) = happyShift action_114
action_33 (60) = happyShift action_99
action_33 (66) = happyShift action_72
action_33 (67) = happyShift action_73
action_33 (68) = happyShift action_74
action_33 (69) = happyShift action_75
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (42) = happyShift action_64
action_34 (43) = happyShift action_97
action_34 (45) = happyShift action_66
action_34 (60) = happyShift action_99
action_34 (66) = happyShift action_72
action_34 _ = happyReduce_49

action_35 _ = happyReduce_32

action_36 _ = happyReduce_31

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
action_37 (43) = happyShift action_24
action_37 (44) = happyShift action_25
action_37 (55) = happyShift action_26
action_37 (58) = happyShift action_27
action_37 (60) = happyShift action_28
action_37 (65) = happyShift action_29
action_37 (6) = happyGoto action_113
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
action_38 (43) = happyShift action_24
action_38 (44) = happyShift action_25
action_38 (55) = happyShift action_26
action_38 (58) = happyShift action_27
action_38 (60) = happyShift action_28
action_38 (65) = happyShift action_29
action_38 (6) = happyGoto action_112
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
action_39 (6) = happyGoto action_111
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
action_40 (6) = happyGoto action_110
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
action_41 (6) = happyGoto action_109
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
action_42 (6) = happyGoto action_108
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
action_43 (6) = happyGoto action_107
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
action_44 (6) = happyGoto action_105
action_44 (7) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 (12) = happyGoto action_7
action_44 (14) = happyGoto action_106
action_44 _ = happyReduce_67

action_45 (60) = happyShift action_99
action_45 _ = happyReduce_10

action_46 (60) = happyShift action_99
action_46 _ = happyReduce_9

action_47 (60) = happyShift action_99
action_47 _ = happyReduce_8

action_48 (33) = happyShift action_58
action_48 (34) = happyShift action_59
action_48 (38) = happyShift action_60
action_48 (39) = happyShift action_61
action_48 (40) = happyShift action_62
action_48 (41) = happyShift action_63
action_48 (42) = happyShift action_64
action_48 (43) = happyShift action_97
action_48 (45) = happyShift action_66
action_48 (54) = happyShift action_67
action_48 (55) = happyShift action_98
action_48 (56) = happyShift action_69
action_48 (57) = happyShift action_70
action_48 (60) = happyShift action_99
action_48 (62) = happyShift action_104
action_48 (66) = happyShift action_72
action_48 (67) = happyShift action_73
action_48 (68) = happyShift action_74
action_48 (69) = happyShift action_75
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (26) = happyShift action_103
action_49 (33) = happyShift action_58
action_49 (34) = happyShift action_59
action_49 (38) = happyShift action_60
action_49 (39) = happyShift action_61
action_49 (40) = happyShift action_62
action_49 (41) = happyShift action_63
action_49 (42) = happyShift action_64
action_49 (43) = happyShift action_97
action_49 (45) = happyShift action_66
action_49 (54) = happyShift action_67
action_49 (55) = happyShift action_98
action_49 (56) = happyShift action_69
action_49 (57) = happyShift action_70
action_49 (60) = happyShift action_99
action_49 (66) = happyShift action_72
action_49 (67) = happyShift action_73
action_49 (68) = happyShift action_74
action_49 (69) = happyShift action_75
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (62) = happyShift action_102
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (33) = happyShift action_58
action_51 (34) = happyShift action_59
action_51 (38) = happyShift action_60
action_51 (39) = happyShift action_61
action_51 (40) = happyShift action_62
action_51 (41) = happyShift action_63
action_51 (42) = happyShift action_64
action_51 (43) = happyShift action_97
action_51 (45) = happyShift action_66
action_51 (54) = happyShift action_67
action_51 (55) = happyShift action_98
action_51 (56) = happyShift action_69
action_51 (57) = happyShift action_70
action_51 (60) = happyShift action_99
action_51 (62) = happyShift action_101
action_51 (66) = happyShift action_72
action_51 (67) = happyShift action_73
action_51 (68) = happyShift action_74
action_51 (69) = happyShift action_75
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (33) = happyShift action_58
action_52 (34) = happyShift action_59
action_52 (38) = happyShift action_60
action_52 (39) = happyShift action_61
action_52 (40) = happyShift action_62
action_52 (41) = happyShift action_63
action_52 (42) = happyShift action_64
action_52 (43) = happyShift action_97
action_52 (45) = happyShift action_66
action_52 (54) = happyShift action_67
action_52 (55) = happyShift action_98
action_52 (56) = happyShift action_69
action_52 (57) = happyShift action_70
action_52 (60) = happyShift action_99
action_52 (66) = happyShift action_72
action_52 (67) = happyShift action_73
action_52 (68) = happyShift action_74
action_52 (69) = happyShift action_75
action_52 _ = happyReduce_43

action_53 (58) = happyShift action_100
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (33) = happyShift action_58
action_54 (34) = happyShift action_59
action_54 (38) = happyShift action_60
action_54 (39) = happyShift action_61
action_54 (40) = happyShift action_62
action_54 (41) = happyShift action_63
action_54 (42) = happyShift action_64
action_54 (43) = happyShift action_97
action_54 (45) = happyShift action_66
action_54 (54) = happyShift action_67
action_54 (55) = happyShift action_98
action_54 (56) = happyShift action_69
action_54 (57) = happyShift action_70
action_54 (60) = happyShift action_99
action_54 (66) = happyShift action_72
action_54 (67) = happyShift action_73
action_54 (68) = happyShift action_74
action_54 (69) = happyShift action_75
action_54 _ = happyReduce_40

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
action_55 (43) = happyShift action_24
action_55 (44) = happyShift action_25
action_55 (55) = happyShift action_26
action_55 (58) = happyShift action_27
action_55 (60) = happyShift action_28
action_55 (65) = happyShift action_29
action_55 (6) = happyGoto action_96
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (12) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (47) = happyShift action_95
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_4

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
action_58 (43) = happyShift action_24
action_58 (44) = happyShift action_25
action_58 (55) = happyShift action_26
action_58 (58) = happyShift action_27
action_58 (60) = happyShift action_28
action_58 (65) = happyShift action_29
action_58 (6) = happyGoto action_94
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
action_59 (43) = happyShift action_24
action_59 (44) = happyShift action_25
action_59 (55) = happyShift action_26
action_59 (58) = happyShift action_27
action_59 (60) = happyShift action_28
action_59 (65) = happyShift action_29
action_59 (6) = happyGoto action_93
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
action_60 (6) = happyGoto action_92
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
action_61 (6) = happyGoto action_91
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
action_62 (6) = happyGoto action_90
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
action_63 (6) = happyGoto action_89
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
action_64 (6) = happyGoto action_88
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
action_65 (37) = happyShift action_87
action_65 (43) = happyShift action_24
action_65 (44) = happyShift action_25
action_65 (55) = happyShift action_26
action_65 (58) = happyShift action_27
action_65 (60) = happyShift action_28
action_65 (65) = happyShift action_29
action_65 (6) = happyGoto action_86
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
action_66 (43) = happyShift action_24
action_66 (44) = happyShift action_25
action_66 (55) = happyShift action_26
action_66 (58) = happyShift action_27
action_66 (60) = happyShift action_28
action_66 (65) = happyShift action_29
action_66 (6) = happyGoto action_85
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
action_67 (6) = happyGoto action_84
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
action_68 (6) = happyGoto action_83
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
action_69 (6) = happyGoto action_82
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
action_70 (6) = happyGoto action_81
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
action_71 (6) = happyGoto action_80
action_71 (7) = happyGoto action_5
action_71 (10) = happyGoto action_32
action_71 (11) = happyGoto action_6
action_71 (12) = happyGoto action_7
action_71 _ = happyReduce_56

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
action_72 (35) = happyShift action_21
action_72 (36) = happyShift action_22
action_72 (37) = happyShift action_23
action_72 (43) = happyShift action_24
action_72 (44) = happyShift action_25
action_72 (55) = happyShift action_26
action_72 (58) = happyShift action_27
action_72 (60) = happyShift action_28
action_72 (65) = happyShift action_29
action_72 (6) = happyGoto action_79
action_72 (7) = happyGoto action_5
action_72 (11) = happyGoto action_6
action_72 (12) = happyGoto action_7
action_72 _ = happyFail (happyExpListPerState 72)

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
action_73 (6) = happyGoto action_78
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
action_74 (6) = happyGoto action_77
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
action_75 (6) = happyGoto action_76
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 (12) = happyGoto action_7
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (42) = happyShift action_64
action_76 (43) = happyShift action_97
action_76 (45) = happyShift action_66
action_76 (54) = happyShift action_67
action_76 (55) = happyShift action_98
action_76 (56) = happyShift action_69
action_76 (57) = happyShift action_70
action_76 (60) = happyShift action_99
action_76 (66) = happyShift action_72
action_76 (67) = happyShift action_73
action_76 _ = happyReduce_48

action_77 (42) = happyShift action_64
action_77 (43) = happyShift action_97
action_77 (45) = happyShift action_66
action_77 (54) = happyShift action_67
action_77 (55) = happyShift action_98
action_77 (56) = happyShift action_69
action_77 (57) = happyShift action_70
action_77 (60) = happyShift action_99
action_77 (66) = happyShift action_72
action_77 (67) = happyShift action_73
action_77 _ = happyReduce_47

action_78 (42) = happyShift action_64
action_78 (43) = happyShift action_97
action_78 (45) = happyShift action_66
action_78 (60) = happyShift action_99
action_78 (66) = happyShift action_72
action_78 _ = happyReduce_46

action_79 (60) = happyShift action_99
action_79 (66) = happyShift action_72
action_79 _ = happyReduce_45

action_80 (33) = happyShift action_58
action_80 (34) = happyShift action_59
action_80 (38) = happyShift action_60
action_80 (39) = happyShift action_61
action_80 (40) = happyShift action_62
action_80 (41) = happyShift action_63
action_80 (42) = happyShift action_64
action_80 (43) = happyShift action_97
action_80 (45) = happyShift action_66
action_80 (54) = happyShift action_67
action_80 (55) = happyShift action_98
action_80 (56) = happyShift action_69
action_80 (57) = happyShift action_70
action_80 (60) = happyShift action_99
action_80 (61) = happyShift action_130
action_80 (64) = happyShift action_116
action_80 (66) = happyShift action_72
action_80 (67) = happyShift action_73
action_80 (68) = happyShift action_74
action_80 (69) = happyShift action_75
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (42) = happyShift action_64
action_81 (43) = happyShift action_97
action_81 (45) = happyShift action_66
action_81 (60) = happyShift action_99
action_81 (66) = happyShift action_72
action_81 _ = happyReduce_37

action_82 (42) = happyShift action_64
action_82 (43) = happyShift action_97
action_82 (45) = happyShift action_66
action_82 (60) = happyShift action_99
action_82 (66) = happyShift action_72
action_82 _ = happyReduce_36

action_83 (42) = happyShift action_64
action_83 (43) = happyShift action_97
action_83 (45) = happyShift action_66
action_83 (60) = happyShift action_99
action_83 (66) = happyShift action_72
action_83 _ = happyReduce_49

action_84 (42) = happyShift action_64
action_84 (43) = happyShift action_97
action_84 (45) = happyShift action_66
action_84 (56) = happyShift action_69
action_84 (57) = happyShift action_70
action_84 (60) = happyShift action_99
action_84 (66) = happyShift action_72
action_84 (67) = happyShift action_73
action_84 _ = happyReduce_34

action_85 (42) = happyShift action_64
action_85 (45) = happyShift action_66
action_85 (60) = happyShift action_99
action_85 (66) = happyShift action_72
action_85 _ = happyReduce_22

action_86 (42) = happyShift action_64
action_86 (45) = happyShift action_66
action_86 (60) = happyShift action_99
action_86 (66) = happyShift action_72
action_86 _ = happyReduce_21

action_87 (47) = happyShift action_37
action_87 (48) = happyShift action_38
action_87 (49) = happyShift action_39
action_87 (50) = happyShift action_40
action_87 (51) = happyShift action_41
action_87 (52) = happyShift action_42
action_87 (53) = happyShift action_43
action_87 (58) = happyShift action_44
action_87 _ = happyReduce_33

action_88 (42) = happyShift action_64
action_88 (45) = happyShift action_66
action_88 (60) = happyShift action_99
action_88 (66) = happyShift action_72
action_88 _ = happyReduce_20

action_89 (38) = happyShift action_60
action_89 (39) = happyShift action_61
action_89 (42) = happyShift action_64
action_89 (43) = happyShift action_97
action_89 (45) = happyShift action_66
action_89 (54) = happyShift action_67
action_89 (55) = happyShift action_98
action_89 (56) = happyShift action_69
action_89 (57) = happyShift action_70
action_89 (60) = happyShift action_99
action_89 (66) = happyShift action_72
action_89 (67) = happyShift action_73
action_89 (68) = happyShift action_74
action_89 (69) = happyShift action_75
action_89 _ = happyReduce_19

action_90 (38) = happyShift action_60
action_90 (39) = happyShift action_61
action_90 (42) = happyShift action_64
action_90 (43) = happyShift action_97
action_90 (45) = happyShift action_66
action_90 (54) = happyShift action_67
action_90 (55) = happyShift action_98
action_90 (56) = happyShift action_69
action_90 (57) = happyShift action_70
action_90 (60) = happyShift action_99
action_90 (66) = happyShift action_72
action_90 (67) = happyShift action_73
action_90 (68) = happyShift action_74
action_90 (69) = happyShift action_75
action_90 _ = happyReduce_18

action_91 (42) = happyShift action_64
action_91 (43) = happyShift action_97
action_91 (45) = happyShift action_66
action_91 (54) = happyShift action_67
action_91 (55) = happyShift action_98
action_91 (56) = happyShift action_69
action_91 (57) = happyShift action_70
action_91 (60) = happyShift action_99
action_91 (66) = happyShift action_72
action_91 (67) = happyShift action_73
action_91 _ = happyReduce_17

action_92 (42) = happyShift action_64
action_92 (43) = happyShift action_97
action_92 (45) = happyShift action_66
action_92 (54) = happyShift action_67
action_92 (55) = happyShift action_98
action_92 (56) = happyShift action_69
action_92 (57) = happyShift action_70
action_92 (60) = happyShift action_99
action_92 (66) = happyShift action_72
action_92 (67) = happyShift action_73
action_92 _ = happyReduce_16

action_93 (33) = happyShift action_58
action_93 (38) = happyShift action_60
action_93 (39) = happyShift action_61
action_93 (40) = happyShift action_62
action_93 (41) = happyShift action_63
action_93 (42) = happyShift action_64
action_93 (43) = happyShift action_97
action_93 (45) = happyShift action_66
action_93 (54) = happyShift action_67
action_93 (55) = happyShift action_98
action_93 (56) = happyShift action_69
action_93 (57) = happyShift action_70
action_93 (60) = happyShift action_99
action_93 (66) = happyShift action_72
action_93 (67) = happyShift action_73
action_93 (68) = happyShift action_74
action_93 (69) = happyShift action_75
action_93 _ = happyReduce_12

action_94 (38) = happyShift action_60
action_94 (39) = happyShift action_61
action_94 (40) = happyShift action_62
action_94 (41) = happyShift action_63
action_94 (42) = happyShift action_64
action_94 (43) = happyShift action_97
action_94 (45) = happyShift action_66
action_94 (54) = happyShift action_67
action_94 (55) = happyShift action_98
action_94 (56) = happyShift action_69
action_94 (57) = happyShift action_70
action_94 (60) = happyShift action_99
action_94 (66) = happyShift action_72
action_94 (67) = happyShift action_73
action_94 (68) = happyShift action_74
action_94 (69) = happyShift action_75
action_94 _ = happyReduce_11

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
action_95 (43) = happyShift action_24
action_95 (44) = happyShift action_25
action_95 (55) = happyShift action_26
action_95 (58) = happyShift action_27
action_95 (60) = happyShift action_28
action_95 (65) = happyShift action_29
action_95 (6) = happyGoto action_129
action_95 (7) = happyGoto action_5
action_95 (11) = happyGoto action_6
action_95 (12) = happyGoto action_7
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (33) = happyShift action_58
action_96 (34) = happyShift action_59
action_96 (38) = happyShift action_60
action_96 (39) = happyShift action_61
action_96 (40) = happyShift action_62
action_96 (41) = happyShift action_63
action_96 (42) = happyShift action_64
action_96 (43) = happyShift action_97
action_96 (45) = happyShift action_66
action_96 (54) = happyShift action_67
action_96 (55) = happyShift action_98
action_96 (56) = happyShift action_69
action_96 (57) = happyShift action_70
action_96 (60) = happyShift action_99
action_96 (63) = happyShift action_128
action_96 (66) = happyShift action_72
action_96 (67) = happyShift action_73
action_96 (68) = happyShift action_74
action_96 (69) = happyShift action_75
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (17) = happyShift action_8
action_97 (18) = happyShift action_9
action_97 (19) = happyShift action_10
action_97 (20) = happyShift action_11
action_97 (21) = happyShift action_12
action_97 (22) = happyShift action_13
action_97 (23) = happyShift action_14
action_97 (24) = happyShift action_15
action_97 (25) = happyShift action_16
action_97 (27) = happyShift action_17
action_97 (30) = happyShift action_18
action_97 (31) = happyShift action_19
action_97 (32) = happyShift action_20
action_97 (35) = happyShift action_21
action_97 (36) = happyShift action_22
action_97 (37) = happyShift action_23
action_97 (43) = happyShift action_24
action_97 (44) = happyShift action_25
action_97 (55) = happyShift action_26
action_97 (58) = happyShift action_27
action_97 (60) = happyShift action_28
action_97 (65) = happyShift action_29
action_97 (6) = happyGoto action_86
action_97 (7) = happyGoto action_5
action_97 (11) = happyGoto action_6
action_97 (12) = happyGoto action_7
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
action_98 (6) = happyGoto action_127
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
action_99 (6) = happyGoto action_126
action_99 (7) = happyGoto action_5
action_99 (11) = happyGoto action_6
action_99 (12) = happyGoto action_7
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (17) = happyShift action_8
action_100 (18) = happyShift action_9
action_100 (19) = happyShift action_10
action_100 (11) = happyGoto action_124
action_100 (13) = happyGoto action_125
action_100 _ = happyReduce_64

action_101 (17) = happyShift action_8
action_101 (18) = happyShift action_9
action_101 (19) = happyShift action_10
action_101 (20) = happyShift action_11
action_101 (21) = happyShift action_12
action_101 (22) = happyShift action_13
action_101 (23) = happyShift action_14
action_101 (24) = happyShift action_15
action_101 (25) = happyShift action_16
action_101 (27) = happyShift action_17
action_101 (30) = happyShift action_18
action_101 (31) = happyShift action_19
action_101 (32) = happyShift action_20
action_101 (35) = happyShift action_21
action_101 (36) = happyShift action_22
action_101 (37) = happyShift action_23
action_101 (43) = happyShift action_24
action_101 (44) = happyShift action_25
action_101 (55) = happyShift action_26
action_101 (58) = happyShift action_27
action_101 (60) = happyShift action_28
action_101 (65) = happyShift action_29
action_101 (4) = happyGoto action_123
action_101 (5) = happyGoto action_3
action_101 (6) = happyGoto action_4
action_101 (7) = happyGoto action_5
action_101 (11) = happyGoto action_6
action_101 (12) = happyGoto action_7
action_101 _ = happyReduce_1

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
action_102 (4) = happyGoto action_122
action_102 (5) = happyGoto action_3
action_102 (6) = happyGoto action_4
action_102 (7) = happyGoto action_5
action_102 (11) = happyGoto action_6
action_102 (12) = happyGoto action_7
action_102 _ = happyReduce_1

action_103 (60) = happyShift action_121
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (17) = happyShift action_8
action_104 (18) = happyShift action_9
action_104 (19) = happyShift action_10
action_104 (20) = happyShift action_11
action_104 (21) = happyShift action_12
action_104 (22) = happyShift action_13
action_104 (23) = happyShift action_14
action_104 (24) = happyShift action_15
action_104 (25) = happyShift action_16
action_104 (27) = happyShift action_17
action_104 (30) = happyShift action_18
action_104 (31) = happyShift action_19
action_104 (32) = happyShift action_20
action_104 (35) = happyShift action_21
action_104 (36) = happyShift action_22
action_104 (37) = happyShift action_23
action_104 (43) = happyShift action_24
action_104 (44) = happyShift action_25
action_104 (55) = happyShift action_26
action_104 (58) = happyShift action_27
action_104 (60) = happyShift action_28
action_104 (65) = happyShift action_29
action_104 (4) = happyGoto action_120
action_104 (5) = happyGoto action_3
action_104 (6) = happyGoto action_4
action_104 (7) = happyGoto action_5
action_104 (11) = happyGoto action_6
action_104 (12) = happyGoto action_7
action_104 _ = happyReduce_1

action_105 (33) = happyShift action_58
action_105 (34) = happyShift action_59
action_105 (38) = happyShift action_60
action_105 (39) = happyShift action_61
action_105 (40) = happyShift action_62
action_105 (41) = happyShift action_63
action_105 (42) = happyShift action_64
action_105 (43) = happyShift action_97
action_105 (45) = happyShift action_66
action_105 (54) = happyShift action_67
action_105 (55) = happyShift action_98
action_105 (56) = happyShift action_69
action_105 (57) = happyShift action_70
action_105 (60) = happyShift action_99
action_105 (64) = happyShift action_119
action_105 (66) = happyShift action_72
action_105 (67) = happyShift action_73
action_105 (68) = happyShift action_74
action_105 (69) = happyShift action_75
action_105 _ = happyReduce_68

action_106 (59) = happyShift action_118
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (33) = happyShift action_58
action_107 (34) = happyShift action_59
action_107 (38) = happyShift action_60
action_107 (39) = happyShift action_61
action_107 (40) = happyShift action_62
action_107 (41) = happyShift action_63
action_107 (42) = happyShift action_64
action_107 (43) = happyShift action_97
action_107 (45) = happyShift action_66
action_107 (54) = happyShift action_67
action_107 (55) = happyShift action_98
action_107 (56) = happyShift action_69
action_107 (57) = happyShift action_70
action_107 (60) = happyShift action_99
action_107 (66) = happyShift action_72
action_107 (67) = happyShift action_73
action_107 (68) = happyShift action_74
action_107 (69) = happyShift action_75
action_107 _ = happyReduce_30

action_108 (33) = happyShift action_58
action_108 (34) = happyShift action_59
action_108 (38) = happyShift action_60
action_108 (39) = happyShift action_61
action_108 (40) = happyShift action_62
action_108 (41) = happyShift action_63
action_108 (42) = happyShift action_64
action_108 (43) = happyShift action_97
action_108 (45) = happyShift action_66
action_108 (54) = happyShift action_67
action_108 (55) = happyShift action_98
action_108 (56) = happyShift action_69
action_108 (57) = happyShift action_70
action_108 (60) = happyShift action_99
action_108 (66) = happyShift action_72
action_108 (67) = happyShift action_73
action_108 (68) = happyShift action_74
action_108 (69) = happyShift action_75
action_108 _ = happyReduce_29

action_109 (33) = happyShift action_58
action_109 (34) = happyShift action_59
action_109 (38) = happyShift action_60
action_109 (39) = happyShift action_61
action_109 (40) = happyShift action_62
action_109 (41) = happyShift action_63
action_109 (42) = happyShift action_64
action_109 (43) = happyShift action_97
action_109 (45) = happyShift action_66
action_109 (54) = happyShift action_67
action_109 (55) = happyShift action_98
action_109 (56) = happyShift action_69
action_109 (57) = happyShift action_70
action_109 (60) = happyShift action_99
action_109 (66) = happyShift action_72
action_109 (67) = happyShift action_73
action_109 (68) = happyShift action_74
action_109 (69) = happyShift action_75
action_109 _ = happyReduce_28

action_110 (33) = happyShift action_58
action_110 (34) = happyShift action_59
action_110 (38) = happyShift action_60
action_110 (39) = happyShift action_61
action_110 (40) = happyShift action_62
action_110 (41) = happyShift action_63
action_110 (42) = happyShift action_64
action_110 (43) = happyShift action_97
action_110 (45) = happyShift action_66
action_110 (54) = happyShift action_67
action_110 (55) = happyShift action_98
action_110 (56) = happyShift action_69
action_110 (57) = happyShift action_70
action_110 (60) = happyShift action_99
action_110 (66) = happyShift action_72
action_110 (67) = happyShift action_73
action_110 (68) = happyShift action_74
action_110 (69) = happyShift action_75
action_110 _ = happyReduce_27

action_111 (33) = happyShift action_58
action_111 (34) = happyShift action_59
action_111 (38) = happyShift action_60
action_111 (39) = happyShift action_61
action_111 (40) = happyShift action_62
action_111 (41) = happyShift action_63
action_111 (42) = happyShift action_64
action_111 (43) = happyShift action_97
action_111 (45) = happyShift action_66
action_111 (54) = happyShift action_67
action_111 (55) = happyShift action_98
action_111 (56) = happyShift action_69
action_111 (57) = happyShift action_70
action_111 (60) = happyShift action_99
action_111 (66) = happyShift action_72
action_111 (67) = happyShift action_73
action_111 (68) = happyShift action_74
action_111 (69) = happyShift action_75
action_111 _ = happyReduce_26

action_112 (33) = happyShift action_58
action_112 (34) = happyShift action_59
action_112 (38) = happyShift action_60
action_112 (39) = happyShift action_61
action_112 (40) = happyShift action_62
action_112 (41) = happyShift action_63
action_112 (42) = happyShift action_64
action_112 (43) = happyShift action_97
action_112 (45) = happyShift action_66
action_112 (54) = happyShift action_67
action_112 (55) = happyShift action_98
action_112 (56) = happyShift action_69
action_112 (57) = happyShift action_70
action_112 (60) = happyShift action_99
action_112 (66) = happyShift action_72
action_112 (67) = happyShift action_73
action_112 (68) = happyShift action_74
action_112 (69) = happyShift action_75
action_112 _ = happyReduce_25

action_113 (33) = happyShift action_58
action_113 (34) = happyShift action_59
action_113 (38) = happyShift action_60
action_113 (39) = happyShift action_61
action_113 (40) = happyShift action_62
action_113 (41) = happyShift action_63
action_113 (42) = happyShift action_64
action_113 (43) = happyShift action_97
action_113 (45) = happyShift action_66
action_113 (54) = happyShift action_67
action_113 (55) = happyShift action_98
action_113 (56) = happyShift action_69
action_113 (57) = happyShift action_70
action_113 (60) = happyShift action_99
action_113 (66) = happyShift action_72
action_113 (67) = happyShift action_73
action_113 (68) = happyShift action_74
action_113 (69) = happyShift action_75
action_113 _ = happyReduce_24

action_114 _ = happyReduce_50

action_115 _ = happyReduce_15

action_116 (17) = happyShift action_8
action_116 (18) = happyShift action_9
action_116 (19) = happyShift action_10
action_116 (20) = happyShift action_11
action_116 (21) = happyShift action_12
action_116 (22) = happyShift action_13
action_116 (23) = happyShift action_14
action_116 (24) = happyShift action_15
action_116 (25) = happyShift action_16
action_116 (27) = happyShift action_17
action_116 (30) = happyShift action_18
action_116 (31) = happyShift action_19
action_116 (32) = happyShift action_20
action_116 (35) = happyShift action_21
action_116 (36) = happyShift action_22
action_116 (37) = happyShift action_23
action_116 (43) = happyShift action_24
action_116 (44) = happyShift action_25
action_116 (55) = happyShift action_26
action_116 (58) = happyShift action_27
action_116 (60) = happyShift action_28
action_116 (65) = happyShift action_29
action_116 (6) = happyGoto action_31
action_116 (7) = happyGoto action_5
action_116 (10) = happyGoto action_117
action_116 (11) = happyGoto action_6
action_116 (12) = happyGoto action_7
action_116 _ = happyReduce_56

action_117 _ = happyReduce_58

action_118 _ = happyReduce_42

action_119 (17) = happyShift action_8
action_119 (18) = happyShift action_9
action_119 (19) = happyShift action_10
action_119 (20) = happyShift action_11
action_119 (21) = happyShift action_12
action_119 (22) = happyShift action_13
action_119 (23) = happyShift action_14
action_119 (24) = happyShift action_15
action_119 (25) = happyShift action_16
action_119 (27) = happyShift action_17
action_119 (30) = happyShift action_18
action_119 (31) = happyShift action_19
action_119 (32) = happyShift action_20
action_119 (35) = happyShift action_21
action_119 (36) = happyShift action_22
action_119 (37) = happyShift action_23
action_119 (43) = happyShift action_24
action_119 (44) = happyShift action_25
action_119 (55) = happyShift action_26
action_119 (58) = happyShift action_27
action_119 (60) = happyShift action_28
action_119 (65) = happyShift action_29
action_119 (6) = happyGoto action_105
action_119 (7) = happyGoto action_5
action_119 (11) = happyGoto action_6
action_119 (12) = happyGoto action_7
action_119 (14) = happyGoto action_139
action_119 _ = happyReduce_67

action_120 (63) = happyShift action_138
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (37) = happyShift action_136
action_121 (70) = happyShift action_137
action_121 (16) = happyGoto action_135
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (63) = happyShift action_134
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (63) = happyShift action_133
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (37) = happyShift action_132
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (59) = happyShift action_131
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (33) = happyShift action_58
action_126 (34) = happyShift action_59
action_126 (38) = happyShift action_60
action_126 (39) = happyShift action_61
action_126 (40) = happyShift action_62
action_126 (41) = happyShift action_63
action_126 (42) = happyShift action_64
action_126 (43) = happyShift action_97
action_126 (45) = happyShift action_66
action_126 (54) = happyShift action_67
action_126 (55) = happyShift action_98
action_126 (56) = happyShift action_69
action_126 (57) = happyShift action_70
action_126 (60) = happyShift action_99
action_126 (61) = happyShift action_130
action_126 (66) = happyShift action_72
action_126 (67) = happyShift action_73
action_126 (68) = happyShift action_74
action_126 (69) = happyShift action_75
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (42) = happyShift action_64
action_127 (43) = happyShift action_97
action_127 (45) = happyShift action_66
action_127 (56) = happyShift action_69
action_127 (57) = happyShift action_70
action_127 (60) = happyShift action_99
action_127 (66) = happyShift action_72
action_127 (67) = happyShift action_73
action_127 _ = happyReduce_35

action_128 _ = happyReduce_39

action_129 (33) = happyShift action_58
action_129 (34) = happyShift action_59
action_129 (38) = happyShift action_60
action_129 (39) = happyShift action_61
action_129 (40) = happyShift action_62
action_129 (41) = happyShift action_63
action_129 (42) = happyShift action_64
action_129 (43) = happyShift action_97
action_129 (45) = happyShift action_66
action_129 (54) = happyShift action_67
action_129 (55) = happyShift action_98
action_129 (56) = happyShift action_69
action_129 (57) = happyShift action_70
action_129 (60) = happyShift action_99
action_129 (66) = happyShift action_72
action_129 (67) = happyShift action_73
action_129 (68) = happyShift action_74
action_129 (69) = happyShift action_75
action_129 _ = happyReduce_23

action_130 _ = happyReduce_38

action_131 (46) = happyShift action_146
action_131 (62) = happyShift action_147
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (64) = happyShift action_145
action_132 _ = happyReduce_65

action_133 _ = happyReduce_5

action_134 _ = happyReduce_6

action_135 (61) = happyShift action_144
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (64) = happyShift action_143
action_136 _ = happyReduce_72

action_137 (64) = happyShift action_142
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (28) = happyShift action_141
action_138 (8) = happyGoto action_140
action_138 _ = happyReduce_52

action_139 _ = happyReduce_69

action_140 (29) = happyShift action_156
action_140 (9) = happyGoto action_155
action_140 _ = happyReduce_54

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
action_141 (43) = happyShift action_24
action_141 (44) = happyShift action_25
action_141 (55) = happyShift action_26
action_141 (58) = happyShift action_27
action_141 (60) = happyShift action_28
action_141 (65) = happyShift action_29
action_141 (6) = happyGoto action_154
action_141 (7) = happyGoto action_5
action_141 (11) = happyGoto action_6
action_141 (12) = happyGoto action_7
action_141 _ = happyFail (happyExpListPerState 141)

action_142 (37) = happyShift action_136
action_142 (70) = happyShift action_137
action_142 (16) = happyGoto action_153
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (37) = happyShift action_136
action_143 (70) = happyShift action_137
action_143 (16) = happyGoto action_152
action_143 _ = happyFail (happyExpListPerState 143)

action_144 (64) = happyShift action_151
action_144 _ = happyReduce_70

action_145 (17) = happyShift action_8
action_145 (18) = happyShift action_9
action_145 (19) = happyShift action_10
action_145 (11) = happyGoto action_124
action_145 (13) = happyGoto action_150
action_145 _ = happyReduce_64

action_146 (17) = happyShift action_8
action_146 (18) = happyShift action_9
action_146 (19) = happyShift action_10
action_146 (11) = happyGoto action_149
action_146 _ = happyFail (happyExpListPerState 146)

action_147 (17) = happyShift action_8
action_147 (18) = happyShift action_9
action_147 (19) = happyShift action_10
action_147 (20) = happyShift action_11
action_147 (21) = happyShift action_12
action_147 (22) = happyShift action_13
action_147 (23) = happyShift action_14
action_147 (24) = happyShift action_15
action_147 (25) = happyShift action_16
action_147 (27) = happyShift action_17
action_147 (30) = happyShift action_18
action_147 (31) = happyShift action_19
action_147 (32) = happyShift action_20
action_147 (35) = happyShift action_21
action_147 (36) = happyShift action_22
action_147 (37) = happyShift action_23
action_147 (43) = happyShift action_24
action_147 (44) = happyShift action_25
action_147 (55) = happyShift action_26
action_147 (58) = happyShift action_27
action_147 (60) = happyShift action_28
action_147 (65) = happyShift action_29
action_147 (4) = happyGoto action_148
action_147 (5) = happyGoto action_3
action_147 (6) = happyGoto action_4
action_147 (7) = happyGoto action_5
action_147 (11) = happyGoto action_6
action_147 (12) = happyGoto action_7
action_147 _ = happyReduce_1

action_148 (63) = happyShift action_161
action_148 _ = happyFail (happyExpListPerState 148)

action_149 (62) = happyShift action_160
action_149 _ = happyFail (happyExpListPerState 149)

action_150 _ = happyReduce_66

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
action_151 (43) = happyShift action_24
action_151 (44) = happyShift action_25
action_151 (55) = happyShift action_26
action_151 (58) = happyShift action_27
action_151 (60) = happyShift action_28
action_151 (65) = happyShift action_29
action_151 (6) = happyGoto action_49
action_151 (7) = happyGoto action_5
action_151 (11) = happyGoto action_6
action_151 (12) = happyGoto action_7
action_151 (15) = happyGoto action_159
action_151 _ = happyFail (happyExpListPerState 151)

action_152 _ = happyReduce_74

action_153 _ = happyReduce_73

action_154 (33) = happyShift action_58
action_154 (34) = happyShift action_59
action_154 (38) = happyShift action_60
action_154 (39) = happyShift action_61
action_154 (40) = happyShift action_62
action_154 (41) = happyShift action_63
action_154 (42) = happyShift action_64
action_154 (43) = happyShift action_97
action_154 (45) = happyShift action_66
action_154 (54) = happyShift action_67
action_154 (55) = happyShift action_98
action_154 (56) = happyShift action_69
action_154 (57) = happyShift action_70
action_154 (60) = happyShift action_99
action_154 (62) = happyShift action_158
action_154 (66) = happyShift action_72
action_154 (67) = happyShift action_73
action_154 (68) = happyShift action_74
action_154 (69) = happyShift action_75
action_154 _ = happyFail (happyExpListPerState 154)

action_155 _ = happyReduce_51

action_156 (62) = happyShift action_157
action_156 _ = happyFail (happyExpListPerState 156)

action_157 (17) = happyShift action_8
action_157 (18) = happyShift action_9
action_157 (19) = happyShift action_10
action_157 (20) = happyShift action_11
action_157 (21) = happyShift action_12
action_157 (22) = happyShift action_13
action_157 (23) = happyShift action_14
action_157 (24) = happyShift action_15
action_157 (25) = happyShift action_16
action_157 (27) = happyShift action_17
action_157 (30) = happyShift action_18
action_157 (31) = happyShift action_19
action_157 (32) = happyShift action_20
action_157 (35) = happyShift action_21
action_157 (36) = happyShift action_22
action_157 (37) = happyShift action_23
action_157 (43) = happyShift action_24
action_157 (44) = happyShift action_25
action_157 (55) = happyShift action_26
action_157 (58) = happyShift action_27
action_157 (60) = happyShift action_28
action_157 (65) = happyShift action_29
action_157 (4) = happyGoto action_164
action_157 (5) = happyGoto action_3
action_157 (6) = happyGoto action_4
action_157 (7) = happyGoto action_5
action_157 (11) = happyGoto action_6
action_157 (12) = happyGoto action_7
action_157 _ = happyReduce_1

action_158 (17) = happyShift action_8
action_158 (18) = happyShift action_9
action_158 (19) = happyShift action_10
action_158 (20) = happyShift action_11
action_158 (21) = happyShift action_12
action_158 (22) = happyShift action_13
action_158 (23) = happyShift action_14
action_158 (24) = happyShift action_15
action_158 (25) = happyShift action_16
action_158 (27) = happyShift action_17
action_158 (30) = happyShift action_18
action_158 (31) = happyShift action_19
action_158 (32) = happyShift action_20
action_158 (35) = happyShift action_21
action_158 (36) = happyShift action_22
action_158 (37) = happyShift action_23
action_158 (43) = happyShift action_24
action_158 (44) = happyShift action_25
action_158 (55) = happyShift action_26
action_158 (58) = happyShift action_27
action_158 (60) = happyShift action_28
action_158 (65) = happyShift action_29
action_158 (4) = happyGoto action_163
action_158 (5) = happyGoto action_3
action_158 (6) = happyGoto action_4
action_158 (7) = happyGoto action_5
action_158 (11) = happyGoto action_6
action_158 (12) = happyGoto action_7
action_158 _ = happyReduce_1

action_159 _ = happyReduce_71

action_160 (17) = happyShift action_8
action_160 (18) = happyShift action_9
action_160 (19) = happyShift action_10
action_160 (20) = happyShift action_11
action_160 (21) = happyShift action_12
action_160 (22) = happyShift action_13
action_160 (23) = happyShift action_14
action_160 (24) = happyShift action_15
action_160 (25) = happyShift action_16
action_160 (27) = happyShift action_17
action_160 (30) = happyShift action_18
action_160 (31) = happyShift action_19
action_160 (32) = happyShift action_20
action_160 (35) = happyShift action_21
action_160 (36) = happyShift action_22
action_160 (37) = happyShift action_23
action_160 (43) = happyShift action_24
action_160 (44) = happyShift action_25
action_160 (55) = happyShift action_26
action_160 (58) = happyShift action_27
action_160 (60) = happyShift action_28
action_160 (65) = happyShift action_29
action_160 (4) = happyGoto action_162
action_160 (5) = happyGoto action_3
action_160 (6) = happyGoto action_4
action_160 (7) = happyGoto action_5
action_160 (11) = happyGoto action_6
action_160 (12) = happyGoto action_7
action_160 _ = happyReduce_1

action_161 _ = happyReduce_62

action_162 (63) = happyShift action_167
action_162 _ = happyFail (happyExpListPerState 162)

action_163 (63) = happyShift action_166
action_163 _ = happyFail (happyExpListPerState 163)

action_164 (63) = happyShift action_165
action_164 _ = happyFail (happyExpListPerState 164)

action_165 _ = happyReduce_55

action_166 (28) = happyShift action_141
action_166 (8) = happyGoto action_168
action_166 _ = happyReduce_52

action_167 _ = happyReduce_63

action_168 _ = happyReduce_53

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

happyReduce_59 = happySpecReduce_1  11 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_60 = happySpecReduce_1  11 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_61 = happySpecReduce_1  11 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_62 = happyReduce 8 12 happyReduction_62
happyReduction_62 (_ `HappyStk`
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

happyReduce_63 = happyReduce 10 12 happyReduction_63
happyReduction_63 (_ `HappyStk`
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

happyReduce_64 = happySpecReduce_0  13 happyReduction_64
happyReduction_64  =  HappyAbsSyn13
		 ([]
	)

happyReduce_65 = happySpecReduce_2  13 happyReduction_65
happyReduction_65 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn13
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_65 _ _  = notHappyAtAll 

happyReduce_66 = happyReduce 4 13 happyReduction_66
happyReduction_66 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_67 = happySpecReduce_0  14 happyReduction_67
happyReduction_67  =  HappyAbsSyn14
		 ([]
	)

happyReduce_68 = happySpecReduce_1  14 happyReduction_68
happyReduction_68 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_68 _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_3  14 happyReduction_69
happyReduction_69 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_69 _ _ _  = notHappyAtAll 

happyReduce_70 = happyReduce 5 15 happyReduction_70
happyReduction_70 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_71 = happyReduce 7 15 happyReduction_71
happyReduction_71 ((HappyAbsSyn15  happy_var_7) `HappyStk`
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

happyReduce_72 = happySpecReduce_1  16 happyReduction_72
happyReduction_72 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_72 _  = notHappyAtAll 

happyReduce_73 = happySpecReduce_3  16 happyReduction_73
happyReduction_73 (HappyAbsSyn16  happy_var_3)
	_
	_
	 =  HappyAbsSyn16
		 ("_" : happy_var_3
	)
happyReduction_73 _ _ _  = notHappyAtAll 

happyReduce_74 = happySpecReduce_3  16 happyReduction_74
happyReduction_74 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_74 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 71 71 notHappyAtAll (HappyState action) sts stk []

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

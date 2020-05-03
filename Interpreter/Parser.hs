{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
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
	| HappyAbsSyn18 t18

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,1100) ([0,24568,49614,41984,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,58879,8191,3040,31,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,12284,24807,20992,8,0,0,4,128,2,65280,14795,32792,532,0,24568,49614,41984,16,49152,29439,1550,34080,0,0,0,0,0,0,49136,33692,18433,33,32768,58879,3100,2624,1,64512,59183,96,2130,0,32736,1849,36867,66,0,0,0,0,0,0,0,0,0,0,0,0,4064,0,0,0,64,0,0,0,0,2,0,0,65408,7397,16396,266,0,12284,24807,20992,8,57344,14719,775,17040,0,65280,14795,32792,532,0,0,24576,40961,32,0,32768,3057,17904,15,0,0,0,64,0,0,64608,64514,961,0,0,5632,2560,2,0,0,0,0,0,0,0,0,0,0,52223,6201,5248,2,63488,52831,193,4260,0,65472,3698,8198,133,0,38910,12403,10496,4,61440,40127,387,8520,0,65408,7397,16396,266,0,12284,24807,20992,8,0,0,0,640,0,0,0,0,20,0,0,0,40960,0,0,32768,3057,5616,15,0,35848,32863,30767,0,0,0,0,4,0,0,6115,11232,30,0,6144,191,61535,0,0,0,32768,0,0,39,0,0,0,0,0,0,32,0,0,61824,61451,3845,0,38910,12403,10496,4,0,0,2048,0,0,0,0,0,0,0,12284,24807,20992,8,57344,14719,775,17040,0,65280,14795,32792,532,0,24568,49614,41984,16,49152,29439,1550,34080,0,65024,29591,48,1065,0,49136,33692,18433,33,32768,58879,3100,2624,1,64512,59183,96,2130,0,32736,1849,36867,66,0,52223,6201,5248,2,63488,52831,193,4260,0,65472,3698,8198,133,0,38910,12403,10496,4,61440,40127,387,8520,0,65408,7397,16396,266,0,12284,24807,20992,8,57344,14719,775,17040,0,65280,14795,32792,532,0,24568,49614,41984,16,0,0,2816,1520,3,0,0,32856,6191,0,0,49152,16386,65,0,0,0,2560,2,0,6144,191,62687,0,0,63680,63493,1955,0,0,0,2048,0,0,0,352,8352,0,0,0,11,261,0,0,22528,10240,8,0,0,704,49520,0,0,0,18,522,0,0,48920,24320,240,0,0,61440,7,0,0,0,36,1044,0,0,26112,48641,480,0,0,2864,1520,15,0,0,32856,6191,0,0,49152,31746,193,0,0,6113,3040,30,0,0,191,61535,0,0,0,0,0,0,52223,6201,5248,2,0,12288,382,58558,1,65472,3698,8198,133,0,38910,12403,10496,4,61440,40127,387,8520,0,65408,7397,16396,266,0,156,0,0,0,0,0,4,0,0,0,0,0,8,0,0,0,0,128,49152,9,0,0,0,65024,29591,48,1065,0,49136,33692,18433,33,0,0,0,2048,0,64512,59183,96,2130,0,0,63680,63493,1922,0,0,12230,6080,60,0,12288,382,57534,1,0,61824,61451,3845,0,0,24460,12160,120,0,24576,764,49532,3,0,58112,57367,7691,0,0,0,0,0,0,0,0,0,0,65280,14795,32792,532,0,0,0,0,0,0,0,0,8192,0,0,16384,0,32768,0,0,0,0,8,0,0,0,16384,0,0,0,0,32,0,0,0,8,8,0,0,0,0,1,0,0,0,2048,0,0,0,0,2,0,0,24460,28544,120,0,24576,764,53628,3,0,0,32790,1547,0,0,0,0,0,0,49152,1528,33528,7,0,0,0,0,0,24568,49614,41984,16,0,0,0,0,0,0,0,0,0,0,0,0,4,512,32768,19,0,0,0,39936,0,0,0,0,1248,0,0,0,0,52223,6201,5248,2,0,0,512,512,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,128,0,0,0,0,4,0,512,0,0,0,0,32,0,0,0,24568,49614,41984,16,0,0,8,0,16,0,16384,0,32768,0,0,0,0,16,32768,19,0,0,0,64512,59183,96,2130,0,0,0,0,16,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,78,0,0,0,0,0,0,0,0,0,0,0,4096,0,12284,24807,20992,8,0,0,0,0,0,0,0,0,128,0,0,0,0,2,49152,29439,1550,34080,0,0,0,0,0,0,0,0,0,0,0,0,6115,11232,30,0,0,0,0,0,0,0,0,8,0,52223,6201,5248,2,63488,52831,193,4260,0,0,0,0,0,0,38910,12403,10496,4,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,4,0,0,0,8192,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","FnAnonDec","ParamList","TypeList","ArgList","ProcessList","VarList","';'","int_type","stream_type","boolean_type","input","print","fn","return","while","process","break","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'--'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","%eof"]
        bit_start = st * 75
        bit_end = (st + 1) * 75
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..74]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (20) = happyShift action_9
action_0 (21) = happyShift action_10
action_0 (22) = happyShift action_11
action_0 (23) = happyShift action_12
action_0 (24) = happyShift action_13
action_0 (25) = happyShift action_14
action_0 (26) = happyShift action_15
action_0 (27) = happyShift action_16
action_0 (28) = happyShift action_17
action_0 (29) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (39) = happyShift action_23
action_0 (40) = happyShift action_24
action_0 (41) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (48) = happyShift action_27
action_0 (59) = happyShift action_28
action_0 (62) = happyShift action_29
action_0 (64) = happyShift action_30
action_0 (69) = happyShift action_31
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (75) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (19) = happyShift action_61
action_4 (20) = happyShift action_9
action_4 (21) = happyShift action_10
action_4 (22) = happyShift action_11
action_4 (23) = happyShift action_12
action_4 (24) = happyShift action_13
action_4 (25) = happyShift action_14
action_4 (26) = happyShift action_15
action_4 (27) = happyShift action_16
action_4 (28) = happyShift action_17
action_4 (29) = happyShift action_18
action_4 (31) = happyShift action_19
action_4 (34) = happyShift action_20
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (37) = happyShift action_62
action_4 (38) = happyShift action_63
action_4 (39) = happyShift action_23
action_4 (40) = happyShift action_24
action_4 (41) = happyShift action_25
action_4 (42) = happyShift action_64
action_4 (43) = happyShift action_65
action_4 (44) = happyShift action_66
action_4 (45) = happyShift action_67
action_4 (46) = happyShift action_68
action_4 (47) = happyShift action_69
action_4 (48) = happyShift action_27
action_4 (49) = happyShift action_70
action_4 (58) = happyShift action_71
action_4 (59) = happyShift action_72
action_4 (60) = happyShift action_73
action_4 (61) = happyShift action_74
action_4 (62) = happyShift action_75
action_4 (64) = happyShift action_76
action_4 (69) = happyShift action_31
action_4 (70) = happyShift action_77
action_4 (71) = happyShift action_78
action_4 (72) = happyShift action_79
action_4 (73) = happyShift action_80
action_4 (5) = happyGoto action_60
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 (13) = happyGoto action_8
action_4 _ = happyReduce_3

action_5 _ = happyReduce_9

action_6 (41) = happyShift action_59
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_44

action_8 _ = happyReduce_45

action_9 _ = happyReduce_63

action_10 _ = happyReduce_65

action_11 _ = happyReduce_64

action_12 (66) = happyShift action_58
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (20) = happyShift action_9
action_13 (21) = happyShift action_10
action_13 (22) = happyShift action_11
action_13 (23) = happyShift action_12
action_13 (24) = happyShift action_13
action_13 (25) = happyShift action_14
action_13 (26) = happyShift action_15
action_13 (27) = happyShift action_16
action_13 (28) = happyShift action_17
action_13 (29) = happyShift action_18
action_13 (31) = happyShift action_19
action_13 (34) = happyShift action_20
action_13 (35) = happyShift action_21
action_13 (36) = happyShift action_22
action_13 (39) = happyShift action_23
action_13 (40) = happyShift action_24
action_13 (41) = happyShift action_25
action_13 (47) = happyShift action_26
action_13 (48) = happyShift action_27
action_13 (59) = happyShift action_28
action_13 (62) = happyShift action_29
action_13 (64) = happyShift action_30
action_13 (69) = happyShift action_31
action_13 (6) = happyGoto action_57
action_13 (7) = happyGoto action_5
action_13 (11) = happyGoto action_6
action_13 (12) = happyGoto action_7
action_13 (13) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (41) = happyShift action_54
action_14 (62) = happyShift action_55
action_14 (72) = happyShift action_56
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (20) = happyShift action_9
action_15 (21) = happyShift action_10
action_15 (22) = happyShift action_11
action_15 (23) = happyShift action_12
action_15 (24) = happyShift action_13
action_15 (25) = happyShift action_14
action_15 (26) = happyShift action_15
action_15 (27) = happyShift action_16
action_15 (28) = happyShift action_17
action_15 (29) = happyShift action_18
action_15 (31) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (39) = happyShift action_23
action_15 (40) = happyShift action_24
action_15 (41) = happyShift action_25
action_15 (47) = happyShift action_26
action_15 (48) = happyShift action_27
action_15 (59) = happyShift action_28
action_15 (62) = happyShift action_29
action_15 (64) = happyShift action_30
action_15 (69) = happyShift action_31
action_15 (6) = happyGoto action_53
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 (12) = happyGoto action_7
action_15 (13) = happyGoto action_8
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (20) = happyShift action_9
action_16 (21) = happyShift action_10
action_16 (22) = happyShift action_11
action_16 (23) = happyShift action_12
action_16 (24) = happyShift action_13
action_16 (25) = happyShift action_14
action_16 (26) = happyShift action_15
action_16 (27) = happyShift action_16
action_16 (28) = happyShift action_17
action_16 (29) = happyShift action_18
action_16 (31) = happyShift action_19
action_16 (34) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (39) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (41) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (48) = happyShift action_27
action_16 (59) = happyShift action_28
action_16 (62) = happyShift action_29
action_16 (64) = happyShift action_30
action_16 (69) = happyShift action_31
action_16 (6) = happyGoto action_52
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 (13) = happyGoto action_8
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (20) = happyShift action_9
action_17 (21) = happyShift action_10
action_17 (22) = happyShift action_11
action_17 (23) = happyShift action_12
action_17 (24) = happyShift action_13
action_17 (25) = happyShift action_14
action_17 (26) = happyShift action_15
action_17 (27) = happyShift action_16
action_17 (28) = happyShift action_17
action_17 (29) = happyShift action_18
action_17 (31) = happyShift action_19
action_17 (34) = happyShift action_20
action_17 (35) = happyShift action_21
action_17 (36) = happyShift action_22
action_17 (39) = happyShift action_23
action_17 (40) = happyShift action_24
action_17 (41) = happyShift action_25
action_17 (47) = happyShift action_26
action_17 (48) = happyShift action_27
action_17 (59) = happyShift action_28
action_17 (62) = happyShift action_29
action_17 (64) = happyShift action_30
action_17 (69) = happyShift action_31
action_17 (6) = happyGoto action_50
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (12) = happyGoto action_7
action_17 (13) = happyGoto action_8
action_17 (17) = happyGoto action_51
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_17

action_19 (20) = happyShift action_9
action_19 (21) = happyShift action_10
action_19 (22) = happyShift action_11
action_19 (23) = happyShift action_12
action_19 (24) = happyShift action_13
action_19 (25) = happyShift action_14
action_19 (26) = happyShift action_15
action_19 (27) = happyShift action_16
action_19 (28) = happyShift action_17
action_19 (29) = happyShift action_18
action_19 (31) = happyShift action_19
action_19 (34) = happyShift action_20
action_19 (35) = happyShift action_21
action_19 (36) = happyShift action_22
action_19 (39) = happyShift action_23
action_19 (40) = happyShift action_24
action_19 (41) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (48) = happyShift action_27
action_19 (59) = happyShift action_28
action_19 (62) = happyShift action_29
action_19 (64) = happyShift action_30
action_19 (69) = happyShift action_31
action_19 (6) = happyGoto action_49
action_19 (7) = happyGoto action_5
action_19 (11) = happyGoto action_6
action_19 (12) = happyGoto action_7
action_19 (13) = happyGoto action_8
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (20) = happyShift action_9
action_20 (21) = happyShift action_10
action_20 (22) = happyShift action_11
action_20 (23) = happyShift action_12
action_20 (24) = happyShift action_13
action_20 (25) = happyShift action_14
action_20 (26) = happyShift action_15
action_20 (27) = happyShift action_16
action_20 (28) = happyShift action_17
action_20 (29) = happyShift action_18
action_20 (31) = happyShift action_19
action_20 (34) = happyShift action_20
action_20 (35) = happyShift action_21
action_20 (36) = happyShift action_22
action_20 (39) = happyShift action_23
action_20 (40) = happyShift action_24
action_20 (41) = happyShift action_25
action_20 (47) = happyShift action_26
action_20 (48) = happyShift action_27
action_20 (59) = happyShift action_28
action_20 (62) = happyShift action_29
action_20 (64) = happyShift action_30
action_20 (69) = happyShift action_31
action_20 (6) = happyGoto action_48
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 (12) = happyGoto action_7
action_20 (13) = happyGoto action_8
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (20) = happyShift action_9
action_21 (21) = happyShift action_10
action_21 (22) = happyShift action_11
action_21 (23) = happyShift action_12
action_21 (24) = happyShift action_13
action_21 (25) = happyShift action_14
action_21 (26) = happyShift action_15
action_21 (27) = happyShift action_16
action_21 (28) = happyShift action_17
action_21 (29) = happyShift action_18
action_21 (31) = happyShift action_19
action_21 (34) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (36) = happyShift action_22
action_21 (39) = happyShift action_23
action_21 (40) = happyShift action_24
action_21 (41) = happyShift action_25
action_21 (47) = happyShift action_26
action_21 (48) = happyShift action_27
action_21 (59) = happyShift action_28
action_21 (62) = happyShift action_29
action_21 (64) = happyShift action_30
action_21 (69) = happyShift action_31
action_21 (6) = happyGoto action_47
action_21 (7) = happyGoto action_5
action_21 (11) = happyGoto action_6
action_21 (12) = happyGoto action_7
action_21 (13) = happyGoto action_8
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (20) = happyShift action_9
action_22 (21) = happyShift action_10
action_22 (22) = happyShift action_11
action_22 (23) = happyShift action_12
action_22 (24) = happyShift action_13
action_22 (25) = happyShift action_14
action_22 (26) = happyShift action_15
action_22 (27) = happyShift action_16
action_22 (28) = happyShift action_17
action_22 (29) = happyShift action_18
action_22 (31) = happyShift action_19
action_22 (34) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (39) = happyShift action_23
action_22 (40) = happyShift action_24
action_22 (41) = happyShift action_25
action_22 (47) = happyShift action_26
action_22 (48) = happyShift action_27
action_22 (59) = happyShift action_28
action_22 (62) = happyShift action_29
action_22 (64) = happyShift action_30
action_22 (69) = happyShift action_31
action_22 (6) = happyGoto action_46
action_22 (7) = happyGoto action_5
action_22 (11) = happyGoto action_6
action_22 (12) = happyGoto action_7
action_22 (13) = happyGoto action_8
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_15

action_24 _ = happyReduce_16

action_25 (51) = happyShift action_39
action_25 (52) = happyShift action_40
action_25 (53) = happyShift action_41
action_25 (54) = happyShift action_42
action_25 (55) = happyShift action_43
action_25 (56) = happyShift action_44
action_25 (57) = happyShift action_45
action_25 _ = happyReduce_36

action_26 (41) = happyShift action_38
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (41) = happyShift action_37
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (20) = happyShift action_9
action_28 (21) = happyShift action_10
action_28 (22) = happyShift action_11
action_28 (23) = happyShift action_12
action_28 (24) = happyShift action_13
action_28 (25) = happyShift action_14
action_28 (26) = happyShift action_15
action_28 (27) = happyShift action_16
action_28 (28) = happyShift action_17
action_28 (29) = happyShift action_18
action_28 (31) = happyShift action_19
action_28 (34) = happyShift action_20
action_28 (35) = happyShift action_21
action_28 (36) = happyShift action_22
action_28 (39) = happyShift action_23
action_28 (40) = happyShift action_24
action_28 (41) = happyShift action_25
action_28 (47) = happyShift action_26
action_28 (48) = happyShift action_27
action_28 (59) = happyShift action_28
action_28 (62) = happyShift action_29
action_28 (64) = happyShift action_30
action_28 (69) = happyShift action_31
action_28 (6) = happyGoto action_36
action_28 (7) = happyGoto action_5
action_28 (11) = happyGoto action_6
action_28 (12) = happyGoto action_7
action_28 (13) = happyGoto action_8
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (20) = happyShift action_9
action_29 (21) = happyShift action_10
action_29 (22) = happyShift action_11
action_29 (23) = happyShift action_12
action_29 (24) = happyShift action_13
action_29 (25) = happyShift action_14
action_29 (26) = happyShift action_15
action_29 (27) = happyShift action_16
action_29 (28) = happyShift action_17
action_29 (29) = happyShift action_18
action_29 (31) = happyShift action_19
action_29 (34) = happyShift action_20
action_29 (35) = happyShift action_21
action_29 (36) = happyShift action_22
action_29 (39) = happyShift action_23
action_29 (40) = happyShift action_24
action_29 (41) = happyShift action_25
action_29 (47) = happyShift action_26
action_29 (48) = happyShift action_27
action_29 (59) = happyShift action_28
action_29 (62) = happyShift action_29
action_29 (64) = happyShift action_30
action_29 (69) = happyShift action_31
action_29 (6) = happyGoto action_35
action_29 (7) = happyGoto action_5
action_29 (11) = happyGoto action_6
action_29 (12) = happyGoto action_7
action_29 (13) = happyGoto action_8
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_9
action_30 (21) = happyShift action_10
action_30 (22) = happyShift action_11
action_30 (23) = happyShift action_12
action_30 (24) = happyShift action_13
action_30 (25) = happyShift action_14
action_30 (26) = happyShift action_15
action_30 (27) = happyShift action_16
action_30 (28) = happyShift action_17
action_30 (29) = happyShift action_18
action_30 (31) = happyShift action_19
action_30 (34) = happyShift action_20
action_30 (35) = happyShift action_21
action_30 (36) = happyShift action_22
action_30 (39) = happyShift action_23
action_30 (40) = happyShift action_24
action_30 (41) = happyShift action_25
action_30 (47) = happyShift action_26
action_30 (48) = happyShift action_27
action_30 (59) = happyShift action_28
action_30 (62) = happyShift action_29
action_30 (64) = happyShift action_30
action_30 (69) = happyShift action_31
action_30 (6) = happyGoto action_33
action_30 (7) = happyGoto action_5
action_30 (10) = happyGoto action_34
action_30 (11) = happyGoto action_6
action_30 (12) = happyGoto action_7
action_30 (13) = happyGoto action_8
action_30 _ = happyReduce_60

action_31 (20) = happyShift action_9
action_31 (21) = happyShift action_10
action_31 (22) = happyShift action_11
action_31 (23) = happyShift action_12
action_31 (24) = happyShift action_13
action_31 (25) = happyShift action_14
action_31 (26) = happyShift action_15
action_31 (27) = happyShift action_16
action_31 (28) = happyShift action_17
action_31 (29) = happyShift action_18
action_31 (31) = happyShift action_19
action_31 (34) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (36) = happyShift action_22
action_31 (39) = happyShift action_23
action_31 (40) = happyShift action_24
action_31 (41) = happyShift action_25
action_31 (47) = happyShift action_26
action_31 (48) = happyShift action_27
action_31 (59) = happyShift action_28
action_31 (62) = happyShift action_29
action_31 (64) = happyShift action_30
action_31 (69) = happyShift action_31
action_31 (6) = happyGoto action_32
action_31 (7) = happyGoto action_5
action_31 (11) = happyGoto action_6
action_31 (12) = happyGoto action_7
action_31 (13) = happyGoto action_8
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (46) = happyShift action_68
action_32 (47) = happyShift action_105
action_32 (49) = happyShift action_70
action_32 (62) = happyShift action_107
action_32 (64) = happyShift action_108
action_32 (70) = happyShift action_77
action_32 _ = happyReduce_48

action_33 (37) = happyShift action_62
action_33 (38) = happyShift action_63
action_33 (42) = happyShift action_64
action_33 (43) = happyShift action_65
action_33 (44) = happyShift action_66
action_33 (45) = happyShift action_67
action_33 (46) = happyShift action_68
action_33 (47) = happyShift action_105
action_33 (49) = happyShift action_70
action_33 (58) = happyShift action_71
action_33 (59) = happyShift action_106
action_33 (60) = happyShift action_73
action_33 (61) = happyShift action_74
action_33 (62) = happyShift action_107
action_33 (64) = happyShift action_108
action_33 (68) = happyShift action_127
action_33 (70) = happyShift action_77
action_33 (71) = happyShift action_78
action_33 (72) = happyShift action_79
action_33 (73) = happyShift action_80
action_33 _ = happyReduce_61

action_34 (65) = happyShift action_126
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (37) = happyShift action_62
action_35 (38) = happyShift action_63
action_35 (42) = happyShift action_64
action_35 (43) = happyShift action_65
action_35 (44) = happyShift action_66
action_35 (45) = happyShift action_67
action_35 (46) = happyShift action_68
action_35 (47) = happyShift action_105
action_35 (49) = happyShift action_70
action_35 (58) = happyShift action_71
action_35 (59) = happyShift action_106
action_35 (60) = happyShift action_73
action_35 (61) = happyShift action_74
action_35 (62) = happyShift action_107
action_35 (63) = happyShift action_125
action_35 (64) = happyShift action_108
action_35 (70) = happyShift action_77
action_35 (71) = happyShift action_78
action_35 (72) = happyShift action_79
action_35 (73) = happyShift action_80
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (46) = happyShift action_68
action_36 (47) = happyShift action_105
action_36 (49) = happyShift action_70
action_36 (62) = happyShift action_107
action_36 (64) = happyShift action_108
action_36 (70) = happyShift action_77
action_36 _ = happyReduce_53

action_37 _ = happyReduce_35

action_38 _ = happyReduce_34

action_39 (20) = happyShift action_9
action_39 (21) = happyShift action_10
action_39 (22) = happyShift action_11
action_39 (23) = happyShift action_12
action_39 (24) = happyShift action_13
action_39 (25) = happyShift action_14
action_39 (26) = happyShift action_15
action_39 (27) = happyShift action_16
action_39 (28) = happyShift action_17
action_39 (29) = happyShift action_18
action_39 (31) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (39) = happyShift action_23
action_39 (40) = happyShift action_24
action_39 (41) = happyShift action_25
action_39 (47) = happyShift action_26
action_39 (48) = happyShift action_27
action_39 (59) = happyShift action_28
action_39 (62) = happyShift action_29
action_39 (64) = happyShift action_30
action_39 (69) = happyShift action_31
action_39 (6) = happyGoto action_124
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (12) = happyGoto action_7
action_39 (13) = happyGoto action_8
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (20) = happyShift action_9
action_40 (21) = happyShift action_10
action_40 (22) = happyShift action_11
action_40 (23) = happyShift action_12
action_40 (24) = happyShift action_13
action_40 (25) = happyShift action_14
action_40 (26) = happyShift action_15
action_40 (27) = happyShift action_16
action_40 (28) = happyShift action_17
action_40 (29) = happyShift action_18
action_40 (31) = happyShift action_19
action_40 (34) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (39) = happyShift action_23
action_40 (40) = happyShift action_24
action_40 (41) = happyShift action_25
action_40 (47) = happyShift action_26
action_40 (48) = happyShift action_27
action_40 (59) = happyShift action_28
action_40 (62) = happyShift action_29
action_40 (64) = happyShift action_30
action_40 (69) = happyShift action_31
action_40 (6) = happyGoto action_123
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (12) = happyGoto action_7
action_40 (13) = happyGoto action_8
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (20) = happyShift action_9
action_41 (21) = happyShift action_10
action_41 (22) = happyShift action_11
action_41 (23) = happyShift action_12
action_41 (24) = happyShift action_13
action_41 (25) = happyShift action_14
action_41 (26) = happyShift action_15
action_41 (27) = happyShift action_16
action_41 (28) = happyShift action_17
action_41 (29) = happyShift action_18
action_41 (31) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (39) = happyShift action_23
action_41 (40) = happyShift action_24
action_41 (41) = happyShift action_25
action_41 (47) = happyShift action_26
action_41 (48) = happyShift action_27
action_41 (59) = happyShift action_28
action_41 (62) = happyShift action_29
action_41 (64) = happyShift action_30
action_41 (69) = happyShift action_31
action_41 (6) = happyGoto action_122
action_41 (7) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 (12) = happyGoto action_7
action_41 (13) = happyGoto action_8
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (20) = happyShift action_9
action_42 (21) = happyShift action_10
action_42 (22) = happyShift action_11
action_42 (23) = happyShift action_12
action_42 (24) = happyShift action_13
action_42 (25) = happyShift action_14
action_42 (26) = happyShift action_15
action_42 (27) = happyShift action_16
action_42 (28) = happyShift action_17
action_42 (29) = happyShift action_18
action_42 (31) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (39) = happyShift action_23
action_42 (40) = happyShift action_24
action_42 (41) = happyShift action_25
action_42 (47) = happyShift action_26
action_42 (48) = happyShift action_27
action_42 (59) = happyShift action_28
action_42 (62) = happyShift action_29
action_42 (64) = happyShift action_30
action_42 (69) = happyShift action_31
action_42 (6) = happyGoto action_121
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 (12) = happyGoto action_7
action_42 (13) = happyGoto action_8
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (20) = happyShift action_9
action_43 (21) = happyShift action_10
action_43 (22) = happyShift action_11
action_43 (23) = happyShift action_12
action_43 (24) = happyShift action_13
action_43 (25) = happyShift action_14
action_43 (26) = happyShift action_15
action_43 (27) = happyShift action_16
action_43 (28) = happyShift action_17
action_43 (29) = happyShift action_18
action_43 (31) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (39) = happyShift action_23
action_43 (40) = happyShift action_24
action_43 (41) = happyShift action_25
action_43 (47) = happyShift action_26
action_43 (48) = happyShift action_27
action_43 (59) = happyShift action_28
action_43 (62) = happyShift action_29
action_43 (64) = happyShift action_30
action_43 (69) = happyShift action_31
action_43 (6) = happyGoto action_120
action_43 (7) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 (12) = happyGoto action_7
action_43 (13) = happyGoto action_8
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_9
action_44 (21) = happyShift action_10
action_44 (22) = happyShift action_11
action_44 (23) = happyShift action_12
action_44 (24) = happyShift action_13
action_44 (25) = happyShift action_14
action_44 (26) = happyShift action_15
action_44 (27) = happyShift action_16
action_44 (28) = happyShift action_17
action_44 (29) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (39) = happyShift action_23
action_44 (40) = happyShift action_24
action_44 (41) = happyShift action_25
action_44 (47) = happyShift action_26
action_44 (48) = happyShift action_27
action_44 (59) = happyShift action_28
action_44 (62) = happyShift action_29
action_44 (64) = happyShift action_30
action_44 (69) = happyShift action_31
action_44 (6) = happyGoto action_119
action_44 (7) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 (12) = happyGoto action_7
action_44 (13) = happyGoto action_8
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (20) = happyShift action_9
action_45 (21) = happyShift action_10
action_45 (22) = happyShift action_11
action_45 (23) = happyShift action_12
action_45 (24) = happyShift action_13
action_45 (25) = happyShift action_14
action_45 (26) = happyShift action_15
action_45 (27) = happyShift action_16
action_45 (28) = happyShift action_17
action_45 (29) = happyShift action_18
action_45 (31) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (39) = happyShift action_23
action_45 (40) = happyShift action_24
action_45 (41) = happyShift action_25
action_45 (47) = happyShift action_26
action_45 (48) = happyShift action_27
action_45 (59) = happyShift action_28
action_45 (62) = happyShift action_29
action_45 (64) = happyShift action_30
action_45 (69) = happyShift action_31
action_45 (6) = happyGoto action_118
action_45 (7) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 (12) = happyGoto action_7
action_45 (13) = happyGoto action_8
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (62) = happyShift action_107
action_46 (64) = happyShift action_108
action_46 _ = happyReduce_12

action_47 (62) = happyShift action_107
action_47 (64) = happyShift action_108
action_47 _ = happyReduce_11

action_48 (62) = happyShift action_107
action_48 (64) = happyShift action_108
action_48 _ = happyReduce_10

action_49 (37) = happyShift action_62
action_49 (38) = happyShift action_63
action_49 (42) = happyShift action_64
action_49 (43) = happyShift action_65
action_49 (44) = happyShift action_66
action_49 (45) = happyShift action_67
action_49 (46) = happyShift action_68
action_49 (47) = happyShift action_105
action_49 (49) = happyShift action_70
action_49 (58) = happyShift action_71
action_49 (59) = happyShift action_106
action_49 (60) = happyShift action_73
action_49 (61) = happyShift action_74
action_49 (62) = happyShift action_107
action_49 (64) = happyShift action_108
action_49 (66) = happyShift action_117
action_49 (70) = happyShift action_77
action_49 (71) = happyShift action_78
action_49 (72) = happyShift action_79
action_49 (73) = happyShift action_80
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (30) = happyShift action_116
action_50 (37) = happyShift action_62
action_50 (38) = happyShift action_63
action_50 (42) = happyShift action_64
action_50 (43) = happyShift action_65
action_50 (44) = happyShift action_66
action_50 (45) = happyShift action_67
action_50 (46) = happyShift action_68
action_50 (47) = happyShift action_105
action_50 (49) = happyShift action_70
action_50 (58) = happyShift action_71
action_50 (59) = happyShift action_106
action_50 (60) = happyShift action_73
action_50 (61) = happyShift action_74
action_50 (62) = happyShift action_107
action_50 (64) = happyShift action_108
action_50 (70) = happyShift action_77
action_50 (71) = happyShift action_78
action_50 (72) = happyShift action_79
action_50 (73) = happyShift action_80
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (66) = happyShift action_115
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (37) = happyShift action_62
action_52 (38) = happyShift action_63
action_52 (42) = happyShift action_64
action_52 (43) = happyShift action_65
action_52 (44) = happyShift action_66
action_52 (45) = happyShift action_67
action_52 (46) = happyShift action_68
action_52 (47) = happyShift action_105
action_52 (49) = happyShift action_70
action_52 (58) = happyShift action_71
action_52 (59) = happyShift action_106
action_52 (60) = happyShift action_73
action_52 (61) = happyShift action_74
action_52 (62) = happyShift action_107
action_52 (64) = happyShift action_108
action_52 (66) = happyShift action_114
action_52 (70) = happyShift action_77
action_52 (71) = happyShift action_78
action_52 (72) = happyShift action_79
action_52 (73) = happyShift action_80
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (37) = happyShift action_62
action_53 (38) = happyShift action_63
action_53 (42) = happyShift action_64
action_53 (43) = happyShift action_65
action_53 (44) = happyShift action_66
action_53 (45) = happyShift action_67
action_53 (46) = happyShift action_68
action_53 (47) = happyShift action_105
action_53 (49) = happyShift action_70
action_53 (58) = happyShift action_71
action_53 (59) = happyShift action_106
action_53 (60) = happyShift action_73
action_53 (61) = happyShift action_74
action_53 (62) = happyShift action_107
action_53 (64) = happyShift action_108
action_53 (70) = happyShift action_77
action_53 (71) = happyShift action_78
action_53 (72) = happyShift action_79
action_53 (73) = happyShift action_80
action_53 _ = happyReduce_47

action_54 (62) = happyShift action_113
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (20) = happyShift action_9
action_55 (21) = happyShift action_10
action_55 (22) = happyShift action_11
action_55 (25) = happyShift action_112
action_55 (11) = happyGoto action_110
action_55 (14) = happyGoto action_111
action_55 _ = happyReduce_72

action_56 (62) = happyShift action_109
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (37) = happyShift action_62
action_57 (38) = happyShift action_63
action_57 (42) = happyShift action_64
action_57 (43) = happyShift action_65
action_57 (44) = happyShift action_66
action_57 (45) = happyShift action_67
action_57 (46) = happyShift action_68
action_57 (47) = happyShift action_105
action_57 (49) = happyShift action_70
action_57 (58) = happyShift action_71
action_57 (59) = happyShift action_106
action_57 (60) = happyShift action_73
action_57 (61) = happyShift action_74
action_57 (62) = happyShift action_107
action_57 (64) = happyShift action_108
action_57 (70) = happyShift action_77
action_57 (71) = happyShift action_78
action_57 (72) = happyShift action_79
action_57 (73) = happyShift action_80
action_57 _ = happyReduce_43

action_58 (20) = happyShift action_9
action_58 (21) = happyShift action_10
action_58 (22) = happyShift action_11
action_58 (23) = happyShift action_12
action_58 (24) = happyShift action_13
action_58 (25) = happyShift action_14
action_58 (26) = happyShift action_15
action_58 (27) = happyShift action_16
action_58 (28) = happyShift action_17
action_58 (29) = happyShift action_18
action_58 (31) = happyShift action_19
action_58 (34) = happyShift action_20
action_58 (35) = happyShift action_21
action_58 (36) = happyShift action_22
action_58 (39) = happyShift action_23
action_58 (40) = happyShift action_24
action_58 (41) = happyShift action_25
action_58 (47) = happyShift action_26
action_58 (48) = happyShift action_27
action_58 (59) = happyShift action_28
action_58 (62) = happyShift action_29
action_58 (64) = happyShift action_30
action_58 (69) = happyShift action_31
action_58 (6) = happyGoto action_104
action_58 (7) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 (12) = happyGoto action_7
action_58 (13) = happyGoto action_8
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (51) = happyShift action_103
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_5

action_61 (20) = happyShift action_9
action_61 (21) = happyShift action_10
action_61 (22) = happyShift action_11
action_61 (23) = happyShift action_12
action_61 (24) = happyShift action_13
action_61 (25) = happyShift action_14
action_61 (26) = happyShift action_15
action_61 (27) = happyShift action_16
action_61 (28) = happyShift action_17
action_61 (29) = happyShift action_18
action_61 (31) = happyShift action_19
action_61 (34) = happyShift action_20
action_61 (35) = happyShift action_21
action_61 (36) = happyShift action_22
action_61 (39) = happyShift action_23
action_61 (40) = happyShift action_24
action_61 (41) = happyShift action_25
action_61 (47) = happyShift action_26
action_61 (48) = happyShift action_27
action_61 (59) = happyShift action_28
action_61 (62) = happyShift action_29
action_61 (64) = happyShift action_30
action_61 (69) = happyShift action_31
action_61 (5) = happyGoto action_102
action_61 (6) = happyGoto action_4
action_61 (7) = happyGoto action_5
action_61 (11) = happyGoto action_6
action_61 (12) = happyGoto action_7
action_61 (13) = happyGoto action_8
action_61 _ = happyReduce_4

action_62 (20) = happyShift action_9
action_62 (21) = happyShift action_10
action_62 (22) = happyShift action_11
action_62 (23) = happyShift action_12
action_62 (24) = happyShift action_13
action_62 (25) = happyShift action_14
action_62 (26) = happyShift action_15
action_62 (27) = happyShift action_16
action_62 (28) = happyShift action_17
action_62 (29) = happyShift action_18
action_62 (31) = happyShift action_19
action_62 (34) = happyShift action_20
action_62 (35) = happyShift action_21
action_62 (36) = happyShift action_22
action_62 (39) = happyShift action_23
action_62 (40) = happyShift action_24
action_62 (41) = happyShift action_25
action_62 (47) = happyShift action_26
action_62 (48) = happyShift action_27
action_62 (59) = happyShift action_28
action_62 (62) = happyShift action_29
action_62 (64) = happyShift action_30
action_62 (69) = happyShift action_31
action_62 (6) = happyGoto action_101
action_62 (7) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 (12) = happyGoto action_7
action_62 (13) = happyGoto action_8
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (20) = happyShift action_9
action_63 (21) = happyShift action_10
action_63 (22) = happyShift action_11
action_63 (23) = happyShift action_12
action_63 (24) = happyShift action_13
action_63 (25) = happyShift action_14
action_63 (26) = happyShift action_15
action_63 (27) = happyShift action_16
action_63 (28) = happyShift action_17
action_63 (29) = happyShift action_18
action_63 (31) = happyShift action_19
action_63 (34) = happyShift action_20
action_63 (35) = happyShift action_21
action_63 (36) = happyShift action_22
action_63 (39) = happyShift action_23
action_63 (40) = happyShift action_24
action_63 (41) = happyShift action_25
action_63 (47) = happyShift action_26
action_63 (48) = happyShift action_27
action_63 (59) = happyShift action_28
action_63 (62) = happyShift action_29
action_63 (64) = happyShift action_30
action_63 (69) = happyShift action_31
action_63 (6) = happyGoto action_100
action_63 (7) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (12) = happyGoto action_7
action_63 (13) = happyGoto action_8
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (20) = happyShift action_9
action_64 (21) = happyShift action_10
action_64 (22) = happyShift action_11
action_64 (23) = happyShift action_12
action_64 (24) = happyShift action_13
action_64 (25) = happyShift action_14
action_64 (26) = happyShift action_15
action_64 (27) = happyShift action_16
action_64 (28) = happyShift action_17
action_64 (29) = happyShift action_18
action_64 (31) = happyShift action_19
action_64 (34) = happyShift action_20
action_64 (35) = happyShift action_21
action_64 (36) = happyShift action_22
action_64 (39) = happyShift action_23
action_64 (40) = happyShift action_24
action_64 (41) = happyShift action_25
action_64 (47) = happyShift action_26
action_64 (48) = happyShift action_27
action_64 (59) = happyShift action_28
action_64 (62) = happyShift action_29
action_64 (64) = happyShift action_30
action_64 (69) = happyShift action_31
action_64 (6) = happyGoto action_99
action_64 (7) = happyGoto action_5
action_64 (11) = happyGoto action_6
action_64 (12) = happyGoto action_7
action_64 (13) = happyGoto action_8
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (20) = happyShift action_9
action_65 (21) = happyShift action_10
action_65 (22) = happyShift action_11
action_65 (23) = happyShift action_12
action_65 (24) = happyShift action_13
action_65 (25) = happyShift action_14
action_65 (26) = happyShift action_15
action_65 (27) = happyShift action_16
action_65 (28) = happyShift action_17
action_65 (29) = happyShift action_18
action_65 (31) = happyShift action_19
action_65 (34) = happyShift action_20
action_65 (35) = happyShift action_21
action_65 (36) = happyShift action_22
action_65 (39) = happyShift action_23
action_65 (40) = happyShift action_24
action_65 (41) = happyShift action_25
action_65 (47) = happyShift action_26
action_65 (48) = happyShift action_27
action_65 (59) = happyShift action_28
action_65 (62) = happyShift action_29
action_65 (64) = happyShift action_30
action_65 (69) = happyShift action_31
action_65 (6) = happyGoto action_98
action_65 (7) = happyGoto action_5
action_65 (11) = happyGoto action_6
action_65 (12) = happyGoto action_7
action_65 (13) = happyGoto action_8
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (20) = happyShift action_9
action_66 (21) = happyShift action_10
action_66 (22) = happyShift action_11
action_66 (23) = happyShift action_12
action_66 (24) = happyShift action_13
action_66 (25) = happyShift action_14
action_66 (26) = happyShift action_15
action_66 (27) = happyShift action_16
action_66 (28) = happyShift action_17
action_66 (29) = happyShift action_18
action_66 (31) = happyShift action_19
action_66 (34) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (36) = happyShift action_22
action_66 (39) = happyShift action_23
action_66 (40) = happyShift action_24
action_66 (41) = happyShift action_25
action_66 (47) = happyShift action_26
action_66 (48) = happyShift action_27
action_66 (59) = happyShift action_28
action_66 (62) = happyShift action_29
action_66 (64) = happyShift action_30
action_66 (69) = happyShift action_31
action_66 (6) = happyGoto action_97
action_66 (7) = happyGoto action_5
action_66 (11) = happyGoto action_6
action_66 (12) = happyGoto action_7
action_66 (13) = happyGoto action_8
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (20) = happyShift action_9
action_67 (21) = happyShift action_10
action_67 (22) = happyShift action_11
action_67 (23) = happyShift action_12
action_67 (24) = happyShift action_13
action_67 (25) = happyShift action_14
action_67 (26) = happyShift action_15
action_67 (27) = happyShift action_16
action_67 (28) = happyShift action_17
action_67 (29) = happyShift action_18
action_67 (31) = happyShift action_19
action_67 (34) = happyShift action_20
action_67 (35) = happyShift action_21
action_67 (36) = happyShift action_22
action_67 (39) = happyShift action_23
action_67 (40) = happyShift action_24
action_67 (41) = happyShift action_25
action_67 (47) = happyShift action_26
action_67 (48) = happyShift action_27
action_67 (59) = happyShift action_28
action_67 (62) = happyShift action_29
action_67 (64) = happyShift action_30
action_67 (69) = happyShift action_31
action_67 (6) = happyGoto action_96
action_67 (7) = happyGoto action_5
action_67 (11) = happyGoto action_6
action_67 (12) = happyGoto action_7
action_67 (13) = happyGoto action_8
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (20) = happyShift action_9
action_68 (21) = happyShift action_10
action_68 (22) = happyShift action_11
action_68 (23) = happyShift action_12
action_68 (24) = happyShift action_13
action_68 (25) = happyShift action_14
action_68 (26) = happyShift action_15
action_68 (27) = happyShift action_16
action_68 (28) = happyShift action_17
action_68 (29) = happyShift action_18
action_68 (31) = happyShift action_19
action_68 (34) = happyShift action_20
action_68 (35) = happyShift action_21
action_68 (36) = happyShift action_22
action_68 (39) = happyShift action_23
action_68 (40) = happyShift action_24
action_68 (41) = happyShift action_25
action_68 (47) = happyShift action_26
action_68 (48) = happyShift action_27
action_68 (59) = happyShift action_28
action_68 (62) = happyShift action_29
action_68 (64) = happyShift action_30
action_68 (69) = happyShift action_31
action_68 (6) = happyGoto action_95
action_68 (7) = happyGoto action_5
action_68 (11) = happyGoto action_6
action_68 (12) = happyGoto action_7
action_68 (13) = happyGoto action_8
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (20) = happyShift action_9
action_69 (21) = happyShift action_10
action_69 (22) = happyShift action_11
action_69 (23) = happyShift action_12
action_69 (24) = happyShift action_13
action_69 (25) = happyShift action_14
action_69 (26) = happyShift action_15
action_69 (27) = happyShift action_16
action_69 (28) = happyShift action_17
action_69 (29) = happyShift action_18
action_69 (31) = happyShift action_19
action_69 (34) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (36) = happyShift action_22
action_69 (39) = happyShift action_23
action_69 (40) = happyShift action_24
action_69 (41) = happyShift action_94
action_69 (47) = happyShift action_26
action_69 (48) = happyShift action_27
action_69 (59) = happyShift action_28
action_69 (62) = happyShift action_29
action_69 (64) = happyShift action_30
action_69 (69) = happyShift action_31
action_69 (6) = happyGoto action_93
action_69 (7) = happyGoto action_5
action_69 (11) = happyGoto action_6
action_69 (12) = happyGoto action_7
action_69 (13) = happyGoto action_8
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (20) = happyShift action_9
action_70 (21) = happyShift action_10
action_70 (22) = happyShift action_11
action_70 (23) = happyShift action_12
action_70 (24) = happyShift action_13
action_70 (25) = happyShift action_14
action_70 (26) = happyShift action_15
action_70 (27) = happyShift action_16
action_70 (28) = happyShift action_17
action_70 (29) = happyShift action_18
action_70 (31) = happyShift action_19
action_70 (34) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (39) = happyShift action_23
action_70 (40) = happyShift action_24
action_70 (41) = happyShift action_25
action_70 (47) = happyShift action_26
action_70 (48) = happyShift action_27
action_70 (59) = happyShift action_28
action_70 (62) = happyShift action_29
action_70 (64) = happyShift action_30
action_70 (69) = happyShift action_31
action_70 (6) = happyGoto action_92
action_70 (7) = happyGoto action_5
action_70 (11) = happyGoto action_6
action_70 (12) = happyGoto action_7
action_70 (13) = happyGoto action_8
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (20) = happyShift action_9
action_71 (21) = happyShift action_10
action_71 (22) = happyShift action_11
action_71 (23) = happyShift action_12
action_71 (24) = happyShift action_13
action_71 (25) = happyShift action_14
action_71 (26) = happyShift action_15
action_71 (27) = happyShift action_16
action_71 (28) = happyShift action_17
action_71 (29) = happyShift action_18
action_71 (31) = happyShift action_19
action_71 (34) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (39) = happyShift action_23
action_71 (40) = happyShift action_24
action_71 (41) = happyShift action_25
action_71 (47) = happyShift action_26
action_71 (48) = happyShift action_27
action_71 (59) = happyShift action_28
action_71 (62) = happyShift action_29
action_71 (64) = happyShift action_30
action_71 (69) = happyShift action_31
action_71 (6) = happyGoto action_91
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 (12) = happyGoto action_7
action_71 (13) = happyGoto action_8
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (20) = happyShift action_9
action_72 (21) = happyShift action_10
action_72 (22) = happyShift action_11
action_72 (23) = happyShift action_12
action_72 (24) = happyShift action_13
action_72 (25) = happyShift action_14
action_72 (26) = happyShift action_15
action_72 (27) = happyShift action_16
action_72 (28) = happyShift action_17
action_72 (29) = happyShift action_18
action_72 (31) = happyShift action_19
action_72 (34) = happyShift action_20
action_72 (35) = happyShift action_21
action_72 (36) = happyShift action_22
action_72 (39) = happyShift action_23
action_72 (40) = happyShift action_24
action_72 (41) = happyShift action_25
action_72 (47) = happyShift action_26
action_72 (48) = happyShift action_27
action_72 (59) = happyShift action_28
action_72 (62) = happyShift action_29
action_72 (64) = happyShift action_30
action_72 (69) = happyShift action_31
action_72 (6) = happyGoto action_90
action_72 (7) = happyGoto action_5
action_72 (11) = happyGoto action_6
action_72 (12) = happyGoto action_7
action_72 (13) = happyGoto action_8
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (20) = happyShift action_9
action_73 (21) = happyShift action_10
action_73 (22) = happyShift action_11
action_73 (23) = happyShift action_12
action_73 (24) = happyShift action_13
action_73 (25) = happyShift action_14
action_73 (26) = happyShift action_15
action_73 (27) = happyShift action_16
action_73 (28) = happyShift action_17
action_73 (29) = happyShift action_18
action_73 (31) = happyShift action_19
action_73 (34) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (39) = happyShift action_23
action_73 (40) = happyShift action_24
action_73 (41) = happyShift action_25
action_73 (47) = happyShift action_26
action_73 (48) = happyShift action_27
action_73 (59) = happyShift action_28
action_73 (62) = happyShift action_29
action_73 (64) = happyShift action_30
action_73 (69) = happyShift action_31
action_73 (6) = happyGoto action_89
action_73 (7) = happyGoto action_5
action_73 (11) = happyGoto action_6
action_73 (12) = happyGoto action_7
action_73 (13) = happyGoto action_8
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (20) = happyShift action_9
action_74 (21) = happyShift action_10
action_74 (22) = happyShift action_11
action_74 (23) = happyShift action_12
action_74 (24) = happyShift action_13
action_74 (25) = happyShift action_14
action_74 (26) = happyShift action_15
action_74 (27) = happyShift action_16
action_74 (28) = happyShift action_17
action_74 (29) = happyShift action_18
action_74 (31) = happyShift action_19
action_74 (34) = happyShift action_20
action_74 (35) = happyShift action_21
action_74 (36) = happyShift action_22
action_74 (39) = happyShift action_23
action_74 (40) = happyShift action_24
action_74 (41) = happyShift action_25
action_74 (47) = happyShift action_26
action_74 (48) = happyShift action_27
action_74 (59) = happyShift action_28
action_74 (62) = happyShift action_29
action_74 (64) = happyShift action_30
action_74 (69) = happyShift action_31
action_74 (6) = happyGoto action_88
action_74 (7) = happyGoto action_5
action_74 (11) = happyGoto action_6
action_74 (12) = happyGoto action_7
action_74 (13) = happyGoto action_8
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (20) = happyShift action_9
action_75 (21) = happyShift action_10
action_75 (22) = happyShift action_11
action_75 (23) = happyShift action_12
action_75 (24) = happyShift action_13
action_75 (25) = happyShift action_14
action_75 (26) = happyShift action_15
action_75 (27) = happyShift action_16
action_75 (28) = happyShift action_17
action_75 (29) = happyShift action_18
action_75 (31) = happyShift action_19
action_75 (34) = happyShift action_20
action_75 (35) = happyShift action_21
action_75 (36) = happyShift action_22
action_75 (39) = happyShift action_23
action_75 (40) = happyShift action_24
action_75 (41) = happyShift action_25
action_75 (47) = happyShift action_26
action_75 (48) = happyShift action_27
action_75 (59) = happyShift action_28
action_75 (62) = happyShift action_29
action_75 (64) = happyShift action_30
action_75 (69) = happyShift action_31
action_75 (6) = happyGoto action_86
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 (12) = happyGoto action_7
action_75 (13) = happyGoto action_8
action_75 (16) = happyGoto action_87
action_75 _ = happyReduce_78

action_76 (20) = happyShift action_9
action_76 (21) = happyShift action_10
action_76 (22) = happyShift action_11
action_76 (23) = happyShift action_12
action_76 (24) = happyShift action_13
action_76 (25) = happyShift action_14
action_76 (26) = happyShift action_15
action_76 (27) = happyShift action_16
action_76 (28) = happyShift action_17
action_76 (29) = happyShift action_18
action_76 (31) = happyShift action_19
action_76 (34) = happyShift action_20
action_76 (35) = happyShift action_21
action_76 (36) = happyShift action_22
action_76 (39) = happyShift action_23
action_76 (40) = happyShift action_24
action_76 (41) = happyShift action_25
action_76 (47) = happyShift action_26
action_76 (48) = happyShift action_27
action_76 (59) = happyShift action_28
action_76 (62) = happyShift action_29
action_76 (64) = happyShift action_30
action_76 (69) = happyShift action_31
action_76 (6) = happyGoto action_85
action_76 (7) = happyGoto action_5
action_76 (10) = happyGoto action_34
action_76 (11) = happyGoto action_6
action_76 (12) = happyGoto action_7
action_76 (13) = happyGoto action_8
action_76 _ = happyReduce_60

action_77 (20) = happyShift action_9
action_77 (21) = happyShift action_10
action_77 (22) = happyShift action_11
action_77 (23) = happyShift action_12
action_77 (24) = happyShift action_13
action_77 (25) = happyShift action_14
action_77 (26) = happyShift action_15
action_77 (27) = happyShift action_16
action_77 (28) = happyShift action_17
action_77 (29) = happyShift action_18
action_77 (31) = happyShift action_19
action_77 (34) = happyShift action_20
action_77 (35) = happyShift action_21
action_77 (36) = happyShift action_22
action_77 (39) = happyShift action_23
action_77 (40) = happyShift action_24
action_77 (41) = happyShift action_25
action_77 (47) = happyShift action_26
action_77 (48) = happyShift action_27
action_77 (59) = happyShift action_28
action_77 (62) = happyShift action_29
action_77 (64) = happyShift action_30
action_77 (69) = happyShift action_31
action_77 (6) = happyGoto action_84
action_77 (7) = happyGoto action_5
action_77 (11) = happyGoto action_6
action_77 (12) = happyGoto action_7
action_77 (13) = happyGoto action_8
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (20) = happyShift action_9
action_78 (21) = happyShift action_10
action_78 (22) = happyShift action_11
action_78 (23) = happyShift action_12
action_78 (24) = happyShift action_13
action_78 (25) = happyShift action_14
action_78 (26) = happyShift action_15
action_78 (27) = happyShift action_16
action_78 (28) = happyShift action_17
action_78 (29) = happyShift action_18
action_78 (31) = happyShift action_19
action_78 (34) = happyShift action_20
action_78 (35) = happyShift action_21
action_78 (36) = happyShift action_22
action_78 (39) = happyShift action_23
action_78 (40) = happyShift action_24
action_78 (41) = happyShift action_25
action_78 (47) = happyShift action_26
action_78 (48) = happyShift action_27
action_78 (59) = happyShift action_28
action_78 (62) = happyShift action_29
action_78 (64) = happyShift action_30
action_78 (69) = happyShift action_31
action_78 (6) = happyGoto action_83
action_78 (7) = happyGoto action_5
action_78 (11) = happyGoto action_6
action_78 (12) = happyGoto action_7
action_78 (13) = happyGoto action_8
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (20) = happyShift action_9
action_79 (21) = happyShift action_10
action_79 (22) = happyShift action_11
action_79 (23) = happyShift action_12
action_79 (24) = happyShift action_13
action_79 (25) = happyShift action_14
action_79 (26) = happyShift action_15
action_79 (27) = happyShift action_16
action_79 (28) = happyShift action_17
action_79 (29) = happyShift action_18
action_79 (31) = happyShift action_19
action_79 (34) = happyShift action_20
action_79 (35) = happyShift action_21
action_79 (36) = happyShift action_22
action_79 (39) = happyShift action_23
action_79 (40) = happyShift action_24
action_79 (41) = happyShift action_25
action_79 (47) = happyShift action_26
action_79 (48) = happyShift action_27
action_79 (59) = happyShift action_28
action_79 (62) = happyShift action_29
action_79 (64) = happyShift action_30
action_79 (69) = happyShift action_31
action_79 (6) = happyGoto action_82
action_79 (7) = happyGoto action_5
action_79 (11) = happyGoto action_6
action_79 (12) = happyGoto action_7
action_79 (13) = happyGoto action_8
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (20) = happyShift action_9
action_80 (21) = happyShift action_10
action_80 (22) = happyShift action_11
action_80 (23) = happyShift action_12
action_80 (24) = happyShift action_13
action_80 (25) = happyShift action_14
action_80 (26) = happyShift action_15
action_80 (27) = happyShift action_16
action_80 (28) = happyShift action_17
action_80 (29) = happyShift action_18
action_80 (31) = happyShift action_19
action_80 (34) = happyShift action_20
action_80 (35) = happyShift action_21
action_80 (36) = happyShift action_22
action_80 (39) = happyShift action_23
action_80 (40) = happyShift action_24
action_80 (41) = happyShift action_25
action_80 (47) = happyShift action_26
action_80 (48) = happyShift action_27
action_80 (59) = happyShift action_28
action_80 (62) = happyShift action_29
action_80 (64) = happyShift action_30
action_80 (69) = happyShift action_31
action_80 (6) = happyGoto action_81
action_80 (7) = happyGoto action_5
action_80 (11) = happyGoto action_6
action_80 (12) = happyGoto action_7
action_80 (13) = happyGoto action_8
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (46) = happyShift action_68
action_81 (47) = happyShift action_105
action_81 (49) = happyShift action_70
action_81 (58) = happyShift action_71
action_81 (59) = happyShift action_106
action_81 (60) = happyShift action_73
action_81 (61) = happyShift action_74
action_81 (62) = happyShift action_107
action_81 (64) = happyShift action_108
action_81 (70) = happyShift action_77
action_81 (71) = happyShift action_78
action_81 _ = happyReduce_52

action_82 (46) = happyShift action_68
action_82 (47) = happyShift action_105
action_82 (49) = happyShift action_70
action_82 (58) = happyShift action_71
action_82 (59) = happyShift action_106
action_82 (60) = happyShift action_73
action_82 (61) = happyShift action_74
action_82 (62) = happyShift action_107
action_82 (64) = happyShift action_108
action_82 (70) = happyShift action_77
action_82 (71) = happyShift action_78
action_82 _ = happyReduce_51

action_83 (46) = happyShift action_68
action_83 (47) = happyShift action_105
action_83 (49) = happyShift action_70
action_83 (62) = happyShift action_107
action_83 (64) = happyShift action_108
action_83 (70) = happyShift action_77
action_83 _ = happyReduce_50

action_84 (62) = happyShift action_107
action_84 (64) = happyShift action_108
action_84 (70) = happyShift action_77
action_84 _ = happyReduce_49

action_85 (37) = happyShift action_62
action_85 (38) = happyShift action_63
action_85 (42) = happyShift action_64
action_85 (43) = happyShift action_65
action_85 (44) = happyShift action_66
action_85 (45) = happyShift action_67
action_85 (46) = happyShift action_68
action_85 (47) = happyShift action_105
action_85 (49) = happyShift action_70
action_85 (58) = happyShift action_71
action_85 (59) = happyShift action_106
action_85 (60) = happyShift action_73
action_85 (61) = happyShift action_74
action_85 (62) = happyShift action_107
action_85 (64) = happyShift action_108
action_85 (65) = happyShift action_145
action_85 (68) = happyShift action_127
action_85 (70) = happyShift action_77
action_85 (71) = happyShift action_78
action_85 (72) = happyShift action_79
action_85 (73) = happyShift action_80
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (37) = happyShift action_62
action_86 (38) = happyShift action_63
action_86 (42) = happyShift action_64
action_86 (43) = happyShift action_65
action_86 (44) = happyShift action_66
action_86 (45) = happyShift action_67
action_86 (46) = happyShift action_68
action_86 (47) = happyShift action_105
action_86 (49) = happyShift action_70
action_86 (58) = happyShift action_71
action_86 (59) = happyShift action_106
action_86 (60) = happyShift action_73
action_86 (61) = happyShift action_74
action_86 (62) = happyShift action_107
action_86 (63) = happyShift action_125
action_86 (64) = happyShift action_108
action_86 (68) = happyShift action_144
action_86 (70) = happyShift action_77
action_86 (71) = happyShift action_78
action_86 (72) = happyShift action_79
action_86 (73) = happyShift action_80
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (63) = happyShift action_143
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (46) = happyShift action_68
action_88 (47) = happyShift action_105
action_88 (49) = happyShift action_70
action_88 (62) = happyShift action_107
action_88 (64) = happyShift action_108
action_88 (70) = happyShift action_77
action_88 _ = happyReduce_40

action_89 (46) = happyShift action_68
action_89 (47) = happyShift action_105
action_89 (49) = happyShift action_70
action_89 (62) = happyShift action_107
action_89 (64) = happyShift action_108
action_89 (70) = happyShift action_77
action_89 _ = happyReduce_39

action_90 (46) = happyShift action_68
action_90 (47) = happyShift action_105
action_90 (49) = happyShift action_70
action_90 (62) = happyShift action_107
action_90 (64) = happyShift action_108
action_90 (70) = happyShift action_77
action_90 _ = happyReduce_53

action_91 (46) = happyShift action_68
action_91 (47) = happyShift action_105
action_91 (49) = happyShift action_70
action_91 (60) = happyShift action_73
action_91 (61) = happyShift action_74
action_91 (62) = happyShift action_107
action_91 (64) = happyShift action_108
action_91 (70) = happyShift action_77
action_91 (71) = happyShift action_78
action_91 _ = happyReduce_37

action_92 (46) = happyShift action_68
action_92 (49) = happyShift action_70
action_92 (62) = happyShift action_107
action_92 (64) = happyShift action_108
action_92 (70) = happyShift action_77
action_92 _ = happyReduce_25

action_93 (37) = happyShift action_62
action_93 (38) = happyShift action_63
action_93 (42) = happyShift action_64
action_93 (43) = happyShift action_65
action_93 (44) = happyShift action_66
action_93 (45) = happyShift action_67
action_93 (46) = happyShift action_68
action_93 (47) = happyShift action_105
action_93 (49) = happyShift action_70
action_93 (58) = happyShift action_71
action_93 (59) = happyShift action_106
action_93 (60) = happyShift action_73
action_93 (61) = happyShift action_74
action_93 (62) = happyShift action_107
action_93 (64) = happyShift action_108
action_93 (70) = happyShift action_77
action_93 (71) = happyShift action_78
action_93 (72) = happyShift action_79
action_93 (73) = happyShift action_80
action_93 _ = happyReduce_24

action_94 (51) = happyShift action_39
action_94 (52) = happyShift action_40
action_94 (53) = happyShift action_41
action_94 (54) = happyShift action_42
action_94 (55) = happyShift action_43
action_94 (56) = happyShift action_44
action_94 (57) = happyShift action_45
action_94 _ = happyReduce_36

action_95 (46) = happyShift action_68
action_95 (49) = happyShift action_70
action_95 (62) = happyShift action_107
action_95 (64) = happyShift action_108
action_95 (70) = happyShift action_77
action_95 _ = happyReduce_23

action_96 (42) = happyShift action_64
action_96 (43) = happyShift action_65
action_96 (46) = happyShift action_68
action_96 (47) = happyShift action_105
action_96 (49) = happyShift action_70
action_96 (58) = happyShift action_71
action_96 (59) = happyShift action_106
action_96 (60) = happyShift action_73
action_96 (61) = happyShift action_74
action_96 (62) = happyShift action_107
action_96 (64) = happyShift action_108
action_96 (70) = happyShift action_77
action_96 (71) = happyShift action_78
action_96 (72) = happyShift action_79
action_96 (73) = happyShift action_80
action_96 _ = happyReduce_22

action_97 (42) = happyShift action_64
action_97 (43) = happyShift action_65
action_97 (46) = happyShift action_68
action_97 (47) = happyShift action_105
action_97 (49) = happyShift action_70
action_97 (58) = happyShift action_71
action_97 (59) = happyShift action_106
action_97 (60) = happyShift action_73
action_97 (61) = happyShift action_74
action_97 (62) = happyShift action_107
action_97 (64) = happyShift action_108
action_97 (70) = happyShift action_77
action_97 (71) = happyShift action_78
action_97 (72) = happyShift action_79
action_97 (73) = happyShift action_80
action_97 _ = happyReduce_21

action_98 (46) = happyShift action_68
action_98 (47) = happyShift action_105
action_98 (49) = happyShift action_70
action_98 (58) = happyShift action_71
action_98 (59) = happyShift action_106
action_98 (60) = happyShift action_73
action_98 (61) = happyShift action_74
action_98 (62) = happyShift action_107
action_98 (64) = happyShift action_108
action_98 (70) = happyShift action_77
action_98 (71) = happyShift action_78
action_98 _ = happyReduce_20

action_99 (46) = happyShift action_68
action_99 (47) = happyShift action_105
action_99 (49) = happyShift action_70
action_99 (58) = happyShift action_71
action_99 (59) = happyShift action_106
action_99 (60) = happyShift action_73
action_99 (61) = happyShift action_74
action_99 (62) = happyShift action_107
action_99 (64) = happyShift action_108
action_99 (70) = happyShift action_77
action_99 (71) = happyShift action_78
action_99 _ = happyReduce_19

action_100 (37) = happyShift action_62
action_100 (42) = happyShift action_64
action_100 (43) = happyShift action_65
action_100 (44) = happyShift action_66
action_100 (45) = happyShift action_67
action_100 (46) = happyShift action_68
action_100 (47) = happyShift action_105
action_100 (49) = happyShift action_70
action_100 (58) = happyShift action_71
action_100 (59) = happyShift action_106
action_100 (60) = happyShift action_73
action_100 (61) = happyShift action_74
action_100 (62) = happyShift action_107
action_100 (64) = happyShift action_108
action_100 (70) = happyShift action_77
action_100 (71) = happyShift action_78
action_100 (72) = happyShift action_79
action_100 (73) = happyShift action_80
action_100 _ = happyReduce_14

action_101 (42) = happyShift action_64
action_101 (43) = happyShift action_65
action_101 (44) = happyShift action_66
action_101 (45) = happyShift action_67
action_101 (46) = happyShift action_68
action_101 (47) = happyShift action_105
action_101 (49) = happyShift action_70
action_101 (58) = happyShift action_71
action_101 (59) = happyShift action_106
action_101 (60) = happyShift action_73
action_101 (61) = happyShift action_74
action_101 (62) = happyShift action_107
action_101 (64) = happyShift action_108
action_101 (70) = happyShift action_77
action_101 (71) = happyShift action_78
action_101 (72) = happyShift action_79
action_101 (73) = happyShift action_80
action_101 _ = happyReduce_13

action_102 _ = happyReduce_6

action_103 (20) = happyShift action_9
action_103 (21) = happyShift action_10
action_103 (22) = happyShift action_11
action_103 (23) = happyShift action_12
action_103 (24) = happyShift action_13
action_103 (25) = happyShift action_14
action_103 (26) = happyShift action_15
action_103 (27) = happyShift action_16
action_103 (28) = happyShift action_17
action_103 (29) = happyShift action_18
action_103 (31) = happyShift action_19
action_103 (34) = happyShift action_20
action_103 (35) = happyShift action_21
action_103 (36) = happyShift action_22
action_103 (39) = happyShift action_23
action_103 (40) = happyShift action_24
action_103 (41) = happyShift action_25
action_103 (47) = happyShift action_26
action_103 (48) = happyShift action_27
action_103 (59) = happyShift action_28
action_103 (62) = happyShift action_29
action_103 (64) = happyShift action_30
action_103 (69) = happyShift action_31
action_103 (6) = happyGoto action_142
action_103 (7) = happyGoto action_5
action_103 (11) = happyGoto action_6
action_103 (12) = happyGoto action_7
action_103 (13) = happyGoto action_8
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (37) = happyShift action_62
action_104 (38) = happyShift action_63
action_104 (42) = happyShift action_64
action_104 (43) = happyShift action_65
action_104 (44) = happyShift action_66
action_104 (45) = happyShift action_67
action_104 (46) = happyShift action_68
action_104 (47) = happyShift action_105
action_104 (49) = happyShift action_70
action_104 (58) = happyShift action_71
action_104 (59) = happyShift action_106
action_104 (60) = happyShift action_73
action_104 (61) = happyShift action_74
action_104 (62) = happyShift action_107
action_104 (64) = happyShift action_108
action_104 (67) = happyShift action_141
action_104 (70) = happyShift action_77
action_104 (71) = happyShift action_78
action_104 (72) = happyShift action_79
action_104 (73) = happyShift action_80
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (20) = happyShift action_9
action_105 (21) = happyShift action_10
action_105 (22) = happyShift action_11
action_105 (23) = happyShift action_12
action_105 (24) = happyShift action_13
action_105 (25) = happyShift action_14
action_105 (26) = happyShift action_15
action_105 (27) = happyShift action_16
action_105 (28) = happyShift action_17
action_105 (29) = happyShift action_18
action_105 (31) = happyShift action_19
action_105 (34) = happyShift action_20
action_105 (35) = happyShift action_21
action_105 (36) = happyShift action_22
action_105 (39) = happyShift action_23
action_105 (40) = happyShift action_24
action_105 (41) = happyShift action_25
action_105 (47) = happyShift action_26
action_105 (48) = happyShift action_27
action_105 (59) = happyShift action_28
action_105 (62) = happyShift action_29
action_105 (64) = happyShift action_30
action_105 (69) = happyShift action_31
action_105 (6) = happyGoto action_93
action_105 (7) = happyGoto action_5
action_105 (11) = happyGoto action_6
action_105 (12) = happyGoto action_7
action_105 (13) = happyGoto action_8
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (20) = happyShift action_9
action_106 (21) = happyShift action_10
action_106 (22) = happyShift action_11
action_106 (23) = happyShift action_12
action_106 (24) = happyShift action_13
action_106 (25) = happyShift action_14
action_106 (26) = happyShift action_15
action_106 (27) = happyShift action_16
action_106 (28) = happyShift action_17
action_106 (29) = happyShift action_18
action_106 (31) = happyShift action_19
action_106 (34) = happyShift action_20
action_106 (35) = happyShift action_21
action_106 (36) = happyShift action_22
action_106 (39) = happyShift action_23
action_106 (40) = happyShift action_24
action_106 (41) = happyShift action_25
action_106 (47) = happyShift action_26
action_106 (48) = happyShift action_27
action_106 (59) = happyShift action_28
action_106 (62) = happyShift action_29
action_106 (64) = happyShift action_30
action_106 (69) = happyShift action_31
action_106 (6) = happyGoto action_140
action_106 (7) = happyGoto action_5
action_106 (11) = happyGoto action_6
action_106 (12) = happyGoto action_7
action_106 (13) = happyGoto action_8
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (20) = happyShift action_9
action_107 (21) = happyShift action_10
action_107 (22) = happyShift action_11
action_107 (23) = happyShift action_12
action_107 (24) = happyShift action_13
action_107 (25) = happyShift action_14
action_107 (26) = happyShift action_15
action_107 (27) = happyShift action_16
action_107 (28) = happyShift action_17
action_107 (29) = happyShift action_18
action_107 (31) = happyShift action_19
action_107 (34) = happyShift action_20
action_107 (35) = happyShift action_21
action_107 (36) = happyShift action_22
action_107 (39) = happyShift action_23
action_107 (40) = happyShift action_24
action_107 (41) = happyShift action_25
action_107 (47) = happyShift action_26
action_107 (48) = happyShift action_27
action_107 (59) = happyShift action_28
action_107 (62) = happyShift action_29
action_107 (64) = happyShift action_30
action_107 (69) = happyShift action_31
action_107 (6) = happyGoto action_139
action_107 (7) = happyGoto action_5
action_107 (11) = happyGoto action_6
action_107 (12) = happyGoto action_7
action_107 (13) = happyGoto action_8
action_107 (16) = happyGoto action_87
action_107 _ = happyReduce_78

action_108 (20) = happyShift action_9
action_108 (21) = happyShift action_10
action_108 (22) = happyShift action_11
action_108 (23) = happyShift action_12
action_108 (24) = happyShift action_13
action_108 (25) = happyShift action_14
action_108 (26) = happyShift action_15
action_108 (27) = happyShift action_16
action_108 (28) = happyShift action_17
action_108 (29) = happyShift action_18
action_108 (31) = happyShift action_19
action_108 (34) = happyShift action_20
action_108 (35) = happyShift action_21
action_108 (36) = happyShift action_22
action_108 (39) = happyShift action_23
action_108 (40) = happyShift action_24
action_108 (41) = happyShift action_25
action_108 (47) = happyShift action_26
action_108 (48) = happyShift action_27
action_108 (59) = happyShift action_28
action_108 (62) = happyShift action_29
action_108 (64) = happyShift action_30
action_108 (69) = happyShift action_31
action_108 (6) = happyGoto action_138
action_108 (7) = happyGoto action_5
action_108 (11) = happyGoto action_6
action_108 (12) = happyGoto action_7
action_108 (13) = happyGoto action_8
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (20) = happyShift action_9
action_109 (21) = happyShift action_10
action_109 (22) = happyShift action_11
action_109 (25) = happyShift action_112
action_109 (11) = happyGoto action_136
action_109 (15) = happyGoto action_137
action_109 _ = happyReduce_75

action_110 (41) = happyShift action_135
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (63) = happyShift action_134
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (72) = happyShift action_56
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (20) = happyShift action_9
action_113 (21) = happyShift action_10
action_113 (22) = happyShift action_11
action_113 (25) = happyShift action_112
action_113 (11) = happyGoto action_110
action_113 (14) = happyGoto action_133
action_113 _ = happyReduce_72

action_114 (20) = happyShift action_9
action_114 (21) = happyShift action_10
action_114 (22) = happyShift action_11
action_114 (23) = happyShift action_12
action_114 (24) = happyShift action_13
action_114 (25) = happyShift action_14
action_114 (26) = happyShift action_15
action_114 (27) = happyShift action_16
action_114 (28) = happyShift action_17
action_114 (29) = happyShift action_18
action_114 (31) = happyShift action_19
action_114 (34) = happyShift action_20
action_114 (35) = happyShift action_21
action_114 (36) = happyShift action_22
action_114 (39) = happyShift action_23
action_114 (40) = happyShift action_24
action_114 (41) = happyShift action_25
action_114 (47) = happyShift action_26
action_114 (48) = happyShift action_27
action_114 (59) = happyShift action_28
action_114 (62) = happyShift action_29
action_114 (64) = happyShift action_30
action_114 (69) = happyShift action_31
action_114 (4) = happyGoto action_132
action_114 (5) = happyGoto action_3
action_114 (6) = happyGoto action_4
action_114 (7) = happyGoto action_5
action_114 (11) = happyGoto action_6
action_114 (12) = happyGoto action_7
action_114 (13) = happyGoto action_8
action_114 _ = happyReduce_1

action_115 (20) = happyShift action_9
action_115 (21) = happyShift action_10
action_115 (22) = happyShift action_11
action_115 (23) = happyShift action_12
action_115 (24) = happyShift action_13
action_115 (25) = happyShift action_14
action_115 (26) = happyShift action_15
action_115 (27) = happyShift action_16
action_115 (28) = happyShift action_17
action_115 (29) = happyShift action_18
action_115 (31) = happyShift action_19
action_115 (34) = happyShift action_20
action_115 (35) = happyShift action_21
action_115 (36) = happyShift action_22
action_115 (39) = happyShift action_23
action_115 (40) = happyShift action_24
action_115 (41) = happyShift action_25
action_115 (47) = happyShift action_26
action_115 (48) = happyShift action_27
action_115 (59) = happyShift action_28
action_115 (62) = happyShift action_29
action_115 (64) = happyShift action_30
action_115 (69) = happyShift action_31
action_115 (4) = happyGoto action_131
action_115 (5) = happyGoto action_3
action_115 (6) = happyGoto action_4
action_115 (7) = happyGoto action_5
action_115 (11) = happyGoto action_6
action_115 (12) = happyGoto action_7
action_115 (13) = happyGoto action_8
action_115 _ = happyReduce_1

action_116 (64) = happyShift action_130
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (20) = happyShift action_9
action_117 (21) = happyShift action_10
action_117 (22) = happyShift action_11
action_117 (23) = happyShift action_12
action_117 (24) = happyShift action_13
action_117 (25) = happyShift action_14
action_117 (26) = happyShift action_15
action_117 (27) = happyShift action_16
action_117 (28) = happyShift action_17
action_117 (29) = happyShift action_18
action_117 (31) = happyShift action_19
action_117 (34) = happyShift action_20
action_117 (35) = happyShift action_21
action_117 (36) = happyShift action_22
action_117 (39) = happyShift action_23
action_117 (40) = happyShift action_24
action_117 (41) = happyShift action_25
action_117 (47) = happyShift action_26
action_117 (48) = happyShift action_27
action_117 (59) = happyShift action_28
action_117 (62) = happyShift action_29
action_117 (64) = happyShift action_30
action_117 (69) = happyShift action_31
action_117 (4) = happyGoto action_129
action_117 (5) = happyGoto action_3
action_117 (6) = happyGoto action_4
action_117 (7) = happyGoto action_5
action_117 (11) = happyGoto action_6
action_117 (12) = happyGoto action_7
action_117 (13) = happyGoto action_8
action_117 _ = happyReduce_1

action_118 (37) = happyShift action_62
action_118 (38) = happyShift action_63
action_118 (42) = happyShift action_64
action_118 (43) = happyShift action_65
action_118 (44) = happyShift action_66
action_118 (45) = happyShift action_67
action_118 (46) = happyShift action_68
action_118 (47) = happyShift action_105
action_118 (49) = happyShift action_70
action_118 (58) = happyShift action_71
action_118 (59) = happyShift action_106
action_118 (60) = happyShift action_73
action_118 (61) = happyShift action_74
action_118 (62) = happyShift action_107
action_118 (64) = happyShift action_108
action_118 (70) = happyShift action_77
action_118 (71) = happyShift action_78
action_118 (72) = happyShift action_79
action_118 (73) = happyShift action_80
action_118 _ = happyReduce_33

action_119 (37) = happyShift action_62
action_119 (38) = happyShift action_63
action_119 (42) = happyShift action_64
action_119 (43) = happyShift action_65
action_119 (44) = happyShift action_66
action_119 (45) = happyShift action_67
action_119 (46) = happyShift action_68
action_119 (47) = happyShift action_105
action_119 (49) = happyShift action_70
action_119 (58) = happyShift action_71
action_119 (59) = happyShift action_106
action_119 (60) = happyShift action_73
action_119 (61) = happyShift action_74
action_119 (62) = happyShift action_107
action_119 (64) = happyShift action_108
action_119 (70) = happyShift action_77
action_119 (71) = happyShift action_78
action_119 (72) = happyShift action_79
action_119 (73) = happyShift action_80
action_119 _ = happyReduce_32

action_120 (37) = happyShift action_62
action_120 (38) = happyShift action_63
action_120 (42) = happyShift action_64
action_120 (43) = happyShift action_65
action_120 (44) = happyShift action_66
action_120 (45) = happyShift action_67
action_120 (46) = happyShift action_68
action_120 (47) = happyShift action_105
action_120 (49) = happyShift action_70
action_120 (58) = happyShift action_71
action_120 (59) = happyShift action_106
action_120 (60) = happyShift action_73
action_120 (61) = happyShift action_74
action_120 (62) = happyShift action_107
action_120 (64) = happyShift action_108
action_120 (70) = happyShift action_77
action_120 (71) = happyShift action_78
action_120 (72) = happyShift action_79
action_120 (73) = happyShift action_80
action_120 _ = happyReduce_31

action_121 (37) = happyShift action_62
action_121 (38) = happyShift action_63
action_121 (42) = happyShift action_64
action_121 (43) = happyShift action_65
action_121 (44) = happyShift action_66
action_121 (45) = happyShift action_67
action_121 (46) = happyShift action_68
action_121 (47) = happyShift action_105
action_121 (49) = happyShift action_70
action_121 (58) = happyShift action_71
action_121 (59) = happyShift action_106
action_121 (60) = happyShift action_73
action_121 (61) = happyShift action_74
action_121 (62) = happyShift action_107
action_121 (64) = happyShift action_108
action_121 (70) = happyShift action_77
action_121 (71) = happyShift action_78
action_121 (72) = happyShift action_79
action_121 (73) = happyShift action_80
action_121 _ = happyReduce_30

action_122 (37) = happyShift action_62
action_122 (38) = happyShift action_63
action_122 (42) = happyShift action_64
action_122 (43) = happyShift action_65
action_122 (44) = happyShift action_66
action_122 (45) = happyShift action_67
action_122 (46) = happyShift action_68
action_122 (47) = happyShift action_105
action_122 (49) = happyShift action_70
action_122 (58) = happyShift action_71
action_122 (59) = happyShift action_106
action_122 (60) = happyShift action_73
action_122 (61) = happyShift action_74
action_122 (62) = happyShift action_107
action_122 (64) = happyShift action_108
action_122 (70) = happyShift action_77
action_122 (71) = happyShift action_78
action_122 (72) = happyShift action_79
action_122 (73) = happyShift action_80
action_122 _ = happyReduce_29

action_123 (37) = happyShift action_62
action_123 (38) = happyShift action_63
action_123 (42) = happyShift action_64
action_123 (43) = happyShift action_65
action_123 (44) = happyShift action_66
action_123 (45) = happyShift action_67
action_123 (46) = happyShift action_68
action_123 (47) = happyShift action_105
action_123 (49) = happyShift action_70
action_123 (58) = happyShift action_71
action_123 (59) = happyShift action_106
action_123 (60) = happyShift action_73
action_123 (61) = happyShift action_74
action_123 (62) = happyShift action_107
action_123 (64) = happyShift action_108
action_123 (70) = happyShift action_77
action_123 (71) = happyShift action_78
action_123 (72) = happyShift action_79
action_123 (73) = happyShift action_80
action_123 _ = happyReduce_28

action_124 (37) = happyShift action_62
action_124 (38) = happyShift action_63
action_124 (42) = happyShift action_64
action_124 (43) = happyShift action_65
action_124 (44) = happyShift action_66
action_124 (45) = happyShift action_67
action_124 (46) = happyShift action_68
action_124 (47) = happyShift action_105
action_124 (49) = happyShift action_70
action_124 (58) = happyShift action_71
action_124 (59) = happyShift action_106
action_124 (60) = happyShift action_73
action_124 (61) = happyShift action_74
action_124 (62) = happyShift action_107
action_124 (64) = happyShift action_108
action_124 (70) = happyShift action_77
action_124 (71) = happyShift action_78
action_124 (72) = happyShift action_79
action_124 (73) = happyShift action_80
action_124 _ = happyReduce_27

action_125 _ = happyReduce_54

action_126 _ = happyReduce_18

action_127 (20) = happyShift action_9
action_127 (21) = happyShift action_10
action_127 (22) = happyShift action_11
action_127 (23) = happyShift action_12
action_127 (24) = happyShift action_13
action_127 (25) = happyShift action_14
action_127 (26) = happyShift action_15
action_127 (27) = happyShift action_16
action_127 (28) = happyShift action_17
action_127 (29) = happyShift action_18
action_127 (31) = happyShift action_19
action_127 (34) = happyShift action_20
action_127 (35) = happyShift action_21
action_127 (36) = happyShift action_22
action_127 (39) = happyShift action_23
action_127 (40) = happyShift action_24
action_127 (41) = happyShift action_25
action_127 (47) = happyShift action_26
action_127 (48) = happyShift action_27
action_127 (59) = happyShift action_28
action_127 (62) = happyShift action_29
action_127 (64) = happyShift action_30
action_127 (69) = happyShift action_31
action_127 (6) = happyGoto action_33
action_127 (7) = happyGoto action_5
action_127 (10) = happyGoto action_128
action_127 (11) = happyGoto action_6
action_127 (12) = happyGoto action_7
action_127 (13) = happyGoto action_8
action_127 _ = happyReduce_60

action_128 _ = happyReduce_62

action_129 (67) = happyShift action_158
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (41) = happyShift action_156
action_130 (74) = happyShift action_157
action_130 (18) = happyGoto action_155
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (67) = happyShift action_154
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (67) = happyShift action_153
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (63) = happyShift action_152
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (50) = happyShift action_150
action_134 (66) = happyShift action_151
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (68) = happyShift action_149
action_135 _ = happyReduce_73

action_136 (68) = happyShift action_148
action_136 _ = happyReduce_76

action_137 (63) = happyShift action_147
action_137 _ = happyFail (happyExpListPerState 137)

action_138 (37) = happyShift action_62
action_138 (38) = happyShift action_63
action_138 (42) = happyShift action_64
action_138 (43) = happyShift action_65
action_138 (44) = happyShift action_66
action_138 (45) = happyShift action_67
action_138 (46) = happyShift action_68
action_138 (47) = happyShift action_105
action_138 (49) = happyShift action_70
action_138 (58) = happyShift action_71
action_138 (59) = happyShift action_106
action_138 (60) = happyShift action_73
action_138 (61) = happyShift action_74
action_138 (62) = happyShift action_107
action_138 (64) = happyShift action_108
action_138 (65) = happyShift action_145
action_138 (70) = happyShift action_77
action_138 (71) = happyShift action_78
action_138 (72) = happyShift action_79
action_138 (73) = happyShift action_80
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (37) = happyShift action_62
action_139 (38) = happyShift action_63
action_139 (42) = happyShift action_64
action_139 (43) = happyShift action_65
action_139 (44) = happyShift action_66
action_139 (45) = happyShift action_67
action_139 (46) = happyShift action_68
action_139 (47) = happyShift action_105
action_139 (49) = happyShift action_70
action_139 (58) = happyShift action_71
action_139 (59) = happyShift action_106
action_139 (60) = happyShift action_73
action_139 (61) = happyShift action_74
action_139 (62) = happyShift action_107
action_139 (64) = happyShift action_108
action_139 (68) = happyShift action_144
action_139 (70) = happyShift action_77
action_139 (71) = happyShift action_78
action_139 (72) = happyShift action_79
action_139 (73) = happyShift action_80
action_139 _ = happyReduce_79

action_140 (46) = happyShift action_68
action_140 (47) = happyShift action_105
action_140 (49) = happyShift action_70
action_140 (60) = happyShift action_73
action_140 (61) = happyShift action_74
action_140 (62) = happyShift action_107
action_140 (64) = happyShift action_108
action_140 (70) = happyShift action_77
action_140 (71) = happyShift action_78
action_140 _ = happyReduce_38

action_141 _ = happyReduce_42

action_142 (37) = happyShift action_62
action_142 (38) = happyShift action_63
action_142 (42) = happyShift action_64
action_142 (43) = happyShift action_65
action_142 (44) = happyShift action_66
action_142 (45) = happyShift action_67
action_142 (46) = happyShift action_68
action_142 (47) = happyShift action_105
action_142 (49) = happyShift action_70
action_142 (58) = happyShift action_71
action_142 (59) = happyShift action_106
action_142 (60) = happyShift action_73
action_142 (61) = happyShift action_74
action_142 (62) = happyShift action_107
action_142 (64) = happyShift action_108
action_142 (70) = happyShift action_77
action_142 (71) = happyShift action_78
action_142 (72) = happyShift action_79
action_142 (73) = happyShift action_80
action_142 _ = happyReduce_26

action_143 _ = happyReduce_46

action_144 (20) = happyShift action_9
action_144 (21) = happyShift action_10
action_144 (22) = happyShift action_11
action_144 (23) = happyShift action_12
action_144 (24) = happyShift action_13
action_144 (25) = happyShift action_14
action_144 (26) = happyShift action_15
action_144 (27) = happyShift action_16
action_144 (28) = happyShift action_17
action_144 (29) = happyShift action_18
action_144 (31) = happyShift action_19
action_144 (34) = happyShift action_20
action_144 (35) = happyShift action_21
action_144 (36) = happyShift action_22
action_144 (39) = happyShift action_23
action_144 (40) = happyShift action_24
action_144 (41) = happyShift action_25
action_144 (47) = happyShift action_26
action_144 (48) = happyShift action_27
action_144 (59) = happyShift action_28
action_144 (62) = happyShift action_29
action_144 (64) = happyShift action_30
action_144 (69) = happyShift action_31
action_144 (6) = happyGoto action_139
action_144 (7) = happyGoto action_5
action_144 (11) = happyGoto action_6
action_144 (12) = happyGoto action_7
action_144 (13) = happyGoto action_8
action_144 (16) = happyGoto action_146
action_144 _ = happyReduce_78

action_145 _ = happyReduce_41

action_146 _ = happyReduce_80

action_147 (50) = happyShift action_170
action_147 (73) = happyShift action_171
action_147 _ = happyFail (happyExpListPerState 147)

action_148 (20) = happyShift action_9
action_148 (21) = happyShift action_10
action_148 (22) = happyShift action_11
action_148 (25) = happyShift action_112
action_148 (11) = happyGoto action_136
action_148 (15) = happyGoto action_169
action_148 _ = happyReduce_75

action_149 (20) = happyShift action_9
action_149 (21) = happyShift action_10
action_149 (22) = happyShift action_11
action_149 (25) = happyShift action_112
action_149 (11) = happyGoto action_110
action_149 (14) = happyGoto action_168
action_149 _ = happyReduce_72

action_150 (20) = happyShift action_9
action_150 (21) = happyShift action_10
action_150 (22) = happyShift action_11
action_150 (25) = happyShift action_112
action_150 (11) = happyGoto action_167
action_150 _ = happyFail (happyExpListPerState 150)

action_151 (20) = happyShift action_9
action_151 (21) = happyShift action_10
action_151 (22) = happyShift action_11
action_151 (23) = happyShift action_12
action_151 (24) = happyShift action_13
action_151 (25) = happyShift action_14
action_151 (26) = happyShift action_15
action_151 (27) = happyShift action_16
action_151 (28) = happyShift action_17
action_151 (29) = happyShift action_18
action_151 (31) = happyShift action_19
action_151 (34) = happyShift action_20
action_151 (35) = happyShift action_21
action_151 (36) = happyShift action_22
action_151 (39) = happyShift action_23
action_151 (40) = happyShift action_24
action_151 (41) = happyShift action_25
action_151 (47) = happyShift action_26
action_151 (48) = happyShift action_27
action_151 (59) = happyShift action_28
action_151 (62) = happyShift action_29
action_151 (64) = happyShift action_30
action_151 (69) = happyShift action_31
action_151 (4) = happyGoto action_166
action_151 (5) = happyGoto action_3
action_151 (6) = happyGoto action_4
action_151 (7) = happyGoto action_5
action_151 (11) = happyGoto action_6
action_151 (12) = happyGoto action_7
action_151 (13) = happyGoto action_8
action_151 _ = happyReduce_1

action_152 (50) = happyShift action_164
action_152 (66) = happyShift action_165
action_152 _ = happyFail (happyExpListPerState 152)

action_153 _ = happyReduce_7

action_154 _ = happyReduce_8

action_155 (65) = happyShift action_163
action_155 _ = happyFail (happyExpListPerState 155)

action_156 (68) = happyShift action_162
action_156 _ = happyReduce_83

action_157 (68) = happyShift action_161
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (32) = happyShift action_160
action_158 (8) = happyGoto action_159
action_158 _ = happyReduce_56

action_159 (33) = happyShift action_182
action_159 (9) = happyGoto action_181
action_159 _ = happyReduce_58

action_160 (20) = happyShift action_9
action_160 (21) = happyShift action_10
action_160 (22) = happyShift action_11
action_160 (23) = happyShift action_12
action_160 (24) = happyShift action_13
action_160 (25) = happyShift action_14
action_160 (26) = happyShift action_15
action_160 (27) = happyShift action_16
action_160 (28) = happyShift action_17
action_160 (29) = happyShift action_18
action_160 (31) = happyShift action_19
action_160 (34) = happyShift action_20
action_160 (35) = happyShift action_21
action_160 (36) = happyShift action_22
action_160 (39) = happyShift action_23
action_160 (40) = happyShift action_24
action_160 (41) = happyShift action_25
action_160 (47) = happyShift action_26
action_160 (48) = happyShift action_27
action_160 (59) = happyShift action_28
action_160 (62) = happyShift action_29
action_160 (64) = happyShift action_30
action_160 (69) = happyShift action_31
action_160 (6) = happyGoto action_180
action_160 (7) = happyGoto action_5
action_160 (11) = happyGoto action_6
action_160 (12) = happyGoto action_7
action_160 (13) = happyGoto action_8
action_160 _ = happyFail (happyExpListPerState 160)

action_161 (41) = happyShift action_156
action_161 (74) = happyShift action_157
action_161 (18) = happyGoto action_179
action_161 _ = happyFail (happyExpListPerState 161)

action_162 (41) = happyShift action_156
action_162 (74) = happyShift action_157
action_162 (18) = happyGoto action_178
action_162 _ = happyFail (happyExpListPerState 162)

action_163 (68) = happyShift action_177
action_163 _ = happyReduce_81

action_164 (20) = happyShift action_9
action_164 (21) = happyShift action_10
action_164 (22) = happyShift action_11
action_164 (25) = happyShift action_112
action_164 (11) = happyGoto action_176
action_164 _ = happyFail (happyExpListPerState 164)

action_165 (20) = happyShift action_9
action_165 (21) = happyShift action_10
action_165 (22) = happyShift action_11
action_165 (23) = happyShift action_12
action_165 (24) = happyShift action_13
action_165 (25) = happyShift action_14
action_165 (26) = happyShift action_15
action_165 (27) = happyShift action_16
action_165 (28) = happyShift action_17
action_165 (29) = happyShift action_18
action_165 (31) = happyShift action_19
action_165 (34) = happyShift action_20
action_165 (35) = happyShift action_21
action_165 (36) = happyShift action_22
action_165 (39) = happyShift action_23
action_165 (40) = happyShift action_24
action_165 (41) = happyShift action_25
action_165 (47) = happyShift action_26
action_165 (48) = happyShift action_27
action_165 (59) = happyShift action_28
action_165 (62) = happyShift action_29
action_165 (64) = happyShift action_30
action_165 (69) = happyShift action_31
action_165 (4) = happyGoto action_175
action_165 (5) = happyGoto action_3
action_165 (6) = happyGoto action_4
action_165 (7) = happyGoto action_5
action_165 (11) = happyGoto action_6
action_165 (12) = happyGoto action_7
action_165 (13) = happyGoto action_8
action_165 _ = happyReduce_1

action_166 (67) = happyShift action_174
action_166 _ = happyFail (happyExpListPerState 166)

action_167 (66) = happyShift action_173
action_167 _ = happyFail (happyExpListPerState 167)

action_168 _ = happyReduce_74

action_169 _ = happyReduce_77

action_170 (20) = happyShift action_9
action_170 (21) = happyShift action_10
action_170 (22) = happyShift action_11
action_170 (25) = happyShift action_112
action_170 (11) = happyGoto action_172
action_170 _ = happyFail (happyExpListPerState 170)

action_171 _ = happyReduce_66

action_172 (73) = happyShift action_189
action_172 _ = happyFail (happyExpListPerState 172)

action_173 (20) = happyShift action_9
action_173 (21) = happyShift action_10
action_173 (22) = happyShift action_11
action_173 (23) = happyShift action_12
action_173 (24) = happyShift action_13
action_173 (25) = happyShift action_14
action_173 (26) = happyShift action_15
action_173 (27) = happyShift action_16
action_173 (28) = happyShift action_17
action_173 (29) = happyShift action_18
action_173 (31) = happyShift action_19
action_173 (34) = happyShift action_20
action_173 (35) = happyShift action_21
action_173 (36) = happyShift action_22
action_173 (39) = happyShift action_23
action_173 (40) = happyShift action_24
action_173 (41) = happyShift action_25
action_173 (47) = happyShift action_26
action_173 (48) = happyShift action_27
action_173 (59) = happyShift action_28
action_173 (62) = happyShift action_29
action_173 (64) = happyShift action_30
action_173 (69) = happyShift action_31
action_173 (4) = happyGoto action_188
action_173 (5) = happyGoto action_3
action_173 (6) = happyGoto action_4
action_173 (7) = happyGoto action_5
action_173 (11) = happyGoto action_6
action_173 (12) = happyGoto action_7
action_173 (13) = happyGoto action_8
action_173 _ = happyReduce_1

action_174 _ = happyReduce_70

action_175 (67) = happyShift action_187
action_175 _ = happyFail (happyExpListPerState 175)

action_176 (66) = happyShift action_186
action_176 _ = happyFail (happyExpListPerState 176)

action_177 (20) = happyShift action_9
action_177 (21) = happyShift action_10
action_177 (22) = happyShift action_11
action_177 (23) = happyShift action_12
action_177 (24) = happyShift action_13
action_177 (25) = happyShift action_14
action_177 (26) = happyShift action_15
action_177 (27) = happyShift action_16
action_177 (28) = happyShift action_17
action_177 (29) = happyShift action_18
action_177 (31) = happyShift action_19
action_177 (34) = happyShift action_20
action_177 (35) = happyShift action_21
action_177 (36) = happyShift action_22
action_177 (39) = happyShift action_23
action_177 (40) = happyShift action_24
action_177 (41) = happyShift action_25
action_177 (47) = happyShift action_26
action_177 (48) = happyShift action_27
action_177 (59) = happyShift action_28
action_177 (62) = happyShift action_29
action_177 (64) = happyShift action_30
action_177 (69) = happyShift action_31
action_177 (6) = happyGoto action_50
action_177 (7) = happyGoto action_5
action_177 (11) = happyGoto action_6
action_177 (12) = happyGoto action_7
action_177 (13) = happyGoto action_8
action_177 (17) = happyGoto action_185
action_177 _ = happyFail (happyExpListPerState 177)

action_178 _ = happyReduce_85

action_179 _ = happyReduce_84

action_180 (37) = happyShift action_62
action_180 (38) = happyShift action_63
action_180 (42) = happyShift action_64
action_180 (43) = happyShift action_65
action_180 (44) = happyShift action_66
action_180 (45) = happyShift action_67
action_180 (46) = happyShift action_68
action_180 (47) = happyShift action_105
action_180 (49) = happyShift action_70
action_180 (58) = happyShift action_71
action_180 (59) = happyShift action_106
action_180 (60) = happyShift action_73
action_180 (61) = happyShift action_74
action_180 (62) = happyShift action_107
action_180 (64) = happyShift action_108
action_180 (66) = happyShift action_184
action_180 (70) = happyShift action_77
action_180 (71) = happyShift action_78
action_180 (72) = happyShift action_79
action_180 (73) = happyShift action_80
action_180 _ = happyFail (happyExpListPerState 180)

action_181 _ = happyReduce_55

action_182 (66) = happyShift action_183
action_182 _ = happyFail (happyExpListPerState 182)

action_183 (20) = happyShift action_9
action_183 (21) = happyShift action_10
action_183 (22) = happyShift action_11
action_183 (23) = happyShift action_12
action_183 (24) = happyShift action_13
action_183 (25) = happyShift action_14
action_183 (26) = happyShift action_15
action_183 (27) = happyShift action_16
action_183 (28) = happyShift action_17
action_183 (29) = happyShift action_18
action_183 (31) = happyShift action_19
action_183 (34) = happyShift action_20
action_183 (35) = happyShift action_21
action_183 (36) = happyShift action_22
action_183 (39) = happyShift action_23
action_183 (40) = happyShift action_24
action_183 (41) = happyShift action_25
action_183 (47) = happyShift action_26
action_183 (48) = happyShift action_27
action_183 (59) = happyShift action_28
action_183 (62) = happyShift action_29
action_183 (64) = happyShift action_30
action_183 (69) = happyShift action_31
action_183 (4) = happyGoto action_193
action_183 (5) = happyGoto action_3
action_183 (6) = happyGoto action_4
action_183 (7) = happyGoto action_5
action_183 (11) = happyGoto action_6
action_183 (12) = happyGoto action_7
action_183 (13) = happyGoto action_8
action_183 _ = happyReduce_1

action_184 (20) = happyShift action_9
action_184 (21) = happyShift action_10
action_184 (22) = happyShift action_11
action_184 (23) = happyShift action_12
action_184 (24) = happyShift action_13
action_184 (25) = happyShift action_14
action_184 (26) = happyShift action_15
action_184 (27) = happyShift action_16
action_184 (28) = happyShift action_17
action_184 (29) = happyShift action_18
action_184 (31) = happyShift action_19
action_184 (34) = happyShift action_20
action_184 (35) = happyShift action_21
action_184 (36) = happyShift action_22
action_184 (39) = happyShift action_23
action_184 (40) = happyShift action_24
action_184 (41) = happyShift action_25
action_184 (47) = happyShift action_26
action_184 (48) = happyShift action_27
action_184 (59) = happyShift action_28
action_184 (62) = happyShift action_29
action_184 (64) = happyShift action_30
action_184 (69) = happyShift action_31
action_184 (4) = happyGoto action_192
action_184 (5) = happyGoto action_3
action_184 (6) = happyGoto action_4
action_184 (7) = happyGoto action_5
action_184 (11) = happyGoto action_6
action_184 (12) = happyGoto action_7
action_184 (13) = happyGoto action_8
action_184 _ = happyReduce_1

action_185 _ = happyReduce_82

action_186 (20) = happyShift action_9
action_186 (21) = happyShift action_10
action_186 (22) = happyShift action_11
action_186 (23) = happyShift action_12
action_186 (24) = happyShift action_13
action_186 (25) = happyShift action_14
action_186 (26) = happyShift action_15
action_186 (27) = happyShift action_16
action_186 (28) = happyShift action_17
action_186 (29) = happyShift action_18
action_186 (31) = happyShift action_19
action_186 (34) = happyShift action_20
action_186 (35) = happyShift action_21
action_186 (36) = happyShift action_22
action_186 (39) = happyShift action_23
action_186 (40) = happyShift action_24
action_186 (41) = happyShift action_25
action_186 (47) = happyShift action_26
action_186 (48) = happyShift action_27
action_186 (59) = happyShift action_28
action_186 (62) = happyShift action_29
action_186 (64) = happyShift action_30
action_186 (69) = happyShift action_31
action_186 (4) = happyGoto action_191
action_186 (5) = happyGoto action_3
action_186 (6) = happyGoto action_4
action_186 (7) = happyGoto action_5
action_186 (11) = happyGoto action_6
action_186 (12) = happyGoto action_7
action_186 (13) = happyGoto action_8
action_186 _ = happyReduce_1

action_187 _ = happyReduce_68

action_188 (67) = happyShift action_190
action_188 _ = happyFail (happyExpListPerState 188)

action_189 _ = happyReduce_67

action_190 _ = happyReduce_71

action_191 (67) = happyShift action_196
action_191 _ = happyFail (happyExpListPerState 191)

action_192 (67) = happyShift action_195
action_192 _ = happyFail (happyExpListPerState 192)

action_193 (67) = happyShift action_194
action_193 _ = happyFail (happyExpListPerState 193)

action_194 _ = happyReduce_59

action_195 (32) = happyShift action_160
action_195 (8) = happyGoto action_197
action_195 _ = happyReduce_56

action_196 _ = happyReduce_69

action_197 _ = happyReduce_57

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
happyReduction_4 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 5 6 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 5 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (convertProcessToWhile happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int' happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean' happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn6
		 (Break
	)

happyReduce_18 = happySpecReduce_3  6 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Stream happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LE happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GE happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (NE happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Take happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 6 happyReduction_26
happyReduction_26 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (VarDec happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Plus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Minus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Times (VarRef happy_var_1) happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Div (VarRef happy_var_1) happy_var_3)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Exponent (VarRef happy_var_1) happy_var_3)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Modulo (VarRef happy_var_1) happy_var_3)
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  6 happyReduction_34
happyReduction_34 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Plus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  6 happyReduction_35
happyReduction_35 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Minus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  6 happyReduction_36
happyReduction_36 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  6 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  6 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happyReduce 4 6 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 6 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_2  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  6 happyReduction_44
happyReduction_44 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  6 happyReduction_45
happyReduction_45 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happyReduce 4 6 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_47 = happySpecReduce_2  6 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  6 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  6 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  6 happyReduction_50
happyReduction_50 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  6 happyReduction_51
happyReduction_51 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  6 happyReduction_52
happyReduction_52 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_2  6 happyReduction_53
happyReduction_53 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  6 happyReduction_54
happyReduction_54 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happyReduce 7 7 happyReduction_55
happyReduction_55 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_56 = happySpecReduce_0  8 happyReduction_56
happyReduction_56  =  HappyAbsSyn8
		 ([]
	)

happyReduce_57 = happyReduce 6 8 happyReduction_57
happyReduction_57 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_58 = happySpecReduce_0  9 happyReduction_58
happyReduction_58  =  HappyAbsSyn9
		 ([]
	)

happyReduce_59 = happyReduce 4 9 happyReduction_59
happyReduction_59 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_60 = happySpecReduce_0  10 happyReduction_60
happyReduction_60  =  HappyAbsSyn10
		 ([]
	)

happyReduce_61 = happySpecReduce_1  10 happyReduction_61
happyReduction_61 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  10 happyReduction_62
happyReduction_62 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  11 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_64 = happySpecReduce_1  11 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_65 = happySpecReduce_1  11 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_66 = happyReduce 6 11 happyReduction_66
happyReduction_66 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (TypeFunction TypeNone happy_var_4
	) `HappyStk` happyRest

happyReduce_67 = happyReduce 8 11 happyReduction_67
happyReduction_67 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (TypeFunction happy_var_7 happy_var_4
	) `HappyStk` happyRest

happyReduce_68 = happyReduce 8 12 happyReduction_68
happyReduction_68 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (FnDec happy_var_2 happy_var_4 TypeNone (happy_var_7)
	) `HappyStk` happyRest

happyReduce_69 = happyReduce 10 12 happyReduction_69
happyReduction_69 (_ `HappyStk`
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
	 = HappyAbsSyn12
		 (FnDec happy_var_2 happy_var_4 happy_var_7 (happy_var_9)
	) `HappyStk` happyRest

happyReduce_70 = happyReduce 7 13 happyReduction_70
happyReduction_70 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (FnAnonDec happy_var_3 TypeNone happy_var_6
	) `HappyStk` happyRest

happyReduce_71 = happyReduce 9 13 happyReduction_71
happyReduction_71 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (FnAnonDec happy_var_3 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_72 = happySpecReduce_0  14 happyReduction_72
happyReduction_72  =  HappyAbsSyn14
		 ([]
	)

happyReduce_73 = happySpecReduce_2  14 happyReduction_73
happyReduction_73 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn14
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_73 _ _  = notHappyAtAll 

happyReduce_74 = happyReduce 4 14 happyReduction_74
happyReduction_74 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_75 = happySpecReduce_0  15 happyReduction_75
happyReduction_75  =  HappyAbsSyn15
		 ([]
	)

happyReduce_76 = happySpecReduce_1  15 happyReduction_76
happyReduction_76 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_76 _  = notHappyAtAll 

happyReduce_77 = happySpecReduce_3  15 happyReduction_77
happyReduction_77 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1 : happy_var_3
	)
happyReduction_77 _ _ _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_0  16 happyReduction_78
happyReduction_78  =  HappyAbsSyn16
		 ([]
	)

happyReduce_79 = happySpecReduce_1  16 happyReduction_79
happyReduction_79 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_79 _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_3  16 happyReduction_80
happyReduction_80 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_80 _ _ _  = notHappyAtAll 

happyReduce_81 = happyReduce 5 17 happyReduction_81
happyReduction_81 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_82 = happyReduce 7 17 happyReduction_82
happyReduction_82 ((HappyAbsSyn17  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 ((happy_var_1, happy_var_4) : happy_var_7
	) `HappyStk` happyRest

happyReduce_83 = happySpecReduce_1  18 happyReduction_83
happyReduction_83 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn18
		 ([happy_var_1]
	)
happyReduction_83 _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_3  18 happyReduction_84
happyReduction_84 (HappyAbsSyn18  happy_var_3)
	_
	_
	 =  HappyAbsSyn18
		 ("_" : happy_var_3
	)
happyReduction_84 _ _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  18 happyReduction_85
happyReduction_85 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn18
		 (happy_var_1 : happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 75 75 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSemicolon _ -> cont 19;
	TokenIntType _ -> cont 20;
	TokenStreamType _ -> cont 21;
	TokenBooleanType _ -> cont 22;
	TokenInput _ -> cont 23;
	TokenPrint _ -> cont 24;
	TokenFunction _ -> cont 25;
	TokenReturn _ -> cont 26;
	TokenWhile _ -> cont 27;
	TokenProcess _ -> cont 28;
	TokenBreak _ -> cont 29;
	TokenAs _ -> cont 30;
	TokenIf _ -> cont 31;
	TokenElif _ -> cont 32;
	TokenElse _ -> cont 33;
	TokenHasNext _ -> cont 34;
	TokenNext _ -> cont 35;
	TokenSize _ -> cont 36;
	TokenAnd _ -> cont 37;
	TokenOr _ -> cont 38;
	TokenInt _ happy_dollar_dollar -> cont 39;
	TokenBool _ happy_dollar_dollar -> cont 40;
	TokenVar _ happy_dollar_dollar -> cont 41;
	TokenLE _ -> cont 42;
	TokenGE _ -> cont 43;
	TokenEQ _ -> cont 44;
	TokenNE _ -> cont 45;
	TokenCons _ -> cont 46;
	TokenPlusPlus _ -> cont 47;
	TokenMinusMinus _ -> cont 48;
	TokenTake _ -> cont 49;
	TokenReturnArrow _ -> cont 50;
	TokenAssign _ -> cont 51;
	TokenPlusEquals _ -> cont 52;
	TokenMinusEquals _ -> cont 53;
	TokenTimesEquals _ -> cont 54;
	TokenDivEquals _ -> cont 55;
	TokenExponentEquals _ -> cont 56;
	TokenModuloEquals _ -> cont 57;
	TokenPlus _ -> cont 58;
	TokenMinus _ -> cont 59;
	TokenTimes _ -> cont 60;
	TokenDiv _ -> cont 61;
	TokenLParen _ -> cont 62;
	TokenRParen _ -> cont 63;
	TokenLSquare _ -> cont 64;
	TokenRSquare _ -> cont 65;
	TokenLCurly _ -> cont 66;
	TokenRCurly _ -> cont 67;
	TokenComma _ -> cont 68;
	TokenNot _ -> cont 69;
	TokenExponent _ -> cont 70;
	TokenModulo _ -> cont 71;
	TokenLT _ -> cont 72;
	TokenGT _ -> cont 73;
	TokenUnderscore _ -> cont 74;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 75 tk tks = happyError' (tks, explist)
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
     show (TypeFunction t params) = "function (" ++ (show params) ++ " -> " ++ (show t) ++ ")"

type Environment = [(String, Exp)]

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
         | Break
         | Block [Exp]
         | Print Exp
         | FnDec String [(Type, String)] Type [Exp]
         | FnAnonDec [(Type, String)] Type [Exp]
         | FnCall Exp [Exp]
         | FnReturn Exp
         | Closure [(Type, String)] Type [Exp] Environment Environment
         | HasNext Exp
         | Next Exp
         | NextBreak Exp
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
         | VarDecBreak Type String Exp
         | VarAssign String Exp
         | VarRef String
         deriving (Eq, Show)

checkIfReference :: Exp -> Bool
checkIfReference (VarRef e) = True
checkIfReference (InputGet e) = True
checkIfReference _ = False

convertProcessToWhile :: [(Exp, [String])] -> [Exp] -> Exp
convertProcessToWhile plist es = Block (streamDecs ++ [While (Boolean' True) (varDecs ++ es)]) 
     where ((s, size) : plistsize) = [ (if (not $ checkIfReference e) then (VarRef ("_processStream" ++ (show i))) else e, length vars) | ((e, vars), i) <- zip plist [1..] ]
           --cond                    = foldr (\(e, n) (Or x y) -> Or x (Or y (GE (Size e) (Int' n)))) (Or (GE (Size s) (Int' size)) (Boolean' False)) (plistsize)
           streamDecs              = [ VarDecBreak TypeStream ("_processStream" ++ show(i)) s | ((s, _), i) <- zip plist [1..], not (checkIfReference s) ]
           varDecs                 = [ VarDecBreak TypeInt x (NextBreak (if (not $ checkIfReference s) then (VarRef ("_processStream" ++ (show i))) else s)) | ((s, xs), i) <- zip plist [1..], x <- xs ]
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

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

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
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

{-# LINE 267 "templates/GenericTemplate.hs" #-}
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

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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

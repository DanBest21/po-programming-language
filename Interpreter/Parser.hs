{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,772) ([49152,52863,1,2130,0,0,0,0,0,0,0,0,0,0,0,0,0,59388,4095,34288,15,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,64512,7399,8192,133,0,8192,0,0,61440,29599,32768,532,57344,59199,0,1065,49152,52863,1,2130,32768,40191,3,4260,0,14847,7,8520,0,29694,14,17040,0,0,0,0,0,0,0,0,0,0,32768,1087,0,16352,231,10496,4,32704,462,20992,8,65408,924,41984,16,65280,1849,18432,33,0,0,7,130,0,58112,61455,3908,0,0,0,16,0,35840,49215,15387,0,0,112,2080,49152,52863,1,2130,32768,40191,3,4260,0,14847,7,8520,0,29694,14,17040,0,59388,28,34080,0,53240,57,2624,1,40944,115,5248,2,16352,231,10496,4,0,0,16384,0,0,0,32768,0,0,0,0,1,0,61824,30727,1930,0,58112,61455,3860,0,50688,57375,7689,0,0,0,4,0,6144,32895,30759,49152,52863,1,2130,0,0,1024,0,0,0,0,0,0,29694,14,17040,0,59388,28,34080,0,53240,57,2624,1,40944,115,5248,2,16352,231,10496,4,32704,462,20992,8,65408,924,41984,16,65280,1849,18432,33,65024,3699,36864,66,64512,7399,8192,133,63488,14799,16384,266,61440,29599,32768,532,57344,59199,0,1065,49152,52863,1,2130,32768,40191,3,4260,0,14847,7,8520,0,29694,14,17040,0,59388,28,34080,0,0,7168,2528,6,0,14336,5056,12,0,28672,8192,8,0,0,16384,16,0,64608,40449,489,0,32768,3,65,0,0,7,130,0,0,14,260,0,0,32796,1545,0,0,40,1040,0,0,80,2080,0,0,160,4160,0,0,460,57502,1,0,920,49468,3,0,1792,33400,1,0,3584,1264,3,0,8130,2528,30,0,16256,5056,60,16352,231,10496,4,0,65072,20224,242,65408,924,41984,16,65280,1849,18432,33,3584,0,0,0,64512,7399,8192,133,63488,14799,16384,266,0,35840,49215,15635,0,0,0,16,0,12288,254,61519,0,24576,508,57502,1,49152,1016,49468,3,32768,2033,33400,7,0,4067,1264,15,0,8134,2528,30,0,16268,5056,60,0,0,0,0,0,0,0,0,65408,924,41984,16,0,0,0,0,0,0,0,0,64512,7399,8192,133,0,0,0,64,0,0,0,128,0,32768,0,0,0,0,0,32,0,24576,508,57758,1,0,896,49456,0,0,0,0,0,0,4067,1264,15,0,0,0,0,0,16384,16384,0,0,0,0,2,0,0,0,0,0,1,0,0,0,0,0,0,0,8,0,0,64512,7399,8192,133,14336,0,0,0,28672,0,0,0,57344,59199,0,1065,0,0,0,512,0,0,0,512,0,0,0,0,0,32768,2033,35448,7,0,0,0,0,0,0,8192,0,40944,115,5248,2,16352,231,10496,4,32704,462,20992,8,0,0,0,0,0,0,0,8,0,0,0,16,0,0,0,32,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","ParamList","ArgList","int_type","stream_type","boolean_type","input","print","fn","return","while","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 65
        bit_end = (st + 1) * 65
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..64]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (15) = happyShift action_8
action_0 (16) = happyShift action_9
action_0 (17) = happyShift action_10
action_0 (18) = happyShift action_11
action_0 (19) = happyShift action_12
action_0 (20) = happyShift action_13
action_0 (21) = happyShift action_14
action_0 (22) = happyShift action_15
action_0 (23) = happyShift action_16
action_0 (26) = happyShift action_17
action_0 (27) = happyShift action_18
action_0 (28) = happyShift action_19
action_0 (31) = happyShift action_20
action_0 (32) = happyShift action_21
action_0 (33) = happyShift action_22
action_0 (50) = happyShift action_23
action_0 (53) = happyShift action_24
action_0 (55) = happyShift action_25
action_0 (60) = happyShift action_26
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (65) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (15) = happyShift action_8
action_4 (16) = happyShift action_9
action_4 (17) = happyShift action_10
action_4 (18) = happyShift action_11
action_4 (19) = happyShift action_12
action_4 (20) = happyShift action_13
action_4 (21) = happyShift action_14
action_4 (22) = happyShift action_15
action_4 (23) = happyShift action_16
action_4 (26) = happyShift action_17
action_4 (27) = happyShift action_18
action_4 (28) = happyShift action_19
action_4 (29) = happyShift action_51
action_4 (30) = happyShift action_52
action_4 (31) = happyShift action_20
action_4 (32) = happyShift action_21
action_4 (33) = happyShift action_22
action_4 (34) = happyShift action_53
action_4 (35) = happyShift action_54
action_4 (36) = happyShift action_55
action_4 (37) = happyShift action_56
action_4 (38) = happyShift action_57
action_4 (39) = happyShift action_58
action_4 (40) = happyShift action_59
action_4 (49) = happyShift action_60
action_4 (50) = happyShift action_61
action_4 (51) = happyShift action_62
action_4 (52) = happyShift action_63
action_4 (53) = happyShift action_24
action_4 (55) = happyShift action_64
action_4 (60) = happyShift action_26
action_4 (61) = happyShift action_65
action_4 (62) = happyShift action_66
action_4 (63) = happyShift action_67
action_4 (64) = happyShift action_68
action_4 (5) = happyGoto action_50
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 (33) = happyShift action_49
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_38

action_8 _ = happyReduce_56

action_9 _ = happyReduce_58

action_10 _ = happyReduce_57

action_11 (57) = happyShift action_48
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (15) = happyShift action_8
action_12 (16) = happyShift action_9
action_12 (17) = happyShift action_10
action_12 (18) = happyShift action_11
action_12 (19) = happyShift action_12
action_12 (20) = happyShift action_13
action_12 (21) = happyShift action_14
action_12 (22) = happyShift action_15
action_12 (23) = happyShift action_16
action_12 (26) = happyShift action_17
action_12 (27) = happyShift action_18
action_12 (28) = happyShift action_19
action_12 (31) = happyShift action_20
action_12 (32) = happyShift action_21
action_12 (33) = happyShift action_22
action_12 (50) = happyShift action_23
action_12 (53) = happyShift action_24
action_12 (55) = happyShift action_25
action_12 (60) = happyShift action_26
action_12 (6) = happyGoto action_47
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (33) = happyShift action_46
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (15) = happyShift action_8
action_14 (16) = happyShift action_9
action_14 (17) = happyShift action_10
action_14 (18) = happyShift action_11
action_14 (19) = happyShift action_12
action_14 (20) = happyShift action_13
action_14 (21) = happyShift action_14
action_14 (22) = happyShift action_15
action_14 (23) = happyShift action_16
action_14 (26) = happyShift action_17
action_14 (27) = happyShift action_18
action_14 (28) = happyShift action_19
action_14 (31) = happyShift action_20
action_14 (32) = happyShift action_21
action_14 (33) = happyShift action_22
action_14 (50) = happyShift action_23
action_14 (53) = happyShift action_24
action_14 (55) = happyShift action_25
action_14 (60) = happyShift action_26
action_14 (6) = happyGoto action_45
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 (12) = happyGoto action_7
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (15) = happyShift action_8
action_15 (16) = happyShift action_9
action_15 (17) = happyShift action_10
action_15 (18) = happyShift action_11
action_15 (19) = happyShift action_12
action_15 (20) = happyShift action_13
action_15 (21) = happyShift action_14
action_15 (22) = happyShift action_15
action_15 (23) = happyShift action_16
action_15 (26) = happyShift action_17
action_15 (27) = happyShift action_18
action_15 (28) = happyShift action_19
action_15 (31) = happyShift action_20
action_15 (32) = happyShift action_21
action_15 (33) = happyShift action_22
action_15 (50) = happyShift action_23
action_15 (53) = happyShift action_24
action_15 (55) = happyShift action_25
action_15 (60) = happyShift action_26
action_15 (6) = happyGoto action_44
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 (12) = happyGoto action_7
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (15) = happyShift action_8
action_16 (16) = happyShift action_9
action_16 (17) = happyShift action_10
action_16 (18) = happyShift action_11
action_16 (19) = happyShift action_12
action_16 (20) = happyShift action_13
action_16 (21) = happyShift action_14
action_16 (22) = happyShift action_15
action_16 (23) = happyShift action_16
action_16 (26) = happyShift action_17
action_16 (27) = happyShift action_18
action_16 (28) = happyShift action_19
action_16 (31) = happyShift action_20
action_16 (32) = happyShift action_21
action_16 (33) = happyShift action_22
action_16 (50) = happyShift action_23
action_16 (53) = happyShift action_24
action_16 (55) = happyShift action_25
action_16 (60) = happyShift action_26
action_16 (6) = happyGoto action_43
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 (12) = happyGoto action_7
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (15) = happyShift action_8
action_17 (16) = happyShift action_9
action_17 (17) = happyShift action_10
action_17 (18) = happyShift action_11
action_17 (19) = happyShift action_12
action_17 (20) = happyShift action_13
action_17 (21) = happyShift action_14
action_17 (22) = happyShift action_15
action_17 (23) = happyShift action_16
action_17 (26) = happyShift action_17
action_17 (27) = happyShift action_18
action_17 (28) = happyShift action_19
action_17 (31) = happyShift action_20
action_17 (32) = happyShift action_21
action_17 (33) = happyShift action_22
action_17 (50) = happyShift action_23
action_17 (53) = happyShift action_24
action_17 (55) = happyShift action_25
action_17 (60) = happyShift action_26
action_17 (6) = happyGoto action_42
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (12) = happyGoto action_7
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (15) = happyShift action_8
action_18 (16) = happyShift action_9
action_18 (17) = happyShift action_10
action_18 (18) = happyShift action_11
action_18 (19) = happyShift action_12
action_18 (20) = happyShift action_13
action_18 (21) = happyShift action_14
action_18 (22) = happyShift action_15
action_18 (23) = happyShift action_16
action_18 (26) = happyShift action_17
action_18 (27) = happyShift action_18
action_18 (28) = happyShift action_19
action_18 (31) = happyShift action_20
action_18 (32) = happyShift action_21
action_18 (33) = happyShift action_22
action_18 (50) = happyShift action_23
action_18 (53) = happyShift action_24
action_18 (55) = happyShift action_25
action_18 (60) = happyShift action_26
action_18 (6) = happyGoto action_41
action_18 (7) = happyGoto action_5
action_18 (11) = happyGoto action_6
action_18 (12) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (15) = happyShift action_8
action_19 (16) = happyShift action_9
action_19 (17) = happyShift action_10
action_19 (18) = happyShift action_11
action_19 (19) = happyShift action_12
action_19 (20) = happyShift action_13
action_19 (21) = happyShift action_14
action_19 (22) = happyShift action_15
action_19 (23) = happyShift action_16
action_19 (26) = happyShift action_17
action_19 (27) = happyShift action_18
action_19 (28) = happyShift action_19
action_19 (31) = happyShift action_20
action_19 (32) = happyShift action_21
action_19 (33) = happyShift action_22
action_19 (50) = happyShift action_23
action_19 (53) = happyShift action_24
action_19 (55) = happyShift action_25
action_19 (60) = happyShift action_26
action_19 (6) = happyGoto action_40
action_19 (7) = happyGoto action_5
action_19 (11) = happyGoto action_6
action_19 (12) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_12

action_21 _ = happyReduce_13

action_22 (42) = happyShift action_32
action_22 (43) = happyShift action_33
action_22 (44) = happyShift action_34
action_22 (45) = happyShift action_35
action_22 (46) = happyShift action_36
action_22 (47) = happyShift action_37
action_22 (48) = happyShift action_38
action_22 (53) = happyShift action_39
action_22 _ = happyReduce_30

action_23 (15) = happyShift action_8
action_23 (16) = happyShift action_9
action_23 (17) = happyShift action_10
action_23 (18) = happyShift action_11
action_23 (19) = happyShift action_12
action_23 (20) = happyShift action_13
action_23 (21) = happyShift action_14
action_23 (22) = happyShift action_15
action_23 (23) = happyShift action_16
action_23 (26) = happyShift action_17
action_23 (27) = happyShift action_18
action_23 (28) = happyShift action_19
action_23 (31) = happyShift action_20
action_23 (32) = happyShift action_21
action_23 (33) = happyShift action_22
action_23 (50) = happyShift action_23
action_23 (53) = happyShift action_24
action_23 (55) = happyShift action_25
action_23 (60) = happyShift action_26
action_23 (6) = happyGoto action_31
action_23 (7) = happyGoto action_5
action_23 (11) = happyGoto action_6
action_23 (12) = happyGoto action_7
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_8
action_24 (16) = happyShift action_9
action_24 (17) = happyShift action_10
action_24 (18) = happyShift action_11
action_24 (19) = happyShift action_12
action_24 (20) = happyShift action_13
action_24 (21) = happyShift action_14
action_24 (22) = happyShift action_15
action_24 (23) = happyShift action_16
action_24 (26) = happyShift action_17
action_24 (27) = happyShift action_18
action_24 (28) = happyShift action_19
action_24 (31) = happyShift action_20
action_24 (32) = happyShift action_21
action_24 (33) = happyShift action_22
action_24 (50) = happyShift action_23
action_24 (53) = happyShift action_24
action_24 (55) = happyShift action_25
action_24 (60) = happyShift action_26
action_24 (6) = happyGoto action_30
action_24 (7) = happyGoto action_5
action_24 (11) = happyGoto action_6
action_24 (12) = happyGoto action_7
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_8
action_25 (16) = happyShift action_9
action_25 (17) = happyShift action_10
action_25 (18) = happyShift action_11
action_25 (19) = happyShift action_12
action_25 (20) = happyShift action_13
action_25 (21) = happyShift action_14
action_25 (22) = happyShift action_15
action_25 (23) = happyShift action_16
action_25 (26) = happyShift action_17
action_25 (27) = happyShift action_18
action_25 (28) = happyShift action_19
action_25 (31) = happyShift action_20
action_25 (32) = happyShift action_21
action_25 (33) = happyShift action_22
action_25 (50) = happyShift action_23
action_25 (53) = happyShift action_24
action_25 (55) = happyShift action_25
action_25 (60) = happyShift action_26
action_25 (6) = happyGoto action_28
action_25 (7) = happyGoto action_5
action_25 (10) = happyGoto action_29
action_25 (11) = happyGoto action_6
action_25 (12) = happyGoto action_7
action_25 _ = happyReduce_53

action_26 (15) = happyShift action_8
action_26 (16) = happyShift action_9
action_26 (17) = happyShift action_10
action_26 (18) = happyShift action_11
action_26 (19) = happyShift action_12
action_26 (20) = happyShift action_13
action_26 (21) = happyShift action_14
action_26 (22) = happyShift action_15
action_26 (23) = happyShift action_16
action_26 (26) = happyShift action_17
action_26 (27) = happyShift action_18
action_26 (28) = happyShift action_19
action_26 (31) = happyShift action_20
action_26 (32) = happyShift action_21
action_26 (33) = happyShift action_22
action_26 (50) = happyShift action_23
action_26 (53) = happyShift action_24
action_26 (55) = happyShift action_25
action_26 (60) = happyShift action_26
action_26 (6) = happyGoto action_27
action_26 (7) = happyGoto action_5
action_26 (11) = happyGoto action_6
action_26 (12) = happyGoto action_7
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_57
action_27 (39) = happyShift action_58
action_27 (40) = happyShift action_59
action_27 (55) = happyShift action_90
action_27 (61) = happyShift action_65
action_27 _ = happyReduce_41

action_28 (29) = happyShift action_51
action_28 (30) = happyShift action_52
action_28 (34) = happyShift action_53
action_28 (35) = happyShift action_54
action_28 (36) = happyShift action_55
action_28 (37) = happyShift action_56
action_28 (38) = happyShift action_57
action_28 (39) = happyShift action_58
action_28 (40) = happyShift action_59
action_28 (49) = happyShift action_60
action_28 (50) = happyShift action_89
action_28 (51) = happyShift action_62
action_28 (52) = happyShift action_63
action_28 (55) = happyShift action_90
action_28 (59) = happyShift action_105
action_28 (61) = happyShift action_65
action_28 (62) = happyShift action_66
action_28 (63) = happyShift action_67
action_28 (64) = happyShift action_68
action_28 _ = happyReduce_54

action_29 (56) = happyShift action_104
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (29) = happyShift action_51
action_30 (30) = happyShift action_52
action_30 (34) = happyShift action_53
action_30 (35) = happyShift action_54
action_30 (36) = happyShift action_55
action_30 (37) = happyShift action_56
action_30 (38) = happyShift action_57
action_30 (39) = happyShift action_58
action_30 (40) = happyShift action_59
action_30 (49) = happyShift action_60
action_30 (50) = happyShift action_89
action_30 (51) = happyShift action_62
action_30 (52) = happyShift action_63
action_30 (54) = happyShift action_103
action_30 (55) = happyShift action_90
action_30 (61) = happyShift action_65
action_30 (62) = happyShift action_66
action_30 (63) = happyShift action_67
action_30 (64) = happyShift action_68
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (38) = happyShift action_57
action_31 (39) = happyShift action_58
action_31 (40) = happyShift action_59
action_31 (55) = happyShift action_90
action_31 (61) = happyShift action_65
action_31 _ = happyReduce_46

action_32 (15) = happyShift action_8
action_32 (16) = happyShift action_9
action_32 (17) = happyShift action_10
action_32 (18) = happyShift action_11
action_32 (19) = happyShift action_12
action_32 (20) = happyShift action_13
action_32 (21) = happyShift action_14
action_32 (22) = happyShift action_15
action_32 (23) = happyShift action_16
action_32 (26) = happyShift action_17
action_32 (27) = happyShift action_18
action_32 (28) = happyShift action_19
action_32 (31) = happyShift action_20
action_32 (32) = happyShift action_21
action_32 (33) = happyShift action_22
action_32 (50) = happyShift action_23
action_32 (53) = happyShift action_24
action_32 (55) = happyShift action_25
action_32 (60) = happyShift action_26
action_32 (6) = happyGoto action_102
action_32 (7) = happyGoto action_5
action_32 (11) = happyGoto action_6
action_32 (12) = happyGoto action_7
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_8
action_33 (16) = happyShift action_9
action_33 (17) = happyShift action_10
action_33 (18) = happyShift action_11
action_33 (19) = happyShift action_12
action_33 (20) = happyShift action_13
action_33 (21) = happyShift action_14
action_33 (22) = happyShift action_15
action_33 (23) = happyShift action_16
action_33 (26) = happyShift action_17
action_33 (27) = happyShift action_18
action_33 (28) = happyShift action_19
action_33 (31) = happyShift action_20
action_33 (32) = happyShift action_21
action_33 (33) = happyShift action_22
action_33 (50) = happyShift action_23
action_33 (53) = happyShift action_24
action_33 (55) = happyShift action_25
action_33 (60) = happyShift action_26
action_33 (6) = happyGoto action_101
action_33 (7) = happyGoto action_5
action_33 (11) = happyGoto action_6
action_33 (12) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_8
action_34 (16) = happyShift action_9
action_34 (17) = happyShift action_10
action_34 (18) = happyShift action_11
action_34 (19) = happyShift action_12
action_34 (20) = happyShift action_13
action_34 (21) = happyShift action_14
action_34 (22) = happyShift action_15
action_34 (23) = happyShift action_16
action_34 (26) = happyShift action_17
action_34 (27) = happyShift action_18
action_34 (28) = happyShift action_19
action_34 (31) = happyShift action_20
action_34 (32) = happyShift action_21
action_34 (33) = happyShift action_22
action_34 (50) = happyShift action_23
action_34 (53) = happyShift action_24
action_34 (55) = happyShift action_25
action_34 (60) = happyShift action_26
action_34 (6) = happyGoto action_100
action_34 (7) = happyGoto action_5
action_34 (11) = happyGoto action_6
action_34 (12) = happyGoto action_7
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_8
action_35 (16) = happyShift action_9
action_35 (17) = happyShift action_10
action_35 (18) = happyShift action_11
action_35 (19) = happyShift action_12
action_35 (20) = happyShift action_13
action_35 (21) = happyShift action_14
action_35 (22) = happyShift action_15
action_35 (23) = happyShift action_16
action_35 (26) = happyShift action_17
action_35 (27) = happyShift action_18
action_35 (28) = happyShift action_19
action_35 (31) = happyShift action_20
action_35 (32) = happyShift action_21
action_35 (33) = happyShift action_22
action_35 (50) = happyShift action_23
action_35 (53) = happyShift action_24
action_35 (55) = happyShift action_25
action_35 (60) = happyShift action_26
action_35 (6) = happyGoto action_99
action_35 (7) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 (12) = happyGoto action_7
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (15) = happyShift action_8
action_36 (16) = happyShift action_9
action_36 (17) = happyShift action_10
action_36 (18) = happyShift action_11
action_36 (19) = happyShift action_12
action_36 (20) = happyShift action_13
action_36 (21) = happyShift action_14
action_36 (22) = happyShift action_15
action_36 (23) = happyShift action_16
action_36 (26) = happyShift action_17
action_36 (27) = happyShift action_18
action_36 (28) = happyShift action_19
action_36 (31) = happyShift action_20
action_36 (32) = happyShift action_21
action_36 (33) = happyShift action_22
action_36 (50) = happyShift action_23
action_36 (53) = happyShift action_24
action_36 (55) = happyShift action_25
action_36 (60) = happyShift action_26
action_36 (6) = happyGoto action_98
action_36 (7) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 (12) = happyGoto action_7
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (15) = happyShift action_8
action_37 (16) = happyShift action_9
action_37 (17) = happyShift action_10
action_37 (18) = happyShift action_11
action_37 (19) = happyShift action_12
action_37 (20) = happyShift action_13
action_37 (21) = happyShift action_14
action_37 (22) = happyShift action_15
action_37 (23) = happyShift action_16
action_37 (26) = happyShift action_17
action_37 (27) = happyShift action_18
action_37 (28) = happyShift action_19
action_37 (31) = happyShift action_20
action_37 (32) = happyShift action_21
action_37 (33) = happyShift action_22
action_37 (50) = happyShift action_23
action_37 (53) = happyShift action_24
action_37 (55) = happyShift action_25
action_37 (60) = happyShift action_26
action_37 (6) = happyGoto action_97
action_37 (7) = happyGoto action_5
action_37 (11) = happyGoto action_6
action_37 (12) = happyGoto action_7
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (15) = happyShift action_8
action_38 (16) = happyShift action_9
action_38 (17) = happyShift action_10
action_38 (18) = happyShift action_11
action_38 (19) = happyShift action_12
action_38 (20) = happyShift action_13
action_38 (21) = happyShift action_14
action_38 (22) = happyShift action_15
action_38 (23) = happyShift action_16
action_38 (26) = happyShift action_17
action_38 (27) = happyShift action_18
action_38 (28) = happyShift action_19
action_38 (31) = happyShift action_20
action_38 (32) = happyShift action_21
action_38 (33) = happyShift action_22
action_38 (50) = happyShift action_23
action_38 (53) = happyShift action_24
action_38 (55) = happyShift action_25
action_38 (60) = happyShift action_26
action_38 (6) = happyGoto action_96
action_38 (7) = happyGoto action_5
action_38 (11) = happyGoto action_6
action_38 (12) = happyGoto action_7
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (15) = happyShift action_8
action_39 (16) = happyShift action_9
action_39 (17) = happyShift action_10
action_39 (18) = happyShift action_11
action_39 (19) = happyShift action_12
action_39 (20) = happyShift action_13
action_39 (21) = happyShift action_14
action_39 (22) = happyShift action_15
action_39 (23) = happyShift action_16
action_39 (26) = happyShift action_17
action_39 (27) = happyShift action_18
action_39 (28) = happyShift action_19
action_39 (31) = happyShift action_20
action_39 (32) = happyShift action_21
action_39 (33) = happyShift action_22
action_39 (50) = happyShift action_23
action_39 (53) = happyShift action_24
action_39 (55) = happyShift action_25
action_39 (60) = happyShift action_26
action_39 (6) = happyGoto action_94
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (12) = happyGoto action_7
action_39 (14) = happyGoto action_95
action_39 _ = happyReduce_64

action_40 (55) = happyShift action_90
action_40 _ = happyReduce_9

action_41 (55) = happyShift action_90
action_41 _ = happyReduce_8

action_42 (55) = happyShift action_90
action_42 _ = happyReduce_7

action_43 (29) = happyShift action_51
action_43 (30) = happyShift action_52
action_43 (34) = happyShift action_53
action_43 (35) = happyShift action_54
action_43 (36) = happyShift action_55
action_43 (37) = happyShift action_56
action_43 (38) = happyShift action_57
action_43 (39) = happyShift action_58
action_43 (40) = happyShift action_59
action_43 (49) = happyShift action_60
action_43 (50) = happyShift action_89
action_43 (51) = happyShift action_62
action_43 (52) = happyShift action_63
action_43 (55) = happyShift action_90
action_43 (57) = happyShift action_93
action_43 (61) = happyShift action_65
action_43 (62) = happyShift action_66
action_43 (63) = happyShift action_67
action_43 (64) = happyShift action_68
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (29) = happyShift action_51
action_44 (30) = happyShift action_52
action_44 (34) = happyShift action_53
action_44 (35) = happyShift action_54
action_44 (36) = happyShift action_55
action_44 (37) = happyShift action_56
action_44 (38) = happyShift action_57
action_44 (39) = happyShift action_58
action_44 (40) = happyShift action_59
action_44 (49) = happyShift action_60
action_44 (50) = happyShift action_89
action_44 (51) = happyShift action_62
action_44 (52) = happyShift action_63
action_44 (55) = happyShift action_90
action_44 (57) = happyShift action_92
action_44 (61) = happyShift action_65
action_44 (62) = happyShift action_66
action_44 (63) = happyShift action_67
action_44 (64) = happyShift action_68
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (29) = happyShift action_51
action_45 (30) = happyShift action_52
action_45 (34) = happyShift action_53
action_45 (35) = happyShift action_54
action_45 (36) = happyShift action_55
action_45 (37) = happyShift action_56
action_45 (38) = happyShift action_57
action_45 (39) = happyShift action_58
action_45 (40) = happyShift action_59
action_45 (49) = happyShift action_60
action_45 (50) = happyShift action_89
action_45 (51) = happyShift action_62
action_45 (52) = happyShift action_63
action_45 (55) = happyShift action_90
action_45 (61) = happyShift action_65
action_45 (62) = happyShift action_66
action_45 (63) = happyShift action_67
action_45 (64) = happyShift action_68
action_45 _ = happyReduce_40

action_46 (53) = happyShift action_91
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (29) = happyShift action_51
action_47 (30) = happyShift action_52
action_47 (34) = happyShift action_53
action_47 (35) = happyShift action_54
action_47 (36) = happyShift action_55
action_47 (37) = happyShift action_56
action_47 (38) = happyShift action_57
action_47 (39) = happyShift action_58
action_47 (40) = happyShift action_59
action_47 (49) = happyShift action_60
action_47 (50) = happyShift action_89
action_47 (51) = happyShift action_62
action_47 (52) = happyShift action_63
action_47 (55) = happyShift action_90
action_47 (61) = happyShift action_65
action_47 (62) = happyShift action_66
action_47 (63) = happyShift action_67
action_47 (64) = happyShift action_68
action_47 _ = happyReduce_37

action_48 (15) = happyShift action_8
action_48 (16) = happyShift action_9
action_48 (17) = happyShift action_10
action_48 (18) = happyShift action_11
action_48 (19) = happyShift action_12
action_48 (20) = happyShift action_13
action_48 (21) = happyShift action_14
action_48 (22) = happyShift action_15
action_48 (23) = happyShift action_16
action_48 (26) = happyShift action_17
action_48 (27) = happyShift action_18
action_48 (28) = happyShift action_19
action_48 (31) = happyShift action_20
action_48 (32) = happyShift action_21
action_48 (33) = happyShift action_22
action_48 (50) = happyShift action_23
action_48 (53) = happyShift action_24
action_48 (55) = happyShift action_25
action_48 (60) = happyShift action_26
action_48 (6) = happyGoto action_88
action_48 (7) = happyGoto action_5
action_48 (11) = happyGoto action_6
action_48 (12) = happyGoto action_7
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (42) = happyShift action_87
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_4

action_51 (15) = happyShift action_8
action_51 (16) = happyShift action_9
action_51 (17) = happyShift action_10
action_51 (18) = happyShift action_11
action_51 (19) = happyShift action_12
action_51 (20) = happyShift action_13
action_51 (21) = happyShift action_14
action_51 (22) = happyShift action_15
action_51 (23) = happyShift action_16
action_51 (26) = happyShift action_17
action_51 (27) = happyShift action_18
action_51 (28) = happyShift action_19
action_51 (31) = happyShift action_20
action_51 (32) = happyShift action_21
action_51 (33) = happyShift action_22
action_51 (50) = happyShift action_23
action_51 (53) = happyShift action_24
action_51 (55) = happyShift action_25
action_51 (60) = happyShift action_26
action_51 (6) = happyGoto action_86
action_51 (7) = happyGoto action_5
action_51 (11) = happyGoto action_6
action_51 (12) = happyGoto action_7
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (15) = happyShift action_8
action_52 (16) = happyShift action_9
action_52 (17) = happyShift action_10
action_52 (18) = happyShift action_11
action_52 (19) = happyShift action_12
action_52 (20) = happyShift action_13
action_52 (21) = happyShift action_14
action_52 (22) = happyShift action_15
action_52 (23) = happyShift action_16
action_52 (26) = happyShift action_17
action_52 (27) = happyShift action_18
action_52 (28) = happyShift action_19
action_52 (31) = happyShift action_20
action_52 (32) = happyShift action_21
action_52 (33) = happyShift action_22
action_52 (50) = happyShift action_23
action_52 (53) = happyShift action_24
action_52 (55) = happyShift action_25
action_52 (60) = happyShift action_26
action_52 (6) = happyGoto action_85
action_52 (7) = happyGoto action_5
action_52 (11) = happyGoto action_6
action_52 (12) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (15) = happyShift action_8
action_53 (16) = happyShift action_9
action_53 (17) = happyShift action_10
action_53 (18) = happyShift action_11
action_53 (19) = happyShift action_12
action_53 (20) = happyShift action_13
action_53 (21) = happyShift action_14
action_53 (22) = happyShift action_15
action_53 (23) = happyShift action_16
action_53 (26) = happyShift action_17
action_53 (27) = happyShift action_18
action_53 (28) = happyShift action_19
action_53 (31) = happyShift action_20
action_53 (32) = happyShift action_21
action_53 (33) = happyShift action_22
action_53 (50) = happyShift action_23
action_53 (53) = happyShift action_24
action_53 (55) = happyShift action_25
action_53 (60) = happyShift action_26
action_53 (6) = happyGoto action_84
action_53 (7) = happyGoto action_5
action_53 (11) = happyGoto action_6
action_53 (12) = happyGoto action_7
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (15) = happyShift action_8
action_54 (16) = happyShift action_9
action_54 (17) = happyShift action_10
action_54 (18) = happyShift action_11
action_54 (19) = happyShift action_12
action_54 (20) = happyShift action_13
action_54 (21) = happyShift action_14
action_54 (22) = happyShift action_15
action_54 (23) = happyShift action_16
action_54 (26) = happyShift action_17
action_54 (27) = happyShift action_18
action_54 (28) = happyShift action_19
action_54 (31) = happyShift action_20
action_54 (32) = happyShift action_21
action_54 (33) = happyShift action_22
action_54 (50) = happyShift action_23
action_54 (53) = happyShift action_24
action_54 (55) = happyShift action_25
action_54 (60) = happyShift action_26
action_54 (6) = happyGoto action_83
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 (12) = happyGoto action_7
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (15) = happyShift action_8
action_55 (16) = happyShift action_9
action_55 (17) = happyShift action_10
action_55 (18) = happyShift action_11
action_55 (19) = happyShift action_12
action_55 (20) = happyShift action_13
action_55 (21) = happyShift action_14
action_55 (22) = happyShift action_15
action_55 (23) = happyShift action_16
action_55 (26) = happyShift action_17
action_55 (27) = happyShift action_18
action_55 (28) = happyShift action_19
action_55 (31) = happyShift action_20
action_55 (32) = happyShift action_21
action_55 (33) = happyShift action_22
action_55 (50) = happyShift action_23
action_55 (53) = happyShift action_24
action_55 (55) = happyShift action_25
action_55 (60) = happyShift action_26
action_55 (6) = happyGoto action_82
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (12) = happyGoto action_7
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (15) = happyShift action_8
action_56 (16) = happyShift action_9
action_56 (17) = happyShift action_10
action_56 (18) = happyShift action_11
action_56 (19) = happyShift action_12
action_56 (20) = happyShift action_13
action_56 (21) = happyShift action_14
action_56 (22) = happyShift action_15
action_56 (23) = happyShift action_16
action_56 (26) = happyShift action_17
action_56 (27) = happyShift action_18
action_56 (28) = happyShift action_19
action_56 (31) = happyShift action_20
action_56 (32) = happyShift action_21
action_56 (33) = happyShift action_22
action_56 (50) = happyShift action_23
action_56 (53) = happyShift action_24
action_56 (55) = happyShift action_25
action_56 (60) = happyShift action_26
action_56 (6) = happyGoto action_81
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (12) = happyGoto action_7
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (15) = happyShift action_8
action_57 (16) = happyShift action_9
action_57 (17) = happyShift action_10
action_57 (18) = happyShift action_11
action_57 (19) = happyShift action_12
action_57 (20) = happyShift action_13
action_57 (21) = happyShift action_14
action_57 (22) = happyShift action_15
action_57 (23) = happyShift action_16
action_57 (26) = happyShift action_17
action_57 (27) = happyShift action_18
action_57 (28) = happyShift action_19
action_57 (31) = happyShift action_20
action_57 (32) = happyShift action_21
action_57 (33) = happyShift action_22
action_57 (50) = happyShift action_23
action_57 (53) = happyShift action_24
action_57 (55) = happyShift action_25
action_57 (60) = happyShift action_26
action_57 (6) = happyGoto action_80
action_57 (7) = happyGoto action_5
action_57 (11) = happyGoto action_6
action_57 (12) = happyGoto action_7
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (15) = happyShift action_8
action_58 (16) = happyShift action_9
action_58 (17) = happyShift action_10
action_58 (18) = happyShift action_11
action_58 (19) = happyShift action_12
action_58 (20) = happyShift action_13
action_58 (21) = happyShift action_14
action_58 (22) = happyShift action_15
action_58 (23) = happyShift action_16
action_58 (26) = happyShift action_17
action_58 (27) = happyShift action_18
action_58 (28) = happyShift action_19
action_58 (31) = happyShift action_20
action_58 (32) = happyShift action_21
action_58 (33) = happyShift action_22
action_58 (50) = happyShift action_23
action_58 (53) = happyShift action_24
action_58 (55) = happyShift action_25
action_58 (60) = happyShift action_26
action_58 (6) = happyGoto action_79
action_58 (7) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 (12) = happyGoto action_7
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_8
action_59 (16) = happyShift action_9
action_59 (17) = happyShift action_10
action_59 (18) = happyShift action_11
action_59 (19) = happyShift action_12
action_59 (20) = happyShift action_13
action_59 (21) = happyShift action_14
action_59 (22) = happyShift action_15
action_59 (23) = happyShift action_16
action_59 (26) = happyShift action_17
action_59 (27) = happyShift action_18
action_59 (28) = happyShift action_19
action_59 (31) = happyShift action_20
action_59 (32) = happyShift action_21
action_59 (33) = happyShift action_22
action_59 (50) = happyShift action_23
action_59 (53) = happyShift action_24
action_59 (55) = happyShift action_25
action_59 (60) = happyShift action_26
action_59 (6) = happyGoto action_78
action_59 (7) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 (12) = happyGoto action_7
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_8
action_60 (16) = happyShift action_9
action_60 (17) = happyShift action_10
action_60 (18) = happyShift action_11
action_60 (19) = happyShift action_12
action_60 (20) = happyShift action_13
action_60 (21) = happyShift action_14
action_60 (22) = happyShift action_15
action_60 (23) = happyShift action_16
action_60 (26) = happyShift action_17
action_60 (27) = happyShift action_18
action_60 (28) = happyShift action_19
action_60 (31) = happyShift action_20
action_60 (32) = happyShift action_21
action_60 (33) = happyShift action_22
action_60 (50) = happyShift action_23
action_60 (53) = happyShift action_24
action_60 (55) = happyShift action_25
action_60 (60) = happyShift action_26
action_60 (6) = happyGoto action_77
action_60 (7) = happyGoto action_5
action_60 (11) = happyGoto action_6
action_60 (12) = happyGoto action_7
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_8
action_61 (16) = happyShift action_9
action_61 (17) = happyShift action_10
action_61 (18) = happyShift action_11
action_61 (19) = happyShift action_12
action_61 (20) = happyShift action_13
action_61 (21) = happyShift action_14
action_61 (22) = happyShift action_15
action_61 (23) = happyShift action_16
action_61 (26) = happyShift action_17
action_61 (27) = happyShift action_18
action_61 (28) = happyShift action_19
action_61 (31) = happyShift action_20
action_61 (32) = happyShift action_21
action_61 (33) = happyShift action_22
action_61 (50) = happyShift action_23
action_61 (53) = happyShift action_24
action_61 (55) = happyShift action_25
action_61 (60) = happyShift action_26
action_61 (6) = happyGoto action_76
action_61 (7) = happyGoto action_5
action_61 (11) = happyGoto action_6
action_61 (12) = happyGoto action_7
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (15) = happyShift action_8
action_62 (16) = happyShift action_9
action_62 (17) = happyShift action_10
action_62 (18) = happyShift action_11
action_62 (19) = happyShift action_12
action_62 (20) = happyShift action_13
action_62 (21) = happyShift action_14
action_62 (22) = happyShift action_15
action_62 (23) = happyShift action_16
action_62 (26) = happyShift action_17
action_62 (27) = happyShift action_18
action_62 (28) = happyShift action_19
action_62 (31) = happyShift action_20
action_62 (32) = happyShift action_21
action_62 (33) = happyShift action_22
action_62 (50) = happyShift action_23
action_62 (53) = happyShift action_24
action_62 (55) = happyShift action_25
action_62 (60) = happyShift action_26
action_62 (6) = happyGoto action_75
action_62 (7) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 (12) = happyGoto action_7
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (15) = happyShift action_8
action_63 (16) = happyShift action_9
action_63 (17) = happyShift action_10
action_63 (18) = happyShift action_11
action_63 (19) = happyShift action_12
action_63 (20) = happyShift action_13
action_63 (21) = happyShift action_14
action_63 (22) = happyShift action_15
action_63 (23) = happyShift action_16
action_63 (26) = happyShift action_17
action_63 (27) = happyShift action_18
action_63 (28) = happyShift action_19
action_63 (31) = happyShift action_20
action_63 (32) = happyShift action_21
action_63 (33) = happyShift action_22
action_63 (50) = happyShift action_23
action_63 (53) = happyShift action_24
action_63 (55) = happyShift action_25
action_63 (60) = happyShift action_26
action_63 (6) = happyGoto action_74
action_63 (7) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (12) = happyGoto action_7
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (15) = happyShift action_8
action_64 (16) = happyShift action_9
action_64 (17) = happyShift action_10
action_64 (18) = happyShift action_11
action_64 (19) = happyShift action_12
action_64 (20) = happyShift action_13
action_64 (21) = happyShift action_14
action_64 (22) = happyShift action_15
action_64 (23) = happyShift action_16
action_64 (26) = happyShift action_17
action_64 (27) = happyShift action_18
action_64 (28) = happyShift action_19
action_64 (31) = happyShift action_20
action_64 (32) = happyShift action_21
action_64 (33) = happyShift action_22
action_64 (50) = happyShift action_23
action_64 (53) = happyShift action_24
action_64 (55) = happyShift action_25
action_64 (60) = happyShift action_26
action_64 (6) = happyGoto action_73
action_64 (7) = happyGoto action_5
action_64 (10) = happyGoto action_29
action_64 (11) = happyGoto action_6
action_64 (12) = happyGoto action_7
action_64 _ = happyReduce_53

action_65 (15) = happyShift action_8
action_65 (16) = happyShift action_9
action_65 (17) = happyShift action_10
action_65 (18) = happyShift action_11
action_65 (19) = happyShift action_12
action_65 (20) = happyShift action_13
action_65 (21) = happyShift action_14
action_65 (22) = happyShift action_15
action_65 (23) = happyShift action_16
action_65 (26) = happyShift action_17
action_65 (27) = happyShift action_18
action_65 (28) = happyShift action_19
action_65 (31) = happyShift action_20
action_65 (32) = happyShift action_21
action_65 (33) = happyShift action_22
action_65 (50) = happyShift action_23
action_65 (53) = happyShift action_24
action_65 (55) = happyShift action_25
action_65 (60) = happyShift action_26
action_65 (6) = happyGoto action_72
action_65 (7) = happyGoto action_5
action_65 (11) = happyGoto action_6
action_65 (12) = happyGoto action_7
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (15) = happyShift action_8
action_66 (16) = happyShift action_9
action_66 (17) = happyShift action_10
action_66 (18) = happyShift action_11
action_66 (19) = happyShift action_12
action_66 (20) = happyShift action_13
action_66 (21) = happyShift action_14
action_66 (22) = happyShift action_15
action_66 (23) = happyShift action_16
action_66 (26) = happyShift action_17
action_66 (27) = happyShift action_18
action_66 (28) = happyShift action_19
action_66 (31) = happyShift action_20
action_66 (32) = happyShift action_21
action_66 (33) = happyShift action_22
action_66 (50) = happyShift action_23
action_66 (53) = happyShift action_24
action_66 (55) = happyShift action_25
action_66 (60) = happyShift action_26
action_66 (6) = happyGoto action_71
action_66 (7) = happyGoto action_5
action_66 (11) = happyGoto action_6
action_66 (12) = happyGoto action_7
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (15) = happyShift action_8
action_67 (16) = happyShift action_9
action_67 (17) = happyShift action_10
action_67 (18) = happyShift action_11
action_67 (19) = happyShift action_12
action_67 (20) = happyShift action_13
action_67 (21) = happyShift action_14
action_67 (22) = happyShift action_15
action_67 (23) = happyShift action_16
action_67 (26) = happyShift action_17
action_67 (27) = happyShift action_18
action_67 (28) = happyShift action_19
action_67 (31) = happyShift action_20
action_67 (32) = happyShift action_21
action_67 (33) = happyShift action_22
action_67 (50) = happyShift action_23
action_67 (53) = happyShift action_24
action_67 (55) = happyShift action_25
action_67 (60) = happyShift action_26
action_67 (6) = happyGoto action_70
action_67 (7) = happyGoto action_5
action_67 (11) = happyGoto action_6
action_67 (12) = happyGoto action_7
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (15) = happyShift action_8
action_68 (16) = happyShift action_9
action_68 (17) = happyShift action_10
action_68 (18) = happyShift action_11
action_68 (19) = happyShift action_12
action_68 (20) = happyShift action_13
action_68 (21) = happyShift action_14
action_68 (22) = happyShift action_15
action_68 (23) = happyShift action_16
action_68 (26) = happyShift action_17
action_68 (27) = happyShift action_18
action_68 (28) = happyShift action_19
action_68 (31) = happyShift action_20
action_68 (32) = happyShift action_21
action_68 (33) = happyShift action_22
action_68 (50) = happyShift action_23
action_68 (53) = happyShift action_24
action_68 (55) = happyShift action_25
action_68 (60) = happyShift action_26
action_68 (6) = happyGoto action_69
action_68 (7) = happyGoto action_5
action_68 (11) = happyGoto action_6
action_68 (12) = happyGoto action_7
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (38) = happyShift action_57
action_69 (39) = happyShift action_58
action_69 (40) = happyShift action_59
action_69 (49) = happyShift action_60
action_69 (50) = happyShift action_89
action_69 (51) = happyShift action_62
action_69 (52) = happyShift action_63
action_69 (55) = happyShift action_90
action_69 (61) = happyShift action_65
action_69 (62) = happyShift action_66
action_69 _ = happyReduce_45

action_70 (38) = happyShift action_57
action_70 (39) = happyShift action_58
action_70 (40) = happyShift action_59
action_70 (49) = happyShift action_60
action_70 (50) = happyShift action_89
action_70 (51) = happyShift action_62
action_70 (52) = happyShift action_63
action_70 (55) = happyShift action_90
action_70 (61) = happyShift action_65
action_70 (62) = happyShift action_66
action_70 _ = happyReduce_44

action_71 (38) = happyShift action_57
action_71 (39) = happyShift action_58
action_71 (40) = happyShift action_59
action_71 (55) = happyShift action_90
action_71 (61) = happyShift action_65
action_71 _ = happyReduce_43

action_72 (55) = happyShift action_90
action_72 (61) = happyShift action_65
action_72 _ = happyReduce_42

action_73 (29) = happyShift action_51
action_73 (30) = happyShift action_52
action_73 (34) = happyShift action_53
action_73 (35) = happyShift action_54
action_73 (36) = happyShift action_55
action_73 (37) = happyShift action_56
action_73 (38) = happyShift action_57
action_73 (39) = happyShift action_58
action_73 (40) = happyShift action_59
action_73 (49) = happyShift action_60
action_73 (50) = happyShift action_89
action_73 (51) = happyShift action_62
action_73 (52) = happyShift action_63
action_73 (55) = happyShift action_90
action_73 (56) = happyShift action_117
action_73 (59) = happyShift action_105
action_73 (61) = happyShift action_65
action_73 (62) = happyShift action_66
action_73 (63) = happyShift action_67
action_73 (64) = happyShift action_68
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (38) = happyShift action_57
action_74 (39) = happyShift action_58
action_74 (40) = happyShift action_59
action_74 (55) = happyShift action_90
action_74 (61) = happyShift action_65
action_74 _ = happyReduce_34

action_75 (38) = happyShift action_57
action_75 (39) = happyShift action_58
action_75 (40) = happyShift action_59
action_75 (55) = happyShift action_90
action_75 (61) = happyShift action_65
action_75 _ = happyReduce_33

action_76 (38) = happyShift action_57
action_76 (39) = happyShift action_58
action_76 (40) = happyShift action_59
action_76 (55) = happyShift action_90
action_76 (61) = happyShift action_65
action_76 _ = happyReduce_46

action_77 (38) = happyShift action_57
action_77 (39) = happyShift action_58
action_77 (40) = happyShift action_59
action_77 (51) = happyShift action_62
action_77 (52) = happyShift action_63
action_77 (55) = happyShift action_90
action_77 (61) = happyShift action_65
action_77 (62) = happyShift action_66
action_77 _ = happyReduce_31

action_78 (38) = happyShift action_57
action_78 (40) = happyShift action_59
action_78 (55) = happyShift action_90
action_78 (61) = happyShift action_65
action_78 _ = happyReduce_21

action_79 (38) = happyShift action_57
action_79 (40) = happyShift action_59
action_79 (55) = happyShift action_90
action_79 (61) = happyShift action_65
action_79 _ = happyReduce_20

action_80 (38) = happyShift action_57
action_80 (40) = happyShift action_59
action_80 (55) = happyShift action_90
action_80 (61) = happyShift action_65
action_80 _ = happyReduce_19

action_81 (34) = happyShift action_53
action_81 (35) = happyShift action_54
action_81 (38) = happyShift action_57
action_81 (39) = happyShift action_58
action_81 (40) = happyShift action_59
action_81 (49) = happyShift action_60
action_81 (50) = happyShift action_89
action_81 (51) = happyShift action_62
action_81 (52) = happyShift action_63
action_81 (55) = happyShift action_90
action_81 (61) = happyShift action_65
action_81 (62) = happyShift action_66
action_81 (63) = happyShift action_67
action_81 (64) = happyShift action_68
action_81 _ = happyReduce_18

action_82 (34) = happyShift action_53
action_82 (35) = happyShift action_54
action_82 (38) = happyShift action_57
action_82 (39) = happyShift action_58
action_82 (40) = happyShift action_59
action_82 (49) = happyShift action_60
action_82 (50) = happyShift action_89
action_82 (51) = happyShift action_62
action_82 (52) = happyShift action_63
action_82 (55) = happyShift action_90
action_82 (61) = happyShift action_65
action_82 (62) = happyShift action_66
action_82 (63) = happyShift action_67
action_82 (64) = happyShift action_68
action_82 _ = happyReduce_17

action_83 (38) = happyShift action_57
action_83 (39) = happyShift action_58
action_83 (40) = happyShift action_59
action_83 (49) = happyShift action_60
action_83 (50) = happyShift action_89
action_83 (51) = happyShift action_62
action_83 (52) = happyShift action_63
action_83 (55) = happyShift action_90
action_83 (61) = happyShift action_65
action_83 (62) = happyShift action_66
action_83 _ = happyReduce_16

action_84 (38) = happyShift action_57
action_84 (39) = happyShift action_58
action_84 (40) = happyShift action_59
action_84 (49) = happyShift action_60
action_84 (50) = happyShift action_89
action_84 (51) = happyShift action_62
action_84 (52) = happyShift action_63
action_84 (55) = happyShift action_90
action_84 (61) = happyShift action_65
action_84 (62) = happyShift action_66
action_84 _ = happyReduce_15

action_85 (29) = happyShift action_51
action_85 (34) = happyShift action_53
action_85 (35) = happyShift action_54
action_85 (36) = happyShift action_55
action_85 (37) = happyShift action_56
action_85 (38) = happyShift action_57
action_85 (39) = happyShift action_58
action_85 (40) = happyShift action_59
action_85 (49) = happyShift action_60
action_85 (50) = happyShift action_89
action_85 (51) = happyShift action_62
action_85 (52) = happyShift action_63
action_85 (55) = happyShift action_90
action_85 (61) = happyShift action_65
action_85 (62) = happyShift action_66
action_85 (63) = happyShift action_67
action_85 (64) = happyShift action_68
action_85 _ = happyReduce_11

action_86 (34) = happyShift action_53
action_86 (35) = happyShift action_54
action_86 (36) = happyShift action_55
action_86 (37) = happyShift action_56
action_86 (38) = happyShift action_57
action_86 (39) = happyShift action_58
action_86 (40) = happyShift action_59
action_86 (49) = happyShift action_60
action_86 (50) = happyShift action_89
action_86 (51) = happyShift action_62
action_86 (52) = happyShift action_63
action_86 (55) = happyShift action_90
action_86 (61) = happyShift action_65
action_86 (62) = happyShift action_66
action_86 (63) = happyShift action_67
action_86 (64) = happyShift action_68
action_86 _ = happyReduce_10

action_87 (15) = happyShift action_8
action_87 (16) = happyShift action_9
action_87 (17) = happyShift action_10
action_87 (18) = happyShift action_11
action_87 (19) = happyShift action_12
action_87 (20) = happyShift action_13
action_87 (21) = happyShift action_14
action_87 (22) = happyShift action_15
action_87 (23) = happyShift action_16
action_87 (26) = happyShift action_17
action_87 (27) = happyShift action_18
action_87 (28) = happyShift action_19
action_87 (31) = happyShift action_20
action_87 (32) = happyShift action_21
action_87 (33) = happyShift action_22
action_87 (50) = happyShift action_23
action_87 (53) = happyShift action_24
action_87 (55) = happyShift action_25
action_87 (60) = happyShift action_26
action_87 (6) = happyGoto action_116
action_87 (7) = happyGoto action_5
action_87 (11) = happyGoto action_6
action_87 (12) = happyGoto action_7
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (29) = happyShift action_51
action_88 (30) = happyShift action_52
action_88 (34) = happyShift action_53
action_88 (35) = happyShift action_54
action_88 (36) = happyShift action_55
action_88 (37) = happyShift action_56
action_88 (38) = happyShift action_57
action_88 (39) = happyShift action_58
action_88 (40) = happyShift action_59
action_88 (49) = happyShift action_60
action_88 (50) = happyShift action_89
action_88 (51) = happyShift action_62
action_88 (52) = happyShift action_63
action_88 (55) = happyShift action_90
action_88 (58) = happyShift action_115
action_88 (61) = happyShift action_65
action_88 (62) = happyShift action_66
action_88 (63) = happyShift action_67
action_88 (64) = happyShift action_68
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (15) = happyShift action_8
action_89 (16) = happyShift action_9
action_89 (17) = happyShift action_10
action_89 (18) = happyShift action_11
action_89 (19) = happyShift action_12
action_89 (20) = happyShift action_13
action_89 (21) = happyShift action_14
action_89 (22) = happyShift action_15
action_89 (23) = happyShift action_16
action_89 (26) = happyShift action_17
action_89 (27) = happyShift action_18
action_89 (28) = happyShift action_19
action_89 (31) = happyShift action_20
action_89 (32) = happyShift action_21
action_89 (33) = happyShift action_22
action_89 (50) = happyShift action_23
action_89 (53) = happyShift action_24
action_89 (55) = happyShift action_25
action_89 (60) = happyShift action_26
action_89 (6) = happyGoto action_114
action_89 (7) = happyGoto action_5
action_89 (11) = happyGoto action_6
action_89 (12) = happyGoto action_7
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (15) = happyShift action_8
action_90 (16) = happyShift action_9
action_90 (17) = happyShift action_10
action_90 (18) = happyShift action_11
action_90 (19) = happyShift action_12
action_90 (20) = happyShift action_13
action_90 (21) = happyShift action_14
action_90 (22) = happyShift action_15
action_90 (23) = happyShift action_16
action_90 (26) = happyShift action_17
action_90 (27) = happyShift action_18
action_90 (28) = happyShift action_19
action_90 (31) = happyShift action_20
action_90 (32) = happyShift action_21
action_90 (33) = happyShift action_22
action_90 (50) = happyShift action_23
action_90 (53) = happyShift action_24
action_90 (55) = happyShift action_25
action_90 (60) = happyShift action_26
action_90 (6) = happyGoto action_113
action_90 (7) = happyGoto action_5
action_90 (11) = happyGoto action_6
action_90 (12) = happyGoto action_7
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (15) = happyShift action_8
action_91 (16) = happyShift action_9
action_91 (17) = happyShift action_10
action_91 (11) = happyGoto action_111
action_91 (13) = happyGoto action_112
action_91 _ = happyReduce_61

action_92 (15) = happyShift action_8
action_92 (16) = happyShift action_9
action_92 (17) = happyShift action_10
action_92 (18) = happyShift action_11
action_92 (19) = happyShift action_12
action_92 (20) = happyShift action_13
action_92 (21) = happyShift action_14
action_92 (22) = happyShift action_15
action_92 (23) = happyShift action_16
action_92 (26) = happyShift action_17
action_92 (27) = happyShift action_18
action_92 (28) = happyShift action_19
action_92 (31) = happyShift action_20
action_92 (32) = happyShift action_21
action_92 (33) = happyShift action_22
action_92 (50) = happyShift action_23
action_92 (53) = happyShift action_24
action_92 (55) = happyShift action_25
action_92 (60) = happyShift action_26
action_92 (4) = happyGoto action_110
action_92 (5) = happyGoto action_3
action_92 (6) = happyGoto action_4
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 (12) = happyGoto action_7
action_92 _ = happyReduce_1

action_93 (15) = happyShift action_8
action_93 (16) = happyShift action_9
action_93 (17) = happyShift action_10
action_93 (18) = happyShift action_11
action_93 (19) = happyShift action_12
action_93 (20) = happyShift action_13
action_93 (21) = happyShift action_14
action_93 (22) = happyShift action_15
action_93 (23) = happyShift action_16
action_93 (26) = happyShift action_17
action_93 (27) = happyShift action_18
action_93 (28) = happyShift action_19
action_93 (31) = happyShift action_20
action_93 (32) = happyShift action_21
action_93 (33) = happyShift action_22
action_93 (50) = happyShift action_23
action_93 (53) = happyShift action_24
action_93 (55) = happyShift action_25
action_93 (60) = happyShift action_26
action_93 (4) = happyGoto action_109
action_93 (5) = happyGoto action_3
action_93 (6) = happyGoto action_4
action_93 (7) = happyGoto action_5
action_93 (11) = happyGoto action_6
action_93 (12) = happyGoto action_7
action_93 _ = happyReduce_1

action_94 (29) = happyShift action_51
action_94 (30) = happyShift action_52
action_94 (34) = happyShift action_53
action_94 (35) = happyShift action_54
action_94 (36) = happyShift action_55
action_94 (37) = happyShift action_56
action_94 (38) = happyShift action_57
action_94 (39) = happyShift action_58
action_94 (40) = happyShift action_59
action_94 (49) = happyShift action_60
action_94 (50) = happyShift action_89
action_94 (51) = happyShift action_62
action_94 (52) = happyShift action_63
action_94 (55) = happyShift action_90
action_94 (59) = happyShift action_108
action_94 (61) = happyShift action_65
action_94 (62) = happyShift action_66
action_94 (63) = happyShift action_67
action_94 (64) = happyShift action_68
action_94 _ = happyReduce_65

action_95 (54) = happyShift action_107
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (29) = happyShift action_51
action_96 (30) = happyShift action_52
action_96 (34) = happyShift action_53
action_96 (35) = happyShift action_54
action_96 (36) = happyShift action_55
action_96 (37) = happyShift action_56
action_96 (38) = happyShift action_57
action_96 (39) = happyShift action_58
action_96 (40) = happyShift action_59
action_96 (49) = happyShift action_60
action_96 (50) = happyShift action_89
action_96 (51) = happyShift action_62
action_96 (52) = happyShift action_63
action_96 (55) = happyShift action_90
action_96 (61) = happyShift action_65
action_96 (62) = happyShift action_66
action_96 (63) = happyShift action_67
action_96 (64) = happyShift action_68
action_96 _ = happyReduce_29

action_97 (29) = happyShift action_51
action_97 (30) = happyShift action_52
action_97 (34) = happyShift action_53
action_97 (35) = happyShift action_54
action_97 (36) = happyShift action_55
action_97 (37) = happyShift action_56
action_97 (38) = happyShift action_57
action_97 (39) = happyShift action_58
action_97 (40) = happyShift action_59
action_97 (49) = happyShift action_60
action_97 (50) = happyShift action_89
action_97 (51) = happyShift action_62
action_97 (52) = happyShift action_63
action_97 (55) = happyShift action_90
action_97 (61) = happyShift action_65
action_97 (62) = happyShift action_66
action_97 (63) = happyShift action_67
action_97 (64) = happyShift action_68
action_97 _ = happyReduce_28

action_98 (29) = happyShift action_51
action_98 (30) = happyShift action_52
action_98 (34) = happyShift action_53
action_98 (35) = happyShift action_54
action_98 (36) = happyShift action_55
action_98 (37) = happyShift action_56
action_98 (38) = happyShift action_57
action_98 (39) = happyShift action_58
action_98 (40) = happyShift action_59
action_98 (49) = happyShift action_60
action_98 (50) = happyShift action_89
action_98 (51) = happyShift action_62
action_98 (52) = happyShift action_63
action_98 (55) = happyShift action_90
action_98 (61) = happyShift action_65
action_98 (62) = happyShift action_66
action_98 (63) = happyShift action_67
action_98 (64) = happyShift action_68
action_98 _ = happyReduce_27

action_99 (29) = happyShift action_51
action_99 (30) = happyShift action_52
action_99 (34) = happyShift action_53
action_99 (35) = happyShift action_54
action_99 (36) = happyShift action_55
action_99 (37) = happyShift action_56
action_99 (38) = happyShift action_57
action_99 (39) = happyShift action_58
action_99 (40) = happyShift action_59
action_99 (49) = happyShift action_60
action_99 (50) = happyShift action_89
action_99 (51) = happyShift action_62
action_99 (52) = happyShift action_63
action_99 (55) = happyShift action_90
action_99 (61) = happyShift action_65
action_99 (62) = happyShift action_66
action_99 (63) = happyShift action_67
action_99 (64) = happyShift action_68
action_99 _ = happyReduce_26

action_100 (29) = happyShift action_51
action_100 (30) = happyShift action_52
action_100 (34) = happyShift action_53
action_100 (35) = happyShift action_54
action_100 (36) = happyShift action_55
action_100 (37) = happyShift action_56
action_100 (38) = happyShift action_57
action_100 (39) = happyShift action_58
action_100 (40) = happyShift action_59
action_100 (49) = happyShift action_60
action_100 (50) = happyShift action_89
action_100 (51) = happyShift action_62
action_100 (52) = happyShift action_63
action_100 (55) = happyShift action_90
action_100 (61) = happyShift action_65
action_100 (62) = happyShift action_66
action_100 (63) = happyShift action_67
action_100 (64) = happyShift action_68
action_100 _ = happyReduce_25

action_101 (29) = happyShift action_51
action_101 (30) = happyShift action_52
action_101 (34) = happyShift action_53
action_101 (35) = happyShift action_54
action_101 (36) = happyShift action_55
action_101 (37) = happyShift action_56
action_101 (38) = happyShift action_57
action_101 (39) = happyShift action_58
action_101 (40) = happyShift action_59
action_101 (49) = happyShift action_60
action_101 (50) = happyShift action_89
action_101 (51) = happyShift action_62
action_101 (52) = happyShift action_63
action_101 (55) = happyShift action_90
action_101 (61) = happyShift action_65
action_101 (62) = happyShift action_66
action_101 (63) = happyShift action_67
action_101 (64) = happyShift action_68
action_101 _ = happyReduce_24

action_102 (29) = happyShift action_51
action_102 (30) = happyShift action_52
action_102 (34) = happyShift action_53
action_102 (35) = happyShift action_54
action_102 (36) = happyShift action_55
action_102 (37) = happyShift action_56
action_102 (38) = happyShift action_57
action_102 (39) = happyShift action_58
action_102 (40) = happyShift action_59
action_102 (49) = happyShift action_60
action_102 (50) = happyShift action_89
action_102 (51) = happyShift action_62
action_102 (52) = happyShift action_63
action_102 (55) = happyShift action_90
action_102 (61) = happyShift action_65
action_102 (62) = happyShift action_66
action_102 (63) = happyShift action_67
action_102 (64) = happyShift action_68
action_102 _ = happyReduce_23

action_103 _ = happyReduce_47

action_104 _ = happyReduce_14

action_105 (15) = happyShift action_8
action_105 (16) = happyShift action_9
action_105 (17) = happyShift action_10
action_105 (18) = happyShift action_11
action_105 (19) = happyShift action_12
action_105 (20) = happyShift action_13
action_105 (21) = happyShift action_14
action_105 (22) = happyShift action_15
action_105 (23) = happyShift action_16
action_105 (26) = happyShift action_17
action_105 (27) = happyShift action_18
action_105 (28) = happyShift action_19
action_105 (31) = happyShift action_20
action_105 (32) = happyShift action_21
action_105 (33) = happyShift action_22
action_105 (50) = happyShift action_23
action_105 (53) = happyShift action_24
action_105 (55) = happyShift action_25
action_105 (60) = happyShift action_26
action_105 (6) = happyGoto action_28
action_105 (7) = happyGoto action_5
action_105 (10) = happyGoto action_106
action_105 (11) = happyGoto action_6
action_105 (12) = happyGoto action_7
action_105 _ = happyReduce_53

action_106 _ = happyReduce_55

action_107 _ = happyReduce_39

action_108 (15) = happyShift action_8
action_108 (16) = happyShift action_9
action_108 (17) = happyShift action_10
action_108 (18) = happyShift action_11
action_108 (19) = happyShift action_12
action_108 (20) = happyShift action_13
action_108 (21) = happyShift action_14
action_108 (22) = happyShift action_15
action_108 (23) = happyShift action_16
action_108 (26) = happyShift action_17
action_108 (27) = happyShift action_18
action_108 (28) = happyShift action_19
action_108 (31) = happyShift action_20
action_108 (32) = happyShift action_21
action_108 (33) = happyShift action_22
action_108 (50) = happyShift action_23
action_108 (53) = happyShift action_24
action_108 (55) = happyShift action_25
action_108 (60) = happyShift action_26
action_108 (6) = happyGoto action_94
action_108 (7) = happyGoto action_5
action_108 (11) = happyGoto action_6
action_108 (12) = happyGoto action_7
action_108 (14) = happyGoto action_122
action_108 _ = happyReduce_64

action_109 (58) = happyShift action_121
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (58) = happyShift action_120
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (33) = happyShift action_119
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (54) = happyShift action_118
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (29) = happyShift action_51
action_113 (30) = happyShift action_52
action_113 (34) = happyShift action_53
action_113 (35) = happyShift action_54
action_113 (36) = happyShift action_55
action_113 (37) = happyShift action_56
action_113 (38) = happyShift action_57
action_113 (39) = happyShift action_58
action_113 (40) = happyShift action_59
action_113 (49) = happyShift action_60
action_113 (50) = happyShift action_89
action_113 (51) = happyShift action_62
action_113 (52) = happyShift action_63
action_113 (55) = happyShift action_90
action_113 (56) = happyShift action_117
action_113 (61) = happyShift action_65
action_113 (62) = happyShift action_66
action_113 (63) = happyShift action_67
action_113 (64) = happyShift action_68
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (38) = happyShift action_57
action_114 (39) = happyShift action_58
action_114 (40) = happyShift action_59
action_114 (51) = happyShift action_62
action_114 (52) = happyShift action_63
action_114 (55) = happyShift action_90
action_114 (61) = happyShift action_65
action_114 (62) = happyShift action_66
action_114 _ = happyReduce_32

action_115 _ = happyReduce_36

action_116 (29) = happyShift action_51
action_116 (30) = happyShift action_52
action_116 (34) = happyShift action_53
action_116 (35) = happyShift action_54
action_116 (36) = happyShift action_55
action_116 (37) = happyShift action_56
action_116 (38) = happyShift action_57
action_116 (39) = happyShift action_58
action_116 (40) = happyShift action_59
action_116 (49) = happyShift action_60
action_116 (50) = happyShift action_89
action_116 (51) = happyShift action_62
action_116 (52) = happyShift action_63
action_116 (55) = happyShift action_90
action_116 (61) = happyShift action_65
action_116 (62) = happyShift action_66
action_116 (63) = happyShift action_67
action_116 (64) = happyShift action_68
action_116 _ = happyReduce_22

action_117 _ = happyReduce_35

action_118 (41) = happyShift action_126
action_118 (57) = happyShift action_127
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (59) = happyShift action_125
action_119 _ = happyReduce_62

action_120 _ = happyReduce_5

action_121 (24) = happyShift action_124
action_121 (8) = happyGoto action_123
action_121 _ = happyReduce_49

action_122 _ = happyReduce_66

action_123 (25) = happyShift action_133
action_123 (9) = happyGoto action_132
action_123 _ = happyReduce_51

action_124 (15) = happyShift action_8
action_124 (16) = happyShift action_9
action_124 (17) = happyShift action_10
action_124 (18) = happyShift action_11
action_124 (19) = happyShift action_12
action_124 (20) = happyShift action_13
action_124 (21) = happyShift action_14
action_124 (22) = happyShift action_15
action_124 (23) = happyShift action_16
action_124 (26) = happyShift action_17
action_124 (27) = happyShift action_18
action_124 (28) = happyShift action_19
action_124 (31) = happyShift action_20
action_124 (32) = happyShift action_21
action_124 (33) = happyShift action_22
action_124 (50) = happyShift action_23
action_124 (53) = happyShift action_24
action_124 (55) = happyShift action_25
action_124 (60) = happyShift action_26
action_124 (6) = happyGoto action_131
action_124 (7) = happyGoto action_5
action_124 (11) = happyGoto action_6
action_124 (12) = happyGoto action_7
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (15) = happyShift action_8
action_125 (16) = happyShift action_9
action_125 (17) = happyShift action_10
action_125 (11) = happyGoto action_111
action_125 (13) = happyGoto action_130
action_125 _ = happyReduce_61

action_126 (15) = happyShift action_8
action_126 (16) = happyShift action_9
action_126 (17) = happyShift action_10
action_126 (11) = happyGoto action_129
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (15) = happyShift action_8
action_127 (16) = happyShift action_9
action_127 (17) = happyShift action_10
action_127 (18) = happyShift action_11
action_127 (19) = happyShift action_12
action_127 (20) = happyShift action_13
action_127 (21) = happyShift action_14
action_127 (22) = happyShift action_15
action_127 (23) = happyShift action_16
action_127 (26) = happyShift action_17
action_127 (27) = happyShift action_18
action_127 (28) = happyShift action_19
action_127 (31) = happyShift action_20
action_127 (32) = happyShift action_21
action_127 (33) = happyShift action_22
action_127 (50) = happyShift action_23
action_127 (53) = happyShift action_24
action_127 (55) = happyShift action_25
action_127 (60) = happyShift action_26
action_127 (4) = happyGoto action_128
action_127 (5) = happyGoto action_3
action_127 (6) = happyGoto action_4
action_127 (7) = happyGoto action_5
action_127 (11) = happyGoto action_6
action_127 (12) = happyGoto action_7
action_127 _ = happyReduce_1

action_128 (58) = happyShift action_137
action_128 _ = happyFail (happyExpListPerState 128)

action_129 (57) = happyShift action_136
action_129 _ = happyFail (happyExpListPerState 129)

action_130 _ = happyReduce_63

action_131 (29) = happyShift action_51
action_131 (30) = happyShift action_52
action_131 (34) = happyShift action_53
action_131 (35) = happyShift action_54
action_131 (36) = happyShift action_55
action_131 (37) = happyShift action_56
action_131 (38) = happyShift action_57
action_131 (39) = happyShift action_58
action_131 (40) = happyShift action_59
action_131 (49) = happyShift action_60
action_131 (50) = happyShift action_89
action_131 (51) = happyShift action_62
action_131 (52) = happyShift action_63
action_131 (55) = happyShift action_90
action_131 (57) = happyShift action_135
action_131 (61) = happyShift action_65
action_131 (62) = happyShift action_66
action_131 (63) = happyShift action_67
action_131 (64) = happyShift action_68
action_131 _ = happyFail (happyExpListPerState 131)

action_132 _ = happyReduce_48

action_133 (57) = happyShift action_134
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (15) = happyShift action_8
action_134 (16) = happyShift action_9
action_134 (17) = happyShift action_10
action_134 (18) = happyShift action_11
action_134 (19) = happyShift action_12
action_134 (20) = happyShift action_13
action_134 (21) = happyShift action_14
action_134 (22) = happyShift action_15
action_134 (23) = happyShift action_16
action_134 (26) = happyShift action_17
action_134 (27) = happyShift action_18
action_134 (28) = happyShift action_19
action_134 (31) = happyShift action_20
action_134 (32) = happyShift action_21
action_134 (33) = happyShift action_22
action_134 (50) = happyShift action_23
action_134 (53) = happyShift action_24
action_134 (55) = happyShift action_25
action_134 (60) = happyShift action_26
action_134 (4) = happyGoto action_140
action_134 (5) = happyGoto action_3
action_134 (6) = happyGoto action_4
action_134 (7) = happyGoto action_5
action_134 (11) = happyGoto action_6
action_134 (12) = happyGoto action_7
action_134 _ = happyReduce_1

action_135 (15) = happyShift action_8
action_135 (16) = happyShift action_9
action_135 (17) = happyShift action_10
action_135 (18) = happyShift action_11
action_135 (19) = happyShift action_12
action_135 (20) = happyShift action_13
action_135 (21) = happyShift action_14
action_135 (22) = happyShift action_15
action_135 (23) = happyShift action_16
action_135 (26) = happyShift action_17
action_135 (27) = happyShift action_18
action_135 (28) = happyShift action_19
action_135 (31) = happyShift action_20
action_135 (32) = happyShift action_21
action_135 (33) = happyShift action_22
action_135 (50) = happyShift action_23
action_135 (53) = happyShift action_24
action_135 (55) = happyShift action_25
action_135 (60) = happyShift action_26
action_135 (4) = happyGoto action_139
action_135 (5) = happyGoto action_3
action_135 (6) = happyGoto action_4
action_135 (7) = happyGoto action_5
action_135 (11) = happyGoto action_6
action_135 (12) = happyGoto action_7
action_135 _ = happyReduce_1

action_136 (15) = happyShift action_8
action_136 (16) = happyShift action_9
action_136 (17) = happyShift action_10
action_136 (18) = happyShift action_11
action_136 (19) = happyShift action_12
action_136 (20) = happyShift action_13
action_136 (21) = happyShift action_14
action_136 (22) = happyShift action_15
action_136 (23) = happyShift action_16
action_136 (26) = happyShift action_17
action_136 (27) = happyShift action_18
action_136 (28) = happyShift action_19
action_136 (31) = happyShift action_20
action_136 (32) = happyShift action_21
action_136 (33) = happyShift action_22
action_136 (50) = happyShift action_23
action_136 (53) = happyShift action_24
action_136 (55) = happyShift action_25
action_136 (60) = happyShift action_26
action_136 (4) = happyGoto action_138
action_136 (5) = happyGoto action_3
action_136 (6) = happyGoto action_4
action_136 (7) = happyGoto action_5
action_136 (11) = happyGoto action_6
action_136 (12) = happyGoto action_7
action_136 _ = happyReduce_1

action_137 _ = happyReduce_59

action_138 (58) = happyShift action_143
action_138 _ = happyFail (happyExpListPerState 138)

action_139 (58) = happyShift action_142
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (58) = happyShift action_141
action_140 _ = happyFail (happyExpListPerState 140)

action_141 _ = happyReduce_52

action_142 (24) = happyShift action_124
action_142 (8) = happyGoto action_144
action_142 _ = happyReduce_49

action_143 _ = happyReduce_60

action_144 _ = happyReduce_50

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

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

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

happyReduce_22 = happyReduce 4 6 happyReduction_22
happyReduction_22 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (VarDec happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Plus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Minus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Times (VarRef happy_var_1) happy_var_3)
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Div (VarRef happy_var_1) happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Exponent (VarRef happy_var_1) happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Modulo (VarRef happy_var_1) happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 6 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_2  6 happyReduction_37
happyReduction_37 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  6 happyReduction_38
happyReduction_38 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happyReduce 4 6 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_2  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_40 _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  6 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  6 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  6 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  6 happyReduction_46
happyReduction_46 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  6 happyReduction_47
happyReduction_47 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happyReduce 7 7 happyReduction_48
happyReduction_48 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_49 = happySpecReduce_0  8 happyReduction_49
happyReduction_49  =  HappyAbsSyn8
		 ([]
	)

happyReduce_50 = happyReduce 6 8 happyReduction_50
happyReduction_50 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_51 = happySpecReduce_0  9 happyReduction_51
happyReduction_51  =  HappyAbsSyn9
		 ([]
	)

happyReduce_52 = happyReduce 4 9 happyReduction_52
happyReduction_52 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_53 = happySpecReduce_0  10 happyReduction_53
happyReduction_53  =  HappyAbsSyn10
		 ([]
	)

happyReduce_54 = happySpecReduce_1  10 happyReduction_54
happyReduction_54 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  10 happyReduction_55
happyReduction_55 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  11 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_57 = happySpecReduce_1  11 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_58 = happySpecReduce_1  11 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_59 = happyReduce 8 12 happyReduction_59
happyReduction_59 (_ `HappyStk`
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

happyReduce_60 = happyReduce 10 12 happyReduction_60
happyReduction_60 (_ `HappyStk`
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

happyReduce_61 = happySpecReduce_0  13 happyReduction_61
happyReduction_61  =  HappyAbsSyn13
		 ([]
	)

happyReduce_62 = happySpecReduce_2  13 happyReduction_62
happyReduction_62 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn13
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_62 _ _  = notHappyAtAll 

happyReduce_63 = happyReduce 4 13 happyReduction_63
happyReduction_63 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_64 = happySpecReduce_0  14 happyReduction_64
happyReduction_64  =  HappyAbsSyn14
		 ([]
	)

happyReduce_65 = happySpecReduce_1  14 happyReduction_65
happyReduction_65 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_3  14 happyReduction_66
happyReduction_66 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_66 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 15;
	TokenStreamType _ -> cont 16;
	TokenBooleanType _ -> cont 17;
	TokenInput _ -> cont 18;
	TokenPrint _ -> cont 19;
	TokenFunction _ -> cont 20;
	TokenReturn _ -> cont 21;
	TokenWhile _ -> cont 22;
	TokenIf _ -> cont 23;
	TokenElif _ -> cont 24;
	TokenElse _ -> cont 25;
	TokenHasNext _ -> cont 26;
	TokenNext _ -> cont 27;
	TokenSize _ -> cont 28;
	TokenAnd _ -> cont 29;
	TokenOr _ -> cont 30;
	TokenInt _ happy_dollar_dollar -> cont 31;
	TokenBool _ happy_dollar_dollar -> cont 32;
	TokenVar _ happy_dollar_dollar -> cont 33;
	TokenLE _ -> cont 34;
	TokenGE _ -> cont 35;
	TokenEQ _ -> cont 36;
	TokenNE _ -> cont 37;
	TokenCons _ -> cont 38;
	TokenConcat _ -> cont 39;
	TokenTake _ -> cont 40;
	TokenReturnArrow _ -> cont 41;
	TokenAssign _ -> cont 42;
	TokenPlusEquals _ -> cont 43;
	TokenMinusEquals _ -> cont 44;
	TokenTimesEquals _ -> cont 45;
	TokenDivEquals _ -> cont 46;
	TokenExponentEquals _ -> cont 47;
	TokenModuloEquals _ -> cont 48;
	TokenPlus _ -> cont 49;
	TokenMinus _ -> cont 50;
	TokenTimes _ -> cont 51;
	TokenDiv _ -> cont 52;
	TokenLParen _ -> cont 53;
	TokenRParen _ -> cont 54;
	TokenLSquare _ -> cont 55;
	TokenRSquare _ -> cont 56;
	TokenLCurly _ -> cont 57;
	TokenRCurly _ -> cont 58;
	TokenComma _ -> cont 59;
	TokenNot _ -> cont 60;
	TokenExponent _ -> cont 61;
	TokenModulo _ -> cont 62;
	TokenLT _ -> cont 63;
	TokenGT _ -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
    where lineCol = words (tokenPosn t)
          errorMessage = "Parse error at line " ++ (lineCol !! 0) ++ ", column " ++ (lineCol !! 1)

data Type = TypeNone
          | TypeInt 
          | TypeBoolean 
          | TypeStream 
          deriving (Eq)

instance Show Type where
     show (TypeNone) = "<no_type>" 
     show (TypeInt) = "int"
     show (TypeBoolean) = "boolean"
     show (TypeStream) = "stream"

data Exp = While Exp [Exp]
         | If [(Exp, [Exp])]
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
         | None
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

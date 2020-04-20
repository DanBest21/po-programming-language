{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,667) ([63488,3699,18432,33,0,0,0,0,0,0,0,0,0,0,0,16256,32767,6080,62,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,59376,28,17040,32768,59199,32768,532,64512,1849,41984,16,53216,57,34080,0,52863,1,1065,63488,3699,18432,33,0,0,0,0,0,0,0,0,0,2032,0,16256,231,5248,2,14844,7,4260,57344,14799,8192,133,32512,462,10496,4,0,1792,16640,0,35840,57407,7817,0,0,32768,0,0,4067,33656,7,0,112,1040,64512,1849,41984,16,53216,57,34080,0,52863,1,1065,63488,3699,18432,33,40896,115,2624,1,40190,3,2130,61440,7399,36864,66,0,0,4096,0,0,0,128,0,0,0,4,0,65072,42880,120,32768,2033,50492,3,35840,57407,7689,65024,924,20992,8,0,4096,0,0,0,0,0,64512,1849,41984,16,53216,57,34080,0,52863,1,1065,63488,3699,18432,33,40896,115,2624,1,40190,3,2130,61440,7399,36864,66,16256,231,5248,2,14844,7,4260,57344,14799,8192,133,32512,462,10496,4,29688,14,8520,49152,29599,16384,266,65024,924,20992,8,59376,28,17040,32768,59199,32768,532,64512,1849,41984,16,53216,57,34080,0,0,32992,6183,0,0,15367,193,0,14336,2048,2,0,0,4160,0,58112,30735,1958,0,28672,4096,4,0,896,8320,0,0,28,260,0,57344,9728,24,0,1280,16640,0,0,40,520,0,16384,16385,16,0,3680,33400,7,0,49267,15379,0,32768,40451,96,0,7168,1264,3,4096,33022,30759,0,61440,15367,961,40896,115,2624,1,24576,508,62031,61440,7399,36864,66,16256,231,5248,2,14844,7,4260,57344,14799,8192,133,0,65072,10112,120,32768,2033,49468,3,35840,57407,7689,0,64608,20225,240,0,4067,33400,7,6144,49279,15379,0,63680,40451,480,0,0,0,0,0,0,0,63488,3699,18432,33,0,0,0,0,0,0,512,0,0,0,16,0,32536,13248,60,0,896,24728,0,0,0,0,0,65072,10112,120,0,0,0,0,0,0,0,0,1,0,0,4096,0,0,32768,59199,32768,532,0,63680,40451,482,0,0,0,0,0,0,128,63488,3699,18432,33,40896,115,2624,1,0,0,512,0,0,0,16,0,0,0,0,512,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","int_type","stream_type","boolean_type","input","print","while","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 59
        bit_end = (st + 1) * 59
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..58]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (15) = happyShift action_10
action_0 (16) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (21) = happyShift action_14
action_0 (22) = happyShift action_15
action_0 (23) = happyShift action_16
action_0 (26) = happyShift action_17
action_0 (27) = happyShift action_18
action_0 (28) = happyShift action_19
action_0 (44) = happyShift action_20
action_0 (47) = happyShift action_21
action_0 (49) = happyShift action_22
action_0 (54) = happyShift action_23
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (59) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (12) = happyShift action_7
action_4 (13) = happyShift action_8
action_4 (14) = happyShift action_9
action_4 (15) = happyShift action_10
action_4 (16) = happyShift action_11
action_4 (17) = happyShift action_12
action_4 (18) = happyShift action_13
action_4 (21) = happyShift action_14
action_4 (22) = happyShift action_15
action_4 (23) = happyShift action_16
action_4 (24) = happyShift action_45
action_4 (25) = happyShift action_46
action_4 (26) = happyShift action_17
action_4 (27) = happyShift action_18
action_4 (28) = happyShift action_19
action_4 (29) = happyShift action_47
action_4 (30) = happyShift action_48
action_4 (31) = happyShift action_49
action_4 (32) = happyShift action_50
action_4 (33) = happyShift action_51
action_4 (34) = happyShift action_52
action_4 (35) = happyShift action_53
action_4 (43) = happyShift action_54
action_4 (44) = happyShift action_55
action_4 (45) = happyShift action_56
action_4 (46) = happyShift action_57
action_4 (47) = happyShift action_21
action_4 (49) = happyShift action_58
action_4 (54) = happyShift action_23
action_4 (55) = happyShift action_59
action_4 (56) = happyShift action_60
action_4 (57) = happyShift action_61
action_4 (58) = happyShift action_62
action_4 (5) = happyGoto action_44
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 (28) = happyShift action_43
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_53

action_8 _ = happyReduce_55

action_9 _ = happyReduce_54

action_10 (51) = happyShift action_42
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_7
action_11 (13) = happyShift action_8
action_11 (14) = happyShift action_9
action_11 (15) = happyShift action_10
action_11 (16) = happyShift action_11
action_11 (17) = happyShift action_12
action_11 (18) = happyShift action_13
action_11 (21) = happyShift action_14
action_11 (22) = happyShift action_15
action_11 (23) = happyShift action_16
action_11 (26) = happyShift action_17
action_11 (27) = happyShift action_18
action_11 (28) = happyShift action_19
action_11 (44) = happyShift action_20
action_11 (47) = happyShift action_21
action_11 (49) = happyShift action_22
action_11 (54) = happyShift action_23
action_11 (6) = happyGoto action_41
action_11 (7) = happyGoto action_5
action_11 (11) = happyGoto action_6
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_7
action_12 (13) = happyShift action_8
action_12 (14) = happyShift action_9
action_12 (15) = happyShift action_10
action_12 (16) = happyShift action_11
action_12 (17) = happyShift action_12
action_12 (18) = happyShift action_13
action_12 (21) = happyShift action_14
action_12 (22) = happyShift action_15
action_12 (23) = happyShift action_16
action_12 (26) = happyShift action_17
action_12 (27) = happyShift action_18
action_12 (28) = happyShift action_19
action_12 (44) = happyShift action_20
action_12 (47) = happyShift action_21
action_12 (49) = happyShift action_22
action_12 (54) = happyShift action_23
action_12 (6) = happyGoto action_40
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_7
action_13 (13) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (15) = happyShift action_10
action_13 (16) = happyShift action_11
action_13 (17) = happyShift action_12
action_13 (18) = happyShift action_13
action_13 (21) = happyShift action_14
action_13 (22) = happyShift action_15
action_13 (23) = happyShift action_16
action_13 (26) = happyShift action_17
action_13 (27) = happyShift action_18
action_13 (28) = happyShift action_19
action_13 (44) = happyShift action_20
action_13 (47) = happyShift action_21
action_13 (49) = happyShift action_22
action_13 (54) = happyShift action_23
action_13 (6) = happyGoto action_39
action_13 (7) = happyGoto action_5
action_13 (11) = happyGoto action_6
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (14) = happyShift action_9
action_14 (15) = happyShift action_10
action_14 (16) = happyShift action_11
action_14 (17) = happyShift action_12
action_14 (18) = happyShift action_13
action_14 (21) = happyShift action_14
action_14 (22) = happyShift action_15
action_14 (23) = happyShift action_16
action_14 (26) = happyShift action_17
action_14 (27) = happyShift action_18
action_14 (28) = happyShift action_19
action_14 (44) = happyShift action_20
action_14 (47) = happyShift action_21
action_14 (49) = happyShift action_22
action_14 (54) = happyShift action_23
action_14 (6) = happyGoto action_38
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (14) = happyShift action_9
action_15 (15) = happyShift action_10
action_15 (16) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (21) = happyShift action_14
action_15 (22) = happyShift action_15
action_15 (23) = happyShift action_16
action_15 (26) = happyShift action_17
action_15 (27) = happyShift action_18
action_15 (28) = happyShift action_19
action_15 (44) = happyShift action_20
action_15 (47) = happyShift action_21
action_15 (49) = happyShift action_22
action_15 (54) = happyShift action_23
action_15 (6) = happyGoto action_37
action_15 (7) = happyGoto action_5
action_15 (11) = happyGoto action_6
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_7
action_16 (13) = happyShift action_8
action_16 (14) = happyShift action_9
action_16 (15) = happyShift action_10
action_16 (16) = happyShift action_11
action_16 (17) = happyShift action_12
action_16 (18) = happyShift action_13
action_16 (21) = happyShift action_14
action_16 (22) = happyShift action_15
action_16 (23) = happyShift action_16
action_16 (26) = happyShift action_17
action_16 (27) = happyShift action_18
action_16 (28) = happyShift action_19
action_16 (44) = happyShift action_20
action_16 (47) = happyShift action_21
action_16 (49) = happyShift action_22
action_16 (54) = happyShift action_23
action_16 (6) = happyGoto action_36
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_12

action_18 _ = happyReduce_13

action_19 (36) = happyShift action_29
action_19 (37) = happyShift action_30
action_19 (38) = happyShift action_31
action_19 (39) = happyShift action_32
action_19 (40) = happyShift action_33
action_19 (41) = happyShift action_34
action_19 (42) = happyShift action_35
action_19 _ = happyReduce_30

action_20 (12) = happyShift action_7
action_20 (13) = happyShift action_8
action_20 (14) = happyShift action_9
action_20 (15) = happyShift action_10
action_20 (16) = happyShift action_11
action_20 (17) = happyShift action_12
action_20 (18) = happyShift action_13
action_20 (21) = happyShift action_14
action_20 (22) = happyShift action_15
action_20 (23) = happyShift action_16
action_20 (26) = happyShift action_17
action_20 (27) = happyShift action_18
action_20 (28) = happyShift action_19
action_20 (44) = happyShift action_20
action_20 (47) = happyShift action_21
action_20 (49) = happyShift action_22
action_20 (54) = happyShift action_23
action_20 (6) = happyGoto action_28
action_20 (7) = happyGoto action_5
action_20 (11) = happyGoto action_6
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_7
action_21 (13) = happyShift action_8
action_21 (14) = happyShift action_9
action_21 (15) = happyShift action_10
action_21 (16) = happyShift action_11
action_21 (17) = happyShift action_12
action_21 (18) = happyShift action_13
action_21 (21) = happyShift action_14
action_21 (22) = happyShift action_15
action_21 (23) = happyShift action_16
action_21 (26) = happyShift action_17
action_21 (27) = happyShift action_18
action_21 (28) = happyShift action_19
action_21 (44) = happyShift action_20
action_21 (47) = happyShift action_21
action_21 (49) = happyShift action_22
action_21 (54) = happyShift action_23
action_21 (6) = happyGoto action_27
action_21 (7) = happyGoto action_5
action_21 (11) = happyGoto action_6
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_7
action_22 (13) = happyShift action_8
action_22 (14) = happyShift action_9
action_22 (15) = happyShift action_10
action_22 (16) = happyShift action_11
action_22 (17) = happyShift action_12
action_22 (18) = happyShift action_13
action_22 (21) = happyShift action_14
action_22 (22) = happyShift action_15
action_22 (23) = happyShift action_16
action_22 (26) = happyShift action_17
action_22 (27) = happyShift action_18
action_22 (28) = happyShift action_19
action_22 (44) = happyShift action_20
action_22 (47) = happyShift action_21
action_22 (49) = happyShift action_22
action_22 (54) = happyShift action_23
action_22 (6) = happyGoto action_25
action_22 (7) = happyGoto action_5
action_22 (10) = happyGoto action_26
action_22 (11) = happyGoto action_6
action_22 _ = happyReduce_50

action_23 (12) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (15) = happyShift action_10
action_23 (16) = happyShift action_11
action_23 (17) = happyShift action_12
action_23 (18) = happyShift action_13
action_23 (21) = happyShift action_14
action_23 (22) = happyShift action_15
action_23 (23) = happyShift action_16
action_23 (26) = happyShift action_17
action_23 (27) = happyShift action_18
action_23 (28) = happyShift action_19
action_23 (44) = happyShift action_20
action_23 (47) = happyShift action_21
action_23 (49) = happyShift action_22
action_23 (54) = happyShift action_23
action_23 (6) = happyGoto action_24
action_23 (7) = happyGoto action_5
action_23 (11) = happyGoto action_6
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (33) = happyShift action_51
action_24 (34) = happyShift action_52
action_24 (35) = happyShift action_53
action_24 (49) = happyShift action_84
action_24 (55) = happyShift action_59
action_24 _ = happyReduce_38

action_25 (24) = happyShift action_45
action_25 (25) = happyShift action_46
action_25 (29) = happyShift action_47
action_25 (30) = happyShift action_48
action_25 (31) = happyShift action_49
action_25 (32) = happyShift action_50
action_25 (33) = happyShift action_51
action_25 (34) = happyShift action_52
action_25 (35) = happyShift action_53
action_25 (43) = happyShift action_54
action_25 (44) = happyShift action_83
action_25 (45) = happyShift action_56
action_25 (46) = happyShift action_57
action_25 (49) = happyShift action_84
action_25 (53) = happyShift action_96
action_25 (55) = happyShift action_59
action_25 (56) = happyShift action_60
action_25 (57) = happyShift action_61
action_25 (58) = happyShift action_62
action_25 _ = happyReduce_51

action_26 (50) = happyShift action_95
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (24) = happyShift action_45
action_27 (25) = happyShift action_46
action_27 (29) = happyShift action_47
action_27 (30) = happyShift action_48
action_27 (31) = happyShift action_49
action_27 (32) = happyShift action_50
action_27 (33) = happyShift action_51
action_27 (34) = happyShift action_52
action_27 (35) = happyShift action_53
action_27 (43) = happyShift action_54
action_27 (44) = happyShift action_83
action_27 (45) = happyShift action_56
action_27 (46) = happyShift action_57
action_27 (48) = happyShift action_94
action_27 (49) = happyShift action_84
action_27 (55) = happyShift action_59
action_27 (56) = happyShift action_60
action_27 (57) = happyShift action_61
action_27 (58) = happyShift action_62
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (33) = happyShift action_51
action_28 (34) = happyShift action_52
action_28 (35) = happyShift action_53
action_28 (49) = happyShift action_84
action_28 (55) = happyShift action_59
action_28 _ = happyReduce_43

action_29 (12) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (15) = happyShift action_10
action_29 (16) = happyShift action_11
action_29 (17) = happyShift action_12
action_29 (18) = happyShift action_13
action_29 (21) = happyShift action_14
action_29 (22) = happyShift action_15
action_29 (23) = happyShift action_16
action_29 (26) = happyShift action_17
action_29 (27) = happyShift action_18
action_29 (28) = happyShift action_19
action_29 (44) = happyShift action_20
action_29 (47) = happyShift action_21
action_29 (49) = happyShift action_22
action_29 (54) = happyShift action_23
action_29 (6) = happyGoto action_93
action_29 (7) = happyGoto action_5
action_29 (11) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_7
action_30 (13) = happyShift action_8
action_30 (14) = happyShift action_9
action_30 (15) = happyShift action_10
action_30 (16) = happyShift action_11
action_30 (17) = happyShift action_12
action_30 (18) = happyShift action_13
action_30 (21) = happyShift action_14
action_30 (22) = happyShift action_15
action_30 (23) = happyShift action_16
action_30 (26) = happyShift action_17
action_30 (27) = happyShift action_18
action_30 (28) = happyShift action_19
action_30 (44) = happyShift action_20
action_30 (47) = happyShift action_21
action_30 (49) = happyShift action_22
action_30 (54) = happyShift action_23
action_30 (6) = happyGoto action_92
action_30 (7) = happyGoto action_5
action_30 (11) = happyGoto action_6
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_7
action_31 (13) = happyShift action_8
action_31 (14) = happyShift action_9
action_31 (15) = happyShift action_10
action_31 (16) = happyShift action_11
action_31 (17) = happyShift action_12
action_31 (18) = happyShift action_13
action_31 (21) = happyShift action_14
action_31 (22) = happyShift action_15
action_31 (23) = happyShift action_16
action_31 (26) = happyShift action_17
action_31 (27) = happyShift action_18
action_31 (28) = happyShift action_19
action_31 (44) = happyShift action_20
action_31 (47) = happyShift action_21
action_31 (49) = happyShift action_22
action_31 (54) = happyShift action_23
action_31 (6) = happyGoto action_91
action_31 (7) = happyGoto action_5
action_31 (11) = happyGoto action_6
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (12) = happyShift action_7
action_32 (13) = happyShift action_8
action_32 (14) = happyShift action_9
action_32 (15) = happyShift action_10
action_32 (16) = happyShift action_11
action_32 (17) = happyShift action_12
action_32 (18) = happyShift action_13
action_32 (21) = happyShift action_14
action_32 (22) = happyShift action_15
action_32 (23) = happyShift action_16
action_32 (26) = happyShift action_17
action_32 (27) = happyShift action_18
action_32 (28) = happyShift action_19
action_32 (44) = happyShift action_20
action_32 (47) = happyShift action_21
action_32 (49) = happyShift action_22
action_32 (54) = happyShift action_23
action_32 (6) = happyGoto action_90
action_32 (7) = happyGoto action_5
action_32 (11) = happyGoto action_6
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (15) = happyShift action_10
action_33 (16) = happyShift action_11
action_33 (17) = happyShift action_12
action_33 (18) = happyShift action_13
action_33 (21) = happyShift action_14
action_33 (22) = happyShift action_15
action_33 (23) = happyShift action_16
action_33 (26) = happyShift action_17
action_33 (27) = happyShift action_18
action_33 (28) = happyShift action_19
action_33 (44) = happyShift action_20
action_33 (47) = happyShift action_21
action_33 (49) = happyShift action_22
action_33 (54) = happyShift action_23
action_33 (6) = happyGoto action_89
action_33 (7) = happyGoto action_5
action_33 (11) = happyGoto action_6
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (12) = happyShift action_7
action_34 (13) = happyShift action_8
action_34 (14) = happyShift action_9
action_34 (15) = happyShift action_10
action_34 (16) = happyShift action_11
action_34 (17) = happyShift action_12
action_34 (18) = happyShift action_13
action_34 (21) = happyShift action_14
action_34 (22) = happyShift action_15
action_34 (23) = happyShift action_16
action_34 (26) = happyShift action_17
action_34 (27) = happyShift action_18
action_34 (28) = happyShift action_19
action_34 (44) = happyShift action_20
action_34 (47) = happyShift action_21
action_34 (49) = happyShift action_22
action_34 (54) = happyShift action_23
action_34 (6) = happyGoto action_88
action_34 (7) = happyGoto action_5
action_34 (11) = happyGoto action_6
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (12) = happyShift action_7
action_35 (13) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (15) = happyShift action_10
action_35 (16) = happyShift action_11
action_35 (17) = happyShift action_12
action_35 (18) = happyShift action_13
action_35 (21) = happyShift action_14
action_35 (22) = happyShift action_15
action_35 (23) = happyShift action_16
action_35 (26) = happyShift action_17
action_35 (27) = happyShift action_18
action_35 (28) = happyShift action_19
action_35 (44) = happyShift action_20
action_35 (47) = happyShift action_21
action_35 (49) = happyShift action_22
action_35 (54) = happyShift action_23
action_35 (6) = happyGoto action_87
action_35 (7) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (49) = happyShift action_84
action_36 _ = happyReduce_9

action_37 (49) = happyShift action_84
action_37 _ = happyReduce_8

action_38 (49) = happyShift action_84
action_38 _ = happyReduce_7

action_39 (24) = happyShift action_45
action_39 (25) = happyShift action_46
action_39 (29) = happyShift action_47
action_39 (30) = happyShift action_48
action_39 (31) = happyShift action_49
action_39 (32) = happyShift action_50
action_39 (33) = happyShift action_51
action_39 (34) = happyShift action_52
action_39 (35) = happyShift action_53
action_39 (43) = happyShift action_54
action_39 (44) = happyShift action_83
action_39 (45) = happyShift action_56
action_39 (46) = happyShift action_57
action_39 (49) = happyShift action_84
action_39 (51) = happyShift action_86
action_39 (55) = happyShift action_59
action_39 (56) = happyShift action_60
action_39 (57) = happyShift action_61
action_39 (58) = happyShift action_62
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (24) = happyShift action_45
action_40 (25) = happyShift action_46
action_40 (29) = happyShift action_47
action_40 (30) = happyShift action_48
action_40 (31) = happyShift action_49
action_40 (32) = happyShift action_50
action_40 (33) = happyShift action_51
action_40 (34) = happyShift action_52
action_40 (35) = happyShift action_53
action_40 (43) = happyShift action_54
action_40 (44) = happyShift action_83
action_40 (45) = happyShift action_56
action_40 (46) = happyShift action_57
action_40 (49) = happyShift action_84
action_40 (51) = happyShift action_85
action_40 (55) = happyShift action_59
action_40 (56) = happyShift action_60
action_40 (57) = happyShift action_61
action_40 (58) = happyShift action_62
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (24) = happyShift action_45
action_41 (25) = happyShift action_46
action_41 (29) = happyShift action_47
action_41 (30) = happyShift action_48
action_41 (31) = happyShift action_49
action_41 (32) = happyShift action_50
action_41 (33) = happyShift action_51
action_41 (34) = happyShift action_52
action_41 (35) = happyShift action_53
action_41 (43) = happyShift action_54
action_41 (44) = happyShift action_83
action_41 (45) = happyShift action_56
action_41 (46) = happyShift action_57
action_41 (49) = happyShift action_84
action_41 (55) = happyShift action_59
action_41 (56) = happyShift action_60
action_41 (57) = happyShift action_61
action_41 (58) = happyShift action_62
action_41 _ = happyReduce_37

action_42 (12) = happyShift action_7
action_42 (13) = happyShift action_8
action_42 (14) = happyShift action_9
action_42 (15) = happyShift action_10
action_42 (16) = happyShift action_11
action_42 (17) = happyShift action_12
action_42 (18) = happyShift action_13
action_42 (21) = happyShift action_14
action_42 (22) = happyShift action_15
action_42 (23) = happyShift action_16
action_42 (26) = happyShift action_17
action_42 (27) = happyShift action_18
action_42 (28) = happyShift action_19
action_42 (44) = happyShift action_20
action_42 (47) = happyShift action_21
action_42 (49) = happyShift action_22
action_42 (54) = happyShift action_23
action_42 (6) = happyGoto action_82
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (36) = happyShift action_81
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_4

action_45 (12) = happyShift action_7
action_45 (13) = happyShift action_8
action_45 (14) = happyShift action_9
action_45 (15) = happyShift action_10
action_45 (16) = happyShift action_11
action_45 (17) = happyShift action_12
action_45 (18) = happyShift action_13
action_45 (21) = happyShift action_14
action_45 (22) = happyShift action_15
action_45 (23) = happyShift action_16
action_45 (26) = happyShift action_17
action_45 (27) = happyShift action_18
action_45 (28) = happyShift action_19
action_45 (44) = happyShift action_20
action_45 (47) = happyShift action_21
action_45 (49) = happyShift action_22
action_45 (54) = happyShift action_23
action_45 (6) = happyGoto action_80
action_45 (7) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (12) = happyShift action_7
action_46 (13) = happyShift action_8
action_46 (14) = happyShift action_9
action_46 (15) = happyShift action_10
action_46 (16) = happyShift action_11
action_46 (17) = happyShift action_12
action_46 (18) = happyShift action_13
action_46 (21) = happyShift action_14
action_46 (22) = happyShift action_15
action_46 (23) = happyShift action_16
action_46 (26) = happyShift action_17
action_46 (27) = happyShift action_18
action_46 (28) = happyShift action_19
action_46 (44) = happyShift action_20
action_46 (47) = happyShift action_21
action_46 (49) = happyShift action_22
action_46 (54) = happyShift action_23
action_46 (6) = happyGoto action_79
action_46 (7) = happyGoto action_5
action_46 (11) = happyGoto action_6
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_7
action_47 (13) = happyShift action_8
action_47 (14) = happyShift action_9
action_47 (15) = happyShift action_10
action_47 (16) = happyShift action_11
action_47 (17) = happyShift action_12
action_47 (18) = happyShift action_13
action_47 (21) = happyShift action_14
action_47 (22) = happyShift action_15
action_47 (23) = happyShift action_16
action_47 (26) = happyShift action_17
action_47 (27) = happyShift action_18
action_47 (28) = happyShift action_19
action_47 (44) = happyShift action_20
action_47 (47) = happyShift action_21
action_47 (49) = happyShift action_22
action_47 (54) = happyShift action_23
action_47 (6) = happyGoto action_78
action_47 (7) = happyGoto action_5
action_47 (11) = happyGoto action_6
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_7
action_48 (13) = happyShift action_8
action_48 (14) = happyShift action_9
action_48 (15) = happyShift action_10
action_48 (16) = happyShift action_11
action_48 (17) = happyShift action_12
action_48 (18) = happyShift action_13
action_48 (21) = happyShift action_14
action_48 (22) = happyShift action_15
action_48 (23) = happyShift action_16
action_48 (26) = happyShift action_17
action_48 (27) = happyShift action_18
action_48 (28) = happyShift action_19
action_48 (44) = happyShift action_20
action_48 (47) = happyShift action_21
action_48 (49) = happyShift action_22
action_48 (54) = happyShift action_23
action_48 (6) = happyGoto action_77
action_48 (7) = happyGoto action_5
action_48 (11) = happyGoto action_6
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_7
action_49 (13) = happyShift action_8
action_49 (14) = happyShift action_9
action_49 (15) = happyShift action_10
action_49 (16) = happyShift action_11
action_49 (17) = happyShift action_12
action_49 (18) = happyShift action_13
action_49 (21) = happyShift action_14
action_49 (22) = happyShift action_15
action_49 (23) = happyShift action_16
action_49 (26) = happyShift action_17
action_49 (27) = happyShift action_18
action_49 (28) = happyShift action_19
action_49 (44) = happyShift action_20
action_49 (47) = happyShift action_21
action_49 (49) = happyShift action_22
action_49 (54) = happyShift action_23
action_49 (6) = happyGoto action_76
action_49 (7) = happyGoto action_5
action_49 (11) = happyGoto action_6
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (12) = happyShift action_7
action_50 (13) = happyShift action_8
action_50 (14) = happyShift action_9
action_50 (15) = happyShift action_10
action_50 (16) = happyShift action_11
action_50 (17) = happyShift action_12
action_50 (18) = happyShift action_13
action_50 (21) = happyShift action_14
action_50 (22) = happyShift action_15
action_50 (23) = happyShift action_16
action_50 (26) = happyShift action_17
action_50 (27) = happyShift action_18
action_50 (28) = happyShift action_19
action_50 (44) = happyShift action_20
action_50 (47) = happyShift action_21
action_50 (49) = happyShift action_22
action_50 (54) = happyShift action_23
action_50 (6) = happyGoto action_75
action_50 (7) = happyGoto action_5
action_50 (11) = happyGoto action_6
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (12) = happyShift action_7
action_51 (13) = happyShift action_8
action_51 (14) = happyShift action_9
action_51 (15) = happyShift action_10
action_51 (16) = happyShift action_11
action_51 (17) = happyShift action_12
action_51 (18) = happyShift action_13
action_51 (21) = happyShift action_14
action_51 (22) = happyShift action_15
action_51 (23) = happyShift action_16
action_51 (26) = happyShift action_17
action_51 (27) = happyShift action_18
action_51 (28) = happyShift action_19
action_51 (44) = happyShift action_20
action_51 (47) = happyShift action_21
action_51 (49) = happyShift action_22
action_51 (54) = happyShift action_23
action_51 (6) = happyGoto action_74
action_51 (7) = happyGoto action_5
action_51 (11) = happyGoto action_6
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_7
action_52 (13) = happyShift action_8
action_52 (14) = happyShift action_9
action_52 (15) = happyShift action_10
action_52 (16) = happyShift action_11
action_52 (17) = happyShift action_12
action_52 (18) = happyShift action_13
action_52 (21) = happyShift action_14
action_52 (22) = happyShift action_15
action_52 (23) = happyShift action_16
action_52 (26) = happyShift action_17
action_52 (27) = happyShift action_18
action_52 (28) = happyShift action_19
action_52 (44) = happyShift action_20
action_52 (47) = happyShift action_21
action_52 (49) = happyShift action_22
action_52 (54) = happyShift action_23
action_52 (6) = happyGoto action_73
action_52 (7) = happyGoto action_5
action_52 (11) = happyGoto action_6
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_7
action_53 (13) = happyShift action_8
action_53 (14) = happyShift action_9
action_53 (15) = happyShift action_10
action_53 (16) = happyShift action_11
action_53 (17) = happyShift action_12
action_53 (18) = happyShift action_13
action_53 (21) = happyShift action_14
action_53 (22) = happyShift action_15
action_53 (23) = happyShift action_16
action_53 (26) = happyShift action_17
action_53 (27) = happyShift action_18
action_53 (28) = happyShift action_19
action_53 (44) = happyShift action_20
action_53 (47) = happyShift action_21
action_53 (49) = happyShift action_22
action_53 (54) = happyShift action_23
action_53 (6) = happyGoto action_72
action_53 (7) = happyGoto action_5
action_53 (11) = happyGoto action_6
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_7
action_54 (13) = happyShift action_8
action_54 (14) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (16) = happyShift action_11
action_54 (17) = happyShift action_12
action_54 (18) = happyShift action_13
action_54 (21) = happyShift action_14
action_54 (22) = happyShift action_15
action_54 (23) = happyShift action_16
action_54 (26) = happyShift action_17
action_54 (27) = happyShift action_18
action_54 (28) = happyShift action_19
action_54 (44) = happyShift action_20
action_54 (47) = happyShift action_21
action_54 (49) = happyShift action_22
action_54 (54) = happyShift action_23
action_54 (6) = happyGoto action_71
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_7
action_55 (13) = happyShift action_8
action_55 (14) = happyShift action_9
action_55 (15) = happyShift action_10
action_55 (16) = happyShift action_11
action_55 (17) = happyShift action_12
action_55 (18) = happyShift action_13
action_55 (21) = happyShift action_14
action_55 (22) = happyShift action_15
action_55 (23) = happyShift action_16
action_55 (26) = happyShift action_17
action_55 (27) = happyShift action_18
action_55 (28) = happyShift action_19
action_55 (44) = happyShift action_20
action_55 (47) = happyShift action_21
action_55 (49) = happyShift action_22
action_55 (54) = happyShift action_23
action_55 (6) = happyGoto action_70
action_55 (7) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_7
action_56 (13) = happyShift action_8
action_56 (14) = happyShift action_9
action_56 (15) = happyShift action_10
action_56 (16) = happyShift action_11
action_56 (17) = happyShift action_12
action_56 (18) = happyShift action_13
action_56 (21) = happyShift action_14
action_56 (22) = happyShift action_15
action_56 (23) = happyShift action_16
action_56 (26) = happyShift action_17
action_56 (27) = happyShift action_18
action_56 (28) = happyShift action_19
action_56 (44) = happyShift action_20
action_56 (47) = happyShift action_21
action_56 (49) = happyShift action_22
action_56 (54) = happyShift action_23
action_56 (6) = happyGoto action_69
action_56 (7) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (12) = happyShift action_7
action_57 (13) = happyShift action_8
action_57 (14) = happyShift action_9
action_57 (15) = happyShift action_10
action_57 (16) = happyShift action_11
action_57 (17) = happyShift action_12
action_57 (18) = happyShift action_13
action_57 (21) = happyShift action_14
action_57 (22) = happyShift action_15
action_57 (23) = happyShift action_16
action_57 (26) = happyShift action_17
action_57 (27) = happyShift action_18
action_57 (28) = happyShift action_19
action_57 (44) = happyShift action_20
action_57 (47) = happyShift action_21
action_57 (49) = happyShift action_22
action_57 (54) = happyShift action_23
action_57 (6) = happyGoto action_68
action_57 (7) = happyGoto action_5
action_57 (11) = happyGoto action_6
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_7
action_58 (13) = happyShift action_8
action_58 (14) = happyShift action_9
action_58 (15) = happyShift action_10
action_58 (16) = happyShift action_11
action_58 (17) = happyShift action_12
action_58 (18) = happyShift action_13
action_58 (21) = happyShift action_14
action_58 (22) = happyShift action_15
action_58 (23) = happyShift action_16
action_58 (26) = happyShift action_17
action_58 (27) = happyShift action_18
action_58 (28) = happyShift action_19
action_58 (44) = happyShift action_20
action_58 (47) = happyShift action_21
action_58 (49) = happyShift action_22
action_58 (54) = happyShift action_23
action_58 (6) = happyGoto action_67
action_58 (7) = happyGoto action_5
action_58 (10) = happyGoto action_26
action_58 (11) = happyGoto action_6
action_58 _ = happyReduce_50

action_59 (12) = happyShift action_7
action_59 (13) = happyShift action_8
action_59 (14) = happyShift action_9
action_59 (15) = happyShift action_10
action_59 (16) = happyShift action_11
action_59 (17) = happyShift action_12
action_59 (18) = happyShift action_13
action_59 (21) = happyShift action_14
action_59 (22) = happyShift action_15
action_59 (23) = happyShift action_16
action_59 (26) = happyShift action_17
action_59 (27) = happyShift action_18
action_59 (28) = happyShift action_19
action_59 (44) = happyShift action_20
action_59 (47) = happyShift action_21
action_59 (49) = happyShift action_22
action_59 (54) = happyShift action_23
action_59 (6) = happyGoto action_66
action_59 (7) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (12) = happyShift action_7
action_60 (13) = happyShift action_8
action_60 (14) = happyShift action_9
action_60 (15) = happyShift action_10
action_60 (16) = happyShift action_11
action_60 (17) = happyShift action_12
action_60 (18) = happyShift action_13
action_60 (21) = happyShift action_14
action_60 (22) = happyShift action_15
action_60 (23) = happyShift action_16
action_60 (26) = happyShift action_17
action_60 (27) = happyShift action_18
action_60 (28) = happyShift action_19
action_60 (44) = happyShift action_20
action_60 (47) = happyShift action_21
action_60 (49) = happyShift action_22
action_60 (54) = happyShift action_23
action_60 (6) = happyGoto action_65
action_60 (7) = happyGoto action_5
action_60 (11) = happyGoto action_6
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (12) = happyShift action_7
action_61 (13) = happyShift action_8
action_61 (14) = happyShift action_9
action_61 (15) = happyShift action_10
action_61 (16) = happyShift action_11
action_61 (17) = happyShift action_12
action_61 (18) = happyShift action_13
action_61 (21) = happyShift action_14
action_61 (22) = happyShift action_15
action_61 (23) = happyShift action_16
action_61 (26) = happyShift action_17
action_61 (27) = happyShift action_18
action_61 (28) = happyShift action_19
action_61 (44) = happyShift action_20
action_61 (47) = happyShift action_21
action_61 (49) = happyShift action_22
action_61 (54) = happyShift action_23
action_61 (6) = happyGoto action_64
action_61 (7) = happyGoto action_5
action_61 (11) = happyGoto action_6
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (12) = happyShift action_7
action_62 (13) = happyShift action_8
action_62 (14) = happyShift action_9
action_62 (15) = happyShift action_10
action_62 (16) = happyShift action_11
action_62 (17) = happyShift action_12
action_62 (18) = happyShift action_13
action_62 (21) = happyShift action_14
action_62 (22) = happyShift action_15
action_62 (23) = happyShift action_16
action_62 (26) = happyShift action_17
action_62 (27) = happyShift action_18
action_62 (28) = happyShift action_19
action_62 (44) = happyShift action_20
action_62 (47) = happyShift action_21
action_62 (49) = happyShift action_22
action_62 (54) = happyShift action_23
action_62 (6) = happyGoto action_63
action_62 (7) = happyGoto action_5
action_62 (11) = happyGoto action_6
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (33) = happyShift action_51
action_63 (34) = happyShift action_52
action_63 (35) = happyShift action_53
action_63 (43) = happyShift action_54
action_63 (44) = happyShift action_83
action_63 (45) = happyShift action_56
action_63 (46) = happyShift action_57
action_63 (49) = happyShift action_84
action_63 (55) = happyShift action_59
action_63 (56) = happyShift action_60
action_63 _ = happyReduce_42

action_64 (33) = happyShift action_51
action_64 (34) = happyShift action_52
action_64 (35) = happyShift action_53
action_64 (43) = happyShift action_54
action_64 (44) = happyShift action_83
action_64 (45) = happyShift action_56
action_64 (46) = happyShift action_57
action_64 (49) = happyShift action_84
action_64 (55) = happyShift action_59
action_64 (56) = happyShift action_60
action_64 _ = happyReduce_41

action_65 (33) = happyShift action_51
action_65 (34) = happyShift action_52
action_65 (35) = happyShift action_53
action_65 (49) = happyShift action_84
action_65 (55) = happyShift action_59
action_65 _ = happyReduce_40

action_66 (49) = happyShift action_84
action_66 (55) = happyShift action_59
action_66 _ = happyReduce_39

action_67 (24) = happyShift action_45
action_67 (25) = happyShift action_46
action_67 (29) = happyShift action_47
action_67 (30) = happyShift action_48
action_67 (31) = happyShift action_49
action_67 (32) = happyShift action_50
action_67 (33) = happyShift action_51
action_67 (34) = happyShift action_52
action_67 (35) = happyShift action_53
action_67 (43) = happyShift action_54
action_67 (44) = happyShift action_83
action_67 (45) = happyShift action_56
action_67 (46) = happyShift action_57
action_67 (49) = happyShift action_84
action_67 (50) = happyShift action_104
action_67 (53) = happyShift action_96
action_67 (55) = happyShift action_59
action_67 (56) = happyShift action_60
action_67 (57) = happyShift action_61
action_67 (58) = happyShift action_62
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (33) = happyShift action_51
action_68 (34) = happyShift action_52
action_68 (35) = happyShift action_53
action_68 (49) = happyShift action_84
action_68 (55) = happyShift action_59
action_68 _ = happyReduce_34

action_69 (33) = happyShift action_51
action_69 (34) = happyShift action_52
action_69 (35) = happyShift action_53
action_69 (49) = happyShift action_84
action_69 (55) = happyShift action_59
action_69 _ = happyReduce_33

action_70 (33) = happyShift action_51
action_70 (34) = happyShift action_52
action_70 (35) = happyShift action_53
action_70 (49) = happyShift action_84
action_70 (55) = happyShift action_59
action_70 _ = happyReduce_43

action_71 (33) = happyShift action_51
action_71 (34) = happyShift action_52
action_71 (35) = happyShift action_53
action_71 (45) = happyShift action_56
action_71 (46) = happyShift action_57
action_71 (49) = happyShift action_84
action_71 (55) = happyShift action_59
action_71 (56) = happyShift action_60
action_71 _ = happyReduce_31

action_72 (33) = happyShift action_51
action_72 (35) = happyShift action_53
action_72 (49) = happyShift action_84
action_72 (55) = happyShift action_59
action_72 _ = happyReduce_21

action_73 (33) = happyShift action_51
action_73 (35) = happyShift action_53
action_73 (49) = happyShift action_84
action_73 (55) = happyShift action_59
action_73 _ = happyReduce_20

action_74 (33) = happyShift action_51
action_74 (35) = happyShift action_53
action_74 (49) = happyShift action_84
action_74 (55) = happyShift action_59
action_74 _ = happyReduce_19

action_75 (29) = happyShift action_47
action_75 (30) = happyShift action_48
action_75 (33) = happyShift action_51
action_75 (34) = happyShift action_52
action_75 (35) = happyShift action_53
action_75 (43) = happyShift action_54
action_75 (44) = happyShift action_83
action_75 (45) = happyShift action_56
action_75 (46) = happyShift action_57
action_75 (49) = happyShift action_84
action_75 (55) = happyShift action_59
action_75 (56) = happyShift action_60
action_75 (57) = happyShift action_61
action_75 (58) = happyShift action_62
action_75 _ = happyReduce_18

action_76 (29) = happyShift action_47
action_76 (30) = happyShift action_48
action_76 (33) = happyShift action_51
action_76 (34) = happyShift action_52
action_76 (35) = happyShift action_53
action_76 (43) = happyShift action_54
action_76 (44) = happyShift action_83
action_76 (45) = happyShift action_56
action_76 (46) = happyShift action_57
action_76 (49) = happyShift action_84
action_76 (55) = happyShift action_59
action_76 (56) = happyShift action_60
action_76 (57) = happyShift action_61
action_76 (58) = happyShift action_62
action_76 _ = happyReduce_17

action_77 (33) = happyShift action_51
action_77 (34) = happyShift action_52
action_77 (35) = happyShift action_53
action_77 (43) = happyShift action_54
action_77 (44) = happyShift action_83
action_77 (45) = happyShift action_56
action_77 (46) = happyShift action_57
action_77 (49) = happyShift action_84
action_77 (55) = happyShift action_59
action_77 (56) = happyShift action_60
action_77 _ = happyReduce_16

action_78 (33) = happyShift action_51
action_78 (34) = happyShift action_52
action_78 (35) = happyShift action_53
action_78 (43) = happyShift action_54
action_78 (44) = happyShift action_83
action_78 (45) = happyShift action_56
action_78 (46) = happyShift action_57
action_78 (49) = happyShift action_84
action_78 (55) = happyShift action_59
action_78 (56) = happyShift action_60
action_78 _ = happyReduce_15

action_79 (24) = happyShift action_45
action_79 (29) = happyShift action_47
action_79 (30) = happyShift action_48
action_79 (31) = happyShift action_49
action_79 (32) = happyShift action_50
action_79 (33) = happyShift action_51
action_79 (34) = happyShift action_52
action_79 (35) = happyShift action_53
action_79 (43) = happyShift action_54
action_79 (44) = happyShift action_83
action_79 (45) = happyShift action_56
action_79 (46) = happyShift action_57
action_79 (49) = happyShift action_84
action_79 (55) = happyShift action_59
action_79 (56) = happyShift action_60
action_79 (57) = happyShift action_61
action_79 (58) = happyShift action_62
action_79 _ = happyReduce_11

action_80 (29) = happyShift action_47
action_80 (30) = happyShift action_48
action_80 (31) = happyShift action_49
action_80 (32) = happyShift action_50
action_80 (33) = happyShift action_51
action_80 (34) = happyShift action_52
action_80 (35) = happyShift action_53
action_80 (43) = happyShift action_54
action_80 (44) = happyShift action_83
action_80 (45) = happyShift action_56
action_80 (46) = happyShift action_57
action_80 (49) = happyShift action_84
action_80 (55) = happyShift action_59
action_80 (56) = happyShift action_60
action_80 (57) = happyShift action_61
action_80 (58) = happyShift action_62
action_80 _ = happyReduce_10

action_81 (12) = happyShift action_7
action_81 (13) = happyShift action_8
action_81 (14) = happyShift action_9
action_81 (15) = happyShift action_10
action_81 (16) = happyShift action_11
action_81 (17) = happyShift action_12
action_81 (18) = happyShift action_13
action_81 (21) = happyShift action_14
action_81 (22) = happyShift action_15
action_81 (23) = happyShift action_16
action_81 (26) = happyShift action_17
action_81 (27) = happyShift action_18
action_81 (28) = happyShift action_19
action_81 (44) = happyShift action_20
action_81 (47) = happyShift action_21
action_81 (49) = happyShift action_22
action_81 (54) = happyShift action_23
action_81 (6) = happyGoto action_103
action_81 (7) = happyGoto action_5
action_81 (11) = happyGoto action_6
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (24) = happyShift action_45
action_82 (25) = happyShift action_46
action_82 (29) = happyShift action_47
action_82 (30) = happyShift action_48
action_82 (31) = happyShift action_49
action_82 (32) = happyShift action_50
action_82 (33) = happyShift action_51
action_82 (34) = happyShift action_52
action_82 (35) = happyShift action_53
action_82 (43) = happyShift action_54
action_82 (44) = happyShift action_83
action_82 (45) = happyShift action_56
action_82 (46) = happyShift action_57
action_82 (49) = happyShift action_84
action_82 (52) = happyShift action_102
action_82 (55) = happyShift action_59
action_82 (56) = happyShift action_60
action_82 (57) = happyShift action_61
action_82 (58) = happyShift action_62
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (12) = happyShift action_7
action_83 (13) = happyShift action_8
action_83 (14) = happyShift action_9
action_83 (15) = happyShift action_10
action_83 (16) = happyShift action_11
action_83 (17) = happyShift action_12
action_83 (18) = happyShift action_13
action_83 (21) = happyShift action_14
action_83 (22) = happyShift action_15
action_83 (23) = happyShift action_16
action_83 (26) = happyShift action_17
action_83 (27) = happyShift action_18
action_83 (28) = happyShift action_19
action_83 (44) = happyShift action_20
action_83 (47) = happyShift action_21
action_83 (49) = happyShift action_22
action_83 (54) = happyShift action_23
action_83 (6) = happyGoto action_101
action_83 (7) = happyGoto action_5
action_83 (11) = happyGoto action_6
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (12) = happyShift action_7
action_84 (13) = happyShift action_8
action_84 (14) = happyShift action_9
action_84 (15) = happyShift action_10
action_84 (16) = happyShift action_11
action_84 (17) = happyShift action_12
action_84 (18) = happyShift action_13
action_84 (21) = happyShift action_14
action_84 (22) = happyShift action_15
action_84 (23) = happyShift action_16
action_84 (26) = happyShift action_17
action_84 (27) = happyShift action_18
action_84 (28) = happyShift action_19
action_84 (44) = happyShift action_20
action_84 (47) = happyShift action_21
action_84 (49) = happyShift action_22
action_84 (54) = happyShift action_23
action_84 (6) = happyGoto action_100
action_84 (7) = happyGoto action_5
action_84 (11) = happyGoto action_6
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (12) = happyShift action_7
action_85 (13) = happyShift action_8
action_85 (14) = happyShift action_9
action_85 (15) = happyShift action_10
action_85 (16) = happyShift action_11
action_85 (17) = happyShift action_12
action_85 (18) = happyShift action_13
action_85 (21) = happyShift action_14
action_85 (22) = happyShift action_15
action_85 (23) = happyShift action_16
action_85 (26) = happyShift action_17
action_85 (27) = happyShift action_18
action_85 (28) = happyShift action_19
action_85 (44) = happyShift action_20
action_85 (47) = happyShift action_21
action_85 (49) = happyShift action_22
action_85 (54) = happyShift action_23
action_85 (4) = happyGoto action_99
action_85 (5) = happyGoto action_3
action_85 (6) = happyGoto action_4
action_85 (7) = happyGoto action_5
action_85 (11) = happyGoto action_6
action_85 _ = happyReduce_1

action_86 (12) = happyShift action_7
action_86 (13) = happyShift action_8
action_86 (14) = happyShift action_9
action_86 (15) = happyShift action_10
action_86 (16) = happyShift action_11
action_86 (17) = happyShift action_12
action_86 (18) = happyShift action_13
action_86 (21) = happyShift action_14
action_86 (22) = happyShift action_15
action_86 (23) = happyShift action_16
action_86 (26) = happyShift action_17
action_86 (27) = happyShift action_18
action_86 (28) = happyShift action_19
action_86 (44) = happyShift action_20
action_86 (47) = happyShift action_21
action_86 (49) = happyShift action_22
action_86 (54) = happyShift action_23
action_86 (4) = happyGoto action_98
action_86 (5) = happyGoto action_3
action_86 (6) = happyGoto action_4
action_86 (7) = happyGoto action_5
action_86 (11) = happyGoto action_6
action_86 _ = happyReduce_1

action_87 (24) = happyShift action_45
action_87 (25) = happyShift action_46
action_87 (29) = happyShift action_47
action_87 (30) = happyShift action_48
action_87 (31) = happyShift action_49
action_87 (32) = happyShift action_50
action_87 (33) = happyShift action_51
action_87 (34) = happyShift action_52
action_87 (35) = happyShift action_53
action_87 (43) = happyShift action_54
action_87 (44) = happyShift action_83
action_87 (45) = happyShift action_56
action_87 (46) = happyShift action_57
action_87 (49) = happyShift action_84
action_87 (55) = happyShift action_59
action_87 (56) = happyShift action_60
action_87 (57) = happyShift action_61
action_87 (58) = happyShift action_62
action_87 _ = happyReduce_29

action_88 (24) = happyShift action_45
action_88 (25) = happyShift action_46
action_88 (29) = happyShift action_47
action_88 (30) = happyShift action_48
action_88 (31) = happyShift action_49
action_88 (32) = happyShift action_50
action_88 (33) = happyShift action_51
action_88 (34) = happyShift action_52
action_88 (35) = happyShift action_53
action_88 (43) = happyShift action_54
action_88 (44) = happyShift action_83
action_88 (45) = happyShift action_56
action_88 (46) = happyShift action_57
action_88 (49) = happyShift action_84
action_88 (55) = happyShift action_59
action_88 (56) = happyShift action_60
action_88 (57) = happyShift action_61
action_88 (58) = happyShift action_62
action_88 _ = happyReduce_28

action_89 (24) = happyShift action_45
action_89 (25) = happyShift action_46
action_89 (29) = happyShift action_47
action_89 (30) = happyShift action_48
action_89 (31) = happyShift action_49
action_89 (32) = happyShift action_50
action_89 (33) = happyShift action_51
action_89 (34) = happyShift action_52
action_89 (35) = happyShift action_53
action_89 (43) = happyShift action_54
action_89 (44) = happyShift action_83
action_89 (45) = happyShift action_56
action_89 (46) = happyShift action_57
action_89 (49) = happyShift action_84
action_89 (55) = happyShift action_59
action_89 (56) = happyShift action_60
action_89 (57) = happyShift action_61
action_89 (58) = happyShift action_62
action_89 _ = happyReduce_27

action_90 (24) = happyShift action_45
action_90 (25) = happyShift action_46
action_90 (29) = happyShift action_47
action_90 (30) = happyShift action_48
action_90 (31) = happyShift action_49
action_90 (32) = happyShift action_50
action_90 (33) = happyShift action_51
action_90 (34) = happyShift action_52
action_90 (35) = happyShift action_53
action_90 (43) = happyShift action_54
action_90 (44) = happyShift action_83
action_90 (45) = happyShift action_56
action_90 (46) = happyShift action_57
action_90 (49) = happyShift action_84
action_90 (55) = happyShift action_59
action_90 (56) = happyShift action_60
action_90 (57) = happyShift action_61
action_90 (58) = happyShift action_62
action_90 _ = happyReduce_26

action_91 (24) = happyShift action_45
action_91 (25) = happyShift action_46
action_91 (29) = happyShift action_47
action_91 (30) = happyShift action_48
action_91 (31) = happyShift action_49
action_91 (32) = happyShift action_50
action_91 (33) = happyShift action_51
action_91 (34) = happyShift action_52
action_91 (35) = happyShift action_53
action_91 (43) = happyShift action_54
action_91 (44) = happyShift action_83
action_91 (45) = happyShift action_56
action_91 (46) = happyShift action_57
action_91 (49) = happyShift action_84
action_91 (55) = happyShift action_59
action_91 (56) = happyShift action_60
action_91 (57) = happyShift action_61
action_91 (58) = happyShift action_62
action_91 _ = happyReduce_25

action_92 (24) = happyShift action_45
action_92 (25) = happyShift action_46
action_92 (29) = happyShift action_47
action_92 (30) = happyShift action_48
action_92 (31) = happyShift action_49
action_92 (32) = happyShift action_50
action_92 (33) = happyShift action_51
action_92 (34) = happyShift action_52
action_92 (35) = happyShift action_53
action_92 (43) = happyShift action_54
action_92 (44) = happyShift action_83
action_92 (45) = happyShift action_56
action_92 (46) = happyShift action_57
action_92 (49) = happyShift action_84
action_92 (55) = happyShift action_59
action_92 (56) = happyShift action_60
action_92 (57) = happyShift action_61
action_92 (58) = happyShift action_62
action_92 _ = happyReduce_24

action_93 (24) = happyShift action_45
action_93 (25) = happyShift action_46
action_93 (29) = happyShift action_47
action_93 (30) = happyShift action_48
action_93 (31) = happyShift action_49
action_93 (32) = happyShift action_50
action_93 (33) = happyShift action_51
action_93 (34) = happyShift action_52
action_93 (35) = happyShift action_53
action_93 (43) = happyShift action_54
action_93 (44) = happyShift action_83
action_93 (45) = happyShift action_56
action_93 (46) = happyShift action_57
action_93 (49) = happyShift action_84
action_93 (55) = happyShift action_59
action_93 (56) = happyShift action_60
action_93 (57) = happyShift action_61
action_93 (58) = happyShift action_62
action_93 _ = happyReduce_23

action_94 _ = happyReduce_44

action_95 _ = happyReduce_14

action_96 (12) = happyShift action_7
action_96 (13) = happyShift action_8
action_96 (14) = happyShift action_9
action_96 (15) = happyShift action_10
action_96 (16) = happyShift action_11
action_96 (17) = happyShift action_12
action_96 (18) = happyShift action_13
action_96 (21) = happyShift action_14
action_96 (22) = happyShift action_15
action_96 (23) = happyShift action_16
action_96 (26) = happyShift action_17
action_96 (27) = happyShift action_18
action_96 (28) = happyShift action_19
action_96 (44) = happyShift action_20
action_96 (47) = happyShift action_21
action_96 (49) = happyShift action_22
action_96 (54) = happyShift action_23
action_96 (6) = happyGoto action_25
action_96 (7) = happyGoto action_5
action_96 (10) = happyGoto action_97
action_96 (11) = happyGoto action_6
action_96 _ = happyReduce_50

action_97 _ = happyReduce_52

action_98 (52) = happyShift action_106
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (52) = happyShift action_105
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (24) = happyShift action_45
action_100 (25) = happyShift action_46
action_100 (29) = happyShift action_47
action_100 (30) = happyShift action_48
action_100 (31) = happyShift action_49
action_100 (32) = happyShift action_50
action_100 (33) = happyShift action_51
action_100 (34) = happyShift action_52
action_100 (35) = happyShift action_53
action_100 (43) = happyShift action_54
action_100 (44) = happyShift action_83
action_100 (45) = happyShift action_56
action_100 (46) = happyShift action_57
action_100 (49) = happyShift action_84
action_100 (50) = happyShift action_104
action_100 (55) = happyShift action_59
action_100 (56) = happyShift action_60
action_100 (57) = happyShift action_61
action_100 (58) = happyShift action_62
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (33) = happyShift action_51
action_101 (34) = happyShift action_52
action_101 (35) = happyShift action_53
action_101 (45) = happyShift action_56
action_101 (46) = happyShift action_57
action_101 (49) = happyShift action_84
action_101 (55) = happyShift action_59
action_101 (56) = happyShift action_60
action_101 _ = happyReduce_32

action_102 _ = happyReduce_36

action_103 (24) = happyShift action_45
action_103 (25) = happyShift action_46
action_103 (29) = happyShift action_47
action_103 (30) = happyShift action_48
action_103 (31) = happyShift action_49
action_103 (32) = happyShift action_50
action_103 (33) = happyShift action_51
action_103 (34) = happyShift action_52
action_103 (35) = happyShift action_53
action_103 (43) = happyShift action_54
action_103 (44) = happyShift action_83
action_103 (45) = happyShift action_56
action_103 (46) = happyShift action_57
action_103 (49) = happyShift action_84
action_103 (55) = happyShift action_59
action_103 (56) = happyShift action_60
action_103 (57) = happyShift action_61
action_103 (58) = happyShift action_62
action_103 _ = happyReduce_22

action_104 _ = happyReduce_35

action_105 _ = happyReduce_5

action_106 (19) = happyShift action_108
action_106 (8) = happyGoto action_107
action_106 _ = happyReduce_46

action_107 (20) = happyShift action_111
action_107 (9) = happyGoto action_110
action_107 _ = happyReduce_48

action_108 (12) = happyShift action_7
action_108 (13) = happyShift action_8
action_108 (14) = happyShift action_9
action_108 (15) = happyShift action_10
action_108 (16) = happyShift action_11
action_108 (17) = happyShift action_12
action_108 (18) = happyShift action_13
action_108 (21) = happyShift action_14
action_108 (22) = happyShift action_15
action_108 (23) = happyShift action_16
action_108 (26) = happyShift action_17
action_108 (27) = happyShift action_18
action_108 (28) = happyShift action_19
action_108 (44) = happyShift action_20
action_108 (47) = happyShift action_21
action_108 (49) = happyShift action_22
action_108 (54) = happyShift action_23
action_108 (6) = happyGoto action_109
action_108 (7) = happyGoto action_5
action_108 (11) = happyGoto action_6
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (24) = happyShift action_45
action_109 (25) = happyShift action_46
action_109 (29) = happyShift action_47
action_109 (30) = happyShift action_48
action_109 (31) = happyShift action_49
action_109 (32) = happyShift action_50
action_109 (33) = happyShift action_51
action_109 (34) = happyShift action_52
action_109 (35) = happyShift action_53
action_109 (43) = happyShift action_54
action_109 (44) = happyShift action_83
action_109 (45) = happyShift action_56
action_109 (46) = happyShift action_57
action_109 (49) = happyShift action_84
action_109 (51) = happyShift action_113
action_109 (55) = happyShift action_59
action_109 (56) = happyShift action_60
action_109 (57) = happyShift action_61
action_109 (58) = happyShift action_62
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_45

action_111 (51) = happyShift action_112
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (12) = happyShift action_7
action_112 (13) = happyShift action_8
action_112 (14) = happyShift action_9
action_112 (15) = happyShift action_10
action_112 (16) = happyShift action_11
action_112 (17) = happyShift action_12
action_112 (18) = happyShift action_13
action_112 (21) = happyShift action_14
action_112 (22) = happyShift action_15
action_112 (23) = happyShift action_16
action_112 (26) = happyShift action_17
action_112 (27) = happyShift action_18
action_112 (28) = happyShift action_19
action_112 (44) = happyShift action_20
action_112 (47) = happyShift action_21
action_112 (49) = happyShift action_22
action_112 (54) = happyShift action_23
action_112 (4) = happyGoto action_115
action_112 (5) = happyGoto action_3
action_112 (6) = happyGoto action_4
action_112 (7) = happyGoto action_5
action_112 (11) = happyGoto action_6
action_112 _ = happyReduce_1

action_113 (12) = happyShift action_7
action_113 (13) = happyShift action_8
action_113 (14) = happyShift action_9
action_113 (15) = happyShift action_10
action_113 (16) = happyShift action_11
action_113 (17) = happyShift action_12
action_113 (18) = happyShift action_13
action_113 (21) = happyShift action_14
action_113 (22) = happyShift action_15
action_113 (23) = happyShift action_16
action_113 (26) = happyShift action_17
action_113 (27) = happyShift action_18
action_113 (28) = happyShift action_19
action_113 (44) = happyShift action_20
action_113 (47) = happyShift action_21
action_113 (49) = happyShift action_22
action_113 (54) = happyShift action_23
action_113 (4) = happyGoto action_114
action_113 (5) = happyGoto action_3
action_113 (6) = happyGoto action_4
action_113 (7) = happyGoto action_5
action_113 (11) = happyGoto action_6
action_113 _ = happyReduce_1

action_114 (52) = happyShift action_117
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (52) = happyShift action_116
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_49

action_117 (19) = happyShift action_108
action_117 (8) = happyGoto action_118
action_117 _ = happyReduce_46

action_118 _ = happyReduce_47

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

happyReduce_38 = happySpecReduce_2  6 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_38 _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  6 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  6 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  6 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  6 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happyReduce 7 7 happyReduction_45
happyReduction_45 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_46 = happySpecReduce_0  8 happyReduction_46
happyReduction_46  =  HappyAbsSyn8
		 ([]
	)

happyReduce_47 = happyReduce 6 8 happyReduction_47
happyReduction_47 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_0  9 happyReduction_48
happyReduction_48  =  HappyAbsSyn9
		 ([]
	)

happyReduce_49 = happyReduce 4 9 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_50 = happySpecReduce_0  10 happyReduction_50
happyReduction_50  =  HappyAbsSyn10
		 ([]
	)

happyReduce_51 = happySpecReduce_1  10 happyReduction_51
happyReduction_51 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  10 happyReduction_52
happyReduction_52 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  11 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_54 = happySpecReduce_1  11 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_55 = happySpecReduce_1  11 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyNewToken action sts stk [] =
	action 59 59 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 12;
	TokenStreamType _ -> cont 13;
	TokenBooleanType _ -> cont 14;
	TokenInput _ -> cont 15;
	TokenPrint _ -> cont 16;
	TokenWhile _ -> cont 17;
	TokenIf _ -> cont 18;
	TokenElif _ -> cont 19;
	TokenElse _ -> cont 20;
	TokenHasNext _ -> cont 21;
	TokenNext _ -> cont 22;
	TokenSize _ -> cont 23;
	TokenAnd _ -> cont 24;
	TokenOr _ -> cont 25;
	TokenInt _ happy_dollar_dollar -> cont 26;
	TokenBool _ happy_dollar_dollar -> cont 27;
	TokenVar _ happy_dollar_dollar -> cont 28;
	TokenLE _ -> cont 29;
	TokenGE _ -> cont 30;
	TokenEQ _ -> cont 31;
	TokenNE _ -> cont 32;
	TokenCons _ -> cont 33;
	TokenConcat _ -> cont 34;
	TokenTake _ -> cont 35;
	TokenAssign _ -> cont 36;
	TokenPlusEquals _ -> cont 37;
	TokenMinusEquals _ -> cont 38;
	TokenTimesEquals _ -> cont 39;
	TokenDivEquals _ -> cont 40;
	TokenExponentEquals _ -> cont 41;
	TokenModuloEquals _ -> cont 42;
	TokenPlus _ -> cont 43;
	TokenMinus _ -> cont 44;
	TokenTimes _ -> cont 45;
	TokenDiv _ -> cont 46;
	TokenLParen _ -> cont 47;
	TokenRParen _ -> cont 48;
	TokenLSquare _ -> cont 49;
	TokenRSquare _ -> cont 50;
	TokenLCurly _ -> cont 51;
	TokenRCurly _ -> cont 52;
	TokenComma _ -> cont 53;
	TokenNot _ -> cont 54;
	TokenExponent _ -> cont 55;
	TokenModulo _ -> cont 56;
	TokenLT _ -> cont 57;
	TokenGT _ -> cont 58;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 59 tk tks = happyError' (tks, explist)
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

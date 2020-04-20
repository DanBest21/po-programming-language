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
happyExpList = Happy_Data_Array.listArray (0,485) ([63488,1011,8520,0,0,0,0,0,0,0,0,0,0,16256,57343,15895,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,256,61440,2023,17040,32768,16191,5248,2,63996,41985,16,53216,8207,133,32512,126,1065,63488,1011,8520,0,0,0,0,0,0,0,0,1024,0,16256,32831,532,64512,505,4260,57344,4047,34080,0,32383,10496,4,0,448,65,0,61408,7817,0,0,128,0,63488,33659,7,0,4124,4,63996,41985,16,0,0,4,0,0,32,0,0,256,0,57344,10735,30,0,20351,241,0,31736,1922,16256,32831,532,0,0,1,0,0,0,0,32383,10496,4,62456,18435,33,40896,16415,266,65024,252,2130,61440,2023,17040,32768,16191,5248,2,63996,41985,16,53216,8207,133,32512,126,1065,63488,1011,8520,49152,8095,2624,1,64766,20992,8,59376,36871,66,16256,32831,532,64512,505,4260,57344,4047,34080,0,0,10168,24,0,15808,193,0,3584,520,0,0,4160,0,63488,42619,7,0,4124,4,0,32992,32,0,1792,260,0,14336,6182,0,16384,16641,0,0,2058,2,0,16464,16,0,31640,1922,0,56512,15379,0,57344,24734,0,0,1271,3,32383,10496,4,0,15868,969,40896,16415,266,65024,252,2130,61440,2023,17040,32768,16191,5248,2,0,40702,480,0,0,0,0,0,0,63488,1011,8520,0,0,0,0,0,0,2,0,0,16,0,57280,15411,0,57344,24728,0,0,0,0,32768,10175,120,0,0,0,0,0,0,0,1,0,0,16,0,32768,16191,5248,2,0,40702,482,0,0,0,0,0,128,63488,1011,8520,49152,8095,2624,1,0,0,2,0,0,16,0,0,0,0,2,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","int_type","stream_type","boolean_type","input","print","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
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
action_0 (24) = happyShift action_17
action_0 (25) = happyShift action_18
action_0 (26) = happyShift action_19
action_0 (36) = happyShift action_20
action_0 (39) = happyShift action_21
action_0 (41) = happyShift action_22
action_0 (46) = happyShift action_23
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (51) = happyAccept
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
action_4 (24) = happyShift action_17
action_4 (25) = happyShift action_18
action_4 (26) = happyShift action_19
action_4 (27) = happyShift action_39
action_4 (28) = happyShift action_40
action_4 (29) = happyShift action_41
action_4 (30) = happyShift action_42
action_4 (31) = happyShift action_43
action_4 (32) = happyShift action_44
action_4 (33) = happyShift action_45
action_4 (35) = happyShift action_46
action_4 (36) = happyShift action_47
action_4 (37) = happyShift action_48
action_4 (38) = happyShift action_49
action_4 (39) = happyShift action_21
action_4 (41) = happyShift action_50
action_4 (46) = happyShift action_23
action_4 (47) = happyShift action_51
action_4 (48) = happyShift action_52
action_4 (49) = happyShift action_53
action_4 (50) = happyShift action_54
action_4 (5) = happyGoto action_38
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 (26) = happyShift action_37
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_45

action_8 _ = happyReduce_47

action_9 _ = happyReduce_46

action_10 (43) = happyShift action_36
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
action_11 (24) = happyShift action_17
action_11 (25) = happyShift action_18
action_11 (26) = happyShift action_19
action_11 (36) = happyShift action_20
action_11 (39) = happyShift action_21
action_11 (41) = happyShift action_22
action_11 (46) = happyShift action_23
action_11 (6) = happyGoto action_35
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
action_12 (24) = happyShift action_17
action_12 (25) = happyShift action_18
action_12 (26) = happyShift action_19
action_12 (36) = happyShift action_20
action_12 (39) = happyShift action_21
action_12 (41) = happyShift action_22
action_12 (46) = happyShift action_23
action_12 (6) = happyGoto action_34
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
action_13 (24) = happyShift action_17
action_13 (25) = happyShift action_18
action_13 (26) = happyShift action_19
action_13 (36) = happyShift action_20
action_13 (39) = happyShift action_21
action_13 (41) = happyShift action_22
action_13 (46) = happyShift action_23
action_13 (6) = happyGoto action_33
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
action_14 (24) = happyShift action_17
action_14 (25) = happyShift action_18
action_14 (26) = happyShift action_19
action_14 (36) = happyShift action_20
action_14 (39) = happyShift action_21
action_14 (41) = happyShift action_22
action_14 (46) = happyShift action_23
action_14 (6) = happyGoto action_32
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
action_15 (24) = happyShift action_17
action_15 (25) = happyShift action_18
action_15 (26) = happyShift action_19
action_15 (36) = happyShift action_20
action_15 (39) = happyShift action_21
action_15 (41) = happyShift action_22
action_15 (46) = happyShift action_23
action_15 (6) = happyGoto action_31
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
action_16 (24) = happyShift action_17
action_16 (25) = happyShift action_18
action_16 (26) = happyShift action_19
action_16 (36) = happyShift action_20
action_16 (39) = happyShift action_21
action_16 (41) = happyShift action_22
action_16 (46) = happyShift action_23
action_16 (6) = happyGoto action_30
action_16 (7) = happyGoto action_5
action_16 (11) = happyGoto action_6
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_10

action_18 _ = happyReduce_11

action_19 (34) = happyShift action_29
action_19 _ = happyReduce_22

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
action_20 (24) = happyShift action_17
action_20 (25) = happyShift action_18
action_20 (26) = happyShift action_19
action_20 (36) = happyShift action_20
action_20 (39) = happyShift action_21
action_20 (41) = happyShift action_22
action_20 (46) = happyShift action_23
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
action_21 (24) = happyShift action_17
action_21 (25) = happyShift action_18
action_21 (26) = happyShift action_19
action_21 (36) = happyShift action_20
action_21 (39) = happyShift action_21
action_21 (41) = happyShift action_22
action_21 (46) = happyShift action_23
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
action_22 (24) = happyShift action_17
action_22 (25) = happyShift action_18
action_22 (26) = happyShift action_19
action_22 (36) = happyShift action_20
action_22 (39) = happyShift action_21
action_22 (41) = happyShift action_22
action_22 (46) = happyShift action_23
action_22 (6) = happyGoto action_25
action_22 (7) = happyGoto action_5
action_22 (10) = happyGoto action_26
action_22 (11) = happyGoto action_6
action_22 _ = happyReduce_42

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
action_23 (24) = happyShift action_17
action_23 (25) = happyShift action_18
action_23 (26) = happyShift action_19
action_23 (36) = happyShift action_20
action_23 (39) = happyShift action_21
action_23 (41) = happyShift action_22
action_23 (46) = happyShift action_23
action_23 (6) = happyGoto action_24
action_23 (7) = happyGoto action_5
action_23 (11) = happyGoto action_6
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (31) = happyShift action_43
action_24 (32) = happyShift action_44
action_24 (33) = happyShift action_45
action_24 (41) = happyShift action_74
action_24 (47) = happyShift action_51
action_24 _ = happyReduce_30

action_25 (27) = happyShift action_39
action_25 (28) = happyShift action_40
action_25 (29) = happyShift action_41
action_25 (30) = happyShift action_42
action_25 (31) = happyShift action_43
action_25 (32) = happyShift action_44
action_25 (33) = happyShift action_45
action_25 (35) = happyShift action_46
action_25 (36) = happyShift action_73
action_25 (37) = happyShift action_48
action_25 (38) = happyShift action_49
action_25 (41) = happyShift action_74
action_25 (45) = happyShift action_80
action_25 (47) = happyShift action_51
action_25 (48) = happyShift action_52
action_25 (49) = happyShift action_53
action_25 (50) = happyShift action_54
action_25 _ = happyReduce_43

action_26 (42) = happyShift action_79
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_39
action_27 (28) = happyShift action_40
action_27 (29) = happyShift action_41
action_27 (30) = happyShift action_42
action_27 (31) = happyShift action_43
action_27 (32) = happyShift action_44
action_27 (33) = happyShift action_45
action_27 (35) = happyShift action_46
action_27 (36) = happyShift action_73
action_27 (37) = happyShift action_48
action_27 (38) = happyShift action_49
action_27 (40) = happyShift action_78
action_27 (41) = happyShift action_74
action_27 (47) = happyShift action_51
action_27 (48) = happyShift action_52
action_27 (49) = happyShift action_53
action_27 (50) = happyShift action_54
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (31) = happyShift action_43
action_28 (32) = happyShift action_44
action_28 (33) = happyShift action_45
action_28 (41) = happyShift action_74
action_28 (47) = happyShift action_51
action_28 _ = happyReduce_35

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
action_29 (24) = happyShift action_17
action_29 (25) = happyShift action_18
action_29 (26) = happyShift action_19
action_29 (36) = happyShift action_20
action_29 (39) = happyShift action_21
action_29 (41) = happyShift action_22
action_29 (46) = happyShift action_23
action_29 (6) = happyGoto action_77
action_29 (7) = happyGoto action_5
action_29 (11) = happyGoto action_6
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (41) = happyShift action_74
action_30 _ = happyReduce_9

action_31 (41) = happyShift action_74
action_31 _ = happyReduce_8

action_32 (41) = happyShift action_74
action_32 _ = happyReduce_7

action_33 (27) = happyShift action_39
action_33 (28) = happyShift action_40
action_33 (29) = happyShift action_41
action_33 (30) = happyShift action_42
action_33 (31) = happyShift action_43
action_33 (32) = happyShift action_44
action_33 (33) = happyShift action_45
action_33 (35) = happyShift action_46
action_33 (36) = happyShift action_73
action_33 (37) = happyShift action_48
action_33 (38) = happyShift action_49
action_33 (41) = happyShift action_74
action_33 (43) = happyShift action_76
action_33 (47) = happyShift action_51
action_33 (48) = happyShift action_52
action_33 (49) = happyShift action_53
action_33 (50) = happyShift action_54
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (27) = happyShift action_39
action_34 (28) = happyShift action_40
action_34 (29) = happyShift action_41
action_34 (30) = happyShift action_42
action_34 (31) = happyShift action_43
action_34 (32) = happyShift action_44
action_34 (33) = happyShift action_45
action_34 (35) = happyShift action_46
action_34 (36) = happyShift action_73
action_34 (37) = happyShift action_48
action_34 (38) = happyShift action_49
action_34 (41) = happyShift action_74
action_34 (43) = happyShift action_75
action_34 (47) = happyShift action_51
action_34 (48) = happyShift action_52
action_34 (49) = happyShift action_53
action_34 (50) = happyShift action_54
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (27) = happyShift action_39
action_35 (28) = happyShift action_40
action_35 (29) = happyShift action_41
action_35 (30) = happyShift action_42
action_35 (31) = happyShift action_43
action_35 (32) = happyShift action_44
action_35 (33) = happyShift action_45
action_35 (35) = happyShift action_46
action_35 (36) = happyShift action_73
action_35 (37) = happyShift action_48
action_35 (38) = happyShift action_49
action_35 (41) = happyShift action_74
action_35 (47) = happyShift action_51
action_35 (48) = happyShift action_52
action_35 (49) = happyShift action_53
action_35 (50) = happyShift action_54
action_35 _ = happyReduce_29

action_36 (12) = happyShift action_7
action_36 (13) = happyShift action_8
action_36 (14) = happyShift action_9
action_36 (15) = happyShift action_10
action_36 (16) = happyShift action_11
action_36 (17) = happyShift action_12
action_36 (18) = happyShift action_13
action_36 (21) = happyShift action_14
action_36 (22) = happyShift action_15
action_36 (23) = happyShift action_16
action_36 (24) = happyShift action_17
action_36 (25) = happyShift action_18
action_36 (26) = happyShift action_19
action_36 (36) = happyShift action_20
action_36 (39) = happyShift action_21
action_36 (41) = happyShift action_22
action_36 (46) = happyShift action_23
action_36 (6) = happyGoto action_72
action_36 (7) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (34) = happyShift action_71
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_4

action_39 (12) = happyShift action_7
action_39 (13) = happyShift action_8
action_39 (14) = happyShift action_9
action_39 (15) = happyShift action_10
action_39 (16) = happyShift action_11
action_39 (17) = happyShift action_12
action_39 (18) = happyShift action_13
action_39 (21) = happyShift action_14
action_39 (22) = happyShift action_15
action_39 (23) = happyShift action_16
action_39 (24) = happyShift action_17
action_39 (25) = happyShift action_18
action_39 (26) = happyShift action_19
action_39 (36) = happyShift action_20
action_39 (39) = happyShift action_21
action_39 (41) = happyShift action_22
action_39 (46) = happyShift action_23
action_39 (6) = happyGoto action_70
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_7
action_40 (13) = happyShift action_8
action_40 (14) = happyShift action_9
action_40 (15) = happyShift action_10
action_40 (16) = happyShift action_11
action_40 (17) = happyShift action_12
action_40 (18) = happyShift action_13
action_40 (21) = happyShift action_14
action_40 (22) = happyShift action_15
action_40 (23) = happyShift action_16
action_40 (24) = happyShift action_17
action_40 (25) = happyShift action_18
action_40 (26) = happyShift action_19
action_40 (36) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (41) = happyShift action_22
action_40 (46) = happyShift action_23
action_40 (6) = happyGoto action_69
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (12) = happyShift action_7
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (15) = happyShift action_10
action_41 (16) = happyShift action_11
action_41 (17) = happyShift action_12
action_41 (18) = happyShift action_13
action_41 (21) = happyShift action_14
action_41 (22) = happyShift action_15
action_41 (23) = happyShift action_16
action_41 (24) = happyShift action_17
action_41 (25) = happyShift action_18
action_41 (26) = happyShift action_19
action_41 (36) = happyShift action_20
action_41 (39) = happyShift action_21
action_41 (41) = happyShift action_22
action_41 (46) = happyShift action_23
action_41 (6) = happyGoto action_68
action_41 (7) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 _ = happyFail (happyExpListPerState 41)

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
action_42 (24) = happyShift action_17
action_42 (25) = happyShift action_18
action_42 (26) = happyShift action_19
action_42 (36) = happyShift action_20
action_42 (39) = happyShift action_21
action_42 (41) = happyShift action_22
action_42 (46) = happyShift action_23
action_42 (6) = happyGoto action_67
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (12) = happyShift action_7
action_43 (13) = happyShift action_8
action_43 (14) = happyShift action_9
action_43 (15) = happyShift action_10
action_43 (16) = happyShift action_11
action_43 (17) = happyShift action_12
action_43 (18) = happyShift action_13
action_43 (21) = happyShift action_14
action_43 (22) = happyShift action_15
action_43 (23) = happyShift action_16
action_43 (24) = happyShift action_17
action_43 (25) = happyShift action_18
action_43 (26) = happyShift action_19
action_43 (36) = happyShift action_20
action_43 (39) = happyShift action_21
action_43 (41) = happyShift action_22
action_43 (46) = happyShift action_23
action_43 (6) = happyGoto action_66
action_43 (7) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (12) = happyShift action_7
action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (15) = happyShift action_10
action_44 (16) = happyShift action_11
action_44 (17) = happyShift action_12
action_44 (18) = happyShift action_13
action_44 (21) = happyShift action_14
action_44 (22) = happyShift action_15
action_44 (23) = happyShift action_16
action_44 (24) = happyShift action_17
action_44 (25) = happyShift action_18
action_44 (26) = happyShift action_19
action_44 (36) = happyShift action_20
action_44 (39) = happyShift action_21
action_44 (41) = happyShift action_22
action_44 (46) = happyShift action_23
action_44 (6) = happyGoto action_65
action_44 (7) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 _ = happyFail (happyExpListPerState 44)

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
action_45 (24) = happyShift action_17
action_45 (25) = happyShift action_18
action_45 (26) = happyShift action_19
action_45 (36) = happyShift action_20
action_45 (39) = happyShift action_21
action_45 (41) = happyShift action_22
action_45 (46) = happyShift action_23
action_45 (6) = happyGoto action_64
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
action_46 (24) = happyShift action_17
action_46 (25) = happyShift action_18
action_46 (26) = happyShift action_19
action_46 (36) = happyShift action_20
action_46 (39) = happyShift action_21
action_46 (41) = happyShift action_22
action_46 (46) = happyShift action_23
action_46 (6) = happyGoto action_63
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
action_47 (24) = happyShift action_17
action_47 (25) = happyShift action_18
action_47 (26) = happyShift action_19
action_47 (36) = happyShift action_20
action_47 (39) = happyShift action_21
action_47 (41) = happyShift action_22
action_47 (46) = happyShift action_23
action_47 (6) = happyGoto action_62
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
action_48 (24) = happyShift action_17
action_48 (25) = happyShift action_18
action_48 (26) = happyShift action_19
action_48 (36) = happyShift action_20
action_48 (39) = happyShift action_21
action_48 (41) = happyShift action_22
action_48 (46) = happyShift action_23
action_48 (6) = happyGoto action_61
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
action_49 (24) = happyShift action_17
action_49 (25) = happyShift action_18
action_49 (26) = happyShift action_19
action_49 (36) = happyShift action_20
action_49 (39) = happyShift action_21
action_49 (41) = happyShift action_22
action_49 (46) = happyShift action_23
action_49 (6) = happyGoto action_60
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
action_50 (24) = happyShift action_17
action_50 (25) = happyShift action_18
action_50 (26) = happyShift action_19
action_50 (36) = happyShift action_20
action_50 (39) = happyShift action_21
action_50 (41) = happyShift action_22
action_50 (46) = happyShift action_23
action_50 (6) = happyGoto action_59
action_50 (7) = happyGoto action_5
action_50 (10) = happyGoto action_26
action_50 (11) = happyGoto action_6
action_50 _ = happyReduce_42

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
action_51 (24) = happyShift action_17
action_51 (25) = happyShift action_18
action_51 (26) = happyShift action_19
action_51 (36) = happyShift action_20
action_51 (39) = happyShift action_21
action_51 (41) = happyShift action_22
action_51 (46) = happyShift action_23
action_51 (6) = happyGoto action_58
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
action_52 (24) = happyShift action_17
action_52 (25) = happyShift action_18
action_52 (26) = happyShift action_19
action_52 (36) = happyShift action_20
action_52 (39) = happyShift action_21
action_52 (41) = happyShift action_22
action_52 (46) = happyShift action_23
action_52 (6) = happyGoto action_57
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
action_53 (24) = happyShift action_17
action_53 (25) = happyShift action_18
action_53 (26) = happyShift action_19
action_53 (36) = happyShift action_20
action_53 (39) = happyShift action_21
action_53 (41) = happyShift action_22
action_53 (46) = happyShift action_23
action_53 (6) = happyGoto action_56
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
action_54 (24) = happyShift action_17
action_54 (25) = happyShift action_18
action_54 (26) = happyShift action_19
action_54 (36) = happyShift action_20
action_54 (39) = happyShift action_21
action_54 (41) = happyShift action_22
action_54 (46) = happyShift action_23
action_54 (6) = happyGoto action_55
action_54 (7) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (31) = happyShift action_43
action_55 (32) = happyShift action_44
action_55 (33) = happyShift action_45
action_55 (35) = happyShift action_46
action_55 (36) = happyShift action_73
action_55 (37) = happyShift action_48
action_55 (38) = happyShift action_49
action_55 (41) = happyShift action_74
action_55 (47) = happyShift action_51
action_55 (48) = happyShift action_52
action_55 _ = happyReduce_34

action_56 (31) = happyShift action_43
action_56 (32) = happyShift action_44
action_56 (33) = happyShift action_45
action_56 (35) = happyShift action_46
action_56 (36) = happyShift action_73
action_56 (37) = happyShift action_48
action_56 (38) = happyShift action_49
action_56 (41) = happyShift action_74
action_56 (47) = happyShift action_51
action_56 (48) = happyShift action_52
action_56 _ = happyReduce_33

action_57 (31) = happyShift action_43
action_57 (32) = happyShift action_44
action_57 (33) = happyShift action_45
action_57 (41) = happyShift action_74
action_57 (47) = happyShift action_51
action_57 _ = happyReduce_32

action_58 (41) = happyShift action_74
action_58 (47) = happyShift action_51
action_58 _ = happyReduce_31

action_59 (27) = happyShift action_39
action_59 (28) = happyShift action_40
action_59 (29) = happyShift action_41
action_59 (30) = happyShift action_42
action_59 (31) = happyShift action_43
action_59 (32) = happyShift action_44
action_59 (33) = happyShift action_45
action_59 (35) = happyShift action_46
action_59 (36) = happyShift action_73
action_59 (37) = happyShift action_48
action_59 (38) = happyShift action_49
action_59 (41) = happyShift action_74
action_59 (42) = happyShift action_88
action_59 (45) = happyShift action_80
action_59 (47) = happyShift action_51
action_59 (48) = happyShift action_52
action_59 (49) = happyShift action_53
action_59 (50) = happyShift action_54
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (31) = happyShift action_43
action_60 (32) = happyShift action_44
action_60 (33) = happyShift action_45
action_60 (41) = happyShift action_74
action_60 (47) = happyShift action_51
action_60 _ = happyReduce_26

action_61 (31) = happyShift action_43
action_61 (32) = happyShift action_44
action_61 (33) = happyShift action_45
action_61 (41) = happyShift action_74
action_61 (47) = happyShift action_51
action_61 _ = happyReduce_25

action_62 (31) = happyShift action_43
action_62 (32) = happyShift action_44
action_62 (33) = happyShift action_45
action_62 (41) = happyShift action_74
action_62 (47) = happyShift action_51
action_62 _ = happyReduce_35

action_63 (31) = happyShift action_43
action_63 (32) = happyShift action_44
action_63 (33) = happyShift action_45
action_63 (37) = happyShift action_48
action_63 (38) = happyShift action_49
action_63 (41) = happyShift action_74
action_63 (47) = happyShift action_51
action_63 (48) = happyShift action_52
action_63 _ = happyReduce_23

action_64 (31) = happyShift action_43
action_64 (33) = happyShift action_45
action_64 (41) = happyShift action_74
action_64 (47) = happyShift action_51
action_64 _ = happyReduce_19

action_65 (31) = happyShift action_43
action_65 (33) = happyShift action_45
action_65 (41) = happyShift action_74
action_65 (47) = happyShift action_51
action_65 _ = happyReduce_18

action_66 (31) = happyShift action_43
action_66 (33) = happyShift action_45
action_66 (41) = happyShift action_74
action_66 (47) = happyShift action_51
action_66 _ = happyReduce_17

action_67 (27) = happyShift action_39
action_67 (28) = happyShift action_40
action_67 (31) = happyShift action_43
action_67 (32) = happyShift action_44
action_67 (33) = happyShift action_45
action_67 (35) = happyShift action_46
action_67 (36) = happyShift action_73
action_67 (37) = happyShift action_48
action_67 (38) = happyShift action_49
action_67 (41) = happyShift action_74
action_67 (47) = happyShift action_51
action_67 (48) = happyShift action_52
action_67 (49) = happyShift action_53
action_67 (50) = happyShift action_54
action_67 _ = happyReduce_16

action_68 (27) = happyShift action_39
action_68 (28) = happyShift action_40
action_68 (31) = happyShift action_43
action_68 (32) = happyShift action_44
action_68 (33) = happyShift action_45
action_68 (35) = happyShift action_46
action_68 (36) = happyShift action_73
action_68 (37) = happyShift action_48
action_68 (38) = happyShift action_49
action_68 (41) = happyShift action_74
action_68 (47) = happyShift action_51
action_68 (48) = happyShift action_52
action_68 (49) = happyShift action_53
action_68 (50) = happyShift action_54
action_68 _ = happyReduce_15

action_69 (31) = happyShift action_43
action_69 (32) = happyShift action_44
action_69 (33) = happyShift action_45
action_69 (35) = happyShift action_46
action_69 (36) = happyShift action_73
action_69 (37) = happyShift action_48
action_69 (38) = happyShift action_49
action_69 (41) = happyShift action_74
action_69 (47) = happyShift action_51
action_69 (48) = happyShift action_52
action_69 _ = happyReduce_14

action_70 (31) = happyShift action_43
action_70 (32) = happyShift action_44
action_70 (33) = happyShift action_45
action_70 (35) = happyShift action_46
action_70 (36) = happyShift action_73
action_70 (37) = happyShift action_48
action_70 (38) = happyShift action_49
action_70 (41) = happyShift action_74
action_70 (47) = happyShift action_51
action_70 (48) = happyShift action_52
action_70 _ = happyReduce_13

action_71 (12) = happyShift action_7
action_71 (13) = happyShift action_8
action_71 (14) = happyShift action_9
action_71 (15) = happyShift action_10
action_71 (16) = happyShift action_11
action_71 (17) = happyShift action_12
action_71 (18) = happyShift action_13
action_71 (21) = happyShift action_14
action_71 (22) = happyShift action_15
action_71 (23) = happyShift action_16
action_71 (24) = happyShift action_17
action_71 (25) = happyShift action_18
action_71 (26) = happyShift action_19
action_71 (36) = happyShift action_20
action_71 (39) = happyShift action_21
action_71 (41) = happyShift action_22
action_71 (46) = happyShift action_23
action_71 (6) = happyGoto action_87
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (27) = happyShift action_39
action_72 (28) = happyShift action_40
action_72 (29) = happyShift action_41
action_72 (30) = happyShift action_42
action_72 (31) = happyShift action_43
action_72 (32) = happyShift action_44
action_72 (33) = happyShift action_45
action_72 (35) = happyShift action_46
action_72 (36) = happyShift action_73
action_72 (37) = happyShift action_48
action_72 (38) = happyShift action_49
action_72 (41) = happyShift action_74
action_72 (44) = happyShift action_86
action_72 (47) = happyShift action_51
action_72 (48) = happyShift action_52
action_72 (49) = happyShift action_53
action_72 (50) = happyShift action_54
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (12) = happyShift action_7
action_73 (13) = happyShift action_8
action_73 (14) = happyShift action_9
action_73 (15) = happyShift action_10
action_73 (16) = happyShift action_11
action_73 (17) = happyShift action_12
action_73 (18) = happyShift action_13
action_73 (21) = happyShift action_14
action_73 (22) = happyShift action_15
action_73 (23) = happyShift action_16
action_73 (24) = happyShift action_17
action_73 (25) = happyShift action_18
action_73 (26) = happyShift action_19
action_73 (36) = happyShift action_20
action_73 (39) = happyShift action_21
action_73 (41) = happyShift action_22
action_73 (46) = happyShift action_23
action_73 (6) = happyGoto action_85
action_73 (7) = happyGoto action_5
action_73 (11) = happyGoto action_6
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (12) = happyShift action_7
action_74 (13) = happyShift action_8
action_74 (14) = happyShift action_9
action_74 (15) = happyShift action_10
action_74 (16) = happyShift action_11
action_74 (17) = happyShift action_12
action_74 (18) = happyShift action_13
action_74 (21) = happyShift action_14
action_74 (22) = happyShift action_15
action_74 (23) = happyShift action_16
action_74 (24) = happyShift action_17
action_74 (25) = happyShift action_18
action_74 (26) = happyShift action_19
action_74 (36) = happyShift action_20
action_74 (39) = happyShift action_21
action_74 (41) = happyShift action_22
action_74 (46) = happyShift action_23
action_74 (6) = happyGoto action_84
action_74 (7) = happyGoto action_5
action_74 (11) = happyGoto action_6
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (12) = happyShift action_7
action_75 (13) = happyShift action_8
action_75 (14) = happyShift action_9
action_75 (15) = happyShift action_10
action_75 (16) = happyShift action_11
action_75 (17) = happyShift action_12
action_75 (18) = happyShift action_13
action_75 (21) = happyShift action_14
action_75 (22) = happyShift action_15
action_75 (23) = happyShift action_16
action_75 (24) = happyShift action_17
action_75 (25) = happyShift action_18
action_75 (26) = happyShift action_19
action_75 (36) = happyShift action_20
action_75 (39) = happyShift action_21
action_75 (41) = happyShift action_22
action_75 (46) = happyShift action_23
action_75 (4) = happyGoto action_83
action_75 (5) = happyGoto action_3
action_75 (6) = happyGoto action_4
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 _ = happyReduce_1

action_76 (12) = happyShift action_7
action_76 (13) = happyShift action_8
action_76 (14) = happyShift action_9
action_76 (15) = happyShift action_10
action_76 (16) = happyShift action_11
action_76 (17) = happyShift action_12
action_76 (18) = happyShift action_13
action_76 (21) = happyShift action_14
action_76 (22) = happyShift action_15
action_76 (23) = happyShift action_16
action_76 (24) = happyShift action_17
action_76 (25) = happyShift action_18
action_76 (26) = happyShift action_19
action_76 (36) = happyShift action_20
action_76 (39) = happyShift action_21
action_76 (41) = happyShift action_22
action_76 (46) = happyShift action_23
action_76 (4) = happyGoto action_82
action_76 (5) = happyGoto action_3
action_76 (6) = happyGoto action_4
action_76 (7) = happyGoto action_5
action_76 (11) = happyGoto action_6
action_76 _ = happyReduce_1

action_77 (27) = happyShift action_39
action_77 (28) = happyShift action_40
action_77 (29) = happyShift action_41
action_77 (30) = happyShift action_42
action_77 (31) = happyShift action_43
action_77 (32) = happyShift action_44
action_77 (33) = happyShift action_45
action_77 (35) = happyShift action_46
action_77 (36) = happyShift action_73
action_77 (37) = happyShift action_48
action_77 (38) = happyShift action_49
action_77 (41) = happyShift action_74
action_77 (47) = happyShift action_51
action_77 (48) = happyShift action_52
action_77 (49) = happyShift action_53
action_77 (50) = happyShift action_54
action_77 _ = happyReduce_21

action_78 _ = happyReduce_36

action_79 _ = happyReduce_12

action_80 (12) = happyShift action_7
action_80 (13) = happyShift action_8
action_80 (14) = happyShift action_9
action_80 (15) = happyShift action_10
action_80 (16) = happyShift action_11
action_80 (17) = happyShift action_12
action_80 (18) = happyShift action_13
action_80 (21) = happyShift action_14
action_80 (22) = happyShift action_15
action_80 (23) = happyShift action_16
action_80 (24) = happyShift action_17
action_80 (25) = happyShift action_18
action_80 (26) = happyShift action_19
action_80 (36) = happyShift action_20
action_80 (39) = happyShift action_21
action_80 (41) = happyShift action_22
action_80 (46) = happyShift action_23
action_80 (6) = happyGoto action_25
action_80 (7) = happyGoto action_5
action_80 (10) = happyGoto action_81
action_80 (11) = happyGoto action_6
action_80 _ = happyReduce_42

action_81 _ = happyReduce_44

action_82 (44) = happyShift action_90
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (44) = happyShift action_89
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (27) = happyShift action_39
action_84 (28) = happyShift action_40
action_84 (29) = happyShift action_41
action_84 (30) = happyShift action_42
action_84 (31) = happyShift action_43
action_84 (32) = happyShift action_44
action_84 (33) = happyShift action_45
action_84 (35) = happyShift action_46
action_84 (36) = happyShift action_73
action_84 (37) = happyShift action_48
action_84 (38) = happyShift action_49
action_84 (41) = happyShift action_74
action_84 (42) = happyShift action_88
action_84 (47) = happyShift action_51
action_84 (48) = happyShift action_52
action_84 (49) = happyShift action_53
action_84 (50) = happyShift action_54
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (31) = happyShift action_43
action_85 (32) = happyShift action_44
action_85 (33) = happyShift action_45
action_85 (37) = happyShift action_48
action_85 (38) = happyShift action_49
action_85 (41) = happyShift action_74
action_85 (47) = happyShift action_51
action_85 (48) = happyShift action_52
action_85 _ = happyReduce_24

action_86 _ = happyReduce_28

action_87 (27) = happyShift action_39
action_87 (28) = happyShift action_40
action_87 (29) = happyShift action_41
action_87 (30) = happyShift action_42
action_87 (31) = happyShift action_43
action_87 (32) = happyShift action_44
action_87 (33) = happyShift action_45
action_87 (35) = happyShift action_46
action_87 (36) = happyShift action_73
action_87 (37) = happyShift action_48
action_87 (38) = happyShift action_49
action_87 (41) = happyShift action_74
action_87 (47) = happyShift action_51
action_87 (48) = happyShift action_52
action_87 (49) = happyShift action_53
action_87 (50) = happyShift action_54
action_87 _ = happyReduce_20

action_88 _ = happyReduce_27

action_89 _ = happyReduce_5

action_90 (19) = happyShift action_92
action_90 (8) = happyGoto action_91
action_90 _ = happyReduce_38

action_91 (20) = happyShift action_95
action_91 (9) = happyGoto action_94
action_91 _ = happyReduce_40

action_92 (12) = happyShift action_7
action_92 (13) = happyShift action_8
action_92 (14) = happyShift action_9
action_92 (15) = happyShift action_10
action_92 (16) = happyShift action_11
action_92 (17) = happyShift action_12
action_92 (18) = happyShift action_13
action_92 (21) = happyShift action_14
action_92 (22) = happyShift action_15
action_92 (23) = happyShift action_16
action_92 (24) = happyShift action_17
action_92 (25) = happyShift action_18
action_92 (26) = happyShift action_19
action_92 (36) = happyShift action_20
action_92 (39) = happyShift action_21
action_92 (41) = happyShift action_22
action_92 (46) = happyShift action_23
action_92 (6) = happyGoto action_93
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (27) = happyShift action_39
action_93 (28) = happyShift action_40
action_93 (29) = happyShift action_41
action_93 (30) = happyShift action_42
action_93 (31) = happyShift action_43
action_93 (32) = happyShift action_44
action_93 (33) = happyShift action_45
action_93 (35) = happyShift action_46
action_93 (36) = happyShift action_73
action_93 (37) = happyShift action_48
action_93 (38) = happyShift action_49
action_93 (41) = happyShift action_74
action_93 (43) = happyShift action_97
action_93 (47) = happyShift action_51
action_93 (48) = happyShift action_52
action_93 (49) = happyShift action_53
action_93 (50) = happyShift action_54
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_37

action_95 (43) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

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
action_96 (24) = happyShift action_17
action_96 (25) = happyShift action_18
action_96 (26) = happyShift action_19
action_96 (36) = happyShift action_20
action_96 (39) = happyShift action_21
action_96 (41) = happyShift action_22
action_96 (46) = happyShift action_23
action_96 (4) = happyGoto action_99
action_96 (5) = happyGoto action_3
action_96 (6) = happyGoto action_4
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 _ = happyReduce_1

action_97 (12) = happyShift action_7
action_97 (13) = happyShift action_8
action_97 (14) = happyShift action_9
action_97 (15) = happyShift action_10
action_97 (16) = happyShift action_11
action_97 (17) = happyShift action_12
action_97 (18) = happyShift action_13
action_97 (21) = happyShift action_14
action_97 (22) = happyShift action_15
action_97 (23) = happyShift action_16
action_97 (24) = happyShift action_17
action_97 (25) = happyShift action_18
action_97 (26) = happyShift action_19
action_97 (36) = happyShift action_20
action_97 (39) = happyShift action_21
action_97 (41) = happyShift action_22
action_97 (46) = happyShift action_23
action_97 (4) = happyGoto action_98
action_97 (5) = happyGoto action_3
action_97 (6) = happyGoto action_4
action_97 (7) = happyGoto action_5
action_97 (11) = happyGoto action_6
action_97 _ = happyReduce_1

action_98 (44) = happyShift action_101
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (44) = happyShift action_100
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_41

action_101 (19) = happyShift action_92
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

happyReduce_20 = happyReduce 4 6 happyReduction_20
happyReduction_20 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (VarDec happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

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

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

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
	TokenInt _ happy_dollar_dollar -> cont 24;
	TokenBool _ happy_dollar_dollar -> cont 25;
	TokenVar _ happy_dollar_dollar -> cont 26;
	TokenLE _ -> cont 27;
	TokenGE _ -> cont 28;
	TokenEQ _ -> cont 29;
	TokenNE _ -> cont 30;
	TokenCons _ -> cont 31;
	TokenConcat _ -> cont 32;
	TokenTake _ -> cont 33;
	TokenAssign _ -> cont 34;
	TokenPlus _ -> cont 35;
	TokenMinus _ -> cont 36;
	TokenTimes _ -> cont 37;
	TokenDiv _ -> cont 38;
	TokenLParen _ -> cont 39;
	TokenRParen _ -> cont 40;
	TokenLSquare _ -> cont 41;
	TokenRSquare _ -> cont 42;
	TokenLCurly _ -> cont 43;
	TokenRCurly _ -> cont 44;
	TokenComma _ -> cont 45;
	TokenNot _ -> cont 46;
	TokenExponent _ -> cont 47;
	TokenModulo _ -> cont 48;
	TokenLT _ -> cont 49;
	TokenGT _ -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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

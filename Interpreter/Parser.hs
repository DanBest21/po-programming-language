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
happyExpList = Happy_Data_Array.listArray (0,651) ([63488,1011,8520,0,0,0,0,0,0,0,59376,64511,1986,49152,0,0,0,4,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,63996,41985,16,53216,8207,133,32512,126,1065,63488,1011,8520,49152,8095,2624,1,64766,20992,8,0,0,0,0,0,0,0,0,1,57344,4047,34080,0,32383,10496,4,62456,18435,33,40896,16415,266,0,28672,4160,0,63488,41595,7,0,8192,0,0,57086,480,0,1792,260,32512,126,1065,0,0,0,0,0,0,0,0,0,0,0,31736,1930,0,57280,15443,0,65024,57502,57345,4047,34080,0,0,0,0,0,512,0,0,0,32,65024,252,2130,0,0,2048,0,0,0,0,63996,41985,16,53216,8207,133,32512,126,1065,63488,1011,8520,49152,8095,2624,1,64766,20992,8,59376,36871,66,16256,32831,532,64512,505,4260,57344,4047,34080,0,32383,10496,4,62456,18435,33,40896,16415,266,65024,252,2130,61440,2023,17040,32768,16191,5248,2,0,40672,96,0,63232,772,0,14336,2080,0,0,16640,0,57344,35311,30,0,16496,16,0,896,130,0,7168,1040,0,57344,24728,0,0,1029,1,0,8232,8,0,320,65,0,61024,7689,0,29440,61519,0,32768,33403,1,0,5084,12,63996,41985,16,0,63472,3860,32512,126,1065,0,64512,51517,49155,8095,2624,1,64766,20992,8,59376,36871,66,16256,32831,532,0,65024,57502,1,0,0,0,0,0,0,62456,18435,33,0,0,0,0,0,512,0,0,4096,0,49152,13279,60,0,39136,96,0,0,0,0,0,256,63488,1011,8520,0,0,16384,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exp","If","Elif","Else","StreamLiteral","Type","Assign","int_type","stream_type","bool_type","input","print","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (23) = happyShift action_18
action_0 (24) = happyShift action_19
action_0 (25) = happyShift action_20
action_0 (26) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (39) = happyShift action_23
action_0 (41) = happyShift action_24
action_0 (46) = happyShift action_25
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (51) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (12) = happyShift action_9
action_3 (13) = happyShift action_10
action_3 (14) = happyShift action_11
action_3 (15) = happyShift action_12
action_3 (16) = happyShift action_13
action_3 (17) = happyShift action_14
action_3 (18) = happyShift action_15
action_3 (21) = happyShift action_16
action_3 (22) = happyShift action_17
action_3 (23) = happyShift action_18
action_3 (24) = happyShift action_19
action_3 (25) = happyShift action_20
action_3 (26) = happyShift action_21
action_3 (27) = happyShift action_45
action_3 (28) = happyShift action_46
action_3 (29) = happyShift action_47
action_3 (30) = happyShift action_48
action_3 (31) = happyShift action_49
action_3 (32) = happyShift action_50
action_3 (33) = happyShift action_51
action_3 (35) = happyShift action_52
action_3 (36) = happyShift action_53
action_3 (37) = happyShift action_54
action_3 (38) = happyShift action_55
action_3 (39) = happyShift action_23
action_3 (41) = happyShift action_56
action_3 (44) = happyReduce_2
action_3 (46) = happyShift action_25
action_3 (47) = happyShift action_57
action_3 (48) = happyShift action_58
action_3 (49) = happyShift action_59
action_3 (50) = happyShift action_60
action_3 (51) = happyReduce_2
action_3 (4) = happyGoto action_44
action_3 (5) = happyGoto action_3
action_3 (6) = happyGoto action_4
action_3 (7) = happyGoto action_5
action_3 (8) = happyGoto action_6
action_3 (10) = happyGoto action_7
action_3 (11) = happyGoto action_8
action_3 _ = happyReduce_2

action_4 (19) = happyShift action_42
action_4 (20) = happyShift action_43
action_4 _ = happyReduce_5

action_5 (20) = happyShift action_41
action_5 _ = happyReduce_6

action_6 _ = happyReduce_7

action_7 (26) = happyShift action_40
action_7 (11) = happyGoto action_39
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_22

action_9 _ = happyReduce_45

action_10 _ = happyReduce_47

action_11 _ = happyReduce_46

action_12 (43) = happyShift action_38
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_9
action_13 (13) = happyShift action_10
action_13 (14) = happyShift action_11
action_13 (15) = happyShift action_12
action_13 (16) = happyShift action_13
action_13 (17) = happyShift action_14
action_13 (18) = happyShift action_15
action_13 (21) = happyShift action_16
action_13 (22) = happyShift action_17
action_13 (23) = happyShift action_18
action_13 (24) = happyShift action_19
action_13 (25) = happyShift action_20
action_13 (26) = happyShift action_21
action_13 (36) = happyShift action_22
action_13 (39) = happyShift action_23
action_13 (41) = happyShift action_24
action_13 (46) = happyShift action_25
action_13 (5) = happyGoto action_37
action_13 (6) = happyGoto action_4
action_13 (7) = happyGoto action_5
action_13 (8) = happyGoto action_6
action_13 (10) = happyGoto action_7
action_13 (11) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (12) = happyShift action_9
action_14 (13) = happyShift action_10
action_14 (14) = happyShift action_11
action_14 (15) = happyShift action_12
action_14 (16) = happyShift action_13
action_14 (17) = happyShift action_14
action_14 (18) = happyShift action_15
action_14 (21) = happyShift action_16
action_14 (22) = happyShift action_17
action_14 (23) = happyShift action_18
action_14 (24) = happyShift action_19
action_14 (25) = happyShift action_20
action_14 (26) = happyShift action_21
action_14 (36) = happyShift action_22
action_14 (39) = happyShift action_23
action_14 (41) = happyShift action_24
action_14 (46) = happyShift action_25
action_14 (5) = happyGoto action_36
action_14 (6) = happyGoto action_4
action_14 (7) = happyGoto action_5
action_14 (8) = happyGoto action_6
action_14 (10) = happyGoto action_7
action_14 (11) = happyGoto action_8
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_9
action_15 (13) = happyShift action_10
action_15 (14) = happyShift action_11
action_15 (15) = happyShift action_12
action_15 (16) = happyShift action_13
action_15 (17) = happyShift action_14
action_15 (18) = happyShift action_15
action_15 (21) = happyShift action_16
action_15 (22) = happyShift action_17
action_15 (23) = happyShift action_18
action_15 (24) = happyShift action_19
action_15 (25) = happyShift action_20
action_15 (26) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (39) = happyShift action_23
action_15 (41) = happyShift action_24
action_15 (46) = happyShift action_25
action_15 (5) = happyGoto action_35
action_15 (6) = happyGoto action_4
action_15 (7) = happyGoto action_5
action_15 (8) = happyGoto action_6
action_15 (10) = happyGoto action_7
action_15 (11) = happyGoto action_8
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (17) = happyShift action_14
action_16 (18) = happyShift action_15
action_16 (21) = happyShift action_16
action_16 (22) = happyShift action_17
action_16 (23) = happyShift action_18
action_16 (24) = happyShift action_19
action_16 (25) = happyShift action_20
action_16 (26) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (39) = happyShift action_23
action_16 (41) = happyShift action_24
action_16 (46) = happyShift action_25
action_16 (5) = happyGoto action_34
action_16 (6) = happyGoto action_4
action_16 (7) = happyGoto action_5
action_16 (8) = happyGoto action_6
action_16 (10) = happyGoto action_7
action_16 (11) = happyGoto action_8
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_9
action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (16) = happyShift action_13
action_17 (17) = happyShift action_14
action_17 (18) = happyShift action_15
action_17 (21) = happyShift action_16
action_17 (22) = happyShift action_17
action_17 (23) = happyShift action_18
action_17 (24) = happyShift action_19
action_17 (25) = happyShift action_20
action_17 (26) = happyShift action_21
action_17 (36) = happyShift action_22
action_17 (39) = happyShift action_23
action_17 (41) = happyShift action_24
action_17 (46) = happyShift action_25
action_17 (5) = happyGoto action_33
action_17 (6) = happyGoto action_4
action_17 (7) = happyGoto action_5
action_17 (8) = happyGoto action_6
action_17 (10) = happyGoto action_7
action_17 (11) = happyGoto action_8
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_9
action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (17) = happyShift action_14
action_18 (18) = happyShift action_15
action_18 (21) = happyShift action_16
action_18 (22) = happyShift action_17
action_18 (23) = happyShift action_18
action_18 (24) = happyShift action_19
action_18 (25) = happyShift action_20
action_18 (26) = happyShift action_21
action_18 (36) = happyShift action_22
action_18 (39) = happyShift action_23
action_18 (41) = happyShift action_24
action_18 (46) = happyShift action_25
action_18 (5) = happyGoto action_32
action_18 (6) = happyGoto action_4
action_18 (7) = happyGoto action_5
action_18 (8) = happyGoto action_6
action_18 (10) = happyGoto action_7
action_18 (11) = happyGoto action_8
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_11

action_20 _ = happyReduce_12

action_21 (34) = happyShift action_31
action_21 _ = happyReduce_23

action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_10
action_22 (14) = happyShift action_11
action_22 (15) = happyShift action_12
action_22 (16) = happyShift action_13
action_22 (17) = happyShift action_14
action_22 (18) = happyShift action_15
action_22 (21) = happyShift action_16
action_22 (22) = happyShift action_17
action_22 (23) = happyShift action_18
action_22 (24) = happyShift action_19
action_22 (25) = happyShift action_20
action_22 (26) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (39) = happyShift action_23
action_22 (41) = happyShift action_24
action_22 (46) = happyShift action_25
action_22 (5) = happyGoto action_30
action_22 (6) = happyGoto action_4
action_22 (7) = happyGoto action_5
action_22 (8) = happyGoto action_6
action_22 (10) = happyGoto action_7
action_22 (11) = happyGoto action_8
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_9
action_23 (13) = happyShift action_10
action_23 (14) = happyShift action_11
action_23 (15) = happyShift action_12
action_23 (16) = happyShift action_13
action_23 (17) = happyShift action_14
action_23 (18) = happyShift action_15
action_23 (21) = happyShift action_16
action_23 (22) = happyShift action_17
action_23 (23) = happyShift action_18
action_23 (24) = happyShift action_19
action_23 (25) = happyShift action_20
action_23 (26) = happyShift action_21
action_23 (36) = happyShift action_22
action_23 (39) = happyShift action_23
action_23 (41) = happyShift action_24
action_23 (46) = happyShift action_25
action_23 (5) = happyGoto action_29
action_23 (6) = happyGoto action_4
action_23 (7) = happyGoto action_5
action_23 (8) = happyGoto action_6
action_23 (10) = happyGoto action_7
action_23 (11) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_9
action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_11
action_24 (15) = happyShift action_12
action_24 (16) = happyShift action_13
action_24 (17) = happyShift action_14
action_24 (18) = happyShift action_15
action_24 (21) = happyShift action_16
action_24 (22) = happyShift action_17
action_24 (23) = happyShift action_18
action_24 (24) = happyShift action_19
action_24 (25) = happyShift action_20
action_24 (26) = happyShift action_21
action_24 (36) = happyShift action_22
action_24 (39) = happyShift action_23
action_24 (41) = happyShift action_24
action_24 (46) = happyShift action_25
action_24 (5) = happyGoto action_27
action_24 (6) = happyGoto action_4
action_24 (7) = happyGoto action_5
action_24 (8) = happyGoto action_6
action_24 (9) = happyGoto action_28
action_24 (10) = happyGoto action_7
action_24 (11) = happyGoto action_8
action_24 _ = happyReduce_42

action_25 (12) = happyShift action_9
action_25 (13) = happyShift action_10
action_25 (14) = happyShift action_11
action_25 (15) = happyShift action_12
action_25 (16) = happyShift action_13
action_25 (17) = happyShift action_14
action_25 (18) = happyShift action_15
action_25 (21) = happyShift action_16
action_25 (22) = happyShift action_17
action_25 (23) = happyShift action_18
action_25 (24) = happyShift action_19
action_25 (25) = happyShift action_20
action_25 (26) = happyShift action_21
action_25 (36) = happyShift action_22
action_25 (39) = happyShift action_23
action_25 (41) = happyShift action_24
action_25 (46) = happyShift action_25
action_25 (5) = happyGoto action_26
action_25 (6) = happyGoto action_4
action_25 (7) = happyGoto action_5
action_25 (8) = happyGoto action_6
action_25 (10) = happyGoto action_7
action_25 (11) = happyGoto action_8
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (31) = happyShift action_49
action_26 (32) = happyShift action_50
action_26 (33) = happyShift action_51
action_26 (41) = happyShift action_82
action_26 (47) = happyShift action_57
action_26 _ = happyReduce_31

action_27 (27) = happyShift action_45
action_27 (28) = happyShift action_46
action_27 (29) = happyShift action_47
action_27 (30) = happyShift action_48
action_27 (31) = happyShift action_49
action_27 (32) = happyShift action_50
action_27 (33) = happyShift action_51
action_27 (35) = happyShift action_52
action_27 (36) = happyShift action_81
action_27 (37) = happyShift action_54
action_27 (38) = happyShift action_55
action_27 (41) = happyShift action_82
action_27 (45) = happyShift action_88
action_27 (47) = happyShift action_57
action_27 (48) = happyShift action_58
action_27 (49) = happyShift action_59
action_27 (50) = happyShift action_60
action_27 _ = happyReduce_43

action_28 (42) = happyShift action_87
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (27) = happyShift action_45
action_29 (28) = happyShift action_46
action_29 (29) = happyShift action_47
action_29 (30) = happyShift action_48
action_29 (31) = happyShift action_49
action_29 (32) = happyShift action_50
action_29 (33) = happyShift action_51
action_29 (35) = happyShift action_52
action_29 (36) = happyShift action_81
action_29 (37) = happyShift action_54
action_29 (38) = happyShift action_55
action_29 (40) = happyShift action_86
action_29 (41) = happyShift action_82
action_29 (47) = happyShift action_57
action_29 (48) = happyShift action_58
action_29 (49) = happyShift action_59
action_29 (50) = happyShift action_60
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (31) = happyShift action_49
action_30 (32) = happyShift action_50
action_30 (33) = happyShift action_51
action_30 (41) = happyShift action_82
action_30 (47) = happyShift action_57
action_30 _ = happyReduce_36

action_31 (12) = happyShift action_9
action_31 (13) = happyShift action_10
action_31 (14) = happyShift action_11
action_31 (15) = happyShift action_12
action_31 (16) = happyShift action_13
action_31 (17) = happyShift action_14
action_31 (18) = happyShift action_15
action_31 (21) = happyShift action_16
action_31 (22) = happyShift action_17
action_31 (23) = happyShift action_18
action_31 (24) = happyShift action_19
action_31 (25) = happyShift action_20
action_31 (26) = happyShift action_21
action_31 (36) = happyShift action_22
action_31 (39) = happyShift action_23
action_31 (41) = happyShift action_24
action_31 (46) = happyShift action_25
action_31 (5) = happyGoto action_85
action_31 (6) = happyGoto action_4
action_31 (7) = happyGoto action_5
action_31 (8) = happyGoto action_6
action_31 (10) = happyGoto action_7
action_31 (11) = happyGoto action_8
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_10

action_33 _ = happyReduce_9

action_34 _ = happyReduce_8

action_35 (27) = happyShift action_45
action_35 (28) = happyShift action_46
action_35 (29) = happyShift action_47
action_35 (30) = happyShift action_48
action_35 (31) = happyShift action_49
action_35 (32) = happyShift action_50
action_35 (33) = happyShift action_51
action_35 (35) = happyShift action_52
action_35 (36) = happyShift action_81
action_35 (37) = happyShift action_54
action_35 (38) = happyShift action_55
action_35 (41) = happyShift action_82
action_35 (43) = happyShift action_84
action_35 (47) = happyShift action_57
action_35 (48) = happyShift action_58
action_35 (49) = happyShift action_59
action_35 (50) = happyShift action_60
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (27) = happyShift action_45
action_36 (28) = happyShift action_46
action_36 (29) = happyShift action_47
action_36 (30) = happyShift action_48
action_36 (31) = happyShift action_49
action_36 (32) = happyShift action_50
action_36 (33) = happyShift action_51
action_36 (35) = happyShift action_52
action_36 (36) = happyShift action_81
action_36 (37) = happyShift action_54
action_36 (38) = happyShift action_55
action_36 (41) = happyShift action_82
action_36 (43) = happyShift action_83
action_36 (47) = happyShift action_57
action_36 (48) = happyShift action_58
action_36 (49) = happyShift action_59
action_36 (50) = happyShift action_60
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (27) = happyShift action_45
action_37 (28) = happyShift action_46
action_37 (29) = happyShift action_47
action_37 (30) = happyShift action_48
action_37 (31) = happyShift action_49
action_37 (32) = happyShift action_50
action_37 (33) = happyShift action_51
action_37 (35) = happyShift action_52
action_37 (36) = happyShift action_81
action_37 (37) = happyShift action_54
action_37 (38) = happyShift action_55
action_37 (41) = happyShift action_82
action_37 (47) = happyShift action_57
action_37 (48) = happyShift action_58
action_37 (49) = happyShift action_59
action_37 (50) = happyShift action_60
action_37 _ = happyReduce_30

action_38 (12) = happyShift action_9
action_38 (13) = happyShift action_10
action_38 (14) = happyShift action_11
action_38 (15) = happyShift action_12
action_38 (16) = happyShift action_13
action_38 (17) = happyShift action_14
action_38 (18) = happyShift action_15
action_38 (21) = happyShift action_16
action_38 (22) = happyShift action_17
action_38 (23) = happyShift action_18
action_38 (24) = happyShift action_19
action_38 (25) = happyShift action_20
action_38 (26) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (39) = happyShift action_23
action_38 (41) = happyShift action_24
action_38 (46) = happyShift action_25
action_38 (5) = happyGoto action_80
action_38 (6) = happyGoto action_4
action_38 (7) = happyGoto action_5
action_38 (8) = happyGoto action_6
action_38 (10) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_21

action_40 (34) = happyShift action_31
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (43) = happyShift action_79
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (12) = happyShift action_9
action_42 (13) = happyShift action_10
action_42 (14) = happyShift action_11
action_42 (15) = happyShift action_12
action_42 (16) = happyShift action_13
action_42 (17) = happyShift action_14
action_42 (18) = happyShift action_15
action_42 (21) = happyShift action_16
action_42 (22) = happyShift action_17
action_42 (23) = happyShift action_18
action_42 (24) = happyShift action_19
action_42 (25) = happyShift action_20
action_42 (26) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (39) = happyShift action_23
action_42 (41) = happyShift action_24
action_42 (46) = happyShift action_25
action_42 (5) = happyGoto action_78
action_42 (6) = happyGoto action_4
action_42 (7) = happyGoto action_5
action_42 (8) = happyGoto action_6
action_42 (10) = happyGoto action_7
action_42 (11) = happyGoto action_8
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (43) = happyShift action_77
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_3

action_45 (12) = happyShift action_9
action_45 (13) = happyShift action_10
action_45 (14) = happyShift action_11
action_45 (15) = happyShift action_12
action_45 (16) = happyShift action_13
action_45 (17) = happyShift action_14
action_45 (18) = happyShift action_15
action_45 (21) = happyShift action_16
action_45 (22) = happyShift action_17
action_45 (23) = happyShift action_18
action_45 (24) = happyShift action_19
action_45 (25) = happyShift action_20
action_45 (26) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (39) = happyShift action_23
action_45 (41) = happyShift action_24
action_45 (46) = happyShift action_25
action_45 (5) = happyGoto action_76
action_45 (6) = happyGoto action_4
action_45 (7) = happyGoto action_5
action_45 (8) = happyGoto action_6
action_45 (10) = happyGoto action_7
action_45 (11) = happyGoto action_8
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (12) = happyShift action_9
action_46 (13) = happyShift action_10
action_46 (14) = happyShift action_11
action_46 (15) = happyShift action_12
action_46 (16) = happyShift action_13
action_46 (17) = happyShift action_14
action_46 (18) = happyShift action_15
action_46 (21) = happyShift action_16
action_46 (22) = happyShift action_17
action_46 (23) = happyShift action_18
action_46 (24) = happyShift action_19
action_46 (25) = happyShift action_20
action_46 (26) = happyShift action_21
action_46 (36) = happyShift action_22
action_46 (39) = happyShift action_23
action_46 (41) = happyShift action_24
action_46 (46) = happyShift action_25
action_46 (5) = happyGoto action_75
action_46 (6) = happyGoto action_4
action_46 (7) = happyGoto action_5
action_46 (8) = happyGoto action_6
action_46 (10) = happyGoto action_7
action_46 (11) = happyGoto action_8
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_9
action_47 (13) = happyShift action_10
action_47 (14) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (16) = happyShift action_13
action_47 (17) = happyShift action_14
action_47 (18) = happyShift action_15
action_47 (21) = happyShift action_16
action_47 (22) = happyShift action_17
action_47 (23) = happyShift action_18
action_47 (24) = happyShift action_19
action_47 (25) = happyShift action_20
action_47 (26) = happyShift action_21
action_47 (36) = happyShift action_22
action_47 (39) = happyShift action_23
action_47 (41) = happyShift action_24
action_47 (46) = happyShift action_25
action_47 (5) = happyGoto action_74
action_47 (6) = happyGoto action_4
action_47 (7) = happyGoto action_5
action_47 (8) = happyGoto action_6
action_47 (10) = happyGoto action_7
action_47 (11) = happyGoto action_8
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_9
action_48 (13) = happyShift action_10
action_48 (14) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (16) = happyShift action_13
action_48 (17) = happyShift action_14
action_48 (18) = happyShift action_15
action_48 (21) = happyShift action_16
action_48 (22) = happyShift action_17
action_48 (23) = happyShift action_18
action_48 (24) = happyShift action_19
action_48 (25) = happyShift action_20
action_48 (26) = happyShift action_21
action_48 (36) = happyShift action_22
action_48 (39) = happyShift action_23
action_48 (41) = happyShift action_24
action_48 (46) = happyShift action_25
action_48 (5) = happyGoto action_73
action_48 (6) = happyGoto action_4
action_48 (7) = happyGoto action_5
action_48 (8) = happyGoto action_6
action_48 (10) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (12) = happyShift action_9
action_49 (13) = happyShift action_10
action_49 (14) = happyShift action_11
action_49 (15) = happyShift action_12
action_49 (16) = happyShift action_13
action_49 (17) = happyShift action_14
action_49 (18) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (22) = happyShift action_17
action_49 (23) = happyShift action_18
action_49 (24) = happyShift action_19
action_49 (25) = happyShift action_20
action_49 (26) = happyShift action_21
action_49 (36) = happyShift action_22
action_49 (39) = happyShift action_23
action_49 (41) = happyShift action_24
action_49 (46) = happyShift action_25
action_49 (5) = happyGoto action_72
action_49 (6) = happyGoto action_4
action_49 (7) = happyGoto action_5
action_49 (8) = happyGoto action_6
action_49 (10) = happyGoto action_7
action_49 (11) = happyGoto action_8
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (12) = happyShift action_9
action_50 (13) = happyShift action_10
action_50 (14) = happyShift action_11
action_50 (15) = happyShift action_12
action_50 (16) = happyShift action_13
action_50 (17) = happyShift action_14
action_50 (18) = happyShift action_15
action_50 (21) = happyShift action_16
action_50 (22) = happyShift action_17
action_50 (23) = happyShift action_18
action_50 (24) = happyShift action_19
action_50 (25) = happyShift action_20
action_50 (26) = happyShift action_21
action_50 (36) = happyShift action_22
action_50 (39) = happyShift action_23
action_50 (41) = happyShift action_24
action_50 (46) = happyShift action_25
action_50 (5) = happyGoto action_71
action_50 (6) = happyGoto action_4
action_50 (7) = happyGoto action_5
action_50 (8) = happyGoto action_6
action_50 (10) = happyGoto action_7
action_50 (11) = happyGoto action_8
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (12) = happyShift action_9
action_51 (13) = happyShift action_10
action_51 (14) = happyShift action_11
action_51 (15) = happyShift action_12
action_51 (16) = happyShift action_13
action_51 (17) = happyShift action_14
action_51 (18) = happyShift action_15
action_51 (21) = happyShift action_16
action_51 (22) = happyShift action_17
action_51 (23) = happyShift action_18
action_51 (24) = happyShift action_19
action_51 (25) = happyShift action_20
action_51 (26) = happyShift action_21
action_51 (36) = happyShift action_22
action_51 (39) = happyShift action_23
action_51 (41) = happyShift action_24
action_51 (46) = happyShift action_25
action_51 (5) = happyGoto action_70
action_51 (6) = happyGoto action_4
action_51 (7) = happyGoto action_5
action_51 (8) = happyGoto action_6
action_51 (10) = happyGoto action_7
action_51 (11) = happyGoto action_8
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (12) = happyShift action_9
action_52 (13) = happyShift action_10
action_52 (14) = happyShift action_11
action_52 (15) = happyShift action_12
action_52 (16) = happyShift action_13
action_52 (17) = happyShift action_14
action_52 (18) = happyShift action_15
action_52 (21) = happyShift action_16
action_52 (22) = happyShift action_17
action_52 (23) = happyShift action_18
action_52 (24) = happyShift action_19
action_52 (25) = happyShift action_20
action_52 (26) = happyShift action_21
action_52 (36) = happyShift action_22
action_52 (39) = happyShift action_23
action_52 (41) = happyShift action_24
action_52 (46) = happyShift action_25
action_52 (5) = happyGoto action_69
action_52 (6) = happyGoto action_4
action_52 (7) = happyGoto action_5
action_52 (8) = happyGoto action_6
action_52 (10) = happyGoto action_7
action_52 (11) = happyGoto action_8
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (12) = happyShift action_9
action_53 (13) = happyShift action_10
action_53 (14) = happyShift action_11
action_53 (15) = happyShift action_12
action_53 (16) = happyShift action_13
action_53 (17) = happyShift action_14
action_53 (18) = happyShift action_15
action_53 (21) = happyShift action_16
action_53 (22) = happyShift action_17
action_53 (23) = happyShift action_18
action_53 (24) = happyShift action_19
action_53 (25) = happyShift action_20
action_53 (26) = happyShift action_21
action_53 (36) = happyShift action_22
action_53 (39) = happyShift action_23
action_53 (41) = happyShift action_24
action_53 (46) = happyShift action_25
action_53 (5) = happyGoto action_68
action_53 (6) = happyGoto action_4
action_53 (7) = happyGoto action_5
action_53 (8) = happyGoto action_6
action_53 (10) = happyGoto action_7
action_53 (11) = happyGoto action_8
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (12) = happyShift action_9
action_54 (13) = happyShift action_10
action_54 (14) = happyShift action_11
action_54 (15) = happyShift action_12
action_54 (16) = happyShift action_13
action_54 (17) = happyShift action_14
action_54 (18) = happyShift action_15
action_54 (21) = happyShift action_16
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (25) = happyShift action_20
action_54 (26) = happyShift action_21
action_54 (36) = happyShift action_22
action_54 (39) = happyShift action_23
action_54 (41) = happyShift action_24
action_54 (46) = happyShift action_25
action_54 (5) = happyGoto action_67
action_54 (6) = happyGoto action_4
action_54 (7) = happyGoto action_5
action_54 (8) = happyGoto action_6
action_54 (10) = happyGoto action_7
action_54 (11) = happyGoto action_8
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (12) = happyShift action_9
action_55 (13) = happyShift action_10
action_55 (14) = happyShift action_11
action_55 (15) = happyShift action_12
action_55 (16) = happyShift action_13
action_55 (17) = happyShift action_14
action_55 (18) = happyShift action_15
action_55 (21) = happyShift action_16
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (26) = happyShift action_21
action_55 (36) = happyShift action_22
action_55 (39) = happyShift action_23
action_55 (41) = happyShift action_24
action_55 (46) = happyShift action_25
action_55 (5) = happyGoto action_66
action_55 (6) = happyGoto action_4
action_55 (7) = happyGoto action_5
action_55 (8) = happyGoto action_6
action_55 (10) = happyGoto action_7
action_55 (11) = happyGoto action_8
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (12) = happyShift action_9
action_56 (13) = happyShift action_10
action_56 (14) = happyShift action_11
action_56 (15) = happyShift action_12
action_56 (16) = happyShift action_13
action_56 (17) = happyShift action_14
action_56 (18) = happyShift action_15
action_56 (21) = happyShift action_16
action_56 (22) = happyShift action_17
action_56 (23) = happyShift action_18
action_56 (24) = happyShift action_19
action_56 (25) = happyShift action_20
action_56 (26) = happyShift action_21
action_56 (36) = happyShift action_22
action_56 (39) = happyShift action_23
action_56 (41) = happyShift action_24
action_56 (46) = happyShift action_25
action_56 (5) = happyGoto action_65
action_56 (6) = happyGoto action_4
action_56 (7) = happyGoto action_5
action_56 (8) = happyGoto action_6
action_56 (9) = happyGoto action_28
action_56 (10) = happyGoto action_7
action_56 (11) = happyGoto action_8
action_56 _ = happyReduce_42

action_57 (12) = happyShift action_9
action_57 (13) = happyShift action_10
action_57 (14) = happyShift action_11
action_57 (15) = happyShift action_12
action_57 (16) = happyShift action_13
action_57 (17) = happyShift action_14
action_57 (18) = happyShift action_15
action_57 (21) = happyShift action_16
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (25) = happyShift action_20
action_57 (26) = happyShift action_21
action_57 (36) = happyShift action_22
action_57 (39) = happyShift action_23
action_57 (41) = happyShift action_24
action_57 (46) = happyShift action_25
action_57 (5) = happyGoto action_64
action_57 (6) = happyGoto action_4
action_57 (7) = happyGoto action_5
action_57 (8) = happyGoto action_6
action_57 (10) = happyGoto action_7
action_57 (11) = happyGoto action_8
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (12) = happyShift action_9
action_58 (13) = happyShift action_10
action_58 (14) = happyShift action_11
action_58 (15) = happyShift action_12
action_58 (16) = happyShift action_13
action_58 (17) = happyShift action_14
action_58 (18) = happyShift action_15
action_58 (21) = happyShift action_16
action_58 (22) = happyShift action_17
action_58 (23) = happyShift action_18
action_58 (24) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (26) = happyShift action_21
action_58 (36) = happyShift action_22
action_58 (39) = happyShift action_23
action_58 (41) = happyShift action_24
action_58 (46) = happyShift action_25
action_58 (5) = happyGoto action_63
action_58 (6) = happyGoto action_4
action_58 (7) = happyGoto action_5
action_58 (8) = happyGoto action_6
action_58 (10) = happyGoto action_7
action_58 (11) = happyGoto action_8
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (12) = happyShift action_9
action_59 (13) = happyShift action_10
action_59 (14) = happyShift action_11
action_59 (15) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (17) = happyShift action_14
action_59 (18) = happyShift action_15
action_59 (21) = happyShift action_16
action_59 (22) = happyShift action_17
action_59 (23) = happyShift action_18
action_59 (24) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (26) = happyShift action_21
action_59 (36) = happyShift action_22
action_59 (39) = happyShift action_23
action_59 (41) = happyShift action_24
action_59 (46) = happyShift action_25
action_59 (5) = happyGoto action_62
action_59 (6) = happyGoto action_4
action_59 (7) = happyGoto action_5
action_59 (8) = happyGoto action_6
action_59 (10) = happyGoto action_7
action_59 (11) = happyGoto action_8
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (12) = happyShift action_9
action_60 (13) = happyShift action_10
action_60 (14) = happyShift action_11
action_60 (15) = happyShift action_12
action_60 (16) = happyShift action_13
action_60 (17) = happyShift action_14
action_60 (18) = happyShift action_15
action_60 (21) = happyShift action_16
action_60 (22) = happyShift action_17
action_60 (23) = happyShift action_18
action_60 (24) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (26) = happyShift action_21
action_60 (36) = happyShift action_22
action_60 (39) = happyShift action_23
action_60 (41) = happyShift action_24
action_60 (46) = happyShift action_25
action_60 (5) = happyGoto action_61
action_60 (6) = happyGoto action_4
action_60 (7) = happyGoto action_5
action_60 (8) = happyGoto action_6
action_60 (10) = happyGoto action_7
action_60 (11) = happyGoto action_8
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (31) = happyShift action_49
action_61 (32) = happyShift action_50
action_61 (33) = happyShift action_51
action_61 (35) = happyShift action_52
action_61 (36) = happyShift action_81
action_61 (37) = happyShift action_54
action_61 (38) = happyShift action_55
action_61 (41) = happyShift action_82
action_61 (47) = happyShift action_57
action_61 (48) = happyShift action_58
action_61 _ = happyReduce_35

action_62 (31) = happyShift action_49
action_62 (32) = happyShift action_50
action_62 (33) = happyShift action_51
action_62 (35) = happyShift action_52
action_62 (36) = happyShift action_81
action_62 (37) = happyShift action_54
action_62 (38) = happyShift action_55
action_62 (41) = happyShift action_82
action_62 (47) = happyShift action_57
action_62 (48) = happyShift action_58
action_62 _ = happyReduce_34

action_63 (31) = happyShift action_49
action_63 (32) = happyShift action_50
action_63 (33) = happyShift action_51
action_63 (41) = happyShift action_82
action_63 (47) = happyShift action_57
action_63 _ = happyReduce_33

action_64 (41) = happyShift action_82
action_64 (47) = happyShift action_57
action_64 _ = happyReduce_32

action_65 (27) = happyShift action_45
action_65 (28) = happyShift action_46
action_65 (29) = happyShift action_47
action_65 (30) = happyShift action_48
action_65 (31) = happyShift action_49
action_65 (32) = happyShift action_50
action_65 (33) = happyShift action_51
action_65 (35) = happyShift action_52
action_65 (36) = happyShift action_81
action_65 (37) = happyShift action_54
action_65 (38) = happyShift action_55
action_65 (41) = happyShift action_82
action_65 (42) = happyShift action_98
action_65 (45) = happyShift action_88
action_65 (47) = happyShift action_57
action_65 (48) = happyShift action_58
action_65 (49) = happyShift action_59
action_65 (50) = happyShift action_60
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (31) = happyShift action_49
action_66 (32) = happyShift action_50
action_66 (33) = happyShift action_51
action_66 (41) = happyShift action_82
action_66 (47) = happyShift action_57
action_66 _ = happyReduce_27

action_67 (31) = happyShift action_49
action_67 (32) = happyShift action_50
action_67 (33) = happyShift action_51
action_67 (41) = happyShift action_82
action_67 (47) = happyShift action_57
action_67 _ = happyReduce_26

action_68 (31) = happyShift action_49
action_68 (32) = happyShift action_50
action_68 (33) = happyShift action_51
action_68 (41) = happyShift action_82
action_68 (47) = happyShift action_57
action_68 _ = happyReduce_36

action_69 (31) = happyShift action_49
action_69 (32) = happyShift action_50
action_69 (33) = happyShift action_51
action_69 (37) = happyShift action_54
action_69 (38) = happyShift action_55
action_69 (41) = happyShift action_82
action_69 (47) = happyShift action_57
action_69 (48) = happyShift action_58
action_69 _ = happyReduce_24

action_70 (31) = happyShift action_49
action_70 (33) = happyShift action_51
action_70 (41) = happyShift action_82
action_70 (47) = happyShift action_57
action_70 _ = happyReduce_20

action_71 (31) = happyShift action_49
action_71 (33) = happyShift action_51
action_71 (41) = happyShift action_82
action_71 (47) = happyShift action_57
action_71 _ = happyReduce_19

action_72 (31) = happyShift action_49
action_72 (33) = happyShift action_51
action_72 (41) = happyShift action_82
action_72 (47) = happyShift action_57
action_72 _ = happyReduce_18

action_73 (27) = happyShift action_45
action_73 (28) = happyShift action_46
action_73 (31) = happyShift action_49
action_73 (32) = happyShift action_50
action_73 (33) = happyShift action_51
action_73 (35) = happyShift action_52
action_73 (36) = happyShift action_81
action_73 (37) = happyShift action_54
action_73 (38) = happyShift action_55
action_73 (41) = happyShift action_82
action_73 (47) = happyShift action_57
action_73 (48) = happyShift action_58
action_73 (49) = happyShift action_59
action_73 (50) = happyShift action_60
action_73 _ = happyReduce_17

action_74 (27) = happyShift action_45
action_74 (28) = happyShift action_46
action_74 (31) = happyShift action_49
action_74 (32) = happyShift action_50
action_74 (33) = happyShift action_51
action_74 (35) = happyShift action_52
action_74 (36) = happyShift action_81
action_74 (37) = happyShift action_54
action_74 (38) = happyShift action_55
action_74 (41) = happyShift action_82
action_74 (47) = happyShift action_57
action_74 (48) = happyShift action_58
action_74 (49) = happyShift action_59
action_74 (50) = happyShift action_60
action_74 _ = happyReduce_16

action_75 (31) = happyShift action_49
action_75 (32) = happyShift action_50
action_75 (33) = happyShift action_51
action_75 (35) = happyShift action_52
action_75 (36) = happyShift action_81
action_75 (37) = happyShift action_54
action_75 (38) = happyShift action_55
action_75 (41) = happyShift action_82
action_75 (47) = happyShift action_57
action_75 (48) = happyShift action_58
action_75 _ = happyReduce_15

action_76 (31) = happyShift action_49
action_76 (32) = happyShift action_50
action_76 (33) = happyShift action_51
action_76 (35) = happyShift action_52
action_76 (36) = happyShift action_81
action_76 (37) = happyShift action_54
action_76 (38) = happyShift action_55
action_76 (41) = happyShift action_82
action_76 (47) = happyShift action_57
action_76 (48) = happyShift action_58
action_76 _ = happyReduce_14

action_77 (12) = happyShift action_9
action_77 (13) = happyShift action_10
action_77 (14) = happyShift action_11
action_77 (15) = happyShift action_12
action_77 (16) = happyShift action_13
action_77 (17) = happyShift action_14
action_77 (18) = happyShift action_15
action_77 (21) = happyShift action_16
action_77 (22) = happyShift action_17
action_77 (23) = happyShift action_18
action_77 (24) = happyShift action_19
action_77 (25) = happyShift action_20
action_77 (26) = happyShift action_21
action_77 (36) = happyShift action_22
action_77 (39) = happyShift action_23
action_77 (41) = happyShift action_24
action_77 (46) = happyShift action_25
action_77 (4) = happyGoto action_97
action_77 (5) = happyGoto action_3
action_77 (6) = happyGoto action_4
action_77 (7) = happyGoto action_5
action_77 (8) = happyGoto action_6
action_77 (10) = happyGoto action_7
action_77 (11) = happyGoto action_8
action_77 _ = happyReduce_1

action_78 (27) = happyShift action_45
action_78 (28) = happyShift action_46
action_78 (29) = happyShift action_47
action_78 (30) = happyShift action_48
action_78 (31) = happyShift action_49
action_78 (32) = happyShift action_50
action_78 (33) = happyShift action_51
action_78 (35) = happyShift action_52
action_78 (36) = happyShift action_81
action_78 (37) = happyShift action_54
action_78 (38) = happyShift action_55
action_78 (41) = happyShift action_82
action_78 (43) = happyShift action_96
action_78 (47) = happyShift action_57
action_78 (48) = happyShift action_58
action_78 (49) = happyShift action_59
action_78 (50) = happyShift action_60
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (12) = happyShift action_9
action_79 (13) = happyShift action_10
action_79 (14) = happyShift action_11
action_79 (15) = happyShift action_12
action_79 (16) = happyShift action_13
action_79 (17) = happyShift action_14
action_79 (18) = happyShift action_15
action_79 (21) = happyShift action_16
action_79 (22) = happyShift action_17
action_79 (23) = happyShift action_18
action_79 (24) = happyShift action_19
action_79 (25) = happyShift action_20
action_79 (26) = happyShift action_21
action_79 (36) = happyShift action_22
action_79 (39) = happyShift action_23
action_79 (41) = happyShift action_24
action_79 (46) = happyShift action_25
action_79 (4) = happyGoto action_95
action_79 (5) = happyGoto action_3
action_79 (6) = happyGoto action_4
action_79 (7) = happyGoto action_5
action_79 (8) = happyGoto action_6
action_79 (10) = happyGoto action_7
action_79 (11) = happyGoto action_8
action_79 _ = happyReduce_1

action_80 (27) = happyShift action_45
action_80 (28) = happyShift action_46
action_80 (29) = happyShift action_47
action_80 (30) = happyShift action_48
action_80 (31) = happyShift action_49
action_80 (32) = happyShift action_50
action_80 (33) = happyShift action_51
action_80 (35) = happyShift action_52
action_80 (36) = happyShift action_81
action_80 (37) = happyShift action_54
action_80 (38) = happyShift action_55
action_80 (41) = happyShift action_82
action_80 (44) = happyShift action_94
action_80 (47) = happyShift action_57
action_80 (48) = happyShift action_58
action_80 (49) = happyShift action_59
action_80 (50) = happyShift action_60
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (12) = happyShift action_9
action_81 (13) = happyShift action_10
action_81 (14) = happyShift action_11
action_81 (15) = happyShift action_12
action_81 (16) = happyShift action_13
action_81 (17) = happyShift action_14
action_81 (18) = happyShift action_15
action_81 (21) = happyShift action_16
action_81 (22) = happyShift action_17
action_81 (23) = happyShift action_18
action_81 (24) = happyShift action_19
action_81 (25) = happyShift action_20
action_81 (26) = happyShift action_21
action_81 (36) = happyShift action_22
action_81 (39) = happyShift action_23
action_81 (41) = happyShift action_24
action_81 (46) = happyShift action_25
action_81 (5) = happyGoto action_93
action_81 (6) = happyGoto action_4
action_81 (7) = happyGoto action_5
action_81 (8) = happyGoto action_6
action_81 (10) = happyGoto action_7
action_81 (11) = happyGoto action_8
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (12) = happyShift action_9
action_82 (13) = happyShift action_10
action_82 (14) = happyShift action_11
action_82 (15) = happyShift action_12
action_82 (16) = happyShift action_13
action_82 (17) = happyShift action_14
action_82 (18) = happyShift action_15
action_82 (21) = happyShift action_16
action_82 (22) = happyShift action_17
action_82 (23) = happyShift action_18
action_82 (24) = happyShift action_19
action_82 (25) = happyShift action_20
action_82 (26) = happyShift action_21
action_82 (36) = happyShift action_22
action_82 (39) = happyShift action_23
action_82 (41) = happyShift action_24
action_82 (46) = happyShift action_25
action_82 (5) = happyGoto action_92
action_82 (6) = happyGoto action_4
action_82 (7) = happyGoto action_5
action_82 (8) = happyGoto action_6
action_82 (10) = happyGoto action_7
action_82 (11) = happyGoto action_8
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (12) = happyShift action_9
action_83 (13) = happyShift action_10
action_83 (14) = happyShift action_11
action_83 (15) = happyShift action_12
action_83 (16) = happyShift action_13
action_83 (17) = happyShift action_14
action_83 (18) = happyShift action_15
action_83 (21) = happyShift action_16
action_83 (22) = happyShift action_17
action_83 (23) = happyShift action_18
action_83 (24) = happyShift action_19
action_83 (25) = happyShift action_20
action_83 (26) = happyShift action_21
action_83 (36) = happyShift action_22
action_83 (39) = happyShift action_23
action_83 (41) = happyShift action_24
action_83 (46) = happyShift action_25
action_83 (4) = happyGoto action_91
action_83 (5) = happyGoto action_3
action_83 (6) = happyGoto action_4
action_83 (7) = happyGoto action_5
action_83 (8) = happyGoto action_6
action_83 (10) = happyGoto action_7
action_83 (11) = happyGoto action_8
action_83 _ = happyReduce_1

action_84 (12) = happyShift action_9
action_84 (13) = happyShift action_10
action_84 (14) = happyShift action_11
action_84 (15) = happyShift action_12
action_84 (16) = happyShift action_13
action_84 (17) = happyShift action_14
action_84 (18) = happyShift action_15
action_84 (21) = happyShift action_16
action_84 (22) = happyShift action_17
action_84 (23) = happyShift action_18
action_84 (24) = happyShift action_19
action_84 (25) = happyShift action_20
action_84 (26) = happyShift action_21
action_84 (36) = happyShift action_22
action_84 (39) = happyShift action_23
action_84 (41) = happyShift action_24
action_84 (46) = happyShift action_25
action_84 (4) = happyGoto action_90
action_84 (5) = happyGoto action_3
action_84 (6) = happyGoto action_4
action_84 (7) = happyGoto action_5
action_84 (8) = happyGoto action_6
action_84 (10) = happyGoto action_7
action_84 (11) = happyGoto action_8
action_84 _ = happyReduce_1

action_85 (27) = happyShift action_45
action_85 (28) = happyShift action_46
action_85 (29) = happyShift action_47
action_85 (30) = happyShift action_48
action_85 (31) = happyShift action_49
action_85 (32) = happyShift action_50
action_85 (33) = happyShift action_51
action_85 (35) = happyShift action_52
action_85 (36) = happyShift action_81
action_85 (37) = happyShift action_54
action_85 (38) = happyShift action_55
action_85 (41) = happyShift action_82
action_85 (47) = happyShift action_57
action_85 (48) = happyShift action_58
action_85 (49) = happyShift action_59
action_85 (50) = happyShift action_60
action_85 _ = happyReduce_48

action_86 _ = happyReduce_37

action_87 _ = happyReduce_13

action_88 (12) = happyShift action_9
action_88 (13) = happyShift action_10
action_88 (14) = happyShift action_11
action_88 (15) = happyShift action_12
action_88 (16) = happyShift action_13
action_88 (17) = happyShift action_14
action_88 (18) = happyShift action_15
action_88 (21) = happyShift action_16
action_88 (22) = happyShift action_17
action_88 (23) = happyShift action_18
action_88 (24) = happyShift action_19
action_88 (25) = happyShift action_20
action_88 (26) = happyShift action_21
action_88 (36) = happyShift action_22
action_88 (39) = happyShift action_23
action_88 (41) = happyShift action_24
action_88 (46) = happyShift action_25
action_88 (5) = happyGoto action_27
action_88 (6) = happyGoto action_4
action_88 (7) = happyGoto action_5
action_88 (8) = happyGoto action_6
action_88 (9) = happyGoto action_89
action_88 (10) = happyGoto action_7
action_88 (11) = happyGoto action_8
action_88 _ = happyReduce_42

action_89 _ = happyReduce_44

action_90 (44) = happyShift action_103
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (44) = happyShift action_102
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (27) = happyShift action_45
action_92 (28) = happyShift action_46
action_92 (29) = happyShift action_47
action_92 (30) = happyShift action_48
action_92 (31) = happyShift action_49
action_92 (32) = happyShift action_50
action_92 (33) = happyShift action_51
action_92 (35) = happyShift action_52
action_92 (36) = happyShift action_81
action_92 (37) = happyShift action_54
action_92 (38) = happyShift action_55
action_92 (41) = happyShift action_82
action_92 (42) = happyShift action_98
action_92 (47) = happyShift action_57
action_92 (48) = happyShift action_58
action_92 (49) = happyShift action_59
action_92 (50) = happyShift action_60
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (31) = happyShift action_49
action_93 (32) = happyShift action_50
action_93 (33) = happyShift action_51
action_93 (37) = happyShift action_54
action_93 (38) = happyShift action_55
action_93 (41) = happyShift action_82
action_93 (47) = happyShift action_57
action_93 (48) = happyShift action_58
action_93 _ = happyReduce_25

action_94 _ = happyReduce_29

action_95 (44) = happyShift action_101
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (12) = happyShift action_9
action_96 (13) = happyShift action_10
action_96 (14) = happyShift action_11
action_96 (15) = happyShift action_12
action_96 (16) = happyShift action_13
action_96 (17) = happyShift action_14
action_96 (18) = happyShift action_15
action_96 (21) = happyShift action_16
action_96 (22) = happyShift action_17
action_96 (23) = happyShift action_18
action_96 (24) = happyShift action_19
action_96 (25) = happyShift action_20
action_96 (26) = happyShift action_21
action_96 (36) = happyShift action_22
action_96 (39) = happyShift action_23
action_96 (41) = happyShift action_24
action_96 (46) = happyShift action_25
action_96 (4) = happyGoto action_100
action_96 (5) = happyGoto action_3
action_96 (6) = happyGoto action_4
action_96 (7) = happyGoto action_5
action_96 (8) = happyGoto action_6
action_96 (10) = happyGoto action_7
action_96 (11) = happyGoto action_8
action_96 _ = happyReduce_1

action_97 (44) = happyShift action_99
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_28

action_99 _ = happyReduce_40

action_100 (44) = happyShift action_104
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_41

action_102 _ = happyReduce_4

action_103 _ = happyReduce_38

action_104 _ = happyReduce_39

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 5 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (HasNext happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Next happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Size happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Int' happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Boolean' happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Stream happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LE happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (GE happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (NE happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Take happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  5 happyReduction_21
happyReduction_21 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (Var happy_var_1 happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (VarRef happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 5 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_2  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Print happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  5 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  5 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  5 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Negate happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  5 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 7 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Elif happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 5 8 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 5 8 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_0  9 happyReduction_42
happyReduction_42  =  HappyAbsSyn9
		 ([]
	)

happyReduce_43 = happySpecReduce_1  9 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  9 happyReduction_44
happyReduction_44 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 : happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  10 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn10
		 (TypeInt
	)

happyReduce_46 = happySpecReduce_1  10 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn10
		 (TypeBoolean
	)

happyReduce_47 = happySpecReduce_1  10 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn10
		 (TypeStream
	)

happyReduce_48 = happySpecReduce_3  11 happyReduction_48
happyReduction_48 (HappyAbsSyn5  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn11
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 12;
	TokenStreamType _ -> cont 13;
	TokenBoolType _ -> cont 14;
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

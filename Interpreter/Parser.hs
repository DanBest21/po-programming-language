{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,610) ([64512,252,2130,32768,0,0,61440,1011,8520,0,63488,32891,7,48,0,0,64,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,40832,16415,266,16128,32831,532,32256,126,1065,64512,252,2130,0,0,0,0,0,0,0,0,516,49152,4047,34080,32768,8095,2624,1,16191,5248,2,32382,10496,4,0,112,16,0,7934,488,0,0,2,0,31736,1921,0,1792,256,40832,16415,266,16128,32831,532,0,0,0,0,0,0,0,0,0,0,64512,50237,57347,2023,17040,0,0,0,0,0,16,0,0,16384,0,32382,10496,4,0,0,1,63992,41985,16,62448,18435,33,59360,36871,66,53184,8207,133,40832,16415,266,16128,32831,532,32256,126,1065,64512,252,2130,63488,505,4260,61440,1011,8520,57344,2023,17040,49152,4047,34080,32768,8095,2624,1,16191,5248,2,32382,10496,4,0,3967,241,63992,41985,16,0,15808,192,0,31616,384,0,1792,256,0,0,512,0,7168,1024,0,14336,2048,0,28672,12300,0,57344,24600,0,16384,16385,0,32768,32770,0,0,5,1,24576,494,30,49152,988,60,0,1976,24,0,3952,48,63992,41985,16,0,15868,964,59360,36871,66,0,63472,3872,40832,16415,266,0,57280,15395,0,49024,30727,0,0,0,0,0,0,61440,1011,8520,0,63488,32891,7,0,0,0,57344,16879,30,0,0,0,32768,1983,121,64764,20992,8,0,7934,484,0,15868,968,0,0,0,0,0,0,0,61408,7745,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Exp","If","Elif","Else","StreamLiteral","Type","Assign","int_type","stream_type","bool_type","input","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 49
        bit_end = (st + 1) * 49
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..48]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_9
action_0 (12) = happyShift action_10
action_0 (13) = happyShift action_11
action_0 (14) = happyShift action_12
action_0 (15) = happyShift action_2
action_0 (16) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (23) = happyShift action_18
action_0 (24) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (37) = happyShift action_21
action_0 (39) = happyShift action_22
action_0 (44) = happyShift action_23
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_9
action_2 (12) = happyShift action_10
action_2 (13) = happyShift action_11
action_2 (14) = happyShift action_12
action_2 (15) = happyShift action_2
action_2 (16) = happyShift action_13
action_2 (19) = happyShift action_14
action_2 (20) = happyShift action_15
action_2 (21) = happyShift action_16
action_2 (22) = happyShift action_17
action_2 (23) = happyShift action_18
action_2 (24) = happyShift action_19
action_2 (34) = happyShift action_20
action_2 (37) = happyShift action_21
action_2 (39) = happyShift action_22
action_2 (44) = happyShift action_23
action_2 (4) = happyGoto action_56
action_2 (5) = happyGoto action_4
action_2 (6) = happyGoto action_5
action_2 (7) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (10) = happyGoto action_8
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (25) = happyShift action_41
action_3 (26) = happyShift action_42
action_3 (27) = happyShift action_43
action_3 (28) = happyShift action_44
action_3 (29) = happyShift action_45
action_3 (30) = happyShift action_46
action_3 (31) = happyShift action_47
action_3 (33) = happyShift action_48
action_3 (34) = happyShift action_49
action_3 (35) = happyShift action_50
action_3 (36) = happyShift action_51
action_3 (45) = happyShift action_52
action_3 (46) = happyShift action_53
action_3 (47) = happyShift action_54
action_3 (48) = happyShift action_55
action_3 (49) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (17) = happyShift action_39
action_4 (18) = happyShift action_40
action_4 _ = happyReduce_2

action_5 (18) = happyShift action_38
action_5 _ = happyReduce_3

action_6 _ = happyReduce_4

action_7 (24) = happyShift action_37
action_7 (10) = happyGoto action_36
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_19

action_9 _ = happyReduce_40

action_10 _ = happyReduce_42

action_11 _ = happyReduce_41

action_12 (41) = happyShift action_35
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_9
action_13 (12) = happyShift action_10
action_13 (13) = happyShift action_11
action_13 (14) = happyShift action_12
action_13 (15) = happyShift action_2
action_13 (16) = happyShift action_13
action_13 (19) = happyShift action_14
action_13 (20) = happyShift action_15
action_13 (21) = happyShift action_16
action_13 (22) = happyShift action_17
action_13 (23) = happyShift action_18
action_13 (24) = happyShift action_19
action_13 (34) = happyShift action_20
action_13 (37) = happyShift action_21
action_13 (39) = happyShift action_22
action_13 (44) = happyShift action_23
action_13 (4) = happyGoto action_34
action_13 (5) = happyGoto action_4
action_13 (6) = happyGoto action_5
action_13 (7) = happyGoto action_6
action_13 (9) = happyGoto action_7
action_13 (10) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_9
action_14 (12) = happyShift action_10
action_14 (13) = happyShift action_11
action_14 (14) = happyShift action_12
action_14 (15) = happyShift action_2
action_14 (16) = happyShift action_13
action_14 (19) = happyShift action_14
action_14 (20) = happyShift action_15
action_14 (21) = happyShift action_16
action_14 (22) = happyShift action_17
action_14 (23) = happyShift action_18
action_14 (24) = happyShift action_19
action_14 (34) = happyShift action_20
action_14 (37) = happyShift action_21
action_14 (39) = happyShift action_22
action_14 (44) = happyShift action_23
action_14 (4) = happyGoto action_33
action_14 (5) = happyGoto action_4
action_14 (6) = happyGoto action_5
action_14 (7) = happyGoto action_6
action_14 (9) = happyGoto action_7
action_14 (10) = happyGoto action_8
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_9
action_15 (12) = happyShift action_10
action_15 (13) = happyShift action_11
action_15 (14) = happyShift action_12
action_15 (15) = happyShift action_2
action_15 (16) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (20) = happyShift action_15
action_15 (21) = happyShift action_16
action_15 (22) = happyShift action_17
action_15 (23) = happyShift action_18
action_15 (24) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (37) = happyShift action_21
action_15 (39) = happyShift action_22
action_15 (44) = happyShift action_23
action_15 (4) = happyGoto action_32
action_15 (5) = happyGoto action_4
action_15 (6) = happyGoto action_5
action_15 (7) = happyGoto action_6
action_15 (9) = happyGoto action_7
action_15 (10) = happyGoto action_8
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_9
action_16 (12) = happyShift action_10
action_16 (13) = happyShift action_11
action_16 (14) = happyShift action_12
action_16 (15) = happyShift action_2
action_16 (16) = happyShift action_13
action_16 (19) = happyShift action_14
action_16 (20) = happyShift action_15
action_16 (21) = happyShift action_16
action_16 (22) = happyShift action_17
action_16 (23) = happyShift action_18
action_16 (24) = happyShift action_19
action_16 (34) = happyShift action_20
action_16 (37) = happyShift action_21
action_16 (39) = happyShift action_22
action_16 (44) = happyShift action_23
action_16 (4) = happyGoto action_31
action_16 (5) = happyGoto action_4
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 (9) = happyGoto action_7
action_16 (10) = happyGoto action_8
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_8

action_18 _ = happyReduce_9

action_19 (32) = happyShift action_29
action_19 (39) = happyShift action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_9
action_20 (12) = happyShift action_10
action_20 (13) = happyShift action_11
action_20 (14) = happyShift action_12
action_20 (15) = happyShift action_2
action_20 (16) = happyShift action_13
action_20 (19) = happyShift action_14
action_20 (20) = happyShift action_15
action_20 (21) = happyShift action_16
action_20 (22) = happyShift action_17
action_20 (23) = happyShift action_18
action_20 (24) = happyShift action_19
action_20 (34) = happyShift action_20
action_20 (37) = happyShift action_21
action_20 (39) = happyShift action_22
action_20 (44) = happyShift action_23
action_20 (4) = happyGoto action_28
action_20 (5) = happyGoto action_4
action_20 (6) = happyGoto action_5
action_20 (7) = happyGoto action_6
action_20 (9) = happyGoto action_7
action_20 (10) = happyGoto action_8
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_9
action_21 (12) = happyShift action_10
action_21 (13) = happyShift action_11
action_21 (14) = happyShift action_12
action_21 (15) = happyShift action_2
action_21 (16) = happyShift action_13
action_21 (19) = happyShift action_14
action_21 (20) = happyShift action_15
action_21 (21) = happyShift action_16
action_21 (22) = happyShift action_17
action_21 (23) = happyShift action_18
action_21 (24) = happyShift action_19
action_21 (34) = happyShift action_20
action_21 (37) = happyShift action_21
action_21 (39) = happyShift action_22
action_21 (44) = happyShift action_23
action_21 (4) = happyGoto action_27
action_21 (5) = happyGoto action_4
action_21 (6) = happyGoto action_5
action_21 (7) = happyGoto action_6
action_21 (9) = happyGoto action_7
action_21 (10) = happyGoto action_8
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_9
action_22 (12) = happyShift action_10
action_22 (13) = happyShift action_11
action_22 (14) = happyShift action_12
action_22 (15) = happyShift action_2
action_22 (16) = happyShift action_13
action_22 (19) = happyShift action_14
action_22 (20) = happyShift action_15
action_22 (21) = happyShift action_16
action_22 (22) = happyShift action_17
action_22 (23) = happyShift action_18
action_22 (24) = happyShift action_19
action_22 (34) = happyShift action_20
action_22 (37) = happyShift action_21
action_22 (39) = happyShift action_22
action_22 (44) = happyShift action_23
action_22 (4) = happyGoto action_25
action_22 (5) = happyGoto action_4
action_22 (6) = happyGoto action_5
action_22 (7) = happyGoto action_6
action_22 (8) = happyGoto action_26
action_22 (9) = happyGoto action_7
action_22 (10) = happyGoto action_8
action_22 _ = happyReduce_37

action_23 (11) = happyShift action_9
action_23 (12) = happyShift action_10
action_23 (13) = happyShift action_11
action_23 (14) = happyShift action_12
action_23 (15) = happyShift action_2
action_23 (16) = happyShift action_13
action_23 (19) = happyShift action_14
action_23 (20) = happyShift action_15
action_23 (21) = happyShift action_16
action_23 (22) = happyShift action_17
action_23 (23) = happyShift action_18
action_23 (24) = happyShift action_19
action_23 (34) = happyShift action_20
action_23 (37) = happyShift action_21
action_23 (39) = happyShift action_22
action_23 (44) = happyShift action_23
action_23 (4) = happyGoto action_24
action_23 (5) = happyGoto action_4
action_23 (6) = happyGoto action_5
action_23 (7) = happyGoto action_6
action_23 (9) = happyGoto action_7
action_23 (10) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (29) = happyShift action_45
action_24 (30) = happyShift action_46
action_24 (31) = happyShift action_47
action_24 (45) = happyShift action_52
action_24 _ = happyReduce_26

action_25 (25) = happyShift action_41
action_25 (26) = happyShift action_42
action_25 (27) = happyShift action_43
action_25 (28) = happyShift action_44
action_25 (29) = happyShift action_45
action_25 (30) = happyShift action_46
action_25 (31) = happyShift action_47
action_25 (33) = happyShift action_48
action_25 (34) = happyShift action_49
action_25 (35) = happyShift action_50
action_25 (36) = happyShift action_51
action_25 (43) = happyShift action_82
action_25 (45) = happyShift action_52
action_25 (46) = happyShift action_53
action_25 (47) = happyShift action_54
action_25 (48) = happyShift action_55
action_25 _ = happyReduce_38

action_26 (40) = happyShift action_81
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (25) = happyShift action_41
action_27 (26) = happyShift action_42
action_27 (27) = happyShift action_43
action_27 (28) = happyShift action_44
action_27 (29) = happyShift action_45
action_27 (30) = happyShift action_46
action_27 (31) = happyShift action_47
action_27 (33) = happyShift action_48
action_27 (34) = happyShift action_49
action_27 (35) = happyShift action_50
action_27 (36) = happyShift action_51
action_27 (38) = happyShift action_80
action_27 (45) = happyShift action_52
action_27 (46) = happyShift action_53
action_27 (47) = happyShift action_54
action_27 (48) = happyShift action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (29) = happyShift action_45
action_28 (30) = happyShift action_46
action_28 (31) = happyShift action_47
action_28 (45) = happyShift action_52
action_28 _ = happyReduce_31

action_29 (11) = happyShift action_9
action_29 (12) = happyShift action_10
action_29 (13) = happyShift action_11
action_29 (14) = happyShift action_12
action_29 (15) = happyShift action_2
action_29 (16) = happyShift action_13
action_29 (19) = happyShift action_14
action_29 (20) = happyShift action_15
action_29 (21) = happyShift action_16
action_29 (22) = happyShift action_17
action_29 (23) = happyShift action_18
action_29 (24) = happyShift action_19
action_29 (34) = happyShift action_20
action_29 (37) = happyShift action_21
action_29 (39) = happyShift action_22
action_29 (44) = happyShift action_23
action_29 (4) = happyGoto action_79
action_29 (5) = happyGoto action_4
action_29 (6) = happyGoto action_5
action_29 (7) = happyGoto action_6
action_29 (9) = happyGoto action_7
action_29 (10) = happyGoto action_8
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_9
action_30 (12) = happyShift action_10
action_30 (13) = happyShift action_11
action_30 (14) = happyShift action_12
action_30 (15) = happyShift action_2
action_30 (16) = happyShift action_13
action_30 (19) = happyShift action_14
action_30 (20) = happyShift action_15
action_30 (21) = happyShift action_16
action_30 (22) = happyShift action_17
action_30 (23) = happyShift action_18
action_30 (24) = happyShift action_19
action_30 (34) = happyShift action_20
action_30 (37) = happyShift action_21
action_30 (39) = happyShift action_22
action_30 (44) = happyShift action_23
action_30 (4) = happyGoto action_78
action_30 (5) = happyGoto action_4
action_30 (6) = happyGoto action_5
action_30 (7) = happyGoto action_6
action_30 (9) = happyGoto action_7
action_30 (10) = happyGoto action_8
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_7

action_32 _ = happyReduce_6

action_33 _ = happyReduce_5

action_34 (25) = happyShift action_41
action_34 (26) = happyShift action_42
action_34 (27) = happyShift action_43
action_34 (28) = happyShift action_44
action_34 (29) = happyShift action_45
action_34 (30) = happyShift action_46
action_34 (31) = happyShift action_47
action_34 (33) = happyShift action_48
action_34 (34) = happyShift action_49
action_34 (35) = happyShift action_50
action_34 (36) = happyShift action_51
action_34 (41) = happyShift action_77
action_34 (45) = happyShift action_52
action_34 (46) = happyShift action_53
action_34 (47) = happyShift action_54
action_34 (48) = happyShift action_55
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_9
action_35 (12) = happyShift action_10
action_35 (13) = happyShift action_11
action_35 (14) = happyShift action_12
action_35 (15) = happyShift action_2
action_35 (16) = happyShift action_13
action_35 (19) = happyShift action_14
action_35 (20) = happyShift action_15
action_35 (21) = happyShift action_16
action_35 (22) = happyShift action_17
action_35 (23) = happyShift action_18
action_35 (24) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (37) = happyShift action_21
action_35 (39) = happyShift action_22
action_35 (44) = happyShift action_23
action_35 (4) = happyGoto action_76
action_35 (5) = happyGoto action_4
action_35 (6) = happyGoto action_5
action_35 (7) = happyGoto action_6
action_35 (9) = happyGoto action_7
action_35 (10) = happyGoto action_8
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_18

action_37 (32) = happyShift action_29
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (41) = happyShift action_75
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (11) = happyShift action_9
action_39 (12) = happyShift action_10
action_39 (13) = happyShift action_11
action_39 (14) = happyShift action_12
action_39 (15) = happyShift action_2
action_39 (16) = happyShift action_13
action_39 (19) = happyShift action_14
action_39 (20) = happyShift action_15
action_39 (21) = happyShift action_16
action_39 (22) = happyShift action_17
action_39 (23) = happyShift action_18
action_39 (24) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (37) = happyShift action_21
action_39 (39) = happyShift action_22
action_39 (44) = happyShift action_23
action_39 (4) = happyGoto action_74
action_39 (5) = happyGoto action_4
action_39 (6) = happyGoto action_5
action_39 (7) = happyGoto action_6
action_39 (9) = happyGoto action_7
action_39 (10) = happyGoto action_8
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (41) = happyShift action_73
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_9
action_41 (12) = happyShift action_10
action_41 (13) = happyShift action_11
action_41 (14) = happyShift action_12
action_41 (15) = happyShift action_2
action_41 (16) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (20) = happyShift action_15
action_41 (21) = happyShift action_16
action_41 (22) = happyShift action_17
action_41 (23) = happyShift action_18
action_41 (24) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (37) = happyShift action_21
action_41 (39) = happyShift action_22
action_41 (44) = happyShift action_23
action_41 (4) = happyGoto action_72
action_41 (5) = happyGoto action_4
action_41 (6) = happyGoto action_5
action_41 (7) = happyGoto action_6
action_41 (9) = happyGoto action_7
action_41 (10) = happyGoto action_8
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_9
action_42 (12) = happyShift action_10
action_42 (13) = happyShift action_11
action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_2
action_42 (16) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (20) = happyShift action_15
action_42 (21) = happyShift action_16
action_42 (22) = happyShift action_17
action_42 (23) = happyShift action_18
action_42 (24) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (37) = happyShift action_21
action_42 (39) = happyShift action_22
action_42 (44) = happyShift action_23
action_42 (4) = happyGoto action_71
action_42 (5) = happyGoto action_4
action_42 (6) = happyGoto action_5
action_42 (7) = happyGoto action_6
action_42 (9) = happyGoto action_7
action_42 (10) = happyGoto action_8
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_9
action_43 (12) = happyShift action_10
action_43 (13) = happyShift action_11
action_43 (14) = happyShift action_12
action_43 (15) = happyShift action_2
action_43 (16) = happyShift action_13
action_43 (19) = happyShift action_14
action_43 (20) = happyShift action_15
action_43 (21) = happyShift action_16
action_43 (22) = happyShift action_17
action_43 (23) = happyShift action_18
action_43 (24) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (37) = happyShift action_21
action_43 (39) = happyShift action_22
action_43 (44) = happyShift action_23
action_43 (4) = happyGoto action_70
action_43 (5) = happyGoto action_4
action_43 (6) = happyGoto action_5
action_43 (7) = happyGoto action_6
action_43 (9) = happyGoto action_7
action_43 (10) = happyGoto action_8
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_9
action_44 (12) = happyShift action_10
action_44 (13) = happyShift action_11
action_44 (14) = happyShift action_12
action_44 (15) = happyShift action_2
action_44 (16) = happyShift action_13
action_44 (19) = happyShift action_14
action_44 (20) = happyShift action_15
action_44 (21) = happyShift action_16
action_44 (22) = happyShift action_17
action_44 (23) = happyShift action_18
action_44 (24) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (37) = happyShift action_21
action_44 (39) = happyShift action_22
action_44 (44) = happyShift action_23
action_44 (4) = happyGoto action_69
action_44 (5) = happyGoto action_4
action_44 (6) = happyGoto action_5
action_44 (7) = happyGoto action_6
action_44 (9) = happyGoto action_7
action_44 (10) = happyGoto action_8
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (11) = happyShift action_9
action_45 (12) = happyShift action_10
action_45 (13) = happyShift action_11
action_45 (14) = happyShift action_12
action_45 (15) = happyShift action_2
action_45 (16) = happyShift action_13
action_45 (19) = happyShift action_14
action_45 (20) = happyShift action_15
action_45 (21) = happyShift action_16
action_45 (22) = happyShift action_17
action_45 (23) = happyShift action_18
action_45 (24) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (37) = happyShift action_21
action_45 (39) = happyShift action_22
action_45 (44) = happyShift action_23
action_45 (4) = happyGoto action_68
action_45 (5) = happyGoto action_4
action_45 (6) = happyGoto action_5
action_45 (7) = happyGoto action_6
action_45 (9) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (11) = happyShift action_9
action_46 (12) = happyShift action_10
action_46 (13) = happyShift action_11
action_46 (14) = happyShift action_12
action_46 (15) = happyShift action_2
action_46 (16) = happyShift action_13
action_46 (19) = happyShift action_14
action_46 (20) = happyShift action_15
action_46 (21) = happyShift action_16
action_46 (22) = happyShift action_17
action_46 (23) = happyShift action_18
action_46 (24) = happyShift action_19
action_46 (34) = happyShift action_20
action_46 (37) = happyShift action_21
action_46 (39) = happyShift action_22
action_46 (44) = happyShift action_23
action_46 (4) = happyGoto action_67
action_46 (5) = happyGoto action_4
action_46 (6) = happyGoto action_5
action_46 (7) = happyGoto action_6
action_46 (9) = happyGoto action_7
action_46 (10) = happyGoto action_8
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_9
action_47 (12) = happyShift action_10
action_47 (13) = happyShift action_11
action_47 (14) = happyShift action_12
action_47 (15) = happyShift action_2
action_47 (16) = happyShift action_13
action_47 (19) = happyShift action_14
action_47 (20) = happyShift action_15
action_47 (21) = happyShift action_16
action_47 (22) = happyShift action_17
action_47 (23) = happyShift action_18
action_47 (24) = happyShift action_19
action_47 (34) = happyShift action_20
action_47 (37) = happyShift action_21
action_47 (39) = happyShift action_22
action_47 (44) = happyShift action_23
action_47 (4) = happyGoto action_66
action_47 (5) = happyGoto action_4
action_47 (6) = happyGoto action_5
action_47 (7) = happyGoto action_6
action_47 (9) = happyGoto action_7
action_47 (10) = happyGoto action_8
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_9
action_48 (12) = happyShift action_10
action_48 (13) = happyShift action_11
action_48 (14) = happyShift action_12
action_48 (15) = happyShift action_2
action_48 (16) = happyShift action_13
action_48 (19) = happyShift action_14
action_48 (20) = happyShift action_15
action_48 (21) = happyShift action_16
action_48 (22) = happyShift action_17
action_48 (23) = happyShift action_18
action_48 (24) = happyShift action_19
action_48 (34) = happyShift action_20
action_48 (37) = happyShift action_21
action_48 (39) = happyShift action_22
action_48 (44) = happyShift action_23
action_48 (4) = happyGoto action_65
action_48 (5) = happyGoto action_4
action_48 (6) = happyGoto action_5
action_48 (7) = happyGoto action_6
action_48 (9) = happyGoto action_7
action_48 (10) = happyGoto action_8
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_9
action_49 (12) = happyShift action_10
action_49 (13) = happyShift action_11
action_49 (14) = happyShift action_12
action_49 (15) = happyShift action_2
action_49 (16) = happyShift action_13
action_49 (19) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (22) = happyShift action_17
action_49 (23) = happyShift action_18
action_49 (24) = happyShift action_19
action_49 (34) = happyShift action_20
action_49 (37) = happyShift action_21
action_49 (39) = happyShift action_22
action_49 (44) = happyShift action_23
action_49 (4) = happyGoto action_64
action_49 (5) = happyGoto action_4
action_49 (6) = happyGoto action_5
action_49 (7) = happyGoto action_6
action_49 (9) = happyGoto action_7
action_49 (10) = happyGoto action_8
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (11) = happyShift action_9
action_50 (12) = happyShift action_10
action_50 (13) = happyShift action_11
action_50 (14) = happyShift action_12
action_50 (15) = happyShift action_2
action_50 (16) = happyShift action_13
action_50 (19) = happyShift action_14
action_50 (20) = happyShift action_15
action_50 (21) = happyShift action_16
action_50 (22) = happyShift action_17
action_50 (23) = happyShift action_18
action_50 (24) = happyShift action_19
action_50 (34) = happyShift action_20
action_50 (37) = happyShift action_21
action_50 (39) = happyShift action_22
action_50 (44) = happyShift action_23
action_50 (4) = happyGoto action_63
action_50 (5) = happyGoto action_4
action_50 (6) = happyGoto action_5
action_50 (7) = happyGoto action_6
action_50 (9) = happyGoto action_7
action_50 (10) = happyGoto action_8
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_9
action_51 (12) = happyShift action_10
action_51 (13) = happyShift action_11
action_51 (14) = happyShift action_12
action_51 (15) = happyShift action_2
action_51 (16) = happyShift action_13
action_51 (19) = happyShift action_14
action_51 (20) = happyShift action_15
action_51 (21) = happyShift action_16
action_51 (22) = happyShift action_17
action_51 (23) = happyShift action_18
action_51 (24) = happyShift action_19
action_51 (34) = happyShift action_20
action_51 (37) = happyShift action_21
action_51 (39) = happyShift action_22
action_51 (44) = happyShift action_23
action_51 (4) = happyGoto action_62
action_51 (5) = happyGoto action_4
action_51 (6) = happyGoto action_5
action_51 (7) = happyGoto action_6
action_51 (9) = happyGoto action_7
action_51 (10) = happyGoto action_8
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_9
action_52 (12) = happyShift action_10
action_52 (13) = happyShift action_11
action_52 (14) = happyShift action_12
action_52 (15) = happyShift action_2
action_52 (16) = happyShift action_13
action_52 (19) = happyShift action_14
action_52 (20) = happyShift action_15
action_52 (21) = happyShift action_16
action_52 (22) = happyShift action_17
action_52 (23) = happyShift action_18
action_52 (24) = happyShift action_19
action_52 (34) = happyShift action_20
action_52 (37) = happyShift action_21
action_52 (39) = happyShift action_22
action_52 (44) = happyShift action_23
action_52 (4) = happyGoto action_61
action_52 (5) = happyGoto action_4
action_52 (6) = happyGoto action_5
action_52 (7) = happyGoto action_6
action_52 (9) = happyGoto action_7
action_52 (10) = happyGoto action_8
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (11) = happyShift action_9
action_53 (12) = happyShift action_10
action_53 (13) = happyShift action_11
action_53 (14) = happyShift action_12
action_53 (15) = happyShift action_2
action_53 (16) = happyShift action_13
action_53 (19) = happyShift action_14
action_53 (20) = happyShift action_15
action_53 (21) = happyShift action_16
action_53 (22) = happyShift action_17
action_53 (23) = happyShift action_18
action_53 (24) = happyShift action_19
action_53 (34) = happyShift action_20
action_53 (37) = happyShift action_21
action_53 (39) = happyShift action_22
action_53 (44) = happyShift action_23
action_53 (4) = happyGoto action_60
action_53 (5) = happyGoto action_4
action_53 (6) = happyGoto action_5
action_53 (7) = happyGoto action_6
action_53 (9) = happyGoto action_7
action_53 (10) = happyGoto action_8
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_9
action_54 (12) = happyShift action_10
action_54 (13) = happyShift action_11
action_54 (14) = happyShift action_12
action_54 (15) = happyShift action_2
action_54 (16) = happyShift action_13
action_54 (19) = happyShift action_14
action_54 (20) = happyShift action_15
action_54 (21) = happyShift action_16
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (34) = happyShift action_20
action_54 (37) = happyShift action_21
action_54 (39) = happyShift action_22
action_54 (44) = happyShift action_23
action_54 (4) = happyGoto action_59
action_54 (5) = happyGoto action_4
action_54 (6) = happyGoto action_5
action_54 (7) = happyGoto action_6
action_54 (9) = happyGoto action_7
action_54 (10) = happyGoto action_8
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_9
action_55 (12) = happyShift action_10
action_55 (13) = happyShift action_11
action_55 (14) = happyShift action_12
action_55 (15) = happyShift action_2
action_55 (16) = happyShift action_13
action_55 (19) = happyShift action_14
action_55 (20) = happyShift action_15
action_55 (21) = happyShift action_16
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (34) = happyShift action_20
action_55 (37) = happyShift action_21
action_55 (39) = happyShift action_22
action_55 (44) = happyShift action_23
action_55 (4) = happyGoto action_58
action_55 (5) = happyGoto action_4
action_55 (6) = happyGoto action_5
action_55 (7) = happyGoto action_6
action_55 (9) = happyGoto action_7
action_55 (10) = happyGoto action_8
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (25) = happyShift action_41
action_56 (26) = happyShift action_42
action_56 (27) = happyShift action_43
action_56 (28) = happyShift action_44
action_56 (29) = happyShift action_45
action_56 (30) = happyShift action_46
action_56 (31) = happyShift action_47
action_56 (33) = happyShift action_48
action_56 (34) = happyShift action_49
action_56 (35) = happyShift action_50
action_56 (36) = happyShift action_51
action_56 (41) = happyShift action_57
action_56 (45) = happyShift action_52
action_56 (46) = happyShift action_53
action_56 (47) = happyShift action_54
action_56 (48) = happyShift action_55
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_9
action_57 (12) = happyShift action_10
action_57 (13) = happyShift action_11
action_57 (14) = happyShift action_12
action_57 (15) = happyShift action_2
action_57 (16) = happyShift action_13
action_57 (19) = happyShift action_14
action_57 (20) = happyShift action_15
action_57 (21) = happyShift action_16
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (34) = happyShift action_20
action_57 (37) = happyShift action_21
action_57 (39) = happyShift action_22
action_57 (44) = happyShift action_23
action_57 (4) = happyGoto action_90
action_57 (5) = happyGoto action_4
action_57 (6) = happyGoto action_5
action_57 (7) = happyGoto action_6
action_57 (9) = happyGoto action_7
action_57 (10) = happyGoto action_8
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (29) = happyShift action_45
action_58 (30) = happyShift action_46
action_58 (31) = happyShift action_47
action_58 (33) = happyShift action_48
action_58 (34) = happyShift action_49
action_58 (35) = happyShift action_50
action_58 (36) = happyShift action_51
action_58 (45) = happyShift action_52
action_58 (46) = happyShift action_53
action_58 _ = happyReduce_30

action_59 (29) = happyShift action_45
action_59 (30) = happyShift action_46
action_59 (31) = happyShift action_47
action_59 (33) = happyShift action_48
action_59 (34) = happyShift action_49
action_59 (35) = happyShift action_50
action_59 (36) = happyShift action_51
action_59 (45) = happyShift action_52
action_59 (46) = happyShift action_53
action_59 _ = happyReduce_29

action_60 (29) = happyShift action_45
action_60 (30) = happyShift action_46
action_60 (31) = happyShift action_47
action_60 (45) = happyShift action_52
action_60 _ = happyReduce_28

action_61 (45) = happyShift action_52
action_61 _ = happyReduce_27

action_62 (29) = happyShift action_45
action_62 (30) = happyShift action_46
action_62 (31) = happyShift action_47
action_62 (45) = happyShift action_52
action_62 _ = happyReduce_23

action_63 (29) = happyShift action_45
action_63 (30) = happyShift action_46
action_63 (31) = happyShift action_47
action_63 (45) = happyShift action_52
action_63 _ = happyReduce_22

action_64 (29) = happyShift action_45
action_64 (30) = happyShift action_46
action_64 (31) = happyShift action_47
action_64 (35) = happyShift action_50
action_64 (36) = happyShift action_51
action_64 (45) = happyShift action_52
action_64 (46) = happyShift action_53
action_64 _ = happyReduce_21

action_65 (29) = happyShift action_45
action_65 (30) = happyShift action_46
action_65 (31) = happyShift action_47
action_65 (35) = happyShift action_50
action_65 (36) = happyShift action_51
action_65 (45) = happyShift action_52
action_65 (46) = happyShift action_53
action_65 _ = happyReduce_20

action_66 (29) = happyShift action_45
action_66 (31) = happyShift action_47
action_66 (45) = happyShift action_52
action_66 _ = happyReduce_17

action_67 (29) = happyShift action_45
action_67 (31) = happyShift action_47
action_67 (45) = happyShift action_52
action_67 _ = happyReduce_16

action_68 (29) = happyShift action_45
action_68 (31) = happyShift action_47
action_68 (45) = happyShift action_52
action_68 _ = happyReduce_15

action_69 (25) = happyShift action_41
action_69 (26) = happyShift action_42
action_69 (29) = happyShift action_45
action_69 (30) = happyShift action_46
action_69 (31) = happyShift action_47
action_69 (33) = happyShift action_48
action_69 (34) = happyShift action_49
action_69 (35) = happyShift action_50
action_69 (36) = happyShift action_51
action_69 (45) = happyShift action_52
action_69 (46) = happyShift action_53
action_69 (47) = happyShift action_54
action_69 (48) = happyShift action_55
action_69 _ = happyReduce_14

action_70 (25) = happyShift action_41
action_70 (26) = happyShift action_42
action_70 (29) = happyShift action_45
action_70 (30) = happyShift action_46
action_70 (31) = happyShift action_47
action_70 (33) = happyShift action_48
action_70 (34) = happyShift action_49
action_70 (35) = happyShift action_50
action_70 (36) = happyShift action_51
action_70 (45) = happyShift action_52
action_70 (46) = happyShift action_53
action_70 (47) = happyShift action_54
action_70 (48) = happyShift action_55
action_70 _ = happyReduce_13

action_71 (29) = happyShift action_45
action_71 (30) = happyShift action_46
action_71 (31) = happyShift action_47
action_71 (33) = happyShift action_48
action_71 (34) = happyShift action_49
action_71 (35) = happyShift action_50
action_71 (36) = happyShift action_51
action_71 (45) = happyShift action_52
action_71 (46) = happyShift action_53
action_71 _ = happyReduce_12

action_72 (29) = happyShift action_45
action_72 (30) = happyShift action_46
action_72 (31) = happyShift action_47
action_72 (33) = happyShift action_48
action_72 (34) = happyShift action_49
action_72 (35) = happyShift action_50
action_72 (36) = happyShift action_51
action_72 (45) = happyShift action_52
action_72 (46) = happyShift action_53
action_72 _ = happyReduce_11

action_73 (11) = happyShift action_9
action_73 (12) = happyShift action_10
action_73 (13) = happyShift action_11
action_73 (14) = happyShift action_12
action_73 (15) = happyShift action_2
action_73 (16) = happyShift action_13
action_73 (19) = happyShift action_14
action_73 (20) = happyShift action_15
action_73 (21) = happyShift action_16
action_73 (22) = happyShift action_17
action_73 (23) = happyShift action_18
action_73 (24) = happyShift action_19
action_73 (34) = happyShift action_20
action_73 (37) = happyShift action_21
action_73 (39) = happyShift action_22
action_73 (44) = happyShift action_23
action_73 (4) = happyGoto action_89
action_73 (5) = happyGoto action_4
action_73 (6) = happyGoto action_5
action_73 (7) = happyGoto action_6
action_73 (9) = happyGoto action_7
action_73 (10) = happyGoto action_8
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (25) = happyShift action_41
action_74 (26) = happyShift action_42
action_74 (27) = happyShift action_43
action_74 (28) = happyShift action_44
action_74 (29) = happyShift action_45
action_74 (30) = happyShift action_46
action_74 (31) = happyShift action_47
action_74 (33) = happyShift action_48
action_74 (34) = happyShift action_49
action_74 (35) = happyShift action_50
action_74 (36) = happyShift action_51
action_74 (41) = happyShift action_88
action_74 (45) = happyShift action_52
action_74 (46) = happyShift action_53
action_74 (47) = happyShift action_54
action_74 (48) = happyShift action_55
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (11) = happyShift action_9
action_75 (12) = happyShift action_10
action_75 (13) = happyShift action_11
action_75 (14) = happyShift action_12
action_75 (15) = happyShift action_2
action_75 (16) = happyShift action_13
action_75 (19) = happyShift action_14
action_75 (20) = happyShift action_15
action_75 (21) = happyShift action_16
action_75 (22) = happyShift action_17
action_75 (23) = happyShift action_18
action_75 (24) = happyShift action_19
action_75 (34) = happyShift action_20
action_75 (37) = happyShift action_21
action_75 (39) = happyShift action_22
action_75 (44) = happyShift action_23
action_75 (4) = happyGoto action_87
action_75 (5) = happyGoto action_4
action_75 (6) = happyGoto action_5
action_75 (7) = happyGoto action_6
action_75 (9) = happyGoto action_7
action_75 (10) = happyGoto action_8
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (25) = happyShift action_41
action_76 (26) = happyShift action_42
action_76 (27) = happyShift action_43
action_76 (28) = happyShift action_44
action_76 (29) = happyShift action_45
action_76 (30) = happyShift action_46
action_76 (31) = happyShift action_47
action_76 (33) = happyShift action_48
action_76 (34) = happyShift action_49
action_76 (35) = happyShift action_50
action_76 (36) = happyShift action_51
action_76 (42) = happyShift action_86
action_76 (45) = happyShift action_52
action_76 (46) = happyShift action_53
action_76 (47) = happyShift action_54
action_76 (48) = happyShift action_55
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (11) = happyShift action_9
action_77 (12) = happyShift action_10
action_77 (13) = happyShift action_11
action_77 (14) = happyShift action_12
action_77 (15) = happyShift action_2
action_77 (16) = happyShift action_13
action_77 (19) = happyShift action_14
action_77 (20) = happyShift action_15
action_77 (21) = happyShift action_16
action_77 (22) = happyShift action_17
action_77 (23) = happyShift action_18
action_77 (24) = happyShift action_19
action_77 (34) = happyShift action_20
action_77 (37) = happyShift action_21
action_77 (39) = happyShift action_22
action_77 (44) = happyShift action_23
action_77 (4) = happyGoto action_85
action_77 (5) = happyGoto action_4
action_77 (6) = happyGoto action_5
action_77 (7) = happyGoto action_6
action_77 (9) = happyGoto action_7
action_77 (10) = happyGoto action_8
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (25) = happyShift action_41
action_78 (26) = happyShift action_42
action_78 (27) = happyShift action_43
action_78 (28) = happyShift action_44
action_78 (29) = happyShift action_45
action_78 (30) = happyShift action_46
action_78 (31) = happyShift action_47
action_78 (33) = happyShift action_48
action_78 (34) = happyShift action_49
action_78 (35) = happyShift action_50
action_78 (36) = happyShift action_51
action_78 (40) = happyShift action_84
action_78 (45) = happyShift action_52
action_78 (46) = happyShift action_53
action_78 (47) = happyShift action_54
action_78 (48) = happyShift action_55
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (25) = happyShift action_41
action_79 (26) = happyShift action_42
action_79 (27) = happyShift action_43
action_79 (28) = happyShift action_44
action_79 (29) = happyShift action_45
action_79 (30) = happyShift action_46
action_79 (31) = happyShift action_47
action_79 (33) = happyShift action_48
action_79 (34) = happyShift action_49
action_79 (35) = happyShift action_50
action_79 (36) = happyShift action_51
action_79 (45) = happyShift action_52
action_79 (46) = happyShift action_53
action_79 (47) = happyShift action_54
action_79 (48) = happyShift action_55
action_79 _ = happyReduce_43

action_80 _ = happyReduce_32

action_81 _ = happyReduce_10

action_82 (11) = happyShift action_9
action_82 (12) = happyShift action_10
action_82 (13) = happyShift action_11
action_82 (14) = happyShift action_12
action_82 (15) = happyShift action_2
action_82 (16) = happyShift action_13
action_82 (19) = happyShift action_14
action_82 (20) = happyShift action_15
action_82 (21) = happyShift action_16
action_82 (22) = happyShift action_17
action_82 (23) = happyShift action_18
action_82 (24) = happyShift action_19
action_82 (34) = happyShift action_20
action_82 (37) = happyShift action_21
action_82 (39) = happyShift action_22
action_82 (44) = happyShift action_23
action_82 (4) = happyGoto action_83
action_82 (5) = happyGoto action_4
action_82 (6) = happyGoto action_5
action_82 (7) = happyGoto action_6
action_82 (9) = happyGoto action_7
action_82 (10) = happyGoto action_8
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (25) = happyShift action_41
action_83 (26) = happyShift action_42
action_83 (27) = happyShift action_43
action_83 (28) = happyShift action_44
action_83 (29) = happyShift action_45
action_83 (30) = happyShift action_46
action_83 (31) = happyShift action_47
action_83 (33) = happyShift action_48
action_83 (34) = happyShift action_49
action_83 (35) = happyShift action_50
action_83 (36) = happyShift action_51
action_83 (45) = happyShift action_52
action_83 (46) = happyShift action_53
action_83 (47) = happyShift action_54
action_83 (48) = happyShift action_55
action_83 _ = happyReduce_39

action_84 _ = happyReduce_24

action_85 (25) = happyShift action_41
action_85 (26) = happyShift action_42
action_85 (27) = happyShift action_43
action_85 (28) = happyShift action_44
action_85 (29) = happyShift action_45
action_85 (30) = happyShift action_46
action_85 (31) = happyShift action_47
action_85 (33) = happyShift action_48
action_85 (34) = happyShift action_49
action_85 (35) = happyShift action_50
action_85 (36) = happyShift action_51
action_85 (42) = happyShift action_95
action_85 (45) = happyShift action_52
action_85 (46) = happyShift action_53
action_85 (47) = happyShift action_54
action_85 (48) = happyShift action_55
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_25

action_87 (25) = happyShift action_41
action_87 (26) = happyShift action_42
action_87 (27) = happyShift action_43
action_87 (28) = happyShift action_44
action_87 (29) = happyShift action_45
action_87 (30) = happyShift action_46
action_87 (31) = happyShift action_47
action_87 (33) = happyShift action_48
action_87 (34) = happyShift action_49
action_87 (35) = happyShift action_50
action_87 (36) = happyShift action_51
action_87 (42) = happyShift action_94
action_87 (45) = happyShift action_52
action_87 (46) = happyShift action_53
action_87 (47) = happyShift action_54
action_87 (48) = happyShift action_55
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (11) = happyShift action_9
action_88 (12) = happyShift action_10
action_88 (13) = happyShift action_11
action_88 (14) = happyShift action_12
action_88 (15) = happyShift action_2
action_88 (16) = happyShift action_13
action_88 (19) = happyShift action_14
action_88 (20) = happyShift action_15
action_88 (21) = happyShift action_16
action_88 (22) = happyShift action_17
action_88 (23) = happyShift action_18
action_88 (24) = happyShift action_19
action_88 (34) = happyShift action_20
action_88 (37) = happyShift action_21
action_88 (39) = happyShift action_22
action_88 (44) = happyShift action_23
action_88 (4) = happyGoto action_93
action_88 (5) = happyGoto action_4
action_88 (6) = happyGoto action_5
action_88 (7) = happyGoto action_6
action_88 (9) = happyGoto action_7
action_88 (10) = happyGoto action_8
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (25) = happyShift action_41
action_89 (26) = happyShift action_42
action_89 (27) = happyShift action_43
action_89 (28) = happyShift action_44
action_89 (29) = happyShift action_45
action_89 (30) = happyShift action_46
action_89 (31) = happyShift action_47
action_89 (33) = happyShift action_48
action_89 (34) = happyShift action_49
action_89 (35) = happyShift action_50
action_89 (36) = happyShift action_51
action_89 (42) = happyShift action_92
action_89 (45) = happyShift action_52
action_89 (46) = happyShift action_53
action_89 (47) = happyShift action_54
action_89 (48) = happyShift action_55
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (25) = happyShift action_41
action_90 (26) = happyShift action_42
action_90 (27) = happyShift action_43
action_90 (28) = happyShift action_44
action_90 (29) = happyShift action_45
action_90 (30) = happyShift action_46
action_90 (31) = happyShift action_47
action_90 (33) = happyShift action_48
action_90 (34) = happyShift action_49
action_90 (35) = happyShift action_50
action_90 (36) = happyShift action_51
action_90 (42) = happyShift action_91
action_90 (45) = happyShift action_52
action_90 (46) = happyShift action_53
action_90 (47) = happyShift action_54
action_90 (48) = happyShift action_55
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_1

action_92 _ = happyReduce_35

action_93 (25) = happyShift action_41
action_93 (26) = happyShift action_42
action_93 (27) = happyShift action_43
action_93 (28) = happyShift action_44
action_93 (29) = happyShift action_45
action_93 (30) = happyShift action_46
action_93 (31) = happyShift action_47
action_93 (33) = happyShift action_48
action_93 (34) = happyShift action_49
action_93 (35) = happyShift action_50
action_93 (36) = happyShift action_51
action_93 (42) = happyShift action_96
action_93 (45) = happyShift action_52
action_93 (46) = happyShift action_53
action_93 (47) = happyShift action_54
action_93 (48) = happyShift action_55
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_36

action_95 _ = happyReduce_33

action_96 _ = happyReduce_34

happyReduce_1 = happyReduce 5 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (HasNext happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Next happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Size happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn4
		 (Boolean happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LE happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GE happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NE happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Take happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (Var happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 4 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  4 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  4 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  4 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 5 5 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 6 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Elif happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 5 7 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 5 7 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_0  8 happyReduction_37
happyReduction_37  =  HappyAbsSyn8
		 (Stream []
	)

happyReduce_38 = happySpecReduce_1  8 happyReduction_38
happyReduction_38 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (Stream [happy_var_1]
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  8 happyReduction_39
happyReduction_39 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn8
		 (Stream happy_var_3 : happy_var_1
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  9 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn9
		 (Int'
	)

happyReduce_41 = happySpecReduce_1  9 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn9
		 (Boolean'
	)

happyReduce_42 = happySpecReduce_1  9 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn9
		 (Stream'
	)

happyReduce_43 = happySpecReduce_3  10 happyReduction_43
happyReduction_43 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 49 49 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 11;
	TokenStreamType _ -> cont 12;
	TokenBoolType _ -> cont 13;
	TokenInput _ -> cont 14;
	TokenWhile _ -> cont 15;
	TokenIf _ -> cont 16;
	TokenElif _ -> cont 17;
	TokenElse _ -> cont 18;
	TokenHasNext _ -> cont 19;
	TokenNext _ -> cont 20;
	TokenSize _ -> cont 21;
	TokenInt _ happy_dollar_dollar -> cont 22;
	TokenBool _ happy_dollar_dollar -> cont 23;
	TokenVar _ happy_dollar_dollar -> cont 24;
	TokenLE _ -> cont 25;
	TokenGE _ -> cont 26;
	TokenEQ _ -> cont 27;
	TokenNE _ -> cont 28;
	TokenCons _ -> cont 29;
	TokenConcat _ -> cont 30;
	TokenTake _ -> cont 31;
	TokenAssign _ -> cont 32;
	TokenPlus _ -> cont 33;
	TokenMinus _ -> cont 34;
	TokenTimes _ -> cont 35;
	TokenDiv _ -> cont 36;
	TokenLParen _ -> cont 37;
	TokenRParen _ -> cont 38;
	TokenLSquare _ -> cont 39;
	TokenRSquare _ -> cont 40;
	TokenLCurly _ -> cont 41;
	TokenRCurly _ -> cont 42;
	TokenComma _ -> cont 43;
	TokenNot _ -> cont 44;
	TokenExponent _ -> cont 45;
	TokenModulo _ -> cont 46;
	TokenLT _ -> cont 47;
	TokenGT _ -> cont 48;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 49 tk tks = happyError' (tks, explist)
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

data Type = Int' 
          | Boolean' 
          | Stream' 

data Exp = While Exp Exp
         | If Exp Exp
         | Elif Exp Exp
         | Else Exp
         | HasNext Exp
         | Next Exp
         | Size Exp
         | Int Int
         | Boolean Bool
         | Stream [Exp]
         | Var Type Exp
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
         | StreamGet String Exp
         | InputGet Exp
         | Not Exp
         | Exponent Exp Exp
         | Modulo Exp Exp
         | LT' Exp Exp
         | GT' Exp Exp
         | Negate Exp
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

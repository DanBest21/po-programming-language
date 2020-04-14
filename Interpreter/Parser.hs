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
happyExpList = Happy_Data_Array.listArray (0,615) ([0,0,0,0,0,0,61440,2023,8336,0,61440,32983,7,96,0,0,128,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,16256,32831,260,32512,126,521,65024,252,1042,64512,505,2084,63488,1011,4168,61440,2023,8336,0,0,0,0,0,0,0,0,4128,0,32383,2304,2,64766,4608,4,63996,9217,8,0,448,32,0,31736,961,0,1792,128,40896,16415,130,16256,32831,260,0,0,0,0,0,0,0,0,0,0,64512,58429,1,63488,51323,3,61440,33015,49159,8095,33344,0,0,0,0,0,64,0,0,0,1,63996,9217,8,0,0,4,59376,36871,32,53216,8207,65,40896,16415,130,16256,32831,260,32512,126,521,65024,252,1042,64512,505,2084,63488,1011,4168,61440,2023,8336,57344,4047,16672,49152,8095,33344,32768,16191,1152,1,32383,2304,2,64766,4608,4,63996,9217,8,0,13820,480,0,31616,192,0,63232,384,0,3584,256,0,0,512,0,14336,1024,0,28672,2048,0,57344,12312,0,49152,24625,0,32768,16386,0,0,32773,0,0,10,1,49152,988,30,32768,1977,60,0,3952,24,0,7904,48,62456,18435,16,0,31736,968,53216,8207,65,0,61408,3905,0,0,0,32512,126,521,0,32512,30863,0,65024,61470,0,0,0,0,0,0,0,61440,41207,49159,8095,49728,0,0,0,0,32768,1983,61,64766,4608,4,0,7934,244,0,0,0,0,31736,976,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exp","If","Elif","Else","Type","Assign","int_type","stream_type","bool_type","input","print","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","'!'","'^'","'%'","'<'","'>'","%eof"]
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
action_0 (15) = happyShift action_13
action_0 (16) = happyShift action_14
action_0 (17) = happyShift action_15
action_0 (20) = happyShift action_16
action_0 (21) = happyShift action_17
action_0 (22) = happyShift action_18
action_0 (23) = happyShift action_19
action_0 (24) = happyShift action_20
action_0 (25) = happyShift action_21
action_0 (35) = happyShift action_22
action_0 (38) = happyShift action_23
action_0 (44) = happyShift action_24
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_9
action_2 (12) = happyShift action_10
action_2 (13) = happyShift action_11
action_2 (14) = happyShift action_12
action_2 (15) = happyShift action_13
action_2 (16) = happyShift action_14
action_2 (17) = happyShift action_15
action_2 (20) = happyShift action_16
action_2 (21) = happyShift action_17
action_2 (22) = happyShift action_18
action_2 (23) = happyShift action_19
action_2 (24) = happyShift action_20
action_2 (25) = happyShift action_21
action_2 (35) = happyShift action_22
action_2 (38) = happyShift action_23
action_2 (44) = happyShift action_24
action_2 (49) = happyAccept
action_2 (5) = happyGoto action_57
action_2 (6) = happyGoto action_4
action_2 (7) = happyGoto action_5
action_2 (8) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (10) = happyGoto action_8
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (26) = happyShift action_42
action_3 (27) = happyShift action_43
action_3 (28) = happyShift action_44
action_3 (29) = happyShift action_45
action_3 (30) = happyShift action_46
action_3 (31) = happyShift action_47
action_3 (32) = happyShift action_48
action_3 (34) = happyShift action_49
action_3 (35) = happyShift action_50
action_3 (36) = happyShift action_51
action_3 (37) = happyShift action_52
action_3 (45) = happyShift action_53
action_3 (46) = happyShift action_54
action_3 (47) = happyShift action_55
action_3 (48) = happyShift action_56
action_3 _ = happyReduce_2

action_4 (18) = happyShift action_40
action_4 (19) = happyShift action_41
action_4 _ = happyReduce_5

action_5 (19) = happyShift action_39
action_5 _ = happyReduce_6

action_6 _ = happyReduce_7

action_7 (25) = happyShift action_38
action_7 (10) = happyGoto action_37
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_21

action_9 _ = happyReduce_40

action_10 _ = happyReduce_42

action_11 _ = happyReduce_41

action_12 (42) = happyShift action_36
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_9
action_13 (12) = happyShift action_10
action_13 (13) = happyShift action_11
action_13 (14) = happyShift action_12
action_13 (15) = happyShift action_13
action_13 (16) = happyShift action_14
action_13 (17) = happyShift action_15
action_13 (20) = happyShift action_16
action_13 (21) = happyShift action_17
action_13 (22) = happyShift action_18
action_13 (23) = happyShift action_19
action_13 (24) = happyShift action_20
action_13 (25) = happyShift action_21
action_13 (35) = happyShift action_22
action_13 (38) = happyShift action_23
action_13 (44) = happyShift action_24
action_13 (5) = happyGoto action_35
action_13 (6) = happyGoto action_4
action_13 (7) = happyGoto action_5
action_13 (8) = happyGoto action_6
action_13 (9) = happyGoto action_7
action_13 (10) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_9
action_14 (12) = happyShift action_10
action_14 (13) = happyShift action_11
action_14 (14) = happyShift action_12
action_14 (15) = happyShift action_13
action_14 (16) = happyShift action_14
action_14 (17) = happyShift action_15
action_14 (20) = happyShift action_16
action_14 (21) = happyShift action_17
action_14 (22) = happyShift action_18
action_14 (23) = happyShift action_19
action_14 (24) = happyShift action_20
action_14 (25) = happyShift action_21
action_14 (35) = happyShift action_22
action_14 (38) = happyShift action_23
action_14 (44) = happyShift action_24
action_14 (5) = happyGoto action_34
action_14 (6) = happyGoto action_4
action_14 (7) = happyGoto action_5
action_14 (8) = happyGoto action_6
action_14 (9) = happyGoto action_7
action_14 (10) = happyGoto action_8
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_9
action_15 (12) = happyShift action_10
action_15 (13) = happyShift action_11
action_15 (14) = happyShift action_12
action_15 (15) = happyShift action_13
action_15 (16) = happyShift action_14
action_15 (17) = happyShift action_15
action_15 (20) = happyShift action_16
action_15 (21) = happyShift action_17
action_15 (22) = happyShift action_18
action_15 (23) = happyShift action_19
action_15 (24) = happyShift action_20
action_15 (25) = happyShift action_21
action_15 (35) = happyShift action_22
action_15 (38) = happyShift action_23
action_15 (44) = happyShift action_24
action_15 (5) = happyGoto action_33
action_15 (6) = happyGoto action_4
action_15 (7) = happyGoto action_5
action_15 (8) = happyGoto action_6
action_15 (9) = happyGoto action_7
action_15 (10) = happyGoto action_8
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_9
action_16 (12) = happyShift action_10
action_16 (13) = happyShift action_11
action_16 (14) = happyShift action_12
action_16 (15) = happyShift action_13
action_16 (16) = happyShift action_14
action_16 (17) = happyShift action_15
action_16 (20) = happyShift action_16
action_16 (21) = happyShift action_17
action_16 (22) = happyShift action_18
action_16 (23) = happyShift action_19
action_16 (24) = happyShift action_20
action_16 (25) = happyShift action_21
action_16 (35) = happyShift action_22
action_16 (38) = happyShift action_23
action_16 (44) = happyShift action_24
action_16 (5) = happyGoto action_32
action_16 (6) = happyGoto action_4
action_16 (7) = happyGoto action_5
action_16 (8) = happyGoto action_6
action_16 (9) = happyGoto action_7
action_16 (10) = happyGoto action_8
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_9
action_17 (12) = happyShift action_10
action_17 (13) = happyShift action_11
action_17 (14) = happyShift action_12
action_17 (15) = happyShift action_13
action_17 (16) = happyShift action_14
action_17 (17) = happyShift action_15
action_17 (20) = happyShift action_16
action_17 (21) = happyShift action_17
action_17 (22) = happyShift action_18
action_17 (23) = happyShift action_19
action_17 (24) = happyShift action_20
action_17 (25) = happyShift action_21
action_17 (35) = happyShift action_22
action_17 (38) = happyShift action_23
action_17 (44) = happyShift action_24
action_17 (5) = happyGoto action_31
action_17 (6) = happyGoto action_4
action_17 (7) = happyGoto action_5
action_17 (8) = happyGoto action_6
action_17 (9) = happyGoto action_7
action_17 (10) = happyGoto action_8
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_9
action_18 (12) = happyShift action_10
action_18 (13) = happyShift action_11
action_18 (14) = happyShift action_12
action_18 (15) = happyShift action_13
action_18 (16) = happyShift action_14
action_18 (17) = happyShift action_15
action_18 (20) = happyShift action_16
action_18 (21) = happyShift action_17
action_18 (22) = happyShift action_18
action_18 (23) = happyShift action_19
action_18 (24) = happyShift action_20
action_18 (25) = happyShift action_21
action_18 (35) = happyShift action_22
action_18 (38) = happyShift action_23
action_18 (44) = happyShift action_24
action_18 (5) = happyGoto action_30
action_18 (6) = happyGoto action_4
action_18 (7) = happyGoto action_5
action_18 (8) = happyGoto action_6
action_18 (9) = happyGoto action_7
action_18 (10) = happyGoto action_8
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_11

action_20 _ = happyReduce_12

action_21 (33) = happyShift action_28
action_21 (40) = happyShift action_29
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_9
action_22 (12) = happyShift action_10
action_22 (13) = happyShift action_11
action_22 (14) = happyShift action_12
action_22 (15) = happyShift action_13
action_22 (16) = happyShift action_14
action_22 (17) = happyShift action_15
action_22 (20) = happyShift action_16
action_22 (21) = happyShift action_17
action_22 (22) = happyShift action_18
action_22 (23) = happyShift action_19
action_22 (24) = happyShift action_20
action_22 (25) = happyShift action_21
action_22 (35) = happyShift action_22
action_22 (38) = happyShift action_23
action_22 (44) = happyShift action_24
action_22 (5) = happyGoto action_27
action_22 (6) = happyGoto action_4
action_22 (7) = happyGoto action_5
action_22 (8) = happyGoto action_6
action_22 (9) = happyGoto action_7
action_22 (10) = happyGoto action_8
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_9
action_23 (12) = happyShift action_10
action_23 (13) = happyShift action_11
action_23 (14) = happyShift action_12
action_23 (15) = happyShift action_13
action_23 (16) = happyShift action_14
action_23 (17) = happyShift action_15
action_23 (20) = happyShift action_16
action_23 (21) = happyShift action_17
action_23 (22) = happyShift action_18
action_23 (23) = happyShift action_19
action_23 (24) = happyShift action_20
action_23 (25) = happyShift action_21
action_23 (35) = happyShift action_22
action_23 (38) = happyShift action_23
action_23 (44) = happyShift action_24
action_23 (5) = happyGoto action_26
action_23 (6) = happyGoto action_4
action_23 (7) = happyGoto action_5
action_23 (8) = happyGoto action_6
action_23 (9) = happyGoto action_7
action_23 (10) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_9
action_24 (12) = happyShift action_10
action_24 (13) = happyShift action_11
action_24 (14) = happyShift action_12
action_24 (15) = happyShift action_13
action_24 (16) = happyShift action_14
action_24 (17) = happyShift action_15
action_24 (20) = happyShift action_16
action_24 (21) = happyShift action_17
action_24 (22) = happyShift action_18
action_24 (23) = happyShift action_19
action_24 (24) = happyShift action_20
action_24 (25) = happyShift action_21
action_24 (35) = happyShift action_22
action_24 (38) = happyShift action_23
action_24 (44) = happyShift action_24
action_24 (5) = happyGoto action_25
action_24 (6) = happyGoto action_4
action_24 (7) = happyGoto action_5
action_24 (8) = happyGoto action_6
action_24 (9) = happyGoto action_7
action_24 (10) = happyGoto action_8
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (30) = happyShift action_46
action_25 (31) = happyShift action_47
action_25 (32) = happyShift action_48
action_25 (45) = happyShift action_53
action_25 _ = happyReduce_29

action_26 (26) = happyShift action_42
action_26 (27) = happyShift action_43
action_26 (28) = happyShift action_44
action_26 (29) = happyShift action_45
action_26 (30) = happyShift action_46
action_26 (31) = happyShift action_47
action_26 (32) = happyShift action_48
action_26 (34) = happyShift action_49
action_26 (35) = happyShift action_50
action_26 (36) = happyShift action_51
action_26 (37) = happyShift action_52
action_26 (39) = happyShift action_81
action_26 (45) = happyShift action_53
action_26 (46) = happyShift action_54
action_26 (47) = happyShift action_55
action_26 (48) = happyShift action_56
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (30) = happyShift action_46
action_27 (31) = happyShift action_47
action_27 (32) = happyShift action_48
action_27 (45) = happyShift action_53
action_27 _ = happyReduce_34

action_28 (11) = happyShift action_9
action_28 (12) = happyShift action_10
action_28 (13) = happyShift action_11
action_28 (14) = happyShift action_12
action_28 (15) = happyShift action_13
action_28 (16) = happyShift action_14
action_28 (17) = happyShift action_15
action_28 (20) = happyShift action_16
action_28 (21) = happyShift action_17
action_28 (22) = happyShift action_18
action_28 (23) = happyShift action_19
action_28 (24) = happyShift action_20
action_28 (25) = happyShift action_21
action_28 (35) = happyShift action_22
action_28 (38) = happyShift action_23
action_28 (44) = happyShift action_24
action_28 (5) = happyGoto action_80
action_28 (6) = happyGoto action_4
action_28 (7) = happyGoto action_5
action_28 (8) = happyGoto action_6
action_28 (9) = happyGoto action_7
action_28 (10) = happyGoto action_8
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_9
action_29 (12) = happyShift action_10
action_29 (13) = happyShift action_11
action_29 (14) = happyShift action_12
action_29 (15) = happyShift action_13
action_29 (16) = happyShift action_14
action_29 (17) = happyShift action_15
action_29 (20) = happyShift action_16
action_29 (21) = happyShift action_17
action_29 (22) = happyShift action_18
action_29 (23) = happyShift action_19
action_29 (24) = happyShift action_20
action_29 (25) = happyShift action_21
action_29 (35) = happyShift action_22
action_29 (38) = happyShift action_23
action_29 (44) = happyShift action_24
action_29 (5) = happyGoto action_79
action_29 (6) = happyGoto action_4
action_29 (7) = happyGoto action_5
action_29 (8) = happyGoto action_6
action_29 (9) = happyGoto action_7
action_29 (10) = happyGoto action_8
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_10

action_31 _ = happyReduce_9

action_32 _ = happyReduce_8

action_33 (26) = happyShift action_42
action_33 (27) = happyShift action_43
action_33 (28) = happyShift action_44
action_33 (29) = happyShift action_45
action_33 (30) = happyShift action_46
action_33 (31) = happyShift action_47
action_33 (32) = happyShift action_48
action_33 (34) = happyShift action_49
action_33 (35) = happyShift action_50
action_33 (36) = happyShift action_51
action_33 (37) = happyShift action_52
action_33 (42) = happyShift action_78
action_33 (45) = happyShift action_53
action_33 (46) = happyShift action_54
action_33 (47) = happyShift action_55
action_33 (48) = happyShift action_56
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (26) = happyShift action_42
action_34 (27) = happyShift action_43
action_34 (28) = happyShift action_44
action_34 (29) = happyShift action_45
action_34 (30) = happyShift action_46
action_34 (31) = happyShift action_47
action_34 (32) = happyShift action_48
action_34 (34) = happyShift action_49
action_34 (35) = happyShift action_50
action_34 (36) = happyShift action_51
action_34 (37) = happyShift action_52
action_34 (42) = happyShift action_77
action_34 (45) = happyShift action_53
action_34 (46) = happyShift action_54
action_34 (47) = happyShift action_55
action_34 (48) = happyShift action_56
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (26) = happyShift action_42
action_35 (27) = happyShift action_43
action_35 (28) = happyShift action_44
action_35 (29) = happyShift action_45
action_35 (30) = happyShift action_46
action_35 (31) = happyShift action_47
action_35 (32) = happyShift action_48
action_35 (34) = happyShift action_49
action_35 (35) = happyShift action_50
action_35 (36) = happyShift action_51
action_35 (37) = happyShift action_52
action_35 (45) = happyShift action_53
action_35 (46) = happyShift action_54
action_35 (47) = happyShift action_55
action_35 (48) = happyShift action_56
action_35 _ = happyReduce_28

action_36 (11) = happyShift action_9
action_36 (12) = happyShift action_10
action_36 (13) = happyShift action_11
action_36 (14) = happyShift action_12
action_36 (15) = happyShift action_13
action_36 (16) = happyShift action_14
action_36 (17) = happyShift action_15
action_36 (20) = happyShift action_16
action_36 (21) = happyShift action_17
action_36 (22) = happyShift action_18
action_36 (23) = happyShift action_19
action_36 (24) = happyShift action_20
action_36 (25) = happyShift action_21
action_36 (35) = happyShift action_22
action_36 (38) = happyShift action_23
action_36 (44) = happyShift action_24
action_36 (5) = happyGoto action_76
action_36 (6) = happyGoto action_4
action_36 (7) = happyGoto action_5
action_36 (8) = happyGoto action_6
action_36 (9) = happyGoto action_7
action_36 (10) = happyGoto action_8
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_20

action_38 (33) = happyShift action_28
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (42) = happyShift action_75
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (11) = happyShift action_9
action_40 (12) = happyShift action_10
action_40 (13) = happyShift action_11
action_40 (14) = happyShift action_12
action_40 (15) = happyShift action_13
action_40 (16) = happyShift action_14
action_40 (17) = happyShift action_15
action_40 (20) = happyShift action_16
action_40 (21) = happyShift action_17
action_40 (22) = happyShift action_18
action_40 (23) = happyShift action_19
action_40 (24) = happyShift action_20
action_40 (25) = happyShift action_21
action_40 (35) = happyShift action_22
action_40 (38) = happyShift action_23
action_40 (44) = happyShift action_24
action_40 (5) = happyGoto action_74
action_40 (6) = happyGoto action_4
action_40 (7) = happyGoto action_5
action_40 (8) = happyGoto action_6
action_40 (9) = happyGoto action_7
action_40 (10) = happyGoto action_8
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (42) = happyShift action_73
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_9
action_42 (12) = happyShift action_10
action_42 (13) = happyShift action_11
action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_13
action_42 (16) = happyShift action_14
action_42 (17) = happyShift action_15
action_42 (20) = happyShift action_16
action_42 (21) = happyShift action_17
action_42 (22) = happyShift action_18
action_42 (23) = happyShift action_19
action_42 (24) = happyShift action_20
action_42 (25) = happyShift action_21
action_42 (35) = happyShift action_22
action_42 (38) = happyShift action_23
action_42 (44) = happyShift action_24
action_42 (5) = happyGoto action_72
action_42 (6) = happyGoto action_4
action_42 (7) = happyGoto action_5
action_42 (8) = happyGoto action_6
action_42 (9) = happyGoto action_7
action_42 (10) = happyGoto action_8
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_9
action_43 (12) = happyShift action_10
action_43 (13) = happyShift action_11
action_43 (14) = happyShift action_12
action_43 (15) = happyShift action_13
action_43 (16) = happyShift action_14
action_43 (17) = happyShift action_15
action_43 (20) = happyShift action_16
action_43 (21) = happyShift action_17
action_43 (22) = happyShift action_18
action_43 (23) = happyShift action_19
action_43 (24) = happyShift action_20
action_43 (25) = happyShift action_21
action_43 (35) = happyShift action_22
action_43 (38) = happyShift action_23
action_43 (44) = happyShift action_24
action_43 (5) = happyGoto action_71
action_43 (6) = happyGoto action_4
action_43 (7) = happyGoto action_5
action_43 (8) = happyGoto action_6
action_43 (9) = happyGoto action_7
action_43 (10) = happyGoto action_8
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_9
action_44 (12) = happyShift action_10
action_44 (13) = happyShift action_11
action_44 (14) = happyShift action_12
action_44 (15) = happyShift action_13
action_44 (16) = happyShift action_14
action_44 (17) = happyShift action_15
action_44 (20) = happyShift action_16
action_44 (21) = happyShift action_17
action_44 (22) = happyShift action_18
action_44 (23) = happyShift action_19
action_44 (24) = happyShift action_20
action_44 (25) = happyShift action_21
action_44 (35) = happyShift action_22
action_44 (38) = happyShift action_23
action_44 (44) = happyShift action_24
action_44 (5) = happyGoto action_70
action_44 (6) = happyGoto action_4
action_44 (7) = happyGoto action_5
action_44 (8) = happyGoto action_6
action_44 (9) = happyGoto action_7
action_44 (10) = happyGoto action_8
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (11) = happyShift action_9
action_45 (12) = happyShift action_10
action_45 (13) = happyShift action_11
action_45 (14) = happyShift action_12
action_45 (15) = happyShift action_13
action_45 (16) = happyShift action_14
action_45 (17) = happyShift action_15
action_45 (20) = happyShift action_16
action_45 (21) = happyShift action_17
action_45 (22) = happyShift action_18
action_45 (23) = happyShift action_19
action_45 (24) = happyShift action_20
action_45 (25) = happyShift action_21
action_45 (35) = happyShift action_22
action_45 (38) = happyShift action_23
action_45 (44) = happyShift action_24
action_45 (5) = happyGoto action_69
action_45 (6) = happyGoto action_4
action_45 (7) = happyGoto action_5
action_45 (8) = happyGoto action_6
action_45 (9) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (11) = happyShift action_9
action_46 (12) = happyShift action_10
action_46 (13) = happyShift action_11
action_46 (14) = happyShift action_12
action_46 (15) = happyShift action_13
action_46 (16) = happyShift action_14
action_46 (17) = happyShift action_15
action_46 (20) = happyShift action_16
action_46 (21) = happyShift action_17
action_46 (22) = happyShift action_18
action_46 (23) = happyShift action_19
action_46 (24) = happyShift action_20
action_46 (25) = happyShift action_21
action_46 (35) = happyShift action_22
action_46 (38) = happyShift action_23
action_46 (44) = happyShift action_24
action_46 (5) = happyGoto action_68
action_46 (6) = happyGoto action_4
action_46 (7) = happyGoto action_5
action_46 (8) = happyGoto action_6
action_46 (9) = happyGoto action_7
action_46 (10) = happyGoto action_8
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_9
action_47 (12) = happyShift action_10
action_47 (13) = happyShift action_11
action_47 (14) = happyShift action_12
action_47 (15) = happyShift action_13
action_47 (16) = happyShift action_14
action_47 (17) = happyShift action_15
action_47 (20) = happyShift action_16
action_47 (21) = happyShift action_17
action_47 (22) = happyShift action_18
action_47 (23) = happyShift action_19
action_47 (24) = happyShift action_20
action_47 (25) = happyShift action_21
action_47 (35) = happyShift action_22
action_47 (38) = happyShift action_23
action_47 (44) = happyShift action_24
action_47 (5) = happyGoto action_67
action_47 (6) = happyGoto action_4
action_47 (7) = happyGoto action_5
action_47 (8) = happyGoto action_6
action_47 (9) = happyGoto action_7
action_47 (10) = happyGoto action_8
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_9
action_48 (12) = happyShift action_10
action_48 (13) = happyShift action_11
action_48 (14) = happyShift action_12
action_48 (15) = happyShift action_13
action_48 (16) = happyShift action_14
action_48 (17) = happyShift action_15
action_48 (20) = happyShift action_16
action_48 (21) = happyShift action_17
action_48 (22) = happyShift action_18
action_48 (23) = happyShift action_19
action_48 (24) = happyShift action_20
action_48 (25) = happyShift action_21
action_48 (35) = happyShift action_22
action_48 (38) = happyShift action_23
action_48 (44) = happyShift action_24
action_48 (5) = happyGoto action_66
action_48 (6) = happyGoto action_4
action_48 (7) = happyGoto action_5
action_48 (8) = happyGoto action_6
action_48 (9) = happyGoto action_7
action_48 (10) = happyGoto action_8
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_9
action_49 (12) = happyShift action_10
action_49 (13) = happyShift action_11
action_49 (14) = happyShift action_12
action_49 (15) = happyShift action_13
action_49 (16) = happyShift action_14
action_49 (17) = happyShift action_15
action_49 (20) = happyShift action_16
action_49 (21) = happyShift action_17
action_49 (22) = happyShift action_18
action_49 (23) = happyShift action_19
action_49 (24) = happyShift action_20
action_49 (25) = happyShift action_21
action_49 (35) = happyShift action_22
action_49 (38) = happyShift action_23
action_49 (44) = happyShift action_24
action_49 (5) = happyGoto action_65
action_49 (6) = happyGoto action_4
action_49 (7) = happyGoto action_5
action_49 (8) = happyGoto action_6
action_49 (9) = happyGoto action_7
action_49 (10) = happyGoto action_8
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (11) = happyShift action_9
action_50 (12) = happyShift action_10
action_50 (13) = happyShift action_11
action_50 (14) = happyShift action_12
action_50 (15) = happyShift action_13
action_50 (16) = happyShift action_14
action_50 (17) = happyShift action_15
action_50 (20) = happyShift action_16
action_50 (21) = happyShift action_17
action_50 (22) = happyShift action_18
action_50 (23) = happyShift action_19
action_50 (24) = happyShift action_20
action_50 (25) = happyShift action_21
action_50 (35) = happyShift action_22
action_50 (38) = happyShift action_23
action_50 (44) = happyShift action_24
action_50 (5) = happyGoto action_64
action_50 (6) = happyGoto action_4
action_50 (7) = happyGoto action_5
action_50 (8) = happyGoto action_6
action_50 (9) = happyGoto action_7
action_50 (10) = happyGoto action_8
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_9
action_51 (12) = happyShift action_10
action_51 (13) = happyShift action_11
action_51 (14) = happyShift action_12
action_51 (15) = happyShift action_13
action_51 (16) = happyShift action_14
action_51 (17) = happyShift action_15
action_51 (20) = happyShift action_16
action_51 (21) = happyShift action_17
action_51 (22) = happyShift action_18
action_51 (23) = happyShift action_19
action_51 (24) = happyShift action_20
action_51 (25) = happyShift action_21
action_51 (35) = happyShift action_22
action_51 (38) = happyShift action_23
action_51 (44) = happyShift action_24
action_51 (5) = happyGoto action_63
action_51 (6) = happyGoto action_4
action_51 (7) = happyGoto action_5
action_51 (8) = happyGoto action_6
action_51 (9) = happyGoto action_7
action_51 (10) = happyGoto action_8
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_9
action_52 (12) = happyShift action_10
action_52 (13) = happyShift action_11
action_52 (14) = happyShift action_12
action_52 (15) = happyShift action_13
action_52 (16) = happyShift action_14
action_52 (17) = happyShift action_15
action_52 (20) = happyShift action_16
action_52 (21) = happyShift action_17
action_52 (22) = happyShift action_18
action_52 (23) = happyShift action_19
action_52 (24) = happyShift action_20
action_52 (25) = happyShift action_21
action_52 (35) = happyShift action_22
action_52 (38) = happyShift action_23
action_52 (44) = happyShift action_24
action_52 (5) = happyGoto action_62
action_52 (6) = happyGoto action_4
action_52 (7) = happyGoto action_5
action_52 (8) = happyGoto action_6
action_52 (9) = happyGoto action_7
action_52 (10) = happyGoto action_8
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (11) = happyShift action_9
action_53 (12) = happyShift action_10
action_53 (13) = happyShift action_11
action_53 (14) = happyShift action_12
action_53 (15) = happyShift action_13
action_53 (16) = happyShift action_14
action_53 (17) = happyShift action_15
action_53 (20) = happyShift action_16
action_53 (21) = happyShift action_17
action_53 (22) = happyShift action_18
action_53 (23) = happyShift action_19
action_53 (24) = happyShift action_20
action_53 (25) = happyShift action_21
action_53 (35) = happyShift action_22
action_53 (38) = happyShift action_23
action_53 (44) = happyShift action_24
action_53 (5) = happyGoto action_61
action_53 (6) = happyGoto action_4
action_53 (7) = happyGoto action_5
action_53 (8) = happyGoto action_6
action_53 (9) = happyGoto action_7
action_53 (10) = happyGoto action_8
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_9
action_54 (12) = happyShift action_10
action_54 (13) = happyShift action_11
action_54 (14) = happyShift action_12
action_54 (15) = happyShift action_13
action_54 (16) = happyShift action_14
action_54 (17) = happyShift action_15
action_54 (20) = happyShift action_16
action_54 (21) = happyShift action_17
action_54 (22) = happyShift action_18
action_54 (23) = happyShift action_19
action_54 (24) = happyShift action_20
action_54 (25) = happyShift action_21
action_54 (35) = happyShift action_22
action_54 (38) = happyShift action_23
action_54 (44) = happyShift action_24
action_54 (5) = happyGoto action_60
action_54 (6) = happyGoto action_4
action_54 (7) = happyGoto action_5
action_54 (8) = happyGoto action_6
action_54 (9) = happyGoto action_7
action_54 (10) = happyGoto action_8
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_9
action_55 (12) = happyShift action_10
action_55 (13) = happyShift action_11
action_55 (14) = happyShift action_12
action_55 (15) = happyShift action_13
action_55 (16) = happyShift action_14
action_55 (17) = happyShift action_15
action_55 (20) = happyShift action_16
action_55 (21) = happyShift action_17
action_55 (22) = happyShift action_18
action_55 (23) = happyShift action_19
action_55 (24) = happyShift action_20
action_55 (25) = happyShift action_21
action_55 (35) = happyShift action_22
action_55 (38) = happyShift action_23
action_55 (44) = happyShift action_24
action_55 (5) = happyGoto action_59
action_55 (6) = happyGoto action_4
action_55 (7) = happyGoto action_5
action_55 (8) = happyGoto action_6
action_55 (9) = happyGoto action_7
action_55 (10) = happyGoto action_8
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (11) = happyShift action_9
action_56 (12) = happyShift action_10
action_56 (13) = happyShift action_11
action_56 (14) = happyShift action_12
action_56 (15) = happyShift action_13
action_56 (16) = happyShift action_14
action_56 (17) = happyShift action_15
action_56 (20) = happyShift action_16
action_56 (21) = happyShift action_17
action_56 (22) = happyShift action_18
action_56 (23) = happyShift action_19
action_56 (24) = happyShift action_20
action_56 (25) = happyShift action_21
action_56 (35) = happyShift action_22
action_56 (38) = happyShift action_23
action_56 (44) = happyShift action_24
action_56 (5) = happyGoto action_58
action_56 (6) = happyGoto action_4
action_56 (7) = happyGoto action_5
action_56 (8) = happyGoto action_6
action_56 (9) = happyGoto action_7
action_56 (10) = happyGoto action_8
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (26) = happyShift action_42
action_57 (27) = happyShift action_43
action_57 (28) = happyShift action_44
action_57 (29) = happyShift action_45
action_57 (30) = happyShift action_46
action_57 (31) = happyShift action_47
action_57 (32) = happyShift action_48
action_57 (34) = happyShift action_49
action_57 (35) = happyShift action_50
action_57 (36) = happyShift action_51
action_57 (37) = happyShift action_52
action_57 (45) = happyShift action_53
action_57 (46) = happyShift action_54
action_57 (47) = happyShift action_55
action_57 (48) = happyShift action_56
action_57 _ = happyReduce_3

action_58 (30) = happyShift action_46
action_58 (31) = happyShift action_47
action_58 (32) = happyShift action_48
action_58 (34) = happyShift action_49
action_58 (35) = happyShift action_50
action_58 (36) = happyShift action_51
action_58 (37) = happyShift action_52
action_58 (45) = happyShift action_53
action_58 (46) = happyShift action_54
action_58 _ = happyReduce_33

action_59 (30) = happyShift action_46
action_59 (31) = happyShift action_47
action_59 (32) = happyShift action_48
action_59 (34) = happyShift action_49
action_59 (35) = happyShift action_50
action_59 (36) = happyShift action_51
action_59 (37) = happyShift action_52
action_59 (45) = happyShift action_53
action_59 (46) = happyShift action_54
action_59 _ = happyReduce_32

action_60 (30) = happyShift action_46
action_60 (31) = happyShift action_47
action_60 (32) = happyShift action_48
action_60 (45) = happyShift action_53
action_60 _ = happyReduce_31

action_61 (45) = happyShift action_53
action_61 _ = happyReduce_30

action_62 (30) = happyShift action_46
action_62 (31) = happyShift action_47
action_62 (32) = happyShift action_48
action_62 (45) = happyShift action_53
action_62 _ = happyReduce_25

action_63 (30) = happyShift action_46
action_63 (31) = happyShift action_47
action_63 (32) = happyShift action_48
action_63 (45) = happyShift action_53
action_63 _ = happyReduce_24

action_64 (30) = happyShift action_46
action_64 (31) = happyShift action_47
action_64 (32) = happyShift action_48
action_64 (36) = happyShift action_51
action_64 (37) = happyShift action_52
action_64 (45) = happyShift action_53
action_64 (46) = happyShift action_54
action_64 _ = happyReduce_23

action_65 (30) = happyShift action_46
action_65 (31) = happyShift action_47
action_65 (32) = happyShift action_48
action_65 (36) = happyShift action_51
action_65 (37) = happyShift action_52
action_65 (45) = happyShift action_53
action_65 (46) = happyShift action_54
action_65 _ = happyReduce_22

action_66 (30) = happyShift action_46
action_66 (32) = happyShift action_48
action_66 (45) = happyShift action_53
action_66 _ = happyReduce_19

action_67 (30) = happyShift action_46
action_67 (32) = happyShift action_48
action_67 (45) = happyShift action_53
action_67 _ = happyReduce_18

action_68 (30) = happyShift action_46
action_68 (32) = happyShift action_48
action_68 (45) = happyShift action_53
action_68 _ = happyReduce_17

action_69 (26) = happyShift action_42
action_69 (27) = happyShift action_43
action_69 (30) = happyShift action_46
action_69 (31) = happyShift action_47
action_69 (32) = happyShift action_48
action_69 (34) = happyShift action_49
action_69 (35) = happyShift action_50
action_69 (36) = happyShift action_51
action_69 (37) = happyShift action_52
action_69 (45) = happyShift action_53
action_69 (46) = happyShift action_54
action_69 (47) = happyShift action_55
action_69 (48) = happyShift action_56
action_69 _ = happyReduce_16

action_70 (26) = happyShift action_42
action_70 (27) = happyShift action_43
action_70 (30) = happyShift action_46
action_70 (31) = happyShift action_47
action_70 (32) = happyShift action_48
action_70 (34) = happyShift action_49
action_70 (35) = happyShift action_50
action_70 (36) = happyShift action_51
action_70 (37) = happyShift action_52
action_70 (45) = happyShift action_53
action_70 (46) = happyShift action_54
action_70 (47) = happyShift action_55
action_70 (48) = happyShift action_56
action_70 _ = happyReduce_15

action_71 (30) = happyShift action_46
action_71 (31) = happyShift action_47
action_71 (32) = happyShift action_48
action_71 (34) = happyShift action_49
action_71 (35) = happyShift action_50
action_71 (36) = happyShift action_51
action_71 (37) = happyShift action_52
action_71 (45) = happyShift action_53
action_71 (46) = happyShift action_54
action_71 _ = happyReduce_14

action_72 (30) = happyShift action_46
action_72 (31) = happyShift action_47
action_72 (32) = happyShift action_48
action_72 (34) = happyShift action_49
action_72 (35) = happyShift action_50
action_72 (36) = happyShift action_51
action_72 (37) = happyShift action_52
action_72 (45) = happyShift action_53
action_72 (46) = happyShift action_54
action_72 _ = happyReduce_13

action_73 (11) = happyShift action_9
action_73 (12) = happyShift action_10
action_73 (13) = happyShift action_11
action_73 (14) = happyShift action_12
action_73 (15) = happyShift action_13
action_73 (16) = happyShift action_14
action_73 (17) = happyShift action_15
action_73 (20) = happyShift action_16
action_73 (21) = happyShift action_17
action_73 (22) = happyShift action_18
action_73 (23) = happyShift action_19
action_73 (24) = happyShift action_20
action_73 (25) = happyShift action_21
action_73 (35) = happyShift action_22
action_73 (38) = happyShift action_23
action_73 (44) = happyShift action_24
action_73 (5) = happyGoto action_88
action_73 (6) = happyGoto action_4
action_73 (7) = happyGoto action_5
action_73 (8) = happyGoto action_6
action_73 (9) = happyGoto action_7
action_73 (10) = happyGoto action_8
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (26) = happyShift action_42
action_74 (27) = happyShift action_43
action_74 (28) = happyShift action_44
action_74 (29) = happyShift action_45
action_74 (30) = happyShift action_46
action_74 (31) = happyShift action_47
action_74 (32) = happyShift action_48
action_74 (34) = happyShift action_49
action_74 (35) = happyShift action_50
action_74 (36) = happyShift action_51
action_74 (37) = happyShift action_52
action_74 (42) = happyShift action_87
action_74 (45) = happyShift action_53
action_74 (46) = happyShift action_54
action_74 (47) = happyShift action_55
action_74 (48) = happyShift action_56
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (11) = happyShift action_9
action_75 (12) = happyShift action_10
action_75 (13) = happyShift action_11
action_75 (14) = happyShift action_12
action_75 (15) = happyShift action_13
action_75 (16) = happyShift action_14
action_75 (17) = happyShift action_15
action_75 (20) = happyShift action_16
action_75 (21) = happyShift action_17
action_75 (22) = happyShift action_18
action_75 (23) = happyShift action_19
action_75 (24) = happyShift action_20
action_75 (25) = happyShift action_21
action_75 (35) = happyShift action_22
action_75 (38) = happyShift action_23
action_75 (44) = happyShift action_24
action_75 (5) = happyGoto action_86
action_75 (6) = happyGoto action_4
action_75 (7) = happyGoto action_5
action_75 (8) = happyGoto action_6
action_75 (9) = happyGoto action_7
action_75 (10) = happyGoto action_8
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (26) = happyShift action_42
action_76 (27) = happyShift action_43
action_76 (28) = happyShift action_44
action_76 (29) = happyShift action_45
action_76 (30) = happyShift action_46
action_76 (31) = happyShift action_47
action_76 (32) = happyShift action_48
action_76 (34) = happyShift action_49
action_76 (35) = happyShift action_50
action_76 (36) = happyShift action_51
action_76 (37) = happyShift action_52
action_76 (43) = happyShift action_85
action_76 (45) = happyShift action_53
action_76 (46) = happyShift action_54
action_76 (47) = happyShift action_55
action_76 (48) = happyShift action_56
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (11) = happyShift action_9
action_77 (12) = happyShift action_10
action_77 (13) = happyShift action_11
action_77 (14) = happyShift action_12
action_77 (15) = happyShift action_13
action_77 (16) = happyShift action_14
action_77 (17) = happyShift action_15
action_77 (20) = happyShift action_16
action_77 (21) = happyShift action_17
action_77 (22) = happyShift action_18
action_77 (23) = happyShift action_19
action_77 (24) = happyShift action_20
action_77 (25) = happyShift action_21
action_77 (35) = happyShift action_22
action_77 (38) = happyShift action_23
action_77 (44) = happyShift action_24
action_77 (4) = happyGoto action_84
action_77 (5) = happyGoto action_3
action_77 (6) = happyGoto action_4
action_77 (7) = happyGoto action_5
action_77 (8) = happyGoto action_6
action_77 (9) = happyGoto action_7
action_77 (10) = happyGoto action_8
action_77 _ = happyReduce_1

action_78 (11) = happyShift action_9
action_78 (12) = happyShift action_10
action_78 (13) = happyShift action_11
action_78 (14) = happyShift action_12
action_78 (15) = happyShift action_13
action_78 (16) = happyShift action_14
action_78 (17) = happyShift action_15
action_78 (20) = happyShift action_16
action_78 (21) = happyShift action_17
action_78 (22) = happyShift action_18
action_78 (23) = happyShift action_19
action_78 (24) = happyShift action_20
action_78 (25) = happyShift action_21
action_78 (35) = happyShift action_22
action_78 (38) = happyShift action_23
action_78 (44) = happyShift action_24
action_78 (5) = happyGoto action_83
action_78 (6) = happyGoto action_4
action_78 (7) = happyGoto action_5
action_78 (8) = happyGoto action_6
action_78 (9) = happyGoto action_7
action_78 (10) = happyGoto action_8
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (26) = happyShift action_42
action_79 (27) = happyShift action_43
action_79 (28) = happyShift action_44
action_79 (29) = happyShift action_45
action_79 (30) = happyShift action_46
action_79 (31) = happyShift action_47
action_79 (32) = happyShift action_48
action_79 (34) = happyShift action_49
action_79 (35) = happyShift action_50
action_79 (36) = happyShift action_51
action_79 (37) = happyShift action_52
action_79 (41) = happyShift action_82
action_79 (45) = happyShift action_53
action_79 (46) = happyShift action_54
action_79 (47) = happyShift action_55
action_79 (48) = happyShift action_56
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (26) = happyShift action_42
action_80 (27) = happyShift action_43
action_80 (28) = happyShift action_44
action_80 (29) = happyShift action_45
action_80 (30) = happyShift action_46
action_80 (31) = happyShift action_47
action_80 (32) = happyShift action_48
action_80 (34) = happyShift action_49
action_80 (35) = happyShift action_50
action_80 (36) = happyShift action_51
action_80 (37) = happyShift action_52
action_80 (45) = happyShift action_53
action_80 (46) = happyShift action_54
action_80 (47) = happyShift action_55
action_80 (48) = happyShift action_56
action_80 _ = happyReduce_43

action_81 _ = happyReduce_35

action_82 _ = happyReduce_26

action_83 (26) = happyShift action_42
action_83 (27) = happyShift action_43
action_83 (28) = happyShift action_44
action_83 (29) = happyShift action_45
action_83 (30) = happyShift action_46
action_83 (31) = happyShift action_47
action_83 (32) = happyShift action_48
action_83 (34) = happyShift action_49
action_83 (35) = happyShift action_50
action_83 (36) = happyShift action_51
action_83 (37) = happyShift action_52
action_83 (43) = happyShift action_93
action_83 (45) = happyShift action_53
action_83 (46) = happyShift action_54
action_83 (47) = happyShift action_55
action_83 (48) = happyShift action_56
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (11) = happyShift action_9
action_84 (12) = happyShift action_10
action_84 (13) = happyShift action_11
action_84 (14) = happyShift action_12
action_84 (15) = happyShift action_13
action_84 (16) = happyShift action_14
action_84 (17) = happyShift action_15
action_84 (20) = happyShift action_16
action_84 (21) = happyShift action_17
action_84 (22) = happyShift action_18
action_84 (23) = happyShift action_19
action_84 (24) = happyShift action_20
action_84 (25) = happyShift action_21
action_84 (35) = happyShift action_22
action_84 (38) = happyShift action_23
action_84 (43) = happyShift action_92
action_84 (44) = happyShift action_24
action_84 (5) = happyGoto action_57
action_84 (6) = happyGoto action_4
action_84 (7) = happyGoto action_5
action_84 (8) = happyGoto action_6
action_84 (9) = happyGoto action_7
action_84 (10) = happyGoto action_8
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_27

action_86 (26) = happyShift action_42
action_86 (27) = happyShift action_43
action_86 (28) = happyShift action_44
action_86 (29) = happyShift action_45
action_86 (30) = happyShift action_46
action_86 (31) = happyShift action_47
action_86 (32) = happyShift action_48
action_86 (34) = happyShift action_49
action_86 (35) = happyShift action_50
action_86 (36) = happyShift action_51
action_86 (37) = happyShift action_52
action_86 (43) = happyShift action_91
action_86 (45) = happyShift action_53
action_86 (46) = happyShift action_54
action_86 (47) = happyShift action_55
action_86 (48) = happyShift action_56
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (11) = happyShift action_9
action_87 (12) = happyShift action_10
action_87 (13) = happyShift action_11
action_87 (14) = happyShift action_12
action_87 (15) = happyShift action_13
action_87 (16) = happyShift action_14
action_87 (17) = happyShift action_15
action_87 (20) = happyShift action_16
action_87 (21) = happyShift action_17
action_87 (22) = happyShift action_18
action_87 (23) = happyShift action_19
action_87 (24) = happyShift action_20
action_87 (25) = happyShift action_21
action_87 (35) = happyShift action_22
action_87 (38) = happyShift action_23
action_87 (44) = happyShift action_24
action_87 (5) = happyGoto action_90
action_87 (6) = happyGoto action_4
action_87 (7) = happyGoto action_5
action_87 (8) = happyGoto action_6
action_87 (9) = happyGoto action_7
action_87 (10) = happyGoto action_8
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (26) = happyShift action_42
action_88 (27) = happyShift action_43
action_88 (28) = happyShift action_44
action_88 (29) = happyShift action_45
action_88 (30) = happyShift action_46
action_88 (31) = happyShift action_47
action_88 (32) = happyShift action_48
action_88 (34) = happyShift action_49
action_88 (35) = happyShift action_50
action_88 (36) = happyShift action_51
action_88 (37) = happyShift action_52
action_88 (43) = happyShift action_89
action_88 (45) = happyShift action_53
action_88 (46) = happyShift action_54
action_88 (47) = happyShift action_55
action_88 (48) = happyShift action_56
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_38

action_90 (26) = happyShift action_42
action_90 (27) = happyShift action_43
action_90 (28) = happyShift action_44
action_90 (29) = happyShift action_45
action_90 (30) = happyShift action_46
action_90 (31) = happyShift action_47
action_90 (32) = happyShift action_48
action_90 (34) = happyShift action_49
action_90 (35) = happyShift action_50
action_90 (36) = happyShift action_51
action_90 (37) = happyShift action_52
action_90 (43) = happyShift action_94
action_90 (45) = happyShift action_53
action_90 (46) = happyShift action_54
action_90 (47) = happyShift action_55
action_90 (48) = happyShift action_56
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_39

action_92 _ = happyReduce_4

action_93 _ = happyReduce_36

action_94 _ = happyReduce_37

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
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_2 : happy_var_1
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
		 (Int happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn5
		 (Boolean happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LE happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (GE happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (NE happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Take happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  5 happyReduction_20
happyReduction_20 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (Var happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 5 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 5 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_2  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Print happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Not happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  5 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  5 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  5 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (Negate happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  5 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 5 6 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 6 7 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Elif happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 5 8 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 5 8 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Else happy_var_4
	) `HappyStk` happyRest

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
happyReduction_43 (HappyAbsSyn5  happy_var_3)
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
	TokenPrint _ -> cont 15;
	TokenWhile _ -> cont 16;
	TokenIf _ -> cont 17;
	TokenElif _ -> cont 18;
	TokenElse _ -> cont 19;
	TokenHasNext _ -> cont 20;
	TokenNext _ -> cont 21;
	TokenSize _ -> cont 22;
	TokenInt _ happy_dollar_dollar -> cont 23;
	TokenBool _ happy_dollar_dollar -> cont 24;
	TokenVar _ happy_dollar_dollar -> cont 25;
	TokenLE _ -> cont 26;
	TokenGE _ -> cont 27;
	TokenEQ _ -> cont 28;
	TokenNE _ -> cont 29;
	TokenCons _ -> cont 30;
	TokenConcat _ -> cont 31;
	TokenTake _ -> cont 32;
	TokenAssign _ -> cont 33;
	TokenPlus _ -> cont 34;
	TokenMinus _ -> cont 35;
	TokenTimes _ -> cont 36;
	TokenDiv _ -> cont 37;
	TokenLParen _ -> cont 38;
	TokenRParen _ -> cont 39;
	TokenLSquare _ -> cont 40;
	TokenRSquare _ -> cont 41;
	TokenLCurly _ -> cont 42;
	TokenRCurly _ -> cont 43;
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
          deriving (Show)

data Exp = While Exp Exp
         | If Exp Exp
         | Elif Exp Exp
         | Else Exp
         | Print Exp
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
         deriving (Show)
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

{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,579) ([0,0,0,0,0,0,0,59376,36871,66,0,0,0,0,63488,32875,7,384,0,0,4096,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,57840,36871,66,7936,126,1065,61440,2017,17040,0,32287,10496,4,57840,36871,66,7936,126,1065,0,0,0,0,0,0,0,0,1024,2,7936,126,1065,61440,2017,17040,0,32287,10496,4,57840,36871,66,0,14336,2048,0,63488,32891,7,0,16384,2,0,31736,1921,0,14336,2048,61440,2017,17040,0,32287,10496,4,0,0,0,0,0,0,0,0,0,0,32768,34751,120,0,31736,1928,0,49024,30727,61440,2017,17040,0,0,0,0,0,1024,0,0,0,128,61440,2017,17040,0,0,32768,0,57840,36871,66,7936,126,1065,61440,2017,17040,0,32287,10496,4,57840,36871,66,7936,126,1065,61440,2017,17040,0,32287,10496,4,57840,36871,66,7936,126,1065,61440,2017,17040,0,32287,10496,4,57840,36871,66,7936,126,1065,61440,2017,17040,0,0,0,0,0,31616,384,0,47104,6151,0,32768,32771,0,0,0,8,0,896,128,0,14336,2048,0,32768,32867,1,0,1592,24,0,640,128,0,10240,2048,0,32768,32770,0,32768,1977,120,0,31640,1920,0,47104,6151,0,32768,32891,1,0,0,0,0,31736,1928,0,0,0,0,63488,36987,7,0,0,0,0,0,0,0,49024,30791,0,63488,32891,7,0,0,0,0,0,0,7936,126,1065,0,63488,32891,7,0,0,0,59376,36871,82,32512,126,1321,0,0,0,0,32383,10496,5,0,0,0,32512,126,1321,0,0,0,0,32383,10496,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Expr1","Exp","If","Elif","Else","StreamLiteral","Type","Assign","int_type","stream_type","bool_type","input","print","while","if","elif","else","has_next","next","size","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'<-'","'='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 52
        bit_end = (st + 1) * 52
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..51]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (19) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (23) = happyShift action_18
action_0 (24) = happyShift action_19
action_0 (25) = happyShift action_20
action_0 (26) = happyShift action_21
action_0 (27) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (40) = happyShift action_24
action_0 (42) = happyShift action_25
action_0 (47) = happyShift action_26
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (8) = happyGoto action_6
action_0 (9) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (13) = happyShift action_10
action_2 (14) = happyShift action_11
action_2 (15) = happyShift action_12
action_2 (16) = happyShift action_13
action_2 (17) = happyShift action_14
action_2 (18) = happyShift action_15
action_2 (19) = happyShift action_16
action_2 (22) = happyShift action_17
action_2 (23) = happyShift action_18
action_2 (24) = happyShift action_19
action_2 (25) = happyShift action_20
action_2 (26) = happyShift action_21
action_2 (27) = happyShift action_22
action_2 (37) = happyShift action_23
action_2 (40) = happyShift action_24
action_2 (42) = happyShift action_25
action_2 (47) = happyShift action_26
action_2 (52) = happyAccept
action_2 (5) = happyGoto action_61
action_2 (6) = happyGoto action_4
action_2 (7) = happyGoto action_5
action_2 (8) = happyGoto action_6
action_2 (9) = happyGoto action_7
action_2 (11) = happyGoto action_8
action_2 (12) = happyGoto action_9
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (28) = happyShift action_46
action_4 (29) = happyShift action_47
action_4 (30) = happyShift action_48
action_4 (31) = happyShift action_49
action_4 (32) = happyShift action_50
action_4 (33) = happyShift action_51
action_4 (34) = happyShift action_52
action_4 (36) = happyShift action_53
action_4 (37) = happyShift action_54
action_4 (38) = happyShift action_55
action_4 (39) = happyShift action_56
action_4 (48) = happyShift action_57
action_4 (49) = happyShift action_58
action_4 (50) = happyShift action_59
action_4 (51) = happyShift action_60
action_4 _ = happyReduce_8

action_5 (20) = happyShift action_44
action_5 (21) = happyShift action_45
action_5 _ = happyReduce_5

action_6 (21) = happyShift action_43
action_6 _ = happyReduce_6

action_7 _ = happyReduce_7

action_8 (27) = happyShift action_42
action_8 (12) = happyGoto action_41
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_23

action_10 _ = happyReduce_45

action_11 _ = happyReduce_47

action_12 _ = happyReduce_46

action_13 (44) = happyShift action_40
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (13) = happyShift action_10
action_14 (14) = happyShift action_11
action_14 (15) = happyShift action_12
action_14 (16) = happyShift action_13
action_14 (17) = happyShift action_14
action_14 (22) = happyShift action_17
action_14 (23) = happyShift action_18
action_14 (24) = happyShift action_19
action_14 (25) = happyShift action_20
action_14 (26) = happyShift action_21
action_14 (27) = happyShift action_22
action_14 (37) = happyShift action_23
action_14 (40) = happyShift action_24
action_14 (42) = happyShift action_25
action_14 (47) = happyShift action_26
action_14 (6) = happyGoto action_39
action_14 (11) = happyGoto action_8
action_14 (12) = happyGoto action_9
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_10
action_15 (14) = happyShift action_11
action_15 (15) = happyShift action_12
action_15 (16) = happyShift action_13
action_15 (17) = happyShift action_14
action_15 (22) = happyShift action_17
action_15 (23) = happyShift action_18
action_15 (24) = happyShift action_19
action_15 (25) = happyShift action_20
action_15 (26) = happyShift action_21
action_15 (27) = happyShift action_22
action_15 (37) = happyShift action_23
action_15 (40) = happyShift action_24
action_15 (42) = happyShift action_25
action_15 (47) = happyShift action_26
action_15 (6) = happyGoto action_38
action_15 (11) = happyGoto action_8
action_15 (12) = happyGoto action_9
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (17) = happyShift action_14
action_16 (22) = happyShift action_17
action_16 (23) = happyShift action_18
action_16 (24) = happyShift action_19
action_16 (25) = happyShift action_20
action_16 (26) = happyShift action_21
action_16 (27) = happyShift action_22
action_16 (37) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (42) = happyShift action_25
action_16 (47) = happyShift action_26
action_16 (6) = happyGoto action_37
action_16 (11) = happyGoto action_8
action_16 (12) = happyGoto action_9
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (16) = happyShift action_13
action_17 (17) = happyShift action_14
action_17 (22) = happyShift action_17
action_17 (23) = happyShift action_18
action_17 (24) = happyShift action_19
action_17 (25) = happyShift action_20
action_17 (26) = happyShift action_21
action_17 (27) = happyShift action_22
action_17 (37) = happyShift action_23
action_17 (40) = happyShift action_24
action_17 (42) = happyShift action_25
action_17 (47) = happyShift action_26
action_17 (6) = happyGoto action_36
action_17 (11) = happyGoto action_8
action_17 (12) = happyGoto action_9
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (17) = happyShift action_14
action_18 (22) = happyShift action_17
action_18 (23) = happyShift action_18
action_18 (24) = happyShift action_19
action_18 (25) = happyShift action_20
action_18 (26) = happyShift action_21
action_18 (27) = happyShift action_22
action_18 (37) = happyShift action_23
action_18 (40) = happyShift action_24
action_18 (42) = happyShift action_25
action_18 (47) = happyShift action_26
action_18 (6) = happyGoto action_35
action_18 (11) = happyGoto action_8
action_18 (12) = happyGoto action_9
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (13) = happyShift action_10
action_19 (14) = happyShift action_11
action_19 (15) = happyShift action_12
action_19 (16) = happyShift action_13
action_19 (17) = happyShift action_14
action_19 (22) = happyShift action_17
action_19 (23) = happyShift action_18
action_19 (24) = happyShift action_19
action_19 (25) = happyShift action_20
action_19 (26) = happyShift action_21
action_19 (27) = happyShift action_22
action_19 (37) = happyShift action_23
action_19 (40) = happyShift action_24
action_19 (42) = happyShift action_25
action_19 (47) = happyShift action_26
action_19 (6) = happyGoto action_34
action_19 (11) = happyGoto action_8
action_19 (12) = happyGoto action_9
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_12

action_21 _ = happyReduce_13

action_22 (35) = happyShift action_32
action_22 (42) = happyShift action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (13) = happyShift action_10
action_23 (14) = happyShift action_11
action_23 (15) = happyShift action_12
action_23 (16) = happyShift action_13
action_23 (17) = happyShift action_14
action_23 (22) = happyShift action_17
action_23 (23) = happyShift action_18
action_23 (24) = happyShift action_19
action_23 (25) = happyShift action_20
action_23 (26) = happyShift action_21
action_23 (27) = happyShift action_22
action_23 (37) = happyShift action_23
action_23 (40) = happyShift action_24
action_23 (42) = happyShift action_25
action_23 (47) = happyShift action_26
action_23 (6) = happyGoto action_31
action_23 (11) = happyGoto action_8
action_23 (12) = happyGoto action_9
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_11
action_24 (15) = happyShift action_12
action_24 (16) = happyShift action_13
action_24 (17) = happyShift action_14
action_24 (22) = happyShift action_17
action_24 (23) = happyShift action_18
action_24 (24) = happyShift action_19
action_24 (25) = happyShift action_20
action_24 (26) = happyShift action_21
action_24 (27) = happyShift action_22
action_24 (37) = happyShift action_23
action_24 (40) = happyShift action_24
action_24 (42) = happyShift action_25
action_24 (47) = happyShift action_26
action_24 (6) = happyGoto action_30
action_24 (11) = happyGoto action_8
action_24 (12) = happyGoto action_9
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (13) = happyShift action_10
action_25 (14) = happyShift action_11
action_25 (15) = happyShift action_12
action_25 (16) = happyShift action_13
action_25 (17) = happyShift action_14
action_25 (22) = happyShift action_17
action_25 (23) = happyShift action_18
action_25 (24) = happyShift action_19
action_25 (25) = happyShift action_20
action_25 (26) = happyShift action_21
action_25 (27) = happyShift action_22
action_25 (37) = happyShift action_23
action_25 (40) = happyShift action_24
action_25 (42) = happyShift action_25
action_25 (47) = happyShift action_26
action_25 (6) = happyGoto action_28
action_25 (10) = happyGoto action_29
action_25 (11) = happyGoto action_8
action_25 (12) = happyGoto action_9
action_25 _ = happyReduce_42

action_26 (13) = happyShift action_10
action_26 (14) = happyShift action_11
action_26 (15) = happyShift action_12
action_26 (16) = happyShift action_13
action_26 (17) = happyShift action_14
action_26 (22) = happyShift action_17
action_26 (23) = happyShift action_18
action_26 (24) = happyShift action_19
action_26 (25) = happyShift action_20
action_26 (26) = happyShift action_21
action_26 (27) = happyShift action_22
action_26 (37) = happyShift action_23
action_26 (40) = happyShift action_24
action_26 (42) = happyShift action_25
action_26 (47) = happyShift action_26
action_26 (6) = happyGoto action_27
action_26 (11) = happyGoto action_8
action_26 (12) = happyGoto action_9
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (32) = happyShift action_50
action_27 (33) = happyShift action_51
action_27 (34) = happyShift action_52
action_27 (48) = happyShift action_57
action_27 _ = happyReduce_31

action_28 (28) = happyShift action_46
action_28 (29) = happyShift action_47
action_28 (30) = happyShift action_48
action_28 (31) = happyShift action_49
action_28 (32) = happyShift action_50
action_28 (33) = happyShift action_51
action_28 (34) = happyShift action_52
action_28 (36) = happyShift action_53
action_28 (37) = happyShift action_54
action_28 (38) = happyShift action_55
action_28 (39) = happyShift action_56
action_28 (48) = happyShift action_57
action_28 (49) = happyShift action_58
action_28 (50) = happyShift action_59
action_28 (51) = happyShift action_60
action_28 _ = happyReduce_43

action_29 (43) = happyShift action_86
action_29 (46) = happyShift action_87
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (28) = happyShift action_46
action_30 (29) = happyShift action_47
action_30 (30) = happyShift action_48
action_30 (31) = happyShift action_49
action_30 (32) = happyShift action_50
action_30 (33) = happyShift action_51
action_30 (34) = happyShift action_52
action_30 (36) = happyShift action_53
action_30 (37) = happyShift action_54
action_30 (38) = happyShift action_55
action_30 (39) = happyShift action_56
action_30 (41) = happyShift action_85
action_30 (48) = happyShift action_57
action_30 (49) = happyShift action_58
action_30 (50) = happyShift action_59
action_30 (51) = happyShift action_60
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (32) = happyShift action_50
action_31 (33) = happyShift action_51
action_31 (34) = happyShift action_52
action_31 (48) = happyShift action_57
action_31 _ = happyReduce_36

action_32 (13) = happyShift action_10
action_32 (14) = happyShift action_11
action_32 (15) = happyShift action_12
action_32 (16) = happyShift action_13
action_32 (17) = happyShift action_14
action_32 (22) = happyShift action_17
action_32 (23) = happyShift action_18
action_32 (24) = happyShift action_19
action_32 (25) = happyShift action_20
action_32 (26) = happyShift action_21
action_32 (27) = happyShift action_22
action_32 (37) = happyShift action_23
action_32 (40) = happyShift action_24
action_32 (42) = happyShift action_25
action_32 (47) = happyShift action_26
action_32 (6) = happyGoto action_84
action_32 (11) = happyGoto action_8
action_32 (12) = happyGoto action_9
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_10
action_33 (14) = happyShift action_11
action_33 (15) = happyShift action_12
action_33 (16) = happyShift action_13
action_33 (17) = happyShift action_14
action_33 (22) = happyShift action_17
action_33 (23) = happyShift action_18
action_33 (24) = happyShift action_19
action_33 (25) = happyShift action_20
action_33 (26) = happyShift action_21
action_33 (27) = happyShift action_22
action_33 (37) = happyShift action_23
action_33 (40) = happyShift action_24
action_33 (42) = happyShift action_25
action_33 (47) = happyShift action_26
action_33 (6) = happyGoto action_83
action_33 (11) = happyGoto action_8
action_33 (12) = happyGoto action_9
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_11

action_35 _ = happyReduce_10

action_36 _ = happyReduce_9

action_37 (28) = happyShift action_46
action_37 (29) = happyShift action_47
action_37 (30) = happyShift action_48
action_37 (31) = happyShift action_49
action_37 (32) = happyShift action_50
action_37 (33) = happyShift action_51
action_37 (34) = happyShift action_52
action_37 (36) = happyShift action_53
action_37 (37) = happyShift action_54
action_37 (38) = happyShift action_55
action_37 (39) = happyShift action_56
action_37 (44) = happyShift action_82
action_37 (48) = happyShift action_57
action_37 (49) = happyShift action_58
action_37 (50) = happyShift action_59
action_37 (51) = happyShift action_60
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (28) = happyShift action_46
action_38 (29) = happyShift action_47
action_38 (30) = happyShift action_48
action_38 (31) = happyShift action_49
action_38 (32) = happyShift action_50
action_38 (33) = happyShift action_51
action_38 (34) = happyShift action_52
action_38 (36) = happyShift action_53
action_38 (37) = happyShift action_54
action_38 (38) = happyShift action_55
action_38 (39) = happyShift action_56
action_38 (44) = happyShift action_81
action_38 (48) = happyShift action_57
action_38 (49) = happyShift action_58
action_38 (50) = happyShift action_59
action_38 (51) = happyShift action_60
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_46
action_39 (29) = happyShift action_47
action_39 (30) = happyShift action_48
action_39 (31) = happyShift action_49
action_39 (32) = happyShift action_50
action_39 (33) = happyShift action_51
action_39 (34) = happyShift action_52
action_39 (36) = happyShift action_53
action_39 (37) = happyShift action_54
action_39 (38) = happyShift action_55
action_39 (39) = happyShift action_56
action_39 (48) = happyShift action_57
action_39 (49) = happyShift action_58
action_39 (50) = happyShift action_59
action_39 (51) = happyShift action_60
action_39 _ = happyReduce_30

action_40 (13) = happyShift action_10
action_40 (14) = happyShift action_11
action_40 (15) = happyShift action_12
action_40 (16) = happyShift action_13
action_40 (17) = happyShift action_14
action_40 (22) = happyShift action_17
action_40 (23) = happyShift action_18
action_40 (24) = happyShift action_19
action_40 (25) = happyShift action_20
action_40 (26) = happyShift action_21
action_40 (27) = happyShift action_22
action_40 (37) = happyShift action_23
action_40 (40) = happyShift action_24
action_40 (42) = happyShift action_25
action_40 (47) = happyShift action_26
action_40 (6) = happyGoto action_80
action_40 (11) = happyGoto action_8
action_40 (12) = happyGoto action_9
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_22

action_42 (35) = happyShift action_32
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (44) = happyShift action_79
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (13) = happyShift action_10
action_44 (14) = happyShift action_11
action_44 (15) = happyShift action_12
action_44 (16) = happyShift action_13
action_44 (17) = happyShift action_14
action_44 (22) = happyShift action_17
action_44 (23) = happyShift action_18
action_44 (24) = happyShift action_19
action_44 (25) = happyShift action_20
action_44 (26) = happyShift action_21
action_44 (27) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (40) = happyShift action_24
action_44 (42) = happyShift action_25
action_44 (47) = happyShift action_26
action_44 (6) = happyGoto action_78
action_44 (11) = happyGoto action_8
action_44 (12) = happyGoto action_9
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (44) = happyShift action_77
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (13) = happyShift action_10
action_46 (14) = happyShift action_11
action_46 (15) = happyShift action_12
action_46 (16) = happyShift action_13
action_46 (17) = happyShift action_14
action_46 (22) = happyShift action_17
action_46 (23) = happyShift action_18
action_46 (24) = happyShift action_19
action_46 (25) = happyShift action_20
action_46 (26) = happyShift action_21
action_46 (27) = happyShift action_22
action_46 (37) = happyShift action_23
action_46 (40) = happyShift action_24
action_46 (42) = happyShift action_25
action_46 (47) = happyShift action_26
action_46 (6) = happyGoto action_76
action_46 (11) = happyGoto action_8
action_46 (12) = happyGoto action_9
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (13) = happyShift action_10
action_47 (14) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (16) = happyShift action_13
action_47 (17) = happyShift action_14
action_47 (22) = happyShift action_17
action_47 (23) = happyShift action_18
action_47 (24) = happyShift action_19
action_47 (25) = happyShift action_20
action_47 (26) = happyShift action_21
action_47 (27) = happyShift action_22
action_47 (37) = happyShift action_23
action_47 (40) = happyShift action_24
action_47 (42) = happyShift action_25
action_47 (47) = happyShift action_26
action_47 (6) = happyGoto action_75
action_47 (11) = happyGoto action_8
action_47 (12) = happyGoto action_9
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (13) = happyShift action_10
action_48 (14) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (16) = happyShift action_13
action_48 (17) = happyShift action_14
action_48 (22) = happyShift action_17
action_48 (23) = happyShift action_18
action_48 (24) = happyShift action_19
action_48 (25) = happyShift action_20
action_48 (26) = happyShift action_21
action_48 (27) = happyShift action_22
action_48 (37) = happyShift action_23
action_48 (40) = happyShift action_24
action_48 (42) = happyShift action_25
action_48 (47) = happyShift action_26
action_48 (6) = happyGoto action_74
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (13) = happyShift action_10
action_49 (14) = happyShift action_11
action_49 (15) = happyShift action_12
action_49 (16) = happyShift action_13
action_49 (17) = happyShift action_14
action_49 (22) = happyShift action_17
action_49 (23) = happyShift action_18
action_49 (24) = happyShift action_19
action_49 (25) = happyShift action_20
action_49 (26) = happyShift action_21
action_49 (27) = happyShift action_22
action_49 (37) = happyShift action_23
action_49 (40) = happyShift action_24
action_49 (42) = happyShift action_25
action_49 (47) = happyShift action_26
action_49 (6) = happyGoto action_73
action_49 (11) = happyGoto action_8
action_49 (12) = happyGoto action_9
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (13) = happyShift action_10
action_50 (14) = happyShift action_11
action_50 (15) = happyShift action_12
action_50 (16) = happyShift action_13
action_50 (17) = happyShift action_14
action_50 (22) = happyShift action_17
action_50 (23) = happyShift action_18
action_50 (24) = happyShift action_19
action_50 (25) = happyShift action_20
action_50 (26) = happyShift action_21
action_50 (27) = happyShift action_22
action_50 (37) = happyShift action_23
action_50 (40) = happyShift action_24
action_50 (42) = happyShift action_25
action_50 (47) = happyShift action_26
action_50 (6) = happyGoto action_72
action_50 (11) = happyGoto action_8
action_50 (12) = happyGoto action_9
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (13) = happyShift action_10
action_51 (14) = happyShift action_11
action_51 (15) = happyShift action_12
action_51 (16) = happyShift action_13
action_51 (17) = happyShift action_14
action_51 (22) = happyShift action_17
action_51 (23) = happyShift action_18
action_51 (24) = happyShift action_19
action_51 (25) = happyShift action_20
action_51 (26) = happyShift action_21
action_51 (27) = happyShift action_22
action_51 (37) = happyShift action_23
action_51 (40) = happyShift action_24
action_51 (42) = happyShift action_25
action_51 (47) = happyShift action_26
action_51 (6) = happyGoto action_71
action_51 (11) = happyGoto action_8
action_51 (12) = happyGoto action_9
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (13) = happyShift action_10
action_52 (14) = happyShift action_11
action_52 (15) = happyShift action_12
action_52 (16) = happyShift action_13
action_52 (17) = happyShift action_14
action_52 (22) = happyShift action_17
action_52 (23) = happyShift action_18
action_52 (24) = happyShift action_19
action_52 (25) = happyShift action_20
action_52 (26) = happyShift action_21
action_52 (27) = happyShift action_22
action_52 (37) = happyShift action_23
action_52 (40) = happyShift action_24
action_52 (42) = happyShift action_25
action_52 (47) = happyShift action_26
action_52 (6) = happyGoto action_70
action_52 (11) = happyGoto action_8
action_52 (12) = happyGoto action_9
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (13) = happyShift action_10
action_53 (14) = happyShift action_11
action_53 (15) = happyShift action_12
action_53 (16) = happyShift action_13
action_53 (17) = happyShift action_14
action_53 (22) = happyShift action_17
action_53 (23) = happyShift action_18
action_53 (24) = happyShift action_19
action_53 (25) = happyShift action_20
action_53 (26) = happyShift action_21
action_53 (27) = happyShift action_22
action_53 (37) = happyShift action_23
action_53 (40) = happyShift action_24
action_53 (42) = happyShift action_25
action_53 (47) = happyShift action_26
action_53 (6) = happyGoto action_69
action_53 (11) = happyGoto action_8
action_53 (12) = happyGoto action_9
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (13) = happyShift action_10
action_54 (14) = happyShift action_11
action_54 (15) = happyShift action_12
action_54 (16) = happyShift action_13
action_54 (17) = happyShift action_14
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (25) = happyShift action_20
action_54 (26) = happyShift action_21
action_54 (27) = happyShift action_22
action_54 (37) = happyShift action_23
action_54 (40) = happyShift action_24
action_54 (42) = happyShift action_25
action_54 (47) = happyShift action_26
action_54 (6) = happyGoto action_68
action_54 (11) = happyGoto action_8
action_54 (12) = happyGoto action_9
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (13) = happyShift action_10
action_55 (14) = happyShift action_11
action_55 (15) = happyShift action_12
action_55 (16) = happyShift action_13
action_55 (17) = happyShift action_14
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (26) = happyShift action_21
action_55 (27) = happyShift action_22
action_55 (37) = happyShift action_23
action_55 (40) = happyShift action_24
action_55 (42) = happyShift action_25
action_55 (47) = happyShift action_26
action_55 (6) = happyGoto action_67
action_55 (11) = happyGoto action_8
action_55 (12) = happyGoto action_9
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (13) = happyShift action_10
action_56 (14) = happyShift action_11
action_56 (15) = happyShift action_12
action_56 (16) = happyShift action_13
action_56 (17) = happyShift action_14
action_56 (22) = happyShift action_17
action_56 (23) = happyShift action_18
action_56 (24) = happyShift action_19
action_56 (25) = happyShift action_20
action_56 (26) = happyShift action_21
action_56 (27) = happyShift action_22
action_56 (37) = happyShift action_23
action_56 (40) = happyShift action_24
action_56 (42) = happyShift action_25
action_56 (47) = happyShift action_26
action_56 (6) = happyGoto action_66
action_56 (11) = happyGoto action_8
action_56 (12) = happyGoto action_9
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (13) = happyShift action_10
action_57 (14) = happyShift action_11
action_57 (15) = happyShift action_12
action_57 (16) = happyShift action_13
action_57 (17) = happyShift action_14
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (25) = happyShift action_20
action_57 (26) = happyShift action_21
action_57 (27) = happyShift action_22
action_57 (37) = happyShift action_23
action_57 (40) = happyShift action_24
action_57 (42) = happyShift action_25
action_57 (47) = happyShift action_26
action_57 (6) = happyGoto action_65
action_57 (11) = happyGoto action_8
action_57 (12) = happyGoto action_9
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (13) = happyShift action_10
action_58 (14) = happyShift action_11
action_58 (15) = happyShift action_12
action_58 (16) = happyShift action_13
action_58 (17) = happyShift action_14
action_58 (22) = happyShift action_17
action_58 (23) = happyShift action_18
action_58 (24) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (26) = happyShift action_21
action_58 (27) = happyShift action_22
action_58 (37) = happyShift action_23
action_58 (40) = happyShift action_24
action_58 (42) = happyShift action_25
action_58 (47) = happyShift action_26
action_58 (6) = happyGoto action_64
action_58 (11) = happyGoto action_8
action_58 (12) = happyGoto action_9
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (13) = happyShift action_10
action_59 (14) = happyShift action_11
action_59 (15) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (17) = happyShift action_14
action_59 (22) = happyShift action_17
action_59 (23) = happyShift action_18
action_59 (24) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (26) = happyShift action_21
action_59 (27) = happyShift action_22
action_59 (37) = happyShift action_23
action_59 (40) = happyShift action_24
action_59 (42) = happyShift action_25
action_59 (47) = happyShift action_26
action_59 (6) = happyGoto action_63
action_59 (11) = happyGoto action_8
action_59 (12) = happyGoto action_9
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (13) = happyShift action_10
action_60 (14) = happyShift action_11
action_60 (15) = happyShift action_12
action_60 (16) = happyShift action_13
action_60 (17) = happyShift action_14
action_60 (22) = happyShift action_17
action_60 (23) = happyShift action_18
action_60 (24) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (26) = happyShift action_21
action_60 (27) = happyShift action_22
action_60 (37) = happyShift action_23
action_60 (40) = happyShift action_24
action_60 (42) = happyShift action_25
action_60 (47) = happyShift action_26
action_60 (6) = happyGoto action_62
action_60 (11) = happyGoto action_8
action_60 (12) = happyGoto action_9
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_3

action_62 (32) = happyShift action_50
action_62 (33) = happyShift action_51
action_62 (34) = happyShift action_52
action_62 (36) = happyShift action_53
action_62 (37) = happyShift action_54
action_62 (38) = happyShift action_55
action_62 (39) = happyShift action_56
action_62 (48) = happyShift action_57
action_62 (49) = happyShift action_58
action_62 _ = happyReduce_35

action_63 (32) = happyShift action_50
action_63 (33) = happyShift action_51
action_63 (34) = happyShift action_52
action_63 (36) = happyShift action_53
action_63 (37) = happyShift action_54
action_63 (38) = happyShift action_55
action_63 (39) = happyShift action_56
action_63 (48) = happyShift action_57
action_63 (49) = happyShift action_58
action_63 _ = happyReduce_34

action_64 (32) = happyShift action_50
action_64 (33) = happyShift action_51
action_64 (34) = happyShift action_52
action_64 (48) = happyShift action_57
action_64 _ = happyReduce_33

action_65 (48) = happyShift action_57
action_65 _ = happyReduce_32

action_66 (32) = happyShift action_50
action_66 (33) = happyShift action_51
action_66 (34) = happyShift action_52
action_66 (48) = happyShift action_57
action_66 _ = happyReduce_27

action_67 (32) = happyShift action_50
action_67 (33) = happyShift action_51
action_67 (34) = happyShift action_52
action_67 (48) = happyShift action_57
action_67 _ = happyReduce_26

action_68 (32) = happyShift action_50
action_68 (33) = happyShift action_51
action_68 (34) = happyShift action_52
action_68 (38) = happyShift action_55
action_68 (39) = happyShift action_56
action_68 (48) = happyShift action_57
action_68 (49) = happyShift action_58
action_68 _ = happyReduce_25

action_69 (32) = happyShift action_50
action_69 (33) = happyShift action_51
action_69 (34) = happyShift action_52
action_69 (38) = happyShift action_55
action_69 (39) = happyShift action_56
action_69 (48) = happyShift action_57
action_69 (49) = happyShift action_58
action_69 _ = happyReduce_24

action_70 (32) = happyShift action_50
action_70 (34) = happyShift action_52
action_70 (48) = happyShift action_57
action_70 _ = happyReduce_21

action_71 (32) = happyShift action_50
action_71 (34) = happyShift action_52
action_71 (48) = happyShift action_57
action_71 _ = happyReduce_20

action_72 (32) = happyShift action_50
action_72 (34) = happyShift action_52
action_72 (48) = happyShift action_57
action_72 _ = happyReduce_19

action_73 (28) = happyShift action_46
action_73 (29) = happyShift action_47
action_73 (32) = happyShift action_50
action_73 (33) = happyShift action_51
action_73 (34) = happyShift action_52
action_73 (36) = happyShift action_53
action_73 (37) = happyShift action_54
action_73 (38) = happyShift action_55
action_73 (39) = happyShift action_56
action_73 (48) = happyShift action_57
action_73 (49) = happyShift action_58
action_73 (50) = happyShift action_59
action_73 (51) = happyShift action_60
action_73 _ = happyReduce_18

action_74 (28) = happyShift action_46
action_74 (29) = happyShift action_47
action_74 (32) = happyShift action_50
action_74 (33) = happyShift action_51
action_74 (34) = happyShift action_52
action_74 (36) = happyShift action_53
action_74 (37) = happyShift action_54
action_74 (38) = happyShift action_55
action_74 (39) = happyShift action_56
action_74 (48) = happyShift action_57
action_74 (49) = happyShift action_58
action_74 (50) = happyShift action_59
action_74 (51) = happyShift action_60
action_74 _ = happyReduce_17

action_75 (32) = happyShift action_50
action_75 (33) = happyShift action_51
action_75 (34) = happyShift action_52
action_75 (36) = happyShift action_53
action_75 (37) = happyShift action_54
action_75 (38) = happyShift action_55
action_75 (39) = happyShift action_56
action_75 (48) = happyShift action_57
action_75 (49) = happyShift action_58
action_75 _ = happyReduce_16

action_76 (32) = happyShift action_50
action_76 (33) = happyShift action_51
action_76 (34) = happyShift action_52
action_76 (36) = happyShift action_53
action_76 (37) = happyShift action_54
action_76 (38) = happyShift action_55
action_76 (39) = happyShift action_56
action_76 (48) = happyShift action_57
action_76 (49) = happyShift action_58
action_76 _ = happyReduce_15

action_77 (13) = happyShift action_10
action_77 (14) = happyShift action_11
action_77 (15) = happyShift action_12
action_77 (16) = happyShift action_13
action_77 (17) = happyShift action_14
action_77 (18) = happyShift action_15
action_77 (19) = happyShift action_16
action_77 (22) = happyShift action_17
action_77 (23) = happyShift action_18
action_77 (24) = happyShift action_19
action_77 (25) = happyShift action_20
action_77 (26) = happyShift action_21
action_77 (27) = happyShift action_22
action_77 (37) = happyShift action_23
action_77 (40) = happyShift action_24
action_77 (42) = happyShift action_25
action_77 (47) = happyShift action_26
action_77 (4) = happyGoto action_95
action_77 (5) = happyGoto action_3
action_77 (6) = happyGoto action_4
action_77 (7) = happyGoto action_5
action_77 (8) = happyGoto action_6
action_77 (9) = happyGoto action_7
action_77 (11) = happyGoto action_8
action_77 (12) = happyGoto action_9
action_77 _ = happyReduce_1

action_78 (28) = happyShift action_46
action_78 (29) = happyShift action_47
action_78 (30) = happyShift action_48
action_78 (31) = happyShift action_49
action_78 (32) = happyShift action_50
action_78 (33) = happyShift action_51
action_78 (34) = happyShift action_52
action_78 (36) = happyShift action_53
action_78 (37) = happyShift action_54
action_78 (38) = happyShift action_55
action_78 (39) = happyShift action_56
action_78 (44) = happyShift action_94
action_78 (48) = happyShift action_57
action_78 (49) = happyShift action_58
action_78 (50) = happyShift action_59
action_78 (51) = happyShift action_60
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (13) = happyShift action_10
action_79 (14) = happyShift action_11
action_79 (15) = happyShift action_12
action_79 (16) = happyShift action_13
action_79 (17) = happyShift action_14
action_79 (18) = happyShift action_15
action_79 (19) = happyShift action_16
action_79 (22) = happyShift action_17
action_79 (23) = happyShift action_18
action_79 (24) = happyShift action_19
action_79 (25) = happyShift action_20
action_79 (26) = happyShift action_21
action_79 (27) = happyShift action_22
action_79 (37) = happyShift action_23
action_79 (40) = happyShift action_24
action_79 (42) = happyShift action_25
action_79 (47) = happyShift action_26
action_79 (4) = happyGoto action_93
action_79 (5) = happyGoto action_3
action_79 (6) = happyGoto action_4
action_79 (7) = happyGoto action_5
action_79 (8) = happyGoto action_6
action_79 (9) = happyGoto action_7
action_79 (11) = happyGoto action_8
action_79 (12) = happyGoto action_9
action_79 _ = happyReduce_1

action_80 (28) = happyShift action_46
action_80 (29) = happyShift action_47
action_80 (30) = happyShift action_48
action_80 (31) = happyShift action_49
action_80 (32) = happyShift action_50
action_80 (33) = happyShift action_51
action_80 (34) = happyShift action_52
action_80 (36) = happyShift action_53
action_80 (37) = happyShift action_54
action_80 (38) = happyShift action_55
action_80 (39) = happyShift action_56
action_80 (45) = happyShift action_92
action_80 (48) = happyShift action_57
action_80 (49) = happyShift action_58
action_80 (50) = happyShift action_59
action_80 (51) = happyShift action_60
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (13) = happyShift action_10
action_81 (14) = happyShift action_11
action_81 (15) = happyShift action_12
action_81 (16) = happyShift action_13
action_81 (17) = happyShift action_14
action_81 (18) = happyShift action_15
action_81 (19) = happyShift action_16
action_81 (22) = happyShift action_17
action_81 (23) = happyShift action_18
action_81 (24) = happyShift action_19
action_81 (25) = happyShift action_20
action_81 (26) = happyShift action_21
action_81 (27) = happyShift action_22
action_81 (37) = happyShift action_23
action_81 (40) = happyShift action_24
action_81 (42) = happyShift action_25
action_81 (47) = happyShift action_26
action_81 (4) = happyGoto action_91
action_81 (5) = happyGoto action_3
action_81 (6) = happyGoto action_4
action_81 (7) = happyGoto action_5
action_81 (8) = happyGoto action_6
action_81 (9) = happyGoto action_7
action_81 (11) = happyGoto action_8
action_81 (12) = happyGoto action_9
action_81 _ = happyReduce_1

action_82 (13) = happyShift action_10
action_82 (14) = happyShift action_11
action_82 (15) = happyShift action_12
action_82 (16) = happyShift action_13
action_82 (17) = happyShift action_14
action_82 (18) = happyShift action_15
action_82 (19) = happyShift action_16
action_82 (22) = happyShift action_17
action_82 (23) = happyShift action_18
action_82 (24) = happyShift action_19
action_82 (25) = happyShift action_20
action_82 (26) = happyShift action_21
action_82 (27) = happyShift action_22
action_82 (37) = happyShift action_23
action_82 (40) = happyShift action_24
action_82 (42) = happyShift action_25
action_82 (47) = happyShift action_26
action_82 (4) = happyGoto action_90
action_82 (5) = happyGoto action_3
action_82 (6) = happyGoto action_4
action_82 (7) = happyGoto action_5
action_82 (8) = happyGoto action_6
action_82 (9) = happyGoto action_7
action_82 (11) = happyGoto action_8
action_82 (12) = happyGoto action_9
action_82 _ = happyReduce_1

action_83 (28) = happyShift action_46
action_83 (29) = happyShift action_47
action_83 (30) = happyShift action_48
action_83 (31) = happyShift action_49
action_83 (32) = happyShift action_50
action_83 (33) = happyShift action_51
action_83 (34) = happyShift action_52
action_83 (36) = happyShift action_53
action_83 (37) = happyShift action_54
action_83 (38) = happyShift action_55
action_83 (39) = happyShift action_56
action_83 (43) = happyShift action_89
action_83 (48) = happyShift action_57
action_83 (49) = happyShift action_58
action_83 (50) = happyShift action_59
action_83 (51) = happyShift action_60
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (28) = happyShift action_46
action_84 (29) = happyShift action_47
action_84 (30) = happyShift action_48
action_84 (31) = happyShift action_49
action_84 (32) = happyShift action_50
action_84 (33) = happyShift action_51
action_84 (34) = happyShift action_52
action_84 (36) = happyShift action_53
action_84 (37) = happyShift action_54
action_84 (38) = happyShift action_55
action_84 (39) = happyShift action_56
action_84 (48) = happyShift action_57
action_84 (49) = happyShift action_58
action_84 (50) = happyShift action_59
action_84 (51) = happyShift action_60
action_84 _ = happyReduce_48

action_85 _ = happyReduce_37

action_86 _ = happyReduce_14

action_87 (13) = happyShift action_10
action_87 (14) = happyShift action_11
action_87 (15) = happyShift action_12
action_87 (16) = happyShift action_13
action_87 (17) = happyShift action_14
action_87 (22) = happyShift action_17
action_87 (23) = happyShift action_18
action_87 (24) = happyShift action_19
action_87 (25) = happyShift action_20
action_87 (26) = happyShift action_21
action_87 (27) = happyShift action_22
action_87 (37) = happyShift action_23
action_87 (40) = happyShift action_24
action_87 (42) = happyShift action_25
action_87 (47) = happyShift action_26
action_87 (6) = happyGoto action_88
action_87 (11) = happyGoto action_8
action_87 (12) = happyGoto action_9
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (28) = happyShift action_46
action_88 (29) = happyShift action_47
action_88 (30) = happyShift action_48
action_88 (31) = happyShift action_49
action_88 (32) = happyShift action_50
action_88 (33) = happyShift action_51
action_88 (34) = happyShift action_52
action_88 (36) = happyShift action_53
action_88 (37) = happyShift action_54
action_88 (38) = happyShift action_55
action_88 (39) = happyShift action_56
action_88 (48) = happyShift action_57
action_88 (49) = happyShift action_58
action_88 (50) = happyShift action_59
action_88 (51) = happyShift action_60
action_88 _ = happyReduce_44

action_89 _ = happyReduce_28

action_90 (13) = happyShift action_10
action_90 (14) = happyShift action_11
action_90 (15) = happyShift action_12
action_90 (16) = happyShift action_13
action_90 (17) = happyShift action_14
action_90 (18) = happyShift action_15
action_90 (19) = happyShift action_16
action_90 (22) = happyShift action_17
action_90 (23) = happyShift action_18
action_90 (24) = happyShift action_19
action_90 (25) = happyShift action_20
action_90 (26) = happyShift action_21
action_90 (27) = happyShift action_22
action_90 (37) = happyShift action_23
action_90 (40) = happyShift action_24
action_90 (42) = happyShift action_25
action_90 (45) = happyShift action_100
action_90 (47) = happyShift action_26
action_90 (5) = happyGoto action_61
action_90 (6) = happyGoto action_4
action_90 (7) = happyGoto action_5
action_90 (8) = happyGoto action_6
action_90 (9) = happyGoto action_7
action_90 (11) = happyGoto action_8
action_90 (12) = happyGoto action_9
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (13) = happyShift action_10
action_91 (14) = happyShift action_11
action_91 (15) = happyShift action_12
action_91 (16) = happyShift action_13
action_91 (17) = happyShift action_14
action_91 (18) = happyShift action_15
action_91 (19) = happyShift action_16
action_91 (22) = happyShift action_17
action_91 (23) = happyShift action_18
action_91 (24) = happyShift action_19
action_91 (25) = happyShift action_20
action_91 (26) = happyShift action_21
action_91 (27) = happyShift action_22
action_91 (37) = happyShift action_23
action_91 (40) = happyShift action_24
action_91 (42) = happyShift action_25
action_91 (45) = happyShift action_99
action_91 (47) = happyShift action_26
action_91 (5) = happyGoto action_61
action_91 (6) = happyGoto action_4
action_91 (7) = happyGoto action_5
action_91 (8) = happyGoto action_6
action_91 (9) = happyGoto action_7
action_91 (11) = happyGoto action_8
action_91 (12) = happyGoto action_9
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_29

action_93 (13) = happyShift action_10
action_93 (14) = happyShift action_11
action_93 (15) = happyShift action_12
action_93 (16) = happyShift action_13
action_93 (17) = happyShift action_14
action_93 (18) = happyShift action_15
action_93 (19) = happyShift action_16
action_93 (22) = happyShift action_17
action_93 (23) = happyShift action_18
action_93 (24) = happyShift action_19
action_93 (25) = happyShift action_20
action_93 (26) = happyShift action_21
action_93 (27) = happyShift action_22
action_93 (37) = happyShift action_23
action_93 (40) = happyShift action_24
action_93 (42) = happyShift action_25
action_93 (45) = happyShift action_98
action_93 (47) = happyShift action_26
action_93 (5) = happyGoto action_61
action_93 (6) = happyGoto action_4
action_93 (7) = happyGoto action_5
action_93 (8) = happyGoto action_6
action_93 (9) = happyGoto action_7
action_93 (11) = happyGoto action_8
action_93 (12) = happyGoto action_9
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (13) = happyShift action_10
action_94 (14) = happyShift action_11
action_94 (15) = happyShift action_12
action_94 (16) = happyShift action_13
action_94 (17) = happyShift action_14
action_94 (18) = happyShift action_15
action_94 (19) = happyShift action_16
action_94 (22) = happyShift action_17
action_94 (23) = happyShift action_18
action_94 (24) = happyShift action_19
action_94 (25) = happyShift action_20
action_94 (26) = happyShift action_21
action_94 (27) = happyShift action_22
action_94 (37) = happyShift action_23
action_94 (40) = happyShift action_24
action_94 (42) = happyShift action_25
action_94 (47) = happyShift action_26
action_94 (4) = happyGoto action_97
action_94 (5) = happyGoto action_3
action_94 (6) = happyGoto action_4
action_94 (7) = happyGoto action_5
action_94 (8) = happyGoto action_6
action_94 (9) = happyGoto action_7
action_94 (11) = happyGoto action_8
action_94 (12) = happyGoto action_9
action_94 _ = happyReduce_1

action_95 (13) = happyShift action_10
action_95 (14) = happyShift action_11
action_95 (15) = happyShift action_12
action_95 (16) = happyShift action_13
action_95 (17) = happyShift action_14
action_95 (18) = happyShift action_15
action_95 (19) = happyShift action_16
action_95 (22) = happyShift action_17
action_95 (23) = happyShift action_18
action_95 (24) = happyShift action_19
action_95 (25) = happyShift action_20
action_95 (26) = happyShift action_21
action_95 (27) = happyShift action_22
action_95 (37) = happyShift action_23
action_95 (40) = happyShift action_24
action_95 (42) = happyShift action_25
action_95 (45) = happyShift action_96
action_95 (47) = happyShift action_26
action_95 (5) = happyGoto action_61
action_95 (6) = happyGoto action_4
action_95 (7) = happyGoto action_5
action_95 (8) = happyGoto action_6
action_95 (9) = happyGoto action_7
action_95 (11) = happyGoto action_8
action_95 (12) = happyGoto action_9
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_40

action_97 (13) = happyShift action_10
action_97 (14) = happyShift action_11
action_97 (15) = happyShift action_12
action_97 (16) = happyShift action_13
action_97 (17) = happyShift action_14
action_97 (18) = happyShift action_15
action_97 (19) = happyShift action_16
action_97 (22) = happyShift action_17
action_97 (23) = happyShift action_18
action_97 (24) = happyShift action_19
action_97 (25) = happyShift action_20
action_97 (26) = happyShift action_21
action_97 (27) = happyShift action_22
action_97 (37) = happyShift action_23
action_97 (40) = happyShift action_24
action_97 (42) = happyShift action_25
action_97 (45) = happyShift action_101
action_97 (47) = happyShift action_26
action_97 (5) = happyGoto action_61
action_97 (6) = happyGoto action_4
action_97 (7) = happyGoto action_5
action_97 (8) = happyGoto action_6
action_97 (9) = happyGoto action_7
action_97 (11) = happyGoto action_8
action_97 (12) = happyGoto action_9
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_41

action_99 _ = happyReduce_4

action_100 _ = happyReduce_38

action_101 _ = happyReduce_39

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
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean happy_var_1
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

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (Var happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 6 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_2  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  6 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 7 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (If happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 8 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Elif happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 5 9 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Else happy_var_4
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 5 9 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (Else happy_var_4
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
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_3 : happy_var_1
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  11 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn11
		 (Int'
	)

happyReduce_46 = happySpecReduce_1  11 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn11
		 (Boolean'
	)

happyReduce_47 = happySpecReduce_1  11 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn11
		 (Stream'
	)

happyReduce_48 = happySpecReduce_3  12 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn12
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntType _ -> cont 13;
	TokenStreamType _ -> cont 14;
	TokenBoolType _ -> cont 15;
	TokenInput _ -> cont 16;
	TokenPrint _ -> cont 17;
	TokenWhile _ -> cont 18;
	TokenIf _ -> cont 19;
	TokenElif _ -> cont 20;
	TokenElse _ -> cont 21;
	TokenHasNext _ -> cont 22;
	TokenNext _ -> cont 23;
	TokenSize _ -> cont 24;
	TokenInt _ happy_dollar_dollar -> cont 25;
	TokenBool _ happy_dollar_dollar -> cont 26;
	TokenVar _ happy_dollar_dollar -> cont 27;
	TokenLE _ -> cont 28;
	TokenGE _ -> cont 29;
	TokenEQ _ -> cont 30;
	TokenNE _ -> cont 31;
	TokenCons _ -> cont 32;
	TokenConcat _ -> cont 33;
	TokenTake _ -> cont 34;
	TokenAssign _ -> cont 35;
	TokenPlus _ -> cont 36;
	TokenMinus _ -> cont 37;
	TokenTimes _ -> cont 38;
	TokenDiv _ -> cont 39;
	TokenLParen _ -> cont 40;
	TokenRParen _ -> cont 41;
	TokenLSquare _ -> cont 42;
	TokenRSquare _ -> cont 43;
	TokenLCurly _ -> cont 44;
	TokenRCurly _ -> cont 45;
	TokenComma _ -> cont 46;
	TokenNot _ -> cont 47;
	TokenExponent _ -> cont 48;
	TokenModulo _ -> cont 49;
	TokenLT _ -> cont 50;
	TokenGT _ -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
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

data Exp = While Exp [Exp]
         | If Exp [Exp]
         | Elif Exp [Exp]
         | Else [Exp]
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

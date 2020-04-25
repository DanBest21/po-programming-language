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
happyExpList = Happy_Data_Array.listArray (0,906) ([49152,52863,193,4260,0,0,0,0,0,0,0,0,0,0,0,0,0,32704,65534,48641,496,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,32704,49614,41984,16,0,1024,0,0,64512,7399,16396,266,61440,29599,48,1065,49152,52863,193,4260,0,14847,775,17040,0,59388,3100,2624,1,40944,12403,10496,4,0,0,0,0,0,0,0,0,0,0,8128,2,0,16384,0,0,0,0,1,0,0,14847,775,17040,0,59388,3100,2624,1,40944,12403,10496,4,32704,49614,41984,16,0,32768,5,130,0,58112,57367,7817,0,0,0,64,0,12288,382,57566,1,0,1408,33280,0,0,0,0,0,0,0,0,0,32704,49614,41984,16,65280,1849,36867,66,64512,7399,16396,266,61440,29599,48,1065,49152,52863,193,4260,0,14847,775,17040,0,59388,3100,2624,1,40944,12403,10496,4,0,0,32768,0,0,0,0,2,0,0,0,8,0,35840,32863,30887,0,12288,382,58014,1,49152,1528,33400,7,0,0,512,0,0,24460,10112,120,32704,49614,41984,16,0,0,16,0,0,0,0,0,61440,29599,48,1065,49152,52863,193,4260,0,14847,775,17040,0,59388,3100,2624,1,40944,12403,10496,4,32704,49614,41984,16,65280,1849,36867,66,64512,7399,16396,266,61440,29599,48,1065,49152,52863,193,4260,0,14847,775,17040,0,59388,3100,2624,1,40944,12403,10496,4,32704,49614,41984,16,65280,1849,36867,66,64512,7399,16396,266,61440,29599,48,1065,49152,52863,193,4260,0,0,1408,33400,1,0,5632,2528,6,0,22528,8192,8,0,0,32768,32,0,63680,30725,1958,0,0,22,520,0,0,88,2080,0,0,352,8320,0,0,1408,33376,1,0,4608,2048,2,0,18432,8192,8,0,0,8700,0,0,32768,4,130,0,24576,57366,7689,0,32768,32857,30759,0,0,352,24734,0,0,1408,33400,1,0,6113,2528,30,0,24448,10112,120,32704,49614,41984,16,0,63680,30725,1938,64512,7399,16396,266,61440,29599,48,1065,49152,52863,193,4260,0,7,0,0,0,59388,3100,2624,1,40944,12403,10496,4,0,32304,40449,488,0,0,0,1,0,58112,57367,7689,0,35840,32863,30759,0,12288,382,57502,1,49152,1528,33400,7,0,6115,2528,30,0,24460,10112,120,0,32304,40449,480,0,0,0,0,0,0,0,0,61440,29599,48,1065,0,0,0,0,0,0,0,0,0,59388,3100,2624,1,0,0,0,1,0,0,0,4,0,1024,0,0,0,0,0,4,0,35840,32863,30823,0,0,352,24728,0,0,0,0,0,0,6115,2528,30,0,0,0,0,0,0,2,2,0,0,0,32,0,0,0,0,0,32,0,0,0,0,0,0,0,1024,0,0,0,59388,3100,2624,1,112,0,0,0,448,0,0,0,65280,1849,36867,66,0,0,0,64,0,0,0,128,0,0,0,0,0,49152,1528,35448,7,0,0,0,0,0,0,32768,0,32704,49614,41984,16,65280,1849,36867,66,64512,7399,16396,266,0,0,0,0,0,0,0,1024,0,0,0,4096,0,0,0,16384,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","ParamList","ArgList","int_type","stream_type","boolean_type","input","print","fn","return","while","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'--'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","%eof"]
        bit_start = st * 66
        bit_end = (st + 1) * 66
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..65]
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
action_0 (39) = happyShift action_23
action_0 (40) = happyShift action_24
action_0 (51) = happyShift action_25
action_0 (54) = happyShift action_26
action_0 (56) = happyShift action_27
action_0 (61) = happyShift action_28
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (66) = happyAccept
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
action_4 (29) = happyShift action_55
action_4 (30) = happyShift action_56
action_4 (31) = happyShift action_20
action_4 (32) = happyShift action_21
action_4 (33) = happyShift action_22
action_4 (34) = happyShift action_57
action_4 (35) = happyShift action_58
action_4 (36) = happyShift action_59
action_4 (37) = happyShift action_60
action_4 (38) = happyShift action_61
action_4 (39) = happyShift action_62
action_4 (40) = happyShift action_24
action_4 (41) = happyShift action_63
action_4 (50) = happyShift action_64
action_4 (51) = happyShift action_65
action_4 (52) = happyShift action_66
action_4 (53) = happyShift action_67
action_4 (54) = happyShift action_26
action_4 (56) = happyShift action_68
action_4 (61) = happyShift action_28
action_4 (62) = happyShift action_69
action_4 (63) = happyShift action_70
action_4 (64) = happyShift action_71
action_4 (65) = happyShift action_72
action_4 (5) = happyGoto action_54
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 (33) = happyShift action_53
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_40

action_8 _ = happyReduce_58

action_9 _ = happyReduce_60

action_10 _ = happyReduce_59

action_11 (58) = happyShift action_52
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
action_12 (39) = happyShift action_23
action_12 (40) = happyShift action_24
action_12 (51) = happyShift action_25
action_12 (54) = happyShift action_26
action_12 (56) = happyShift action_27
action_12 (61) = happyShift action_28
action_12 (6) = happyGoto action_51
action_12 (7) = happyGoto action_5
action_12 (11) = happyGoto action_6
action_12 (12) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (33) = happyShift action_50
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
action_14 (39) = happyShift action_23
action_14 (40) = happyShift action_24
action_14 (51) = happyShift action_25
action_14 (54) = happyShift action_26
action_14 (56) = happyShift action_27
action_14 (61) = happyShift action_28
action_14 (6) = happyGoto action_49
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
action_15 (39) = happyShift action_23
action_15 (40) = happyShift action_24
action_15 (51) = happyShift action_25
action_15 (54) = happyShift action_26
action_15 (56) = happyShift action_27
action_15 (61) = happyShift action_28
action_15 (6) = happyGoto action_48
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
action_16 (39) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (51) = happyShift action_25
action_16 (54) = happyShift action_26
action_16 (56) = happyShift action_27
action_16 (61) = happyShift action_28
action_16 (6) = happyGoto action_47
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
action_17 (39) = happyShift action_23
action_17 (40) = happyShift action_24
action_17 (51) = happyShift action_25
action_17 (54) = happyShift action_26
action_17 (56) = happyShift action_27
action_17 (61) = happyShift action_28
action_17 (6) = happyGoto action_46
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
action_18 (39) = happyShift action_23
action_18 (40) = happyShift action_24
action_18 (51) = happyShift action_25
action_18 (54) = happyShift action_26
action_18 (56) = happyShift action_27
action_18 (61) = happyShift action_28
action_18 (6) = happyGoto action_45
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
action_19 (39) = happyShift action_23
action_19 (40) = happyShift action_24
action_19 (51) = happyShift action_25
action_19 (54) = happyShift action_26
action_19 (56) = happyShift action_27
action_19 (61) = happyShift action_28
action_19 (6) = happyGoto action_44
action_19 (7) = happyGoto action_5
action_19 (11) = happyGoto action_6
action_19 (12) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_12

action_21 _ = happyReduce_13

action_22 (43) = happyShift action_36
action_22 (44) = happyShift action_37
action_22 (45) = happyShift action_38
action_22 (46) = happyShift action_39
action_22 (47) = happyShift action_40
action_22 (48) = happyShift action_41
action_22 (49) = happyShift action_42
action_22 (54) = happyShift action_43
action_22 _ = happyReduce_32

action_23 (33) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (33) = happyShift action_34
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
action_25 (39) = happyShift action_23
action_25 (40) = happyShift action_24
action_25 (51) = happyShift action_25
action_25 (54) = happyShift action_26
action_25 (56) = happyShift action_27
action_25 (61) = happyShift action_28
action_25 (6) = happyGoto action_33
action_25 (7) = happyGoto action_5
action_25 (11) = happyGoto action_6
action_25 (12) = happyGoto action_7
action_25 _ = happyFail (happyExpListPerState 25)

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
action_26 (39) = happyShift action_23
action_26 (40) = happyShift action_24
action_26 (51) = happyShift action_25
action_26 (54) = happyShift action_26
action_26 (56) = happyShift action_27
action_26 (61) = happyShift action_28
action_26 (6) = happyGoto action_32
action_26 (7) = happyGoto action_5
action_26 (11) = happyGoto action_6
action_26 (12) = happyGoto action_7
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (15) = happyShift action_8
action_27 (16) = happyShift action_9
action_27 (17) = happyShift action_10
action_27 (18) = happyShift action_11
action_27 (19) = happyShift action_12
action_27 (20) = happyShift action_13
action_27 (21) = happyShift action_14
action_27 (22) = happyShift action_15
action_27 (23) = happyShift action_16
action_27 (26) = happyShift action_17
action_27 (27) = happyShift action_18
action_27 (28) = happyShift action_19
action_27 (31) = happyShift action_20
action_27 (32) = happyShift action_21
action_27 (33) = happyShift action_22
action_27 (39) = happyShift action_23
action_27 (40) = happyShift action_24
action_27 (51) = happyShift action_25
action_27 (54) = happyShift action_26
action_27 (56) = happyShift action_27
action_27 (61) = happyShift action_28
action_27 (6) = happyGoto action_30
action_27 (7) = happyGoto action_5
action_27 (10) = happyGoto action_31
action_27 (11) = happyGoto action_6
action_27 (12) = happyGoto action_7
action_27 _ = happyReduce_55

action_28 (15) = happyShift action_8
action_28 (16) = happyShift action_9
action_28 (17) = happyShift action_10
action_28 (18) = happyShift action_11
action_28 (19) = happyShift action_12
action_28 (20) = happyShift action_13
action_28 (21) = happyShift action_14
action_28 (22) = happyShift action_15
action_28 (23) = happyShift action_16
action_28 (26) = happyShift action_17
action_28 (27) = happyShift action_18
action_28 (28) = happyShift action_19
action_28 (31) = happyShift action_20
action_28 (32) = happyShift action_21
action_28 (33) = happyShift action_22
action_28 (39) = happyShift action_23
action_28 (40) = happyShift action_24
action_28 (51) = happyShift action_25
action_28 (54) = happyShift action_26
action_28 (56) = happyShift action_27
action_28 (61) = happyShift action_28
action_28 (6) = happyGoto action_29
action_28 (7) = happyGoto action_5
action_28 (11) = happyGoto action_6
action_28 (12) = happyGoto action_7
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (38) = happyShift action_61
action_29 (39) = happyShift action_94
action_29 (41) = happyShift action_63
action_29 (56) = happyShift action_96
action_29 (62) = happyShift action_69
action_29 _ = happyReduce_43

action_30 (29) = happyShift action_55
action_30 (30) = happyShift action_56
action_30 (34) = happyShift action_57
action_30 (35) = happyShift action_58
action_30 (36) = happyShift action_59
action_30 (37) = happyShift action_60
action_30 (38) = happyShift action_61
action_30 (39) = happyShift action_94
action_30 (41) = happyShift action_63
action_30 (50) = happyShift action_64
action_30 (51) = happyShift action_95
action_30 (52) = happyShift action_66
action_30 (53) = happyShift action_67
action_30 (56) = happyShift action_96
action_30 (60) = happyShift action_111
action_30 (62) = happyShift action_69
action_30 (63) = happyShift action_70
action_30 (64) = happyShift action_71
action_30 (65) = happyShift action_72
action_30 _ = happyReduce_56

action_31 (57) = happyShift action_110
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (29) = happyShift action_55
action_32 (30) = happyShift action_56
action_32 (34) = happyShift action_57
action_32 (35) = happyShift action_58
action_32 (36) = happyShift action_59
action_32 (37) = happyShift action_60
action_32 (38) = happyShift action_61
action_32 (39) = happyShift action_94
action_32 (41) = happyShift action_63
action_32 (50) = happyShift action_64
action_32 (51) = happyShift action_95
action_32 (52) = happyShift action_66
action_32 (53) = happyShift action_67
action_32 (55) = happyShift action_109
action_32 (56) = happyShift action_96
action_32 (62) = happyShift action_69
action_32 (63) = happyShift action_70
action_32 (64) = happyShift action_71
action_32 (65) = happyShift action_72
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (38) = happyShift action_61
action_33 (39) = happyShift action_94
action_33 (41) = happyShift action_63
action_33 (56) = happyShift action_96
action_33 (62) = happyShift action_69
action_33 _ = happyReduce_48

action_34 _ = happyReduce_31

action_35 _ = happyReduce_30

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
action_36 (39) = happyShift action_23
action_36 (40) = happyShift action_24
action_36 (51) = happyShift action_25
action_36 (54) = happyShift action_26
action_36 (56) = happyShift action_27
action_36 (61) = happyShift action_28
action_36 (6) = happyGoto action_108
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
action_37 (39) = happyShift action_23
action_37 (40) = happyShift action_24
action_37 (51) = happyShift action_25
action_37 (54) = happyShift action_26
action_37 (56) = happyShift action_27
action_37 (61) = happyShift action_28
action_37 (6) = happyGoto action_107
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
action_38 (39) = happyShift action_23
action_38 (40) = happyShift action_24
action_38 (51) = happyShift action_25
action_38 (54) = happyShift action_26
action_38 (56) = happyShift action_27
action_38 (61) = happyShift action_28
action_38 (6) = happyGoto action_106
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
action_39 (39) = happyShift action_23
action_39 (40) = happyShift action_24
action_39 (51) = happyShift action_25
action_39 (54) = happyShift action_26
action_39 (56) = happyShift action_27
action_39 (61) = happyShift action_28
action_39 (6) = happyGoto action_105
action_39 (7) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (12) = happyGoto action_7
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (15) = happyShift action_8
action_40 (16) = happyShift action_9
action_40 (17) = happyShift action_10
action_40 (18) = happyShift action_11
action_40 (19) = happyShift action_12
action_40 (20) = happyShift action_13
action_40 (21) = happyShift action_14
action_40 (22) = happyShift action_15
action_40 (23) = happyShift action_16
action_40 (26) = happyShift action_17
action_40 (27) = happyShift action_18
action_40 (28) = happyShift action_19
action_40 (31) = happyShift action_20
action_40 (32) = happyShift action_21
action_40 (33) = happyShift action_22
action_40 (39) = happyShift action_23
action_40 (40) = happyShift action_24
action_40 (51) = happyShift action_25
action_40 (54) = happyShift action_26
action_40 (56) = happyShift action_27
action_40 (61) = happyShift action_28
action_40 (6) = happyGoto action_104
action_40 (7) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (12) = happyGoto action_7
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_8
action_41 (16) = happyShift action_9
action_41 (17) = happyShift action_10
action_41 (18) = happyShift action_11
action_41 (19) = happyShift action_12
action_41 (20) = happyShift action_13
action_41 (21) = happyShift action_14
action_41 (22) = happyShift action_15
action_41 (23) = happyShift action_16
action_41 (26) = happyShift action_17
action_41 (27) = happyShift action_18
action_41 (28) = happyShift action_19
action_41 (31) = happyShift action_20
action_41 (32) = happyShift action_21
action_41 (33) = happyShift action_22
action_41 (39) = happyShift action_23
action_41 (40) = happyShift action_24
action_41 (51) = happyShift action_25
action_41 (54) = happyShift action_26
action_41 (56) = happyShift action_27
action_41 (61) = happyShift action_28
action_41 (6) = happyGoto action_103
action_41 (7) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 (12) = happyGoto action_7
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_8
action_42 (16) = happyShift action_9
action_42 (17) = happyShift action_10
action_42 (18) = happyShift action_11
action_42 (19) = happyShift action_12
action_42 (20) = happyShift action_13
action_42 (21) = happyShift action_14
action_42 (22) = happyShift action_15
action_42 (23) = happyShift action_16
action_42 (26) = happyShift action_17
action_42 (27) = happyShift action_18
action_42 (28) = happyShift action_19
action_42 (31) = happyShift action_20
action_42 (32) = happyShift action_21
action_42 (33) = happyShift action_22
action_42 (39) = happyShift action_23
action_42 (40) = happyShift action_24
action_42 (51) = happyShift action_25
action_42 (54) = happyShift action_26
action_42 (56) = happyShift action_27
action_42 (61) = happyShift action_28
action_42 (6) = happyGoto action_102
action_42 (7) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 (12) = happyGoto action_7
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (15) = happyShift action_8
action_43 (16) = happyShift action_9
action_43 (17) = happyShift action_10
action_43 (18) = happyShift action_11
action_43 (19) = happyShift action_12
action_43 (20) = happyShift action_13
action_43 (21) = happyShift action_14
action_43 (22) = happyShift action_15
action_43 (23) = happyShift action_16
action_43 (26) = happyShift action_17
action_43 (27) = happyShift action_18
action_43 (28) = happyShift action_19
action_43 (31) = happyShift action_20
action_43 (32) = happyShift action_21
action_43 (33) = happyShift action_22
action_43 (39) = happyShift action_23
action_43 (40) = happyShift action_24
action_43 (51) = happyShift action_25
action_43 (54) = happyShift action_26
action_43 (56) = happyShift action_27
action_43 (61) = happyShift action_28
action_43 (6) = happyGoto action_100
action_43 (7) = happyGoto action_5
action_43 (11) = happyGoto action_6
action_43 (12) = happyGoto action_7
action_43 (14) = happyGoto action_101
action_43 _ = happyReduce_66

action_44 (56) = happyShift action_96
action_44 _ = happyReduce_9

action_45 (56) = happyShift action_96
action_45 _ = happyReduce_8

action_46 (56) = happyShift action_96
action_46 _ = happyReduce_7

action_47 (29) = happyShift action_55
action_47 (30) = happyShift action_56
action_47 (34) = happyShift action_57
action_47 (35) = happyShift action_58
action_47 (36) = happyShift action_59
action_47 (37) = happyShift action_60
action_47 (38) = happyShift action_61
action_47 (39) = happyShift action_94
action_47 (41) = happyShift action_63
action_47 (50) = happyShift action_64
action_47 (51) = happyShift action_95
action_47 (52) = happyShift action_66
action_47 (53) = happyShift action_67
action_47 (56) = happyShift action_96
action_47 (58) = happyShift action_99
action_47 (62) = happyShift action_69
action_47 (63) = happyShift action_70
action_47 (64) = happyShift action_71
action_47 (65) = happyShift action_72
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (29) = happyShift action_55
action_48 (30) = happyShift action_56
action_48 (34) = happyShift action_57
action_48 (35) = happyShift action_58
action_48 (36) = happyShift action_59
action_48 (37) = happyShift action_60
action_48 (38) = happyShift action_61
action_48 (39) = happyShift action_94
action_48 (41) = happyShift action_63
action_48 (50) = happyShift action_64
action_48 (51) = happyShift action_95
action_48 (52) = happyShift action_66
action_48 (53) = happyShift action_67
action_48 (56) = happyShift action_96
action_48 (58) = happyShift action_98
action_48 (62) = happyShift action_69
action_48 (63) = happyShift action_70
action_48 (64) = happyShift action_71
action_48 (65) = happyShift action_72
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (29) = happyShift action_55
action_49 (30) = happyShift action_56
action_49 (34) = happyShift action_57
action_49 (35) = happyShift action_58
action_49 (36) = happyShift action_59
action_49 (37) = happyShift action_60
action_49 (38) = happyShift action_61
action_49 (39) = happyShift action_94
action_49 (41) = happyShift action_63
action_49 (50) = happyShift action_64
action_49 (51) = happyShift action_95
action_49 (52) = happyShift action_66
action_49 (53) = happyShift action_67
action_49 (56) = happyShift action_96
action_49 (62) = happyShift action_69
action_49 (63) = happyShift action_70
action_49 (64) = happyShift action_71
action_49 (65) = happyShift action_72
action_49 _ = happyReduce_42

action_50 (54) = happyShift action_97
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (29) = happyShift action_55
action_51 (30) = happyShift action_56
action_51 (34) = happyShift action_57
action_51 (35) = happyShift action_58
action_51 (36) = happyShift action_59
action_51 (37) = happyShift action_60
action_51 (38) = happyShift action_61
action_51 (39) = happyShift action_94
action_51 (41) = happyShift action_63
action_51 (50) = happyShift action_64
action_51 (51) = happyShift action_95
action_51 (52) = happyShift action_66
action_51 (53) = happyShift action_67
action_51 (56) = happyShift action_96
action_51 (62) = happyShift action_69
action_51 (63) = happyShift action_70
action_51 (64) = happyShift action_71
action_51 (65) = happyShift action_72
action_51 _ = happyReduce_39

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
action_52 (39) = happyShift action_23
action_52 (40) = happyShift action_24
action_52 (51) = happyShift action_25
action_52 (54) = happyShift action_26
action_52 (56) = happyShift action_27
action_52 (61) = happyShift action_28
action_52 (6) = happyGoto action_93
action_52 (7) = happyGoto action_5
action_52 (11) = happyGoto action_6
action_52 (12) = happyGoto action_7
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (43) = happyShift action_92
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_4

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
action_55 (39) = happyShift action_23
action_55 (40) = happyShift action_24
action_55 (51) = happyShift action_25
action_55 (54) = happyShift action_26
action_55 (56) = happyShift action_27
action_55 (61) = happyShift action_28
action_55 (6) = happyGoto action_91
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
action_56 (39) = happyShift action_23
action_56 (40) = happyShift action_24
action_56 (51) = happyShift action_25
action_56 (54) = happyShift action_26
action_56 (56) = happyShift action_27
action_56 (61) = happyShift action_28
action_56 (6) = happyGoto action_90
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
action_57 (39) = happyShift action_23
action_57 (40) = happyShift action_24
action_57 (51) = happyShift action_25
action_57 (54) = happyShift action_26
action_57 (56) = happyShift action_27
action_57 (61) = happyShift action_28
action_57 (6) = happyGoto action_89
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
action_58 (39) = happyShift action_23
action_58 (40) = happyShift action_24
action_58 (51) = happyShift action_25
action_58 (54) = happyShift action_26
action_58 (56) = happyShift action_27
action_58 (61) = happyShift action_28
action_58 (6) = happyGoto action_88
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
action_59 (39) = happyShift action_23
action_59 (40) = happyShift action_24
action_59 (51) = happyShift action_25
action_59 (54) = happyShift action_26
action_59 (56) = happyShift action_27
action_59 (61) = happyShift action_28
action_59 (6) = happyGoto action_87
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
action_60 (39) = happyShift action_23
action_60 (40) = happyShift action_24
action_60 (51) = happyShift action_25
action_60 (54) = happyShift action_26
action_60 (56) = happyShift action_27
action_60 (61) = happyShift action_28
action_60 (6) = happyGoto action_86
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
action_61 (39) = happyShift action_23
action_61 (40) = happyShift action_24
action_61 (51) = happyShift action_25
action_61 (54) = happyShift action_26
action_61 (56) = happyShift action_27
action_61 (61) = happyShift action_28
action_61 (6) = happyGoto action_85
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
action_62 (33) = happyShift action_84
action_62 (39) = happyShift action_23
action_62 (40) = happyShift action_24
action_62 (51) = happyShift action_25
action_62 (54) = happyShift action_26
action_62 (56) = happyShift action_27
action_62 (61) = happyShift action_28
action_62 (6) = happyGoto action_83
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
action_63 (39) = happyShift action_23
action_63 (40) = happyShift action_24
action_63 (51) = happyShift action_25
action_63 (54) = happyShift action_26
action_63 (56) = happyShift action_27
action_63 (61) = happyShift action_28
action_63 (6) = happyGoto action_82
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
action_64 (39) = happyShift action_23
action_64 (40) = happyShift action_24
action_64 (51) = happyShift action_25
action_64 (54) = happyShift action_26
action_64 (56) = happyShift action_27
action_64 (61) = happyShift action_28
action_64 (6) = happyGoto action_81
action_64 (7) = happyGoto action_5
action_64 (11) = happyGoto action_6
action_64 (12) = happyGoto action_7
action_64 _ = happyFail (happyExpListPerState 64)

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
action_65 (39) = happyShift action_23
action_65 (40) = happyShift action_24
action_65 (51) = happyShift action_25
action_65 (54) = happyShift action_26
action_65 (56) = happyShift action_27
action_65 (61) = happyShift action_28
action_65 (6) = happyGoto action_80
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
action_66 (39) = happyShift action_23
action_66 (40) = happyShift action_24
action_66 (51) = happyShift action_25
action_66 (54) = happyShift action_26
action_66 (56) = happyShift action_27
action_66 (61) = happyShift action_28
action_66 (6) = happyGoto action_79
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
action_67 (39) = happyShift action_23
action_67 (40) = happyShift action_24
action_67 (51) = happyShift action_25
action_67 (54) = happyShift action_26
action_67 (56) = happyShift action_27
action_67 (61) = happyShift action_28
action_67 (6) = happyGoto action_78
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
action_68 (39) = happyShift action_23
action_68 (40) = happyShift action_24
action_68 (51) = happyShift action_25
action_68 (54) = happyShift action_26
action_68 (56) = happyShift action_27
action_68 (61) = happyShift action_28
action_68 (6) = happyGoto action_77
action_68 (7) = happyGoto action_5
action_68 (10) = happyGoto action_31
action_68 (11) = happyGoto action_6
action_68 (12) = happyGoto action_7
action_68 _ = happyReduce_55

action_69 (15) = happyShift action_8
action_69 (16) = happyShift action_9
action_69 (17) = happyShift action_10
action_69 (18) = happyShift action_11
action_69 (19) = happyShift action_12
action_69 (20) = happyShift action_13
action_69 (21) = happyShift action_14
action_69 (22) = happyShift action_15
action_69 (23) = happyShift action_16
action_69 (26) = happyShift action_17
action_69 (27) = happyShift action_18
action_69 (28) = happyShift action_19
action_69 (31) = happyShift action_20
action_69 (32) = happyShift action_21
action_69 (33) = happyShift action_22
action_69 (39) = happyShift action_23
action_69 (40) = happyShift action_24
action_69 (51) = happyShift action_25
action_69 (54) = happyShift action_26
action_69 (56) = happyShift action_27
action_69 (61) = happyShift action_28
action_69 (6) = happyGoto action_76
action_69 (7) = happyGoto action_5
action_69 (11) = happyGoto action_6
action_69 (12) = happyGoto action_7
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (15) = happyShift action_8
action_70 (16) = happyShift action_9
action_70 (17) = happyShift action_10
action_70 (18) = happyShift action_11
action_70 (19) = happyShift action_12
action_70 (20) = happyShift action_13
action_70 (21) = happyShift action_14
action_70 (22) = happyShift action_15
action_70 (23) = happyShift action_16
action_70 (26) = happyShift action_17
action_70 (27) = happyShift action_18
action_70 (28) = happyShift action_19
action_70 (31) = happyShift action_20
action_70 (32) = happyShift action_21
action_70 (33) = happyShift action_22
action_70 (39) = happyShift action_23
action_70 (40) = happyShift action_24
action_70 (51) = happyShift action_25
action_70 (54) = happyShift action_26
action_70 (56) = happyShift action_27
action_70 (61) = happyShift action_28
action_70 (6) = happyGoto action_75
action_70 (7) = happyGoto action_5
action_70 (11) = happyGoto action_6
action_70 (12) = happyGoto action_7
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (15) = happyShift action_8
action_71 (16) = happyShift action_9
action_71 (17) = happyShift action_10
action_71 (18) = happyShift action_11
action_71 (19) = happyShift action_12
action_71 (20) = happyShift action_13
action_71 (21) = happyShift action_14
action_71 (22) = happyShift action_15
action_71 (23) = happyShift action_16
action_71 (26) = happyShift action_17
action_71 (27) = happyShift action_18
action_71 (28) = happyShift action_19
action_71 (31) = happyShift action_20
action_71 (32) = happyShift action_21
action_71 (33) = happyShift action_22
action_71 (39) = happyShift action_23
action_71 (40) = happyShift action_24
action_71 (51) = happyShift action_25
action_71 (54) = happyShift action_26
action_71 (56) = happyShift action_27
action_71 (61) = happyShift action_28
action_71 (6) = happyGoto action_74
action_71 (7) = happyGoto action_5
action_71 (11) = happyGoto action_6
action_71 (12) = happyGoto action_7
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (15) = happyShift action_8
action_72 (16) = happyShift action_9
action_72 (17) = happyShift action_10
action_72 (18) = happyShift action_11
action_72 (19) = happyShift action_12
action_72 (20) = happyShift action_13
action_72 (21) = happyShift action_14
action_72 (22) = happyShift action_15
action_72 (23) = happyShift action_16
action_72 (26) = happyShift action_17
action_72 (27) = happyShift action_18
action_72 (28) = happyShift action_19
action_72 (31) = happyShift action_20
action_72 (32) = happyShift action_21
action_72 (33) = happyShift action_22
action_72 (39) = happyShift action_23
action_72 (40) = happyShift action_24
action_72 (51) = happyShift action_25
action_72 (54) = happyShift action_26
action_72 (56) = happyShift action_27
action_72 (61) = happyShift action_28
action_72 (6) = happyGoto action_73
action_72 (7) = happyGoto action_5
action_72 (11) = happyGoto action_6
action_72 (12) = happyGoto action_7
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (38) = happyShift action_61
action_73 (39) = happyShift action_94
action_73 (41) = happyShift action_63
action_73 (50) = happyShift action_64
action_73 (51) = happyShift action_95
action_73 (52) = happyShift action_66
action_73 (53) = happyShift action_67
action_73 (56) = happyShift action_96
action_73 (62) = happyShift action_69
action_73 (63) = happyShift action_70
action_73 _ = happyReduce_47

action_74 (38) = happyShift action_61
action_74 (39) = happyShift action_94
action_74 (41) = happyShift action_63
action_74 (50) = happyShift action_64
action_74 (51) = happyShift action_95
action_74 (52) = happyShift action_66
action_74 (53) = happyShift action_67
action_74 (56) = happyShift action_96
action_74 (62) = happyShift action_69
action_74 (63) = happyShift action_70
action_74 _ = happyReduce_46

action_75 (38) = happyShift action_61
action_75 (39) = happyShift action_94
action_75 (41) = happyShift action_63
action_75 (56) = happyShift action_96
action_75 (62) = happyShift action_69
action_75 _ = happyReduce_45

action_76 (56) = happyShift action_96
action_76 (62) = happyShift action_69
action_76 _ = happyReduce_44

action_77 (29) = happyShift action_55
action_77 (30) = happyShift action_56
action_77 (34) = happyShift action_57
action_77 (35) = happyShift action_58
action_77 (36) = happyShift action_59
action_77 (37) = happyShift action_60
action_77 (38) = happyShift action_61
action_77 (39) = happyShift action_94
action_77 (41) = happyShift action_63
action_77 (50) = happyShift action_64
action_77 (51) = happyShift action_95
action_77 (52) = happyShift action_66
action_77 (53) = happyShift action_67
action_77 (56) = happyShift action_96
action_77 (57) = happyShift action_123
action_77 (60) = happyShift action_111
action_77 (62) = happyShift action_69
action_77 (63) = happyShift action_70
action_77 (64) = happyShift action_71
action_77 (65) = happyShift action_72
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (38) = happyShift action_61
action_78 (39) = happyShift action_94
action_78 (41) = happyShift action_63
action_78 (56) = happyShift action_96
action_78 (62) = happyShift action_69
action_78 _ = happyReduce_36

action_79 (38) = happyShift action_61
action_79 (39) = happyShift action_94
action_79 (41) = happyShift action_63
action_79 (56) = happyShift action_96
action_79 (62) = happyShift action_69
action_79 _ = happyReduce_35

action_80 (38) = happyShift action_61
action_80 (39) = happyShift action_94
action_80 (41) = happyShift action_63
action_80 (56) = happyShift action_96
action_80 (62) = happyShift action_69
action_80 _ = happyReduce_48

action_81 (38) = happyShift action_61
action_81 (39) = happyShift action_94
action_81 (41) = happyShift action_63
action_81 (52) = happyShift action_66
action_81 (53) = happyShift action_67
action_81 (56) = happyShift action_96
action_81 (62) = happyShift action_69
action_81 (63) = happyShift action_70
action_81 _ = happyReduce_33

action_82 (38) = happyShift action_61
action_82 (41) = happyShift action_63
action_82 (56) = happyShift action_96
action_82 (62) = happyShift action_69
action_82 _ = happyReduce_21

action_83 (38) = happyShift action_61
action_83 (41) = happyShift action_63
action_83 (56) = happyShift action_96
action_83 (62) = happyShift action_69
action_83 _ = happyReduce_20

action_84 (15) = happyReduce_30
action_84 (16) = happyReduce_30
action_84 (17) = happyReduce_30
action_84 (18) = happyReduce_30
action_84 (19) = happyReduce_30
action_84 (20) = happyReduce_30
action_84 (21) = happyReduce_30
action_84 (22) = happyReduce_30
action_84 (23) = happyReduce_30
action_84 (26) = happyReduce_30
action_84 (27) = happyReduce_30
action_84 (28) = happyReduce_30
action_84 (29) = happyReduce_30
action_84 (30) = happyReduce_30
action_84 (31) = happyReduce_30
action_84 (32) = happyReduce_30
action_84 (33) = happyReduce_30
action_84 (34) = happyReduce_30
action_84 (35) = happyReduce_30
action_84 (36) = happyReduce_30
action_84 (37) = happyReduce_30
action_84 (38) = happyReduce_30
action_84 (39) = happyReduce_30
action_84 (40) = happyReduce_30
action_84 (41) = happyReduce_30
action_84 (43) = happyShift action_36
action_84 (44) = happyShift action_37
action_84 (45) = happyShift action_38
action_84 (46) = happyShift action_39
action_84 (47) = happyShift action_40
action_84 (48) = happyShift action_41
action_84 (49) = happyShift action_42
action_84 (50) = happyReduce_30
action_84 (51) = happyReduce_30
action_84 (52) = happyReduce_30
action_84 (53) = happyReduce_30
action_84 (54) = happyShift action_43
action_84 (56) = happyReduce_30
action_84 (59) = happyReduce_30
action_84 (61) = happyReduce_30
action_84 (62) = happyReduce_30
action_84 (63) = happyReduce_30
action_84 (64) = happyReduce_30
action_84 (65) = happyReduce_30
action_84 (66) = happyReduce_30
action_84 _ = happyReduce_30

action_85 (38) = happyShift action_61
action_85 (41) = happyShift action_63
action_85 (56) = happyShift action_96
action_85 (62) = happyShift action_69
action_85 _ = happyReduce_19

action_86 (34) = happyShift action_57
action_86 (35) = happyShift action_58
action_86 (38) = happyShift action_61
action_86 (39) = happyShift action_94
action_86 (41) = happyShift action_63
action_86 (50) = happyShift action_64
action_86 (51) = happyShift action_95
action_86 (52) = happyShift action_66
action_86 (53) = happyShift action_67
action_86 (56) = happyShift action_96
action_86 (62) = happyShift action_69
action_86 (63) = happyShift action_70
action_86 (64) = happyShift action_71
action_86 (65) = happyShift action_72
action_86 _ = happyReduce_18

action_87 (34) = happyShift action_57
action_87 (35) = happyShift action_58
action_87 (38) = happyShift action_61
action_87 (39) = happyShift action_94
action_87 (41) = happyShift action_63
action_87 (50) = happyShift action_64
action_87 (51) = happyShift action_95
action_87 (52) = happyShift action_66
action_87 (53) = happyShift action_67
action_87 (56) = happyShift action_96
action_87 (62) = happyShift action_69
action_87 (63) = happyShift action_70
action_87 (64) = happyShift action_71
action_87 (65) = happyShift action_72
action_87 _ = happyReduce_17

action_88 (38) = happyShift action_61
action_88 (39) = happyShift action_94
action_88 (41) = happyShift action_63
action_88 (50) = happyShift action_64
action_88 (51) = happyShift action_95
action_88 (52) = happyShift action_66
action_88 (53) = happyShift action_67
action_88 (56) = happyShift action_96
action_88 (62) = happyShift action_69
action_88 (63) = happyShift action_70
action_88 _ = happyReduce_16

action_89 (38) = happyShift action_61
action_89 (39) = happyShift action_94
action_89 (41) = happyShift action_63
action_89 (50) = happyShift action_64
action_89 (51) = happyShift action_95
action_89 (52) = happyShift action_66
action_89 (53) = happyShift action_67
action_89 (56) = happyShift action_96
action_89 (62) = happyShift action_69
action_89 (63) = happyShift action_70
action_89 _ = happyReduce_15

action_90 (29) = happyShift action_55
action_90 (34) = happyShift action_57
action_90 (35) = happyShift action_58
action_90 (36) = happyShift action_59
action_90 (37) = happyShift action_60
action_90 (38) = happyShift action_61
action_90 (39) = happyShift action_94
action_90 (41) = happyShift action_63
action_90 (50) = happyShift action_64
action_90 (51) = happyShift action_95
action_90 (52) = happyShift action_66
action_90 (53) = happyShift action_67
action_90 (56) = happyShift action_96
action_90 (62) = happyShift action_69
action_90 (63) = happyShift action_70
action_90 (64) = happyShift action_71
action_90 (65) = happyShift action_72
action_90 _ = happyReduce_11

action_91 (34) = happyShift action_57
action_91 (35) = happyShift action_58
action_91 (36) = happyShift action_59
action_91 (37) = happyShift action_60
action_91 (38) = happyShift action_61
action_91 (39) = happyShift action_94
action_91 (41) = happyShift action_63
action_91 (50) = happyShift action_64
action_91 (51) = happyShift action_95
action_91 (52) = happyShift action_66
action_91 (53) = happyShift action_67
action_91 (56) = happyShift action_96
action_91 (62) = happyShift action_69
action_91 (63) = happyShift action_70
action_91 (64) = happyShift action_71
action_91 (65) = happyShift action_72
action_91 _ = happyReduce_10

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
action_92 (39) = happyShift action_23
action_92 (40) = happyShift action_24
action_92 (51) = happyShift action_25
action_92 (54) = happyShift action_26
action_92 (56) = happyShift action_27
action_92 (61) = happyShift action_28
action_92 (6) = happyGoto action_122
action_92 (7) = happyGoto action_5
action_92 (11) = happyGoto action_6
action_92 (12) = happyGoto action_7
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (29) = happyShift action_55
action_93 (30) = happyShift action_56
action_93 (34) = happyShift action_57
action_93 (35) = happyShift action_58
action_93 (36) = happyShift action_59
action_93 (37) = happyShift action_60
action_93 (38) = happyShift action_61
action_93 (39) = happyShift action_94
action_93 (41) = happyShift action_63
action_93 (50) = happyShift action_64
action_93 (51) = happyShift action_95
action_93 (52) = happyShift action_66
action_93 (53) = happyShift action_67
action_93 (56) = happyShift action_96
action_93 (59) = happyShift action_121
action_93 (62) = happyShift action_69
action_93 (63) = happyShift action_70
action_93 (64) = happyShift action_71
action_93 (65) = happyShift action_72
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (15) = happyShift action_8
action_94 (16) = happyShift action_9
action_94 (17) = happyShift action_10
action_94 (18) = happyShift action_11
action_94 (19) = happyShift action_12
action_94 (20) = happyShift action_13
action_94 (21) = happyShift action_14
action_94 (22) = happyShift action_15
action_94 (23) = happyShift action_16
action_94 (26) = happyShift action_17
action_94 (27) = happyShift action_18
action_94 (28) = happyShift action_19
action_94 (31) = happyShift action_20
action_94 (32) = happyShift action_21
action_94 (33) = happyShift action_22
action_94 (39) = happyShift action_23
action_94 (40) = happyShift action_24
action_94 (51) = happyShift action_25
action_94 (54) = happyShift action_26
action_94 (56) = happyShift action_27
action_94 (61) = happyShift action_28
action_94 (6) = happyGoto action_83
action_94 (7) = happyGoto action_5
action_94 (11) = happyGoto action_6
action_94 (12) = happyGoto action_7
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (15) = happyShift action_8
action_95 (16) = happyShift action_9
action_95 (17) = happyShift action_10
action_95 (18) = happyShift action_11
action_95 (19) = happyShift action_12
action_95 (20) = happyShift action_13
action_95 (21) = happyShift action_14
action_95 (22) = happyShift action_15
action_95 (23) = happyShift action_16
action_95 (26) = happyShift action_17
action_95 (27) = happyShift action_18
action_95 (28) = happyShift action_19
action_95 (31) = happyShift action_20
action_95 (32) = happyShift action_21
action_95 (33) = happyShift action_22
action_95 (39) = happyShift action_23
action_95 (40) = happyShift action_24
action_95 (51) = happyShift action_25
action_95 (54) = happyShift action_26
action_95 (56) = happyShift action_27
action_95 (61) = happyShift action_28
action_95 (6) = happyGoto action_120
action_95 (7) = happyGoto action_5
action_95 (11) = happyGoto action_6
action_95 (12) = happyGoto action_7
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (15) = happyShift action_8
action_96 (16) = happyShift action_9
action_96 (17) = happyShift action_10
action_96 (18) = happyShift action_11
action_96 (19) = happyShift action_12
action_96 (20) = happyShift action_13
action_96 (21) = happyShift action_14
action_96 (22) = happyShift action_15
action_96 (23) = happyShift action_16
action_96 (26) = happyShift action_17
action_96 (27) = happyShift action_18
action_96 (28) = happyShift action_19
action_96 (31) = happyShift action_20
action_96 (32) = happyShift action_21
action_96 (33) = happyShift action_22
action_96 (39) = happyShift action_23
action_96 (40) = happyShift action_24
action_96 (51) = happyShift action_25
action_96 (54) = happyShift action_26
action_96 (56) = happyShift action_27
action_96 (61) = happyShift action_28
action_96 (6) = happyGoto action_119
action_96 (7) = happyGoto action_5
action_96 (11) = happyGoto action_6
action_96 (12) = happyGoto action_7
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (15) = happyShift action_8
action_97 (16) = happyShift action_9
action_97 (17) = happyShift action_10
action_97 (11) = happyGoto action_117
action_97 (13) = happyGoto action_118
action_97 _ = happyReduce_63

action_98 (15) = happyShift action_8
action_98 (16) = happyShift action_9
action_98 (17) = happyShift action_10
action_98 (18) = happyShift action_11
action_98 (19) = happyShift action_12
action_98 (20) = happyShift action_13
action_98 (21) = happyShift action_14
action_98 (22) = happyShift action_15
action_98 (23) = happyShift action_16
action_98 (26) = happyShift action_17
action_98 (27) = happyShift action_18
action_98 (28) = happyShift action_19
action_98 (31) = happyShift action_20
action_98 (32) = happyShift action_21
action_98 (33) = happyShift action_22
action_98 (39) = happyShift action_23
action_98 (40) = happyShift action_24
action_98 (51) = happyShift action_25
action_98 (54) = happyShift action_26
action_98 (56) = happyShift action_27
action_98 (61) = happyShift action_28
action_98 (4) = happyGoto action_116
action_98 (5) = happyGoto action_3
action_98 (6) = happyGoto action_4
action_98 (7) = happyGoto action_5
action_98 (11) = happyGoto action_6
action_98 (12) = happyGoto action_7
action_98 _ = happyReduce_1

action_99 (15) = happyShift action_8
action_99 (16) = happyShift action_9
action_99 (17) = happyShift action_10
action_99 (18) = happyShift action_11
action_99 (19) = happyShift action_12
action_99 (20) = happyShift action_13
action_99 (21) = happyShift action_14
action_99 (22) = happyShift action_15
action_99 (23) = happyShift action_16
action_99 (26) = happyShift action_17
action_99 (27) = happyShift action_18
action_99 (28) = happyShift action_19
action_99 (31) = happyShift action_20
action_99 (32) = happyShift action_21
action_99 (33) = happyShift action_22
action_99 (39) = happyShift action_23
action_99 (40) = happyShift action_24
action_99 (51) = happyShift action_25
action_99 (54) = happyShift action_26
action_99 (56) = happyShift action_27
action_99 (61) = happyShift action_28
action_99 (4) = happyGoto action_115
action_99 (5) = happyGoto action_3
action_99 (6) = happyGoto action_4
action_99 (7) = happyGoto action_5
action_99 (11) = happyGoto action_6
action_99 (12) = happyGoto action_7
action_99 _ = happyReduce_1

action_100 (29) = happyShift action_55
action_100 (30) = happyShift action_56
action_100 (34) = happyShift action_57
action_100 (35) = happyShift action_58
action_100 (36) = happyShift action_59
action_100 (37) = happyShift action_60
action_100 (38) = happyShift action_61
action_100 (39) = happyShift action_94
action_100 (41) = happyShift action_63
action_100 (50) = happyShift action_64
action_100 (51) = happyShift action_95
action_100 (52) = happyShift action_66
action_100 (53) = happyShift action_67
action_100 (56) = happyShift action_96
action_100 (60) = happyShift action_114
action_100 (62) = happyShift action_69
action_100 (63) = happyShift action_70
action_100 (64) = happyShift action_71
action_100 (65) = happyShift action_72
action_100 _ = happyReduce_67

action_101 (55) = happyShift action_113
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (29) = happyShift action_55
action_102 (30) = happyShift action_56
action_102 (34) = happyShift action_57
action_102 (35) = happyShift action_58
action_102 (36) = happyShift action_59
action_102 (37) = happyShift action_60
action_102 (38) = happyShift action_61
action_102 (39) = happyShift action_94
action_102 (41) = happyShift action_63
action_102 (50) = happyShift action_64
action_102 (51) = happyShift action_95
action_102 (52) = happyShift action_66
action_102 (53) = happyShift action_67
action_102 (56) = happyShift action_96
action_102 (62) = happyShift action_69
action_102 (63) = happyShift action_70
action_102 (64) = happyShift action_71
action_102 (65) = happyShift action_72
action_102 _ = happyReduce_29

action_103 (29) = happyShift action_55
action_103 (30) = happyShift action_56
action_103 (34) = happyShift action_57
action_103 (35) = happyShift action_58
action_103 (36) = happyShift action_59
action_103 (37) = happyShift action_60
action_103 (38) = happyShift action_61
action_103 (39) = happyShift action_94
action_103 (41) = happyShift action_63
action_103 (50) = happyShift action_64
action_103 (51) = happyShift action_95
action_103 (52) = happyShift action_66
action_103 (53) = happyShift action_67
action_103 (56) = happyShift action_96
action_103 (62) = happyShift action_69
action_103 (63) = happyShift action_70
action_103 (64) = happyShift action_71
action_103 (65) = happyShift action_72
action_103 _ = happyReduce_28

action_104 (29) = happyShift action_55
action_104 (30) = happyShift action_56
action_104 (34) = happyShift action_57
action_104 (35) = happyShift action_58
action_104 (36) = happyShift action_59
action_104 (37) = happyShift action_60
action_104 (38) = happyShift action_61
action_104 (39) = happyShift action_94
action_104 (41) = happyShift action_63
action_104 (50) = happyShift action_64
action_104 (51) = happyShift action_95
action_104 (52) = happyShift action_66
action_104 (53) = happyShift action_67
action_104 (56) = happyShift action_96
action_104 (62) = happyShift action_69
action_104 (63) = happyShift action_70
action_104 (64) = happyShift action_71
action_104 (65) = happyShift action_72
action_104 _ = happyReduce_27

action_105 (29) = happyShift action_55
action_105 (30) = happyShift action_56
action_105 (34) = happyShift action_57
action_105 (35) = happyShift action_58
action_105 (36) = happyShift action_59
action_105 (37) = happyShift action_60
action_105 (38) = happyShift action_61
action_105 (39) = happyShift action_94
action_105 (41) = happyShift action_63
action_105 (50) = happyShift action_64
action_105 (51) = happyShift action_95
action_105 (52) = happyShift action_66
action_105 (53) = happyShift action_67
action_105 (56) = happyShift action_96
action_105 (62) = happyShift action_69
action_105 (63) = happyShift action_70
action_105 (64) = happyShift action_71
action_105 (65) = happyShift action_72
action_105 _ = happyReduce_26

action_106 (29) = happyShift action_55
action_106 (30) = happyShift action_56
action_106 (34) = happyShift action_57
action_106 (35) = happyShift action_58
action_106 (36) = happyShift action_59
action_106 (37) = happyShift action_60
action_106 (38) = happyShift action_61
action_106 (39) = happyShift action_94
action_106 (41) = happyShift action_63
action_106 (50) = happyShift action_64
action_106 (51) = happyShift action_95
action_106 (52) = happyShift action_66
action_106 (53) = happyShift action_67
action_106 (56) = happyShift action_96
action_106 (62) = happyShift action_69
action_106 (63) = happyShift action_70
action_106 (64) = happyShift action_71
action_106 (65) = happyShift action_72
action_106 _ = happyReduce_25

action_107 (29) = happyShift action_55
action_107 (30) = happyShift action_56
action_107 (34) = happyShift action_57
action_107 (35) = happyShift action_58
action_107 (36) = happyShift action_59
action_107 (37) = happyShift action_60
action_107 (38) = happyShift action_61
action_107 (39) = happyShift action_94
action_107 (41) = happyShift action_63
action_107 (50) = happyShift action_64
action_107 (51) = happyShift action_95
action_107 (52) = happyShift action_66
action_107 (53) = happyShift action_67
action_107 (56) = happyShift action_96
action_107 (62) = happyShift action_69
action_107 (63) = happyShift action_70
action_107 (64) = happyShift action_71
action_107 (65) = happyShift action_72
action_107 _ = happyReduce_24

action_108 (29) = happyShift action_55
action_108 (30) = happyShift action_56
action_108 (34) = happyShift action_57
action_108 (35) = happyShift action_58
action_108 (36) = happyShift action_59
action_108 (37) = happyShift action_60
action_108 (38) = happyShift action_61
action_108 (39) = happyShift action_94
action_108 (41) = happyShift action_63
action_108 (50) = happyShift action_64
action_108 (51) = happyShift action_95
action_108 (52) = happyShift action_66
action_108 (53) = happyShift action_67
action_108 (56) = happyShift action_96
action_108 (62) = happyShift action_69
action_108 (63) = happyShift action_70
action_108 (64) = happyShift action_71
action_108 (65) = happyShift action_72
action_108 _ = happyReduce_23

action_109 _ = happyReduce_49

action_110 _ = happyReduce_14

action_111 (15) = happyShift action_8
action_111 (16) = happyShift action_9
action_111 (17) = happyShift action_10
action_111 (18) = happyShift action_11
action_111 (19) = happyShift action_12
action_111 (20) = happyShift action_13
action_111 (21) = happyShift action_14
action_111 (22) = happyShift action_15
action_111 (23) = happyShift action_16
action_111 (26) = happyShift action_17
action_111 (27) = happyShift action_18
action_111 (28) = happyShift action_19
action_111 (31) = happyShift action_20
action_111 (32) = happyShift action_21
action_111 (33) = happyShift action_22
action_111 (39) = happyShift action_23
action_111 (40) = happyShift action_24
action_111 (51) = happyShift action_25
action_111 (54) = happyShift action_26
action_111 (56) = happyShift action_27
action_111 (61) = happyShift action_28
action_111 (6) = happyGoto action_30
action_111 (7) = happyGoto action_5
action_111 (10) = happyGoto action_112
action_111 (11) = happyGoto action_6
action_111 (12) = happyGoto action_7
action_111 _ = happyReduce_55

action_112 _ = happyReduce_57

action_113 _ = happyReduce_41

action_114 (15) = happyShift action_8
action_114 (16) = happyShift action_9
action_114 (17) = happyShift action_10
action_114 (18) = happyShift action_11
action_114 (19) = happyShift action_12
action_114 (20) = happyShift action_13
action_114 (21) = happyShift action_14
action_114 (22) = happyShift action_15
action_114 (23) = happyShift action_16
action_114 (26) = happyShift action_17
action_114 (27) = happyShift action_18
action_114 (28) = happyShift action_19
action_114 (31) = happyShift action_20
action_114 (32) = happyShift action_21
action_114 (33) = happyShift action_22
action_114 (39) = happyShift action_23
action_114 (40) = happyShift action_24
action_114 (51) = happyShift action_25
action_114 (54) = happyShift action_26
action_114 (56) = happyShift action_27
action_114 (61) = happyShift action_28
action_114 (6) = happyGoto action_100
action_114 (7) = happyGoto action_5
action_114 (11) = happyGoto action_6
action_114 (12) = happyGoto action_7
action_114 (14) = happyGoto action_128
action_114 _ = happyReduce_66

action_115 (59) = happyShift action_127
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (59) = happyShift action_126
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (33) = happyShift action_125
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (55) = happyShift action_124
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (29) = happyShift action_55
action_119 (30) = happyShift action_56
action_119 (34) = happyShift action_57
action_119 (35) = happyShift action_58
action_119 (36) = happyShift action_59
action_119 (37) = happyShift action_60
action_119 (38) = happyShift action_61
action_119 (39) = happyShift action_94
action_119 (41) = happyShift action_63
action_119 (50) = happyShift action_64
action_119 (51) = happyShift action_95
action_119 (52) = happyShift action_66
action_119 (53) = happyShift action_67
action_119 (56) = happyShift action_96
action_119 (57) = happyShift action_123
action_119 (62) = happyShift action_69
action_119 (63) = happyShift action_70
action_119 (64) = happyShift action_71
action_119 (65) = happyShift action_72
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (38) = happyShift action_61
action_120 (39) = happyShift action_94
action_120 (41) = happyShift action_63
action_120 (52) = happyShift action_66
action_120 (53) = happyShift action_67
action_120 (56) = happyShift action_96
action_120 (62) = happyShift action_69
action_120 (63) = happyShift action_70
action_120 _ = happyReduce_34

action_121 _ = happyReduce_38

action_122 (29) = happyShift action_55
action_122 (30) = happyShift action_56
action_122 (34) = happyShift action_57
action_122 (35) = happyShift action_58
action_122 (36) = happyShift action_59
action_122 (37) = happyShift action_60
action_122 (38) = happyShift action_61
action_122 (39) = happyShift action_94
action_122 (41) = happyShift action_63
action_122 (50) = happyShift action_64
action_122 (51) = happyShift action_95
action_122 (52) = happyShift action_66
action_122 (53) = happyShift action_67
action_122 (56) = happyShift action_96
action_122 (62) = happyShift action_69
action_122 (63) = happyShift action_70
action_122 (64) = happyShift action_71
action_122 (65) = happyShift action_72
action_122 _ = happyReduce_22

action_123 _ = happyReduce_37

action_124 (42) = happyShift action_132
action_124 (58) = happyShift action_133
action_124 _ = happyFail (happyExpListPerState 124)

action_125 (60) = happyShift action_131
action_125 _ = happyReduce_64

action_126 _ = happyReduce_5

action_127 (24) = happyShift action_130
action_127 (8) = happyGoto action_129
action_127 _ = happyReduce_51

action_128 _ = happyReduce_68

action_129 (25) = happyShift action_139
action_129 (9) = happyGoto action_138
action_129 _ = happyReduce_53

action_130 (15) = happyShift action_8
action_130 (16) = happyShift action_9
action_130 (17) = happyShift action_10
action_130 (18) = happyShift action_11
action_130 (19) = happyShift action_12
action_130 (20) = happyShift action_13
action_130 (21) = happyShift action_14
action_130 (22) = happyShift action_15
action_130 (23) = happyShift action_16
action_130 (26) = happyShift action_17
action_130 (27) = happyShift action_18
action_130 (28) = happyShift action_19
action_130 (31) = happyShift action_20
action_130 (32) = happyShift action_21
action_130 (33) = happyShift action_22
action_130 (39) = happyShift action_23
action_130 (40) = happyShift action_24
action_130 (51) = happyShift action_25
action_130 (54) = happyShift action_26
action_130 (56) = happyShift action_27
action_130 (61) = happyShift action_28
action_130 (6) = happyGoto action_137
action_130 (7) = happyGoto action_5
action_130 (11) = happyGoto action_6
action_130 (12) = happyGoto action_7
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (15) = happyShift action_8
action_131 (16) = happyShift action_9
action_131 (17) = happyShift action_10
action_131 (11) = happyGoto action_117
action_131 (13) = happyGoto action_136
action_131 _ = happyReduce_63

action_132 (15) = happyShift action_8
action_132 (16) = happyShift action_9
action_132 (17) = happyShift action_10
action_132 (11) = happyGoto action_135
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (15) = happyShift action_8
action_133 (16) = happyShift action_9
action_133 (17) = happyShift action_10
action_133 (18) = happyShift action_11
action_133 (19) = happyShift action_12
action_133 (20) = happyShift action_13
action_133 (21) = happyShift action_14
action_133 (22) = happyShift action_15
action_133 (23) = happyShift action_16
action_133 (26) = happyShift action_17
action_133 (27) = happyShift action_18
action_133 (28) = happyShift action_19
action_133 (31) = happyShift action_20
action_133 (32) = happyShift action_21
action_133 (33) = happyShift action_22
action_133 (39) = happyShift action_23
action_133 (40) = happyShift action_24
action_133 (51) = happyShift action_25
action_133 (54) = happyShift action_26
action_133 (56) = happyShift action_27
action_133 (61) = happyShift action_28
action_133 (4) = happyGoto action_134
action_133 (5) = happyGoto action_3
action_133 (6) = happyGoto action_4
action_133 (7) = happyGoto action_5
action_133 (11) = happyGoto action_6
action_133 (12) = happyGoto action_7
action_133 _ = happyReduce_1

action_134 (59) = happyShift action_143
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (58) = happyShift action_142
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_65

action_137 (29) = happyShift action_55
action_137 (30) = happyShift action_56
action_137 (34) = happyShift action_57
action_137 (35) = happyShift action_58
action_137 (36) = happyShift action_59
action_137 (37) = happyShift action_60
action_137 (38) = happyShift action_61
action_137 (39) = happyShift action_94
action_137 (41) = happyShift action_63
action_137 (50) = happyShift action_64
action_137 (51) = happyShift action_95
action_137 (52) = happyShift action_66
action_137 (53) = happyShift action_67
action_137 (56) = happyShift action_96
action_137 (58) = happyShift action_141
action_137 (62) = happyShift action_69
action_137 (63) = happyShift action_70
action_137 (64) = happyShift action_71
action_137 (65) = happyShift action_72
action_137 _ = happyFail (happyExpListPerState 137)

action_138 _ = happyReduce_50

action_139 (58) = happyShift action_140
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (15) = happyShift action_8
action_140 (16) = happyShift action_9
action_140 (17) = happyShift action_10
action_140 (18) = happyShift action_11
action_140 (19) = happyShift action_12
action_140 (20) = happyShift action_13
action_140 (21) = happyShift action_14
action_140 (22) = happyShift action_15
action_140 (23) = happyShift action_16
action_140 (26) = happyShift action_17
action_140 (27) = happyShift action_18
action_140 (28) = happyShift action_19
action_140 (31) = happyShift action_20
action_140 (32) = happyShift action_21
action_140 (33) = happyShift action_22
action_140 (39) = happyShift action_23
action_140 (40) = happyShift action_24
action_140 (51) = happyShift action_25
action_140 (54) = happyShift action_26
action_140 (56) = happyShift action_27
action_140 (61) = happyShift action_28
action_140 (4) = happyGoto action_146
action_140 (5) = happyGoto action_3
action_140 (6) = happyGoto action_4
action_140 (7) = happyGoto action_5
action_140 (11) = happyGoto action_6
action_140 (12) = happyGoto action_7
action_140 _ = happyReduce_1

action_141 (15) = happyShift action_8
action_141 (16) = happyShift action_9
action_141 (17) = happyShift action_10
action_141 (18) = happyShift action_11
action_141 (19) = happyShift action_12
action_141 (20) = happyShift action_13
action_141 (21) = happyShift action_14
action_141 (22) = happyShift action_15
action_141 (23) = happyShift action_16
action_141 (26) = happyShift action_17
action_141 (27) = happyShift action_18
action_141 (28) = happyShift action_19
action_141 (31) = happyShift action_20
action_141 (32) = happyShift action_21
action_141 (33) = happyShift action_22
action_141 (39) = happyShift action_23
action_141 (40) = happyShift action_24
action_141 (51) = happyShift action_25
action_141 (54) = happyShift action_26
action_141 (56) = happyShift action_27
action_141 (61) = happyShift action_28
action_141 (4) = happyGoto action_145
action_141 (5) = happyGoto action_3
action_141 (6) = happyGoto action_4
action_141 (7) = happyGoto action_5
action_141 (11) = happyGoto action_6
action_141 (12) = happyGoto action_7
action_141 _ = happyReduce_1

action_142 (15) = happyShift action_8
action_142 (16) = happyShift action_9
action_142 (17) = happyShift action_10
action_142 (18) = happyShift action_11
action_142 (19) = happyShift action_12
action_142 (20) = happyShift action_13
action_142 (21) = happyShift action_14
action_142 (22) = happyShift action_15
action_142 (23) = happyShift action_16
action_142 (26) = happyShift action_17
action_142 (27) = happyShift action_18
action_142 (28) = happyShift action_19
action_142 (31) = happyShift action_20
action_142 (32) = happyShift action_21
action_142 (33) = happyShift action_22
action_142 (39) = happyShift action_23
action_142 (40) = happyShift action_24
action_142 (51) = happyShift action_25
action_142 (54) = happyShift action_26
action_142 (56) = happyShift action_27
action_142 (61) = happyShift action_28
action_142 (4) = happyGoto action_144
action_142 (5) = happyGoto action_3
action_142 (6) = happyGoto action_4
action_142 (7) = happyGoto action_5
action_142 (11) = happyGoto action_6
action_142 (12) = happyGoto action_7
action_142 _ = happyReduce_1

action_143 _ = happyReduce_61

action_144 (59) = happyShift action_149
action_144 _ = happyFail (happyExpListPerState 144)

action_145 (59) = happyShift action_148
action_145 _ = happyFail (happyExpListPerState 145)

action_146 (59) = happyShift action_147
action_146 _ = happyFail (happyExpListPerState 146)

action_147 _ = happyReduce_54

action_148 (24) = happyShift action_130
action_148 (8) = happyGoto action_150
action_148 _ = happyReduce_51

action_149 _ = happyReduce_62

action_150 _ = happyReduce_52

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

happyReduce_30 = happySpecReduce_2  6 happyReduction_30
happyReduction_30 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Plus (VarRef happy_var_1) 1)
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  6 happyReduction_31
happyReduction_31 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Minus (VarRef happy_var_1) 1)
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  6 happyReduction_32
happyReduction_32 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 6 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 4 6 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_2  6 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  6 happyReduction_40
happyReduction_40 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happyReduce 4 6 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_2  6 happyReduction_42
happyReduction_42 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  6 happyReduction_43
happyReduction_43 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  6 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  6 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  6 happyReduction_46
happyReduction_46 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  6 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  6 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  6 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happyReduce 7 7 happyReduction_50
happyReduction_50 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_51 = happySpecReduce_0  8 happyReduction_51
happyReduction_51  =  HappyAbsSyn8
		 ([]
	)

happyReduce_52 = happyReduce 6 8 happyReduction_52
happyReduction_52 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_53 = happySpecReduce_0  9 happyReduction_53
happyReduction_53  =  HappyAbsSyn9
		 ([]
	)

happyReduce_54 = happyReduce 4 9 happyReduction_54
happyReduction_54 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_55 = happySpecReduce_0  10 happyReduction_55
happyReduction_55  =  HappyAbsSyn10
		 ([]
	)

happyReduce_56 = happySpecReduce_1  10 happyReduction_56
happyReduction_56 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  10 happyReduction_57
happyReduction_57 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  11 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_59 = happySpecReduce_1  11 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_60 = happySpecReduce_1  11 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_61 = happyReduce 8 12 happyReduction_61
happyReduction_61 (_ `HappyStk`
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

happyReduce_62 = happyReduce 10 12 happyReduction_62
happyReduction_62 (_ `HappyStk`
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

happyReduce_63 = happySpecReduce_0  13 happyReduction_63
happyReduction_63  =  HappyAbsSyn13
		 ([]
	)

happyReduce_64 = happySpecReduce_2  13 happyReduction_64
happyReduction_64 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn13
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_64 _ _  = notHappyAtAll 

happyReduce_65 = happyReduce 4 13 happyReduction_65
happyReduction_65 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_66 = happySpecReduce_0  14 happyReduction_66
happyReduction_66  =  HappyAbsSyn14
		 ([]
	)

happyReduce_67 = happySpecReduce_1  14 happyReduction_67
happyReduction_67 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_3  14 happyReduction_68
happyReduction_68 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 : happy_var_3
	)
happyReduction_68 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 66 66 notHappyAtAll (HappyState action) sts stk []

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
	TokenPlusPlus _ -> cont 39;
	TokenMinusMinus _ -> cont 40;
	TokenTake _ -> cont 41;
	TokenReturnArrow _ -> cont 42;
	TokenAssign _ -> cont 43;
	TokenPlusEquals _ -> cont 44;
	TokenMinusEquals _ -> cont 45;
	TokenTimesEquals _ -> cont 46;
	TokenDivEquals _ -> cont 47;
	TokenExponentEquals _ -> cont 48;
	TokenModuloEquals _ -> cont 49;
	TokenPlus _ -> cont 50;
	TokenMinus _ -> cont 51;
	TokenTimes _ -> cont 52;
	TokenDiv _ -> cont 53;
	TokenLParen _ -> cont 54;
	TokenRParen _ -> cont 55;
	TokenLSquare _ -> cont 56;
	TokenRSquare _ -> cont 57;
	TokenLCurly _ -> cont 58;
	TokenRCurly _ -> cont 59;
	TokenComma _ -> cont 60;
	TokenNot _ -> cont 61;
	TokenExponent _ -> cont 62;
	TokenModulo _ -> cont 63;
	TokenLT _ -> cont 64;
	TokenGT _ -> cont 65;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 66 tk tks = happyError' (tks, explist)
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

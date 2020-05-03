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
happyExpList = Happy_Data_Array.listArray (0,1096) ([0,49144,33692,18433,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49148,65532,31747,993,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,16384,0,63488,40127,387,8520,0,0,8192,0,4100,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,0,0,0,0,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,0,0,0,0,0,0,0,0,0,0,0,63488,3,0,0,8192,0,0,0,0,512,0,0,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,0,0,11264,5120,4,0,24576,764,53628,3,0,0,0,32,0,0,64608,64514,961,0,0,11264,5120,4,0,0,0,0,0,0,0,0,0,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,0,0,0,20,0,0,0,16384,1,0,0,0,5120,0,0,24576,764,50556,3,0,50692,49199,15383,0,0,0,0,4,0,0,12230,22464,60,0,24576,764,49532,3,0,0,0,4,0,568,0,0,0,0,0,0,1024,0,0,24576,764,49532,3,65408,14795,32792,532,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,0,0,49196,3095,0,0,49152,31746,193,0,0,11264,5120,4,0,0,0,16704,0,0,50688,49199,15671,0,0,64608,64514,977,0,0,0,2048,0,0,0,704,16704,0,0,0,44,1044,0,0,49152,16386,65,0,0,11264,5888,12,0,0,576,16704,0,0,50688,49199,15383,0,0,0,1016,0,0,0,9216,5120,4,0,0,716,49532,3,0,49152,49196,15383,0,0,49152,31746,193,0,0,11264,6080,12,0,8192,764,49532,3,0,49152,49199,15383,0,0,0,0,0,32768,52223,6201,5248,2,0,24576,764,51580,3,65408,14795,32792,532,0,49144,33692,18433,33,32768,52223,6201,5248,2,63488,40127,387,8520,0,9088,0,0,0,0,0,512,0,0,0,0,0,2048,0,0,0,0,0,1,9088,0,0,0,0,49144,33692,18433,33,32768,52223,6201,5248,2,0,0,0,256,0,65408,14795,32792,532,0,0,64608,31746,961,0,0,12230,6080,60,0,24576,764,49532,3,0,50688,49199,15383,0,0,64608,31746,961,0,0,12230,6080,60,0,24576,764,49532,3,0,0,0,0,0,0,0,0,0,32768,52223,6201,5248,2,0,0,0,0,0,0,0,0,128,0,0,512,0,1024,0,0,0,32768,0,0,0,0,2048,0,0,0,0,8,0,0,0,4,4,0,0,0,0,1,0,0,0,4096,0,0,0,0,8,0,0,64608,31746,963,0,0,12230,6080,61,0,0,704,49520,0,0,0,0,0,0,0,64608,31746,961,0,0,0,0,0,63488,40127,387,8520,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,32,14336,2,0,0,0,9088,0,0,0,0,568,0,0,0,32768,52223,6201,5248,2,0,0,1024,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,4096,0,0,0,0,256,0,0,1,0,0,0,8192,0,0,0,63488,40127,387,8520,0,0,8192,0,16384,0,0,512,0,1024,0,0,0,0,1,14336,2,0,0,0,65408,14795,32792,532,0,0,0,0,8,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,568,0,0,0,0,0,0,0,0,0,0,0,0,2,65408,14795,32792,532,0,0,0,0,0,0,0,0,32768,0,0,0,0,1024,0,65408,14795,32792,532,0,0,0,0,0,0,0,0,0,0,0,24576,764,50556,3,0,0,0,0,0,0,0,0,4,32768,52223,6201,5248,2,63488,40127,387,8520,0,0,0,0,0,0,49144,33692,18433,33,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,2048,0,0,0,0,128,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","Exps","Exp","If","Elif","Else","StreamLiteral","Type","FnDec","FnAnonDec","ParamList","TypeList","ArgList","ProcessList","VarList","';'","int_type","stream_type","boolean_type","import","input","print","fn","return","while","process","break","as","if","elif","else","has_next","next","size","and","or","int","bool","var","'<='","'>='","'=='","'!='","':'","'++'","'--'","'<-'","'->'","'='","'+='","'-='","'*='","'/='","'^='","'%='","'+'","'-'","'*'","'/'","'('","')'","'['","']'","'{'","'}'","','","'!'","'^'","'%'","'<'","'>'","'_'","%eof"]
        bit_start = st * 76
        bit_end = (st + 1) * 76
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..75]
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
action_0 (30) = happyShift action_19
action_0 (32) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (40) = happyShift action_24
action_0 (41) = happyShift action_25
action_0 (42) = happyShift action_26
action_0 (48) = happyShift action_27
action_0 (49) = happyShift action_28
action_0 (60) = happyShift action_29
action_0 (63) = happyShift action_30
action_0 (65) = happyShift action_31
action_0 (70) = happyShift action_32
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (6) = happyGoto action_4
action_0 (7) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (76) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_2

action_4 (19) = happyShift action_63
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
action_4 (30) = happyShift action_19
action_4 (32) = happyShift action_20
action_4 (35) = happyShift action_21
action_4 (36) = happyShift action_22
action_4 (37) = happyShift action_23
action_4 (38) = happyShift action_64
action_4 (39) = happyShift action_65
action_4 (40) = happyShift action_24
action_4 (41) = happyShift action_25
action_4 (42) = happyShift action_26
action_4 (43) = happyShift action_66
action_4 (44) = happyShift action_67
action_4 (45) = happyShift action_68
action_4 (46) = happyShift action_69
action_4 (47) = happyShift action_70
action_4 (48) = happyShift action_71
action_4 (49) = happyShift action_28
action_4 (50) = happyShift action_72
action_4 (59) = happyShift action_73
action_4 (60) = happyShift action_74
action_4 (61) = happyShift action_75
action_4 (62) = happyShift action_76
action_4 (63) = happyShift action_77
action_4 (65) = happyShift action_78
action_4 (70) = happyShift action_32
action_4 (71) = happyShift action_79
action_4 (72) = happyShift action_80
action_4 (73) = happyShift action_81
action_4 (74) = happyShift action_82
action_4 (5) = happyGoto action_62
action_4 (6) = happyGoto action_4
action_4 (7) = happyGoto action_5
action_4 (11) = happyGoto action_6
action_4 (12) = happyGoto action_7
action_4 (13) = happyGoto action_8
action_4 _ = happyReduce_3

action_5 _ = happyReduce_10

action_6 (42) = happyShift action_61
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_45

action_8 _ = happyReduce_46

action_9 _ = happyReduce_64

action_10 _ = happyReduce_66

action_11 _ = happyReduce_65

action_12 (42) = happyShift action_60
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (67) = happyShift action_59
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (20) = happyShift action_9
action_14 (21) = happyShift action_10
action_14 (22) = happyShift action_11
action_14 (23) = happyShift action_12
action_14 (24) = happyShift action_13
action_14 (25) = happyShift action_14
action_14 (26) = happyShift action_15
action_14 (27) = happyShift action_16
action_14 (28) = happyShift action_17
action_14 (29) = happyShift action_18
action_14 (30) = happyShift action_19
action_14 (32) = happyShift action_20
action_14 (35) = happyShift action_21
action_14 (36) = happyShift action_22
action_14 (37) = happyShift action_23
action_14 (40) = happyShift action_24
action_14 (41) = happyShift action_25
action_14 (42) = happyShift action_26
action_14 (48) = happyShift action_27
action_14 (49) = happyShift action_28
action_14 (60) = happyShift action_29
action_14 (63) = happyShift action_30
action_14 (65) = happyShift action_31
action_14 (70) = happyShift action_32
action_14 (6) = happyGoto action_58
action_14 (7) = happyGoto action_5
action_14 (11) = happyGoto action_6
action_14 (12) = happyGoto action_7
action_14 (13) = happyGoto action_8
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (42) = happyShift action_55
action_15 (63) = happyShift action_56
action_15 (73) = happyShift action_57
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
action_16 (30) = happyShift action_19
action_16 (32) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (37) = happyShift action_23
action_16 (40) = happyShift action_24
action_16 (41) = happyShift action_25
action_16 (42) = happyShift action_26
action_16 (48) = happyShift action_27
action_16 (49) = happyShift action_28
action_16 (60) = happyShift action_29
action_16 (63) = happyShift action_30
action_16 (65) = happyShift action_31
action_16 (70) = happyShift action_32
action_16 (6) = happyGoto action_54
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
action_17 (30) = happyShift action_19
action_17 (32) = happyShift action_20
action_17 (35) = happyShift action_21
action_17 (36) = happyShift action_22
action_17 (37) = happyShift action_23
action_17 (40) = happyShift action_24
action_17 (41) = happyShift action_25
action_17 (42) = happyShift action_26
action_17 (48) = happyShift action_27
action_17 (49) = happyShift action_28
action_17 (60) = happyShift action_29
action_17 (63) = happyShift action_30
action_17 (65) = happyShift action_31
action_17 (70) = happyShift action_32
action_17 (6) = happyGoto action_53
action_17 (7) = happyGoto action_5
action_17 (11) = happyGoto action_6
action_17 (12) = happyGoto action_7
action_17 (13) = happyGoto action_8
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (20) = happyShift action_9
action_18 (21) = happyShift action_10
action_18 (22) = happyShift action_11
action_18 (23) = happyShift action_12
action_18 (24) = happyShift action_13
action_18 (25) = happyShift action_14
action_18 (26) = happyShift action_15
action_18 (27) = happyShift action_16
action_18 (28) = happyShift action_17
action_18 (29) = happyShift action_18
action_18 (30) = happyShift action_19
action_18 (32) = happyShift action_20
action_18 (35) = happyShift action_21
action_18 (36) = happyShift action_22
action_18 (37) = happyShift action_23
action_18 (40) = happyShift action_24
action_18 (41) = happyShift action_25
action_18 (42) = happyShift action_26
action_18 (48) = happyShift action_27
action_18 (49) = happyShift action_28
action_18 (60) = happyShift action_29
action_18 (63) = happyShift action_30
action_18 (65) = happyShift action_31
action_18 (70) = happyShift action_32
action_18 (6) = happyGoto action_51
action_18 (7) = happyGoto action_5
action_18 (11) = happyGoto action_6
action_18 (12) = happyGoto action_7
action_18 (13) = happyGoto action_8
action_18 (17) = happyGoto action_52
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_18

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
action_20 (30) = happyShift action_19
action_20 (32) = happyShift action_20
action_20 (35) = happyShift action_21
action_20 (36) = happyShift action_22
action_20 (37) = happyShift action_23
action_20 (40) = happyShift action_24
action_20 (41) = happyShift action_25
action_20 (42) = happyShift action_26
action_20 (48) = happyShift action_27
action_20 (49) = happyShift action_28
action_20 (60) = happyShift action_29
action_20 (63) = happyShift action_30
action_20 (65) = happyShift action_31
action_20 (70) = happyShift action_32
action_20 (6) = happyGoto action_50
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
action_21 (30) = happyShift action_19
action_21 (32) = happyShift action_20
action_21 (35) = happyShift action_21
action_21 (36) = happyShift action_22
action_21 (37) = happyShift action_23
action_21 (40) = happyShift action_24
action_21 (41) = happyShift action_25
action_21 (42) = happyShift action_26
action_21 (48) = happyShift action_27
action_21 (49) = happyShift action_28
action_21 (60) = happyShift action_29
action_21 (63) = happyShift action_30
action_21 (65) = happyShift action_31
action_21 (70) = happyShift action_32
action_21 (6) = happyGoto action_49
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
action_22 (30) = happyShift action_19
action_22 (32) = happyShift action_20
action_22 (35) = happyShift action_21
action_22 (36) = happyShift action_22
action_22 (37) = happyShift action_23
action_22 (40) = happyShift action_24
action_22 (41) = happyShift action_25
action_22 (42) = happyShift action_26
action_22 (48) = happyShift action_27
action_22 (49) = happyShift action_28
action_22 (60) = happyShift action_29
action_22 (63) = happyShift action_30
action_22 (65) = happyShift action_31
action_22 (70) = happyShift action_32
action_22 (6) = happyGoto action_48
action_22 (7) = happyGoto action_5
action_22 (11) = happyGoto action_6
action_22 (12) = happyGoto action_7
action_22 (13) = happyGoto action_8
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (20) = happyShift action_9
action_23 (21) = happyShift action_10
action_23 (22) = happyShift action_11
action_23 (23) = happyShift action_12
action_23 (24) = happyShift action_13
action_23 (25) = happyShift action_14
action_23 (26) = happyShift action_15
action_23 (27) = happyShift action_16
action_23 (28) = happyShift action_17
action_23 (29) = happyShift action_18
action_23 (30) = happyShift action_19
action_23 (32) = happyShift action_20
action_23 (35) = happyShift action_21
action_23 (36) = happyShift action_22
action_23 (37) = happyShift action_23
action_23 (40) = happyShift action_24
action_23 (41) = happyShift action_25
action_23 (42) = happyShift action_26
action_23 (48) = happyShift action_27
action_23 (49) = happyShift action_28
action_23 (60) = happyShift action_29
action_23 (63) = happyShift action_30
action_23 (65) = happyShift action_31
action_23 (70) = happyShift action_32
action_23 (6) = happyGoto action_47
action_23 (7) = happyGoto action_5
action_23 (11) = happyGoto action_6
action_23 (12) = happyGoto action_7
action_23 (13) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_16

action_25 _ = happyReduce_17

action_26 (52) = happyShift action_40
action_26 (53) = happyShift action_41
action_26 (54) = happyShift action_42
action_26 (55) = happyShift action_43
action_26 (56) = happyShift action_44
action_26 (57) = happyShift action_45
action_26 (58) = happyShift action_46
action_26 _ = happyReduce_37

action_27 (42) = happyShift action_39
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (42) = happyShift action_38
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
action_29 (30) = happyShift action_19
action_29 (32) = happyShift action_20
action_29 (35) = happyShift action_21
action_29 (36) = happyShift action_22
action_29 (37) = happyShift action_23
action_29 (40) = happyShift action_24
action_29 (41) = happyShift action_25
action_29 (42) = happyShift action_26
action_29 (48) = happyShift action_27
action_29 (49) = happyShift action_28
action_29 (60) = happyShift action_29
action_29 (63) = happyShift action_30
action_29 (65) = happyShift action_31
action_29 (70) = happyShift action_32
action_29 (6) = happyGoto action_37
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
action_30 (30) = happyShift action_19
action_30 (32) = happyShift action_20
action_30 (35) = happyShift action_21
action_30 (36) = happyShift action_22
action_30 (37) = happyShift action_23
action_30 (40) = happyShift action_24
action_30 (41) = happyShift action_25
action_30 (42) = happyShift action_26
action_30 (48) = happyShift action_27
action_30 (49) = happyShift action_28
action_30 (60) = happyShift action_29
action_30 (63) = happyShift action_30
action_30 (65) = happyShift action_31
action_30 (70) = happyShift action_32
action_30 (6) = happyGoto action_36
action_30 (7) = happyGoto action_5
action_30 (11) = happyGoto action_6
action_30 (12) = happyGoto action_7
action_30 (13) = happyGoto action_8
action_30 _ = happyFail (happyExpListPerState 30)

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
action_31 (30) = happyShift action_19
action_31 (32) = happyShift action_20
action_31 (35) = happyShift action_21
action_31 (36) = happyShift action_22
action_31 (37) = happyShift action_23
action_31 (40) = happyShift action_24
action_31 (41) = happyShift action_25
action_31 (42) = happyShift action_26
action_31 (48) = happyShift action_27
action_31 (49) = happyShift action_28
action_31 (60) = happyShift action_29
action_31 (63) = happyShift action_30
action_31 (65) = happyShift action_31
action_31 (70) = happyShift action_32
action_31 (6) = happyGoto action_34
action_31 (7) = happyGoto action_5
action_31 (10) = happyGoto action_35
action_31 (11) = happyGoto action_6
action_31 (12) = happyGoto action_7
action_31 (13) = happyGoto action_8
action_31 _ = happyReduce_61

action_32 (20) = happyShift action_9
action_32 (21) = happyShift action_10
action_32 (22) = happyShift action_11
action_32 (23) = happyShift action_12
action_32 (24) = happyShift action_13
action_32 (25) = happyShift action_14
action_32 (26) = happyShift action_15
action_32 (27) = happyShift action_16
action_32 (28) = happyShift action_17
action_32 (29) = happyShift action_18
action_32 (30) = happyShift action_19
action_32 (32) = happyShift action_20
action_32 (35) = happyShift action_21
action_32 (36) = happyShift action_22
action_32 (37) = happyShift action_23
action_32 (40) = happyShift action_24
action_32 (41) = happyShift action_25
action_32 (42) = happyShift action_26
action_32 (48) = happyShift action_27
action_32 (49) = happyShift action_28
action_32 (60) = happyShift action_29
action_32 (63) = happyShift action_30
action_32 (65) = happyShift action_31
action_32 (70) = happyShift action_32
action_32 (6) = happyGoto action_33
action_32 (7) = happyGoto action_5
action_32 (11) = happyGoto action_6
action_32 (12) = happyGoto action_7
action_32 (13) = happyGoto action_8
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (47) = happyShift action_70
action_33 (48) = happyShift action_107
action_33 (50) = happyShift action_72
action_33 (63) = happyShift action_109
action_33 (65) = happyShift action_110
action_33 (71) = happyShift action_79
action_33 _ = happyReduce_49

action_34 (38) = happyShift action_64
action_34 (39) = happyShift action_65
action_34 (43) = happyShift action_66
action_34 (44) = happyShift action_67
action_34 (45) = happyShift action_68
action_34 (46) = happyShift action_69
action_34 (47) = happyShift action_70
action_34 (48) = happyShift action_107
action_34 (50) = happyShift action_72
action_34 (59) = happyShift action_73
action_34 (60) = happyShift action_108
action_34 (61) = happyShift action_75
action_34 (62) = happyShift action_76
action_34 (63) = happyShift action_109
action_34 (65) = happyShift action_110
action_34 (69) = happyShift action_129
action_34 (71) = happyShift action_79
action_34 (72) = happyShift action_80
action_34 (73) = happyShift action_81
action_34 (74) = happyShift action_82
action_34 _ = happyReduce_62

action_35 (66) = happyShift action_128
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (38) = happyShift action_64
action_36 (39) = happyShift action_65
action_36 (43) = happyShift action_66
action_36 (44) = happyShift action_67
action_36 (45) = happyShift action_68
action_36 (46) = happyShift action_69
action_36 (47) = happyShift action_70
action_36 (48) = happyShift action_107
action_36 (50) = happyShift action_72
action_36 (59) = happyShift action_73
action_36 (60) = happyShift action_108
action_36 (61) = happyShift action_75
action_36 (62) = happyShift action_76
action_36 (63) = happyShift action_109
action_36 (64) = happyShift action_127
action_36 (65) = happyShift action_110
action_36 (71) = happyShift action_79
action_36 (72) = happyShift action_80
action_36 (73) = happyShift action_81
action_36 (74) = happyShift action_82
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (47) = happyShift action_70
action_37 (48) = happyShift action_107
action_37 (50) = happyShift action_72
action_37 (63) = happyShift action_109
action_37 (65) = happyShift action_110
action_37 (71) = happyShift action_79
action_37 _ = happyReduce_54

action_38 _ = happyReduce_36

action_39 _ = happyReduce_35

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
action_40 (30) = happyShift action_19
action_40 (32) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (37) = happyShift action_23
action_40 (40) = happyShift action_24
action_40 (41) = happyShift action_25
action_40 (42) = happyShift action_26
action_40 (48) = happyShift action_27
action_40 (49) = happyShift action_28
action_40 (60) = happyShift action_29
action_40 (63) = happyShift action_30
action_40 (65) = happyShift action_31
action_40 (70) = happyShift action_32
action_40 (6) = happyGoto action_126
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
action_41 (30) = happyShift action_19
action_41 (32) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (37) = happyShift action_23
action_41 (40) = happyShift action_24
action_41 (41) = happyShift action_25
action_41 (42) = happyShift action_26
action_41 (48) = happyShift action_27
action_41 (49) = happyShift action_28
action_41 (60) = happyShift action_29
action_41 (63) = happyShift action_30
action_41 (65) = happyShift action_31
action_41 (70) = happyShift action_32
action_41 (6) = happyGoto action_125
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
action_42 (30) = happyShift action_19
action_42 (32) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (37) = happyShift action_23
action_42 (40) = happyShift action_24
action_42 (41) = happyShift action_25
action_42 (42) = happyShift action_26
action_42 (48) = happyShift action_27
action_42 (49) = happyShift action_28
action_42 (60) = happyShift action_29
action_42 (63) = happyShift action_30
action_42 (65) = happyShift action_31
action_42 (70) = happyShift action_32
action_42 (6) = happyGoto action_124
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
action_43 (30) = happyShift action_19
action_43 (32) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (37) = happyShift action_23
action_43 (40) = happyShift action_24
action_43 (41) = happyShift action_25
action_43 (42) = happyShift action_26
action_43 (48) = happyShift action_27
action_43 (49) = happyShift action_28
action_43 (60) = happyShift action_29
action_43 (63) = happyShift action_30
action_43 (65) = happyShift action_31
action_43 (70) = happyShift action_32
action_43 (6) = happyGoto action_123
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
action_44 (30) = happyShift action_19
action_44 (32) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (40) = happyShift action_24
action_44 (41) = happyShift action_25
action_44 (42) = happyShift action_26
action_44 (48) = happyShift action_27
action_44 (49) = happyShift action_28
action_44 (60) = happyShift action_29
action_44 (63) = happyShift action_30
action_44 (65) = happyShift action_31
action_44 (70) = happyShift action_32
action_44 (6) = happyGoto action_122
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
action_45 (30) = happyShift action_19
action_45 (32) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (37) = happyShift action_23
action_45 (40) = happyShift action_24
action_45 (41) = happyShift action_25
action_45 (42) = happyShift action_26
action_45 (48) = happyShift action_27
action_45 (49) = happyShift action_28
action_45 (60) = happyShift action_29
action_45 (63) = happyShift action_30
action_45 (65) = happyShift action_31
action_45 (70) = happyShift action_32
action_45 (6) = happyGoto action_121
action_45 (7) = happyGoto action_5
action_45 (11) = happyGoto action_6
action_45 (12) = happyGoto action_7
action_45 (13) = happyGoto action_8
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_9
action_46 (21) = happyShift action_10
action_46 (22) = happyShift action_11
action_46 (23) = happyShift action_12
action_46 (24) = happyShift action_13
action_46 (25) = happyShift action_14
action_46 (26) = happyShift action_15
action_46 (27) = happyShift action_16
action_46 (28) = happyShift action_17
action_46 (29) = happyShift action_18
action_46 (30) = happyShift action_19
action_46 (32) = happyShift action_20
action_46 (35) = happyShift action_21
action_46 (36) = happyShift action_22
action_46 (37) = happyShift action_23
action_46 (40) = happyShift action_24
action_46 (41) = happyShift action_25
action_46 (42) = happyShift action_26
action_46 (48) = happyShift action_27
action_46 (49) = happyShift action_28
action_46 (60) = happyShift action_29
action_46 (63) = happyShift action_30
action_46 (65) = happyShift action_31
action_46 (70) = happyShift action_32
action_46 (6) = happyGoto action_120
action_46 (7) = happyGoto action_5
action_46 (11) = happyGoto action_6
action_46 (12) = happyGoto action_7
action_46 (13) = happyGoto action_8
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (63) = happyShift action_109
action_47 (65) = happyShift action_110
action_47 _ = happyReduce_13

action_48 (63) = happyShift action_109
action_48 (65) = happyShift action_110
action_48 _ = happyReduce_12

action_49 (63) = happyShift action_109
action_49 (65) = happyShift action_110
action_49 _ = happyReduce_11

action_50 (38) = happyShift action_64
action_50 (39) = happyShift action_65
action_50 (43) = happyShift action_66
action_50 (44) = happyShift action_67
action_50 (45) = happyShift action_68
action_50 (46) = happyShift action_69
action_50 (47) = happyShift action_70
action_50 (48) = happyShift action_107
action_50 (50) = happyShift action_72
action_50 (59) = happyShift action_73
action_50 (60) = happyShift action_108
action_50 (61) = happyShift action_75
action_50 (62) = happyShift action_76
action_50 (63) = happyShift action_109
action_50 (65) = happyShift action_110
action_50 (67) = happyShift action_119
action_50 (71) = happyShift action_79
action_50 (72) = happyShift action_80
action_50 (73) = happyShift action_81
action_50 (74) = happyShift action_82
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_118
action_51 (38) = happyShift action_64
action_51 (39) = happyShift action_65
action_51 (43) = happyShift action_66
action_51 (44) = happyShift action_67
action_51 (45) = happyShift action_68
action_51 (46) = happyShift action_69
action_51 (47) = happyShift action_70
action_51 (48) = happyShift action_107
action_51 (50) = happyShift action_72
action_51 (59) = happyShift action_73
action_51 (60) = happyShift action_108
action_51 (61) = happyShift action_75
action_51 (62) = happyShift action_76
action_51 (63) = happyShift action_109
action_51 (65) = happyShift action_110
action_51 (71) = happyShift action_79
action_51 (72) = happyShift action_80
action_51 (73) = happyShift action_81
action_51 (74) = happyShift action_82
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (67) = happyShift action_117
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (38) = happyShift action_64
action_53 (39) = happyShift action_65
action_53 (43) = happyShift action_66
action_53 (44) = happyShift action_67
action_53 (45) = happyShift action_68
action_53 (46) = happyShift action_69
action_53 (47) = happyShift action_70
action_53 (48) = happyShift action_107
action_53 (50) = happyShift action_72
action_53 (59) = happyShift action_73
action_53 (60) = happyShift action_108
action_53 (61) = happyShift action_75
action_53 (62) = happyShift action_76
action_53 (63) = happyShift action_109
action_53 (65) = happyShift action_110
action_53 (67) = happyShift action_116
action_53 (71) = happyShift action_79
action_53 (72) = happyShift action_80
action_53 (73) = happyShift action_81
action_53 (74) = happyShift action_82
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (38) = happyShift action_64
action_54 (39) = happyShift action_65
action_54 (43) = happyShift action_66
action_54 (44) = happyShift action_67
action_54 (45) = happyShift action_68
action_54 (46) = happyShift action_69
action_54 (47) = happyShift action_70
action_54 (48) = happyShift action_107
action_54 (50) = happyShift action_72
action_54 (59) = happyShift action_73
action_54 (60) = happyShift action_108
action_54 (61) = happyShift action_75
action_54 (62) = happyShift action_76
action_54 (63) = happyShift action_109
action_54 (65) = happyShift action_110
action_54 (71) = happyShift action_79
action_54 (72) = happyShift action_80
action_54 (73) = happyShift action_81
action_54 (74) = happyShift action_82
action_54 _ = happyReduce_48

action_55 (63) = happyShift action_115
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (20) = happyShift action_9
action_56 (21) = happyShift action_10
action_56 (22) = happyShift action_11
action_56 (26) = happyShift action_114
action_56 (11) = happyGoto action_112
action_56 (14) = happyGoto action_113
action_56 _ = happyReduce_73

action_57 (63) = happyShift action_111
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (38) = happyShift action_64
action_58 (39) = happyShift action_65
action_58 (43) = happyShift action_66
action_58 (44) = happyShift action_67
action_58 (45) = happyShift action_68
action_58 (46) = happyShift action_69
action_58 (47) = happyShift action_70
action_58 (48) = happyShift action_107
action_58 (50) = happyShift action_72
action_58 (59) = happyShift action_73
action_58 (60) = happyShift action_108
action_58 (61) = happyShift action_75
action_58 (62) = happyShift action_76
action_58 (63) = happyShift action_109
action_58 (65) = happyShift action_110
action_58 (71) = happyShift action_79
action_58 (72) = happyShift action_80
action_58 (73) = happyShift action_81
action_58 (74) = happyShift action_82
action_58 _ = happyReduce_44

action_59 (20) = happyShift action_9
action_59 (21) = happyShift action_10
action_59 (22) = happyShift action_11
action_59 (23) = happyShift action_12
action_59 (24) = happyShift action_13
action_59 (25) = happyShift action_14
action_59 (26) = happyShift action_15
action_59 (27) = happyShift action_16
action_59 (28) = happyShift action_17
action_59 (29) = happyShift action_18
action_59 (30) = happyShift action_19
action_59 (32) = happyShift action_20
action_59 (35) = happyShift action_21
action_59 (36) = happyShift action_22
action_59 (37) = happyShift action_23
action_59 (40) = happyShift action_24
action_59 (41) = happyShift action_25
action_59 (42) = happyShift action_26
action_59 (48) = happyShift action_27
action_59 (49) = happyShift action_28
action_59 (60) = happyShift action_29
action_59 (63) = happyShift action_30
action_59 (65) = happyShift action_31
action_59 (70) = happyShift action_32
action_59 (6) = happyGoto action_106
action_59 (7) = happyGoto action_5
action_59 (11) = happyGoto action_6
action_59 (12) = happyGoto action_7
action_59 (13) = happyGoto action_8
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_7

action_61 (52) = happyShift action_105
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_5

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
action_63 (30) = happyShift action_19
action_63 (32) = happyShift action_20
action_63 (35) = happyShift action_21
action_63 (36) = happyShift action_22
action_63 (37) = happyShift action_23
action_63 (40) = happyShift action_24
action_63 (41) = happyShift action_25
action_63 (42) = happyShift action_26
action_63 (48) = happyShift action_27
action_63 (49) = happyShift action_28
action_63 (60) = happyShift action_29
action_63 (63) = happyShift action_30
action_63 (65) = happyShift action_31
action_63 (70) = happyShift action_32
action_63 (5) = happyGoto action_104
action_63 (6) = happyGoto action_4
action_63 (7) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (12) = happyGoto action_7
action_63 (13) = happyGoto action_8
action_63 _ = happyReduce_4

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
action_64 (30) = happyShift action_19
action_64 (32) = happyShift action_20
action_64 (35) = happyShift action_21
action_64 (36) = happyShift action_22
action_64 (37) = happyShift action_23
action_64 (40) = happyShift action_24
action_64 (41) = happyShift action_25
action_64 (42) = happyShift action_26
action_64 (48) = happyShift action_27
action_64 (49) = happyShift action_28
action_64 (60) = happyShift action_29
action_64 (63) = happyShift action_30
action_64 (65) = happyShift action_31
action_64 (70) = happyShift action_32
action_64 (6) = happyGoto action_103
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
action_65 (30) = happyShift action_19
action_65 (32) = happyShift action_20
action_65 (35) = happyShift action_21
action_65 (36) = happyShift action_22
action_65 (37) = happyShift action_23
action_65 (40) = happyShift action_24
action_65 (41) = happyShift action_25
action_65 (42) = happyShift action_26
action_65 (48) = happyShift action_27
action_65 (49) = happyShift action_28
action_65 (60) = happyShift action_29
action_65 (63) = happyShift action_30
action_65 (65) = happyShift action_31
action_65 (70) = happyShift action_32
action_65 (6) = happyGoto action_102
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
action_66 (30) = happyShift action_19
action_66 (32) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (36) = happyShift action_22
action_66 (37) = happyShift action_23
action_66 (40) = happyShift action_24
action_66 (41) = happyShift action_25
action_66 (42) = happyShift action_26
action_66 (48) = happyShift action_27
action_66 (49) = happyShift action_28
action_66 (60) = happyShift action_29
action_66 (63) = happyShift action_30
action_66 (65) = happyShift action_31
action_66 (70) = happyShift action_32
action_66 (6) = happyGoto action_101
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
action_67 (30) = happyShift action_19
action_67 (32) = happyShift action_20
action_67 (35) = happyShift action_21
action_67 (36) = happyShift action_22
action_67 (37) = happyShift action_23
action_67 (40) = happyShift action_24
action_67 (41) = happyShift action_25
action_67 (42) = happyShift action_26
action_67 (48) = happyShift action_27
action_67 (49) = happyShift action_28
action_67 (60) = happyShift action_29
action_67 (63) = happyShift action_30
action_67 (65) = happyShift action_31
action_67 (70) = happyShift action_32
action_67 (6) = happyGoto action_100
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
action_68 (30) = happyShift action_19
action_68 (32) = happyShift action_20
action_68 (35) = happyShift action_21
action_68 (36) = happyShift action_22
action_68 (37) = happyShift action_23
action_68 (40) = happyShift action_24
action_68 (41) = happyShift action_25
action_68 (42) = happyShift action_26
action_68 (48) = happyShift action_27
action_68 (49) = happyShift action_28
action_68 (60) = happyShift action_29
action_68 (63) = happyShift action_30
action_68 (65) = happyShift action_31
action_68 (70) = happyShift action_32
action_68 (6) = happyGoto action_99
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
action_69 (30) = happyShift action_19
action_69 (32) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (36) = happyShift action_22
action_69 (37) = happyShift action_23
action_69 (40) = happyShift action_24
action_69 (41) = happyShift action_25
action_69 (42) = happyShift action_26
action_69 (48) = happyShift action_27
action_69 (49) = happyShift action_28
action_69 (60) = happyShift action_29
action_69 (63) = happyShift action_30
action_69 (65) = happyShift action_31
action_69 (70) = happyShift action_32
action_69 (6) = happyGoto action_98
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
action_70 (30) = happyShift action_19
action_70 (32) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (37) = happyShift action_23
action_70 (40) = happyShift action_24
action_70 (41) = happyShift action_25
action_70 (42) = happyShift action_26
action_70 (48) = happyShift action_27
action_70 (49) = happyShift action_28
action_70 (60) = happyShift action_29
action_70 (63) = happyShift action_30
action_70 (65) = happyShift action_31
action_70 (70) = happyShift action_32
action_70 (6) = happyGoto action_97
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
action_71 (30) = happyShift action_19
action_71 (32) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (37) = happyShift action_23
action_71 (40) = happyShift action_24
action_71 (41) = happyShift action_25
action_71 (42) = happyShift action_96
action_71 (48) = happyShift action_27
action_71 (49) = happyShift action_28
action_71 (60) = happyShift action_29
action_71 (63) = happyShift action_30
action_71 (65) = happyShift action_31
action_71 (70) = happyShift action_32
action_71 (6) = happyGoto action_95
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
action_72 (30) = happyShift action_19
action_72 (32) = happyShift action_20
action_72 (35) = happyShift action_21
action_72 (36) = happyShift action_22
action_72 (37) = happyShift action_23
action_72 (40) = happyShift action_24
action_72 (41) = happyShift action_25
action_72 (42) = happyShift action_26
action_72 (48) = happyShift action_27
action_72 (49) = happyShift action_28
action_72 (60) = happyShift action_29
action_72 (63) = happyShift action_30
action_72 (65) = happyShift action_31
action_72 (70) = happyShift action_32
action_72 (6) = happyGoto action_94
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
action_73 (30) = happyShift action_19
action_73 (32) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (37) = happyShift action_23
action_73 (40) = happyShift action_24
action_73 (41) = happyShift action_25
action_73 (42) = happyShift action_26
action_73 (48) = happyShift action_27
action_73 (49) = happyShift action_28
action_73 (60) = happyShift action_29
action_73 (63) = happyShift action_30
action_73 (65) = happyShift action_31
action_73 (70) = happyShift action_32
action_73 (6) = happyGoto action_93
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
action_74 (30) = happyShift action_19
action_74 (32) = happyShift action_20
action_74 (35) = happyShift action_21
action_74 (36) = happyShift action_22
action_74 (37) = happyShift action_23
action_74 (40) = happyShift action_24
action_74 (41) = happyShift action_25
action_74 (42) = happyShift action_26
action_74 (48) = happyShift action_27
action_74 (49) = happyShift action_28
action_74 (60) = happyShift action_29
action_74 (63) = happyShift action_30
action_74 (65) = happyShift action_31
action_74 (70) = happyShift action_32
action_74 (6) = happyGoto action_92
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
action_75 (30) = happyShift action_19
action_75 (32) = happyShift action_20
action_75 (35) = happyShift action_21
action_75 (36) = happyShift action_22
action_75 (37) = happyShift action_23
action_75 (40) = happyShift action_24
action_75 (41) = happyShift action_25
action_75 (42) = happyShift action_26
action_75 (48) = happyShift action_27
action_75 (49) = happyShift action_28
action_75 (60) = happyShift action_29
action_75 (63) = happyShift action_30
action_75 (65) = happyShift action_31
action_75 (70) = happyShift action_32
action_75 (6) = happyGoto action_91
action_75 (7) = happyGoto action_5
action_75 (11) = happyGoto action_6
action_75 (12) = happyGoto action_7
action_75 (13) = happyGoto action_8
action_75 _ = happyFail (happyExpListPerState 75)

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
action_76 (30) = happyShift action_19
action_76 (32) = happyShift action_20
action_76 (35) = happyShift action_21
action_76 (36) = happyShift action_22
action_76 (37) = happyShift action_23
action_76 (40) = happyShift action_24
action_76 (41) = happyShift action_25
action_76 (42) = happyShift action_26
action_76 (48) = happyShift action_27
action_76 (49) = happyShift action_28
action_76 (60) = happyShift action_29
action_76 (63) = happyShift action_30
action_76 (65) = happyShift action_31
action_76 (70) = happyShift action_32
action_76 (6) = happyGoto action_90
action_76 (7) = happyGoto action_5
action_76 (11) = happyGoto action_6
action_76 (12) = happyGoto action_7
action_76 (13) = happyGoto action_8
action_76 _ = happyFail (happyExpListPerState 76)

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
action_77 (30) = happyShift action_19
action_77 (32) = happyShift action_20
action_77 (35) = happyShift action_21
action_77 (36) = happyShift action_22
action_77 (37) = happyShift action_23
action_77 (40) = happyShift action_24
action_77 (41) = happyShift action_25
action_77 (42) = happyShift action_26
action_77 (48) = happyShift action_27
action_77 (49) = happyShift action_28
action_77 (60) = happyShift action_29
action_77 (63) = happyShift action_30
action_77 (65) = happyShift action_31
action_77 (70) = happyShift action_32
action_77 (6) = happyGoto action_88
action_77 (7) = happyGoto action_5
action_77 (11) = happyGoto action_6
action_77 (12) = happyGoto action_7
action_77 (13) = happyGoto action_8
action_77 (16) = happyGoto action_89
action_77 _ = happyReduce_79

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
action_78 (30) = happyShift action_19
action_78 (32) = happyShift action_20
action_78 (35) = happyShift action_21
action_78 (36) = happyShift action_22
action_78 (37) = happyShift action_23
action_78 (40) = happyShift action_24
action_78 (41) = happyShift action_25
action_78 (42) = happyShift action_26
action_78 (48) = happyShift action_27
action_78 (49) = happyShift action_28
action_78 (60) = happyShift action_29
action_78 (63) = happyShift action_30
action_78 (65) = happyShift action_31
action_78 (70) = happyShift action_32
action_78 (6) = happyGoto action_87
action_78 (7) = happyGoto action_5
action_78 (10) = happyGoto action_35
action_78 (11) = happyGoto action_6
action_78 (12) = happyGoto action_7
action_78 (13) = happyGoto action_8
action_78 _ = happyReduce_61

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
action_79 (30) = happyShift action_19
action_79 (32) = happyShift action_20
action_79 (35) = happyShift action_21
action_79 (36) = happyShift action_22
action_79 (37) = happyShift action_23
action_79 (40) = happyShift action_24
action_79 (41) = happyShift action_25
action_79 (42) = happyShift action_26
action_79 (48) = happyShift action_27
action_79 (49) = happyShift action_28
action_79 (60) = happyShift action_29
action_79 (63) = happyShift action_30
action_79 (65) = happyShift action_31
action_79 (70) = happyShift action_32
action_79 (6) = happyGoto action_86
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
action_80 (30) = happyShift action_19
action_80 (32) = happyShift action_20
action_80 (35) = happyShift action_21
action_80 (36) = happyShift action_22
action_80 (37) = happyShift action_23
action_80 (40) = happyShift action_24
action_80 (41) = happyShift action_25
action_80 (42) = happyShift action_26
action_80 (48) = happyShift action_27
action_80 (49) = happyShift action_28
action_80 (60) = happyShift action_29
action_80 (63) = happyShift action_30
action_80 (65) = happyShift action_31
action_80 (70) = happyShift action_32
action_80 (6) = happyGoto action_85
action_80 (7) = happyGoto action_5
action_80 (11) = happyGoto action_6
action_80 (12) = happyGoto action_7
action_80 (13) = happyGoto action_8
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (20) = happyShift action_9
action_81 (21) = happyShift action_10
action_81 (22) = happyShift action_11
action_81 (23) = happyShift action_12
action_81 (24) = happyShift action_13
action_81 (25) = happyShift action_14
action_81 (26) = happyShift action_15
action_81 (27) = happyShift action_16
action_81 (28) = happyShift action_17
action_81 (29) = happyShift action_18
action_81 (30) = happyShift action_19
action_81 (32) = happyShift action_20
action_81 (35) = happyShift action_21
action_81 (36) = happyShift action_22
action_81 (37) = happyShift action_23
action_81 (40) = happyShift action_24
action_81 (41) = happyShift action_25
action_81 (42) = happyShift action_26
action_81 (48) = happyShift action_27
action_81 (49) = happyShift action_28
action_81 (60) = happyShift action_29
action_81 (63) = happyShift action_30
action_81 (65) = happyShift action_31
action_81 (70) = happyShift action_32
action_81 (6) = happyGoto action_84
action_81 (7) = happyGoto action_5
action_81 (11) = happyGoto action_6
action_81 (12) = happyGoto action_7
action_81 (13) = happyGoto action_8
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (20) = happyShift action_9
action_82 (21) = happyShift action_10
action_82 (22) = happyShift action_11
action_82 (23) = happyShift action_12
action_82 (24) = happyShift action_13
action_82 (25) = happyShift action_14
action_82 (26) = happyShift action_15
action_82 (27) = happyShift action_16
action_82 (28) = happyShift action_17
action_82 (29) = happyShift action_18
action_82 (30) = happyShift action_19
action_82 (32) = happyShift action_20
action_82 (35) = happyShift action_21
action_82 (36) = happyShift action_22
action_82 (37) = happyShift action_23
action_82 (40) = happyShift action_24
action_82 (41) = happyShift action_25
action_82 (42) = happyShift action_26
action_82 (48) = happyShift action_27
action_82 (49) = happyShift action_28
action_82 (60) = happyShift action_29
action_82 (63) = happyShift action_30
action_82 (65) = happyShift action_31
action_82 (70) = happyShift action_32
action_82 (6) = happyGoto action_83
action_82 (7) = happyGoto action_5
action_82 (11) = happyGoto action_6
action_82 (12) = happyGoto action_7
action_82 (13) = happyGoto action_8
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (47) = happyShift action_70
action_83 (48) = happyShift action_107
action_83 (50) = happyShift action_72
action_83 (59) = happyShift action_73
action_83 (60) = happyShift action_108
action_83 (61) = happyShift action_75
action_83 (62) = happyShift action_76
action_83 (63) = happyShift action_109
action_83 (65) = happyShift action_110
action_83 (71) = happyShift action_79
action_83 (72) = happyShift action_80
action_83 _ = happyReduce_53

action_84 (47) = happyShift action_70
action_84 (48) = happyShift action_107
action_84 (50) = happyShift action_72
action_84 (59) = happyShift action_73
action_84 (60) = happyShift action_108
action_84 (61) = happyShift action_75
action_84 (62) = happyShift action_76
action_84 (63) = happyShift action_109
action_84 (65) = happyShift action_110
action_84 (71) = happyShift action_79
action_84 (72) = happyShift action_80
action_84 _ = happyReduce_52

action_85 (47) = happyShift action_70
action_85 (48) = happyShift action_107
action_85 (50) = happyShift action_72
action_85 (63) = happyShift action_109
action_85 (65) = happyShift action_110
action_85 (71) = happyShift action_79
action_85 _ = happyReduce_51

action_86 (63) = happyShift action_109
action_86 (65) = happyShift action_110
action_86 (71) = happyShift action_79
action_86 _ = happyReduce_50

action_87 (38) = happyShift action_64
action_87 (39) = happyShift action_65
action_87 (43) = happyShift action_66
action_87 (44) = happyShift action_67
action_87 (45) = happyShift action_68
action_87 (46) = happyShift action_69
action_87 (47) = happyShift action_70
action_87 (48) = happyShift action_107
action_87 (50) = happyShift action_72
action_87 (59) = happyShift action_73
action_87 (60) = happyShift action_108
action_87 (61) = happyShift action_75
action_87 (62) = happyShift action_76
action_87 (63) = happyShift action_109
action_87 (65) = happyShift action_110
action_87 (66) = happyShift action_147
action_87 (69) = happyShift action_129
action_87 (71) = happyShift action_79
action_87 (72) = happyShift action_80
action_87 (73) = happyShift action_81
action_87 (74) = happyShift action_82
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (38) = happyShift action_64
action_88 (39) = happyShift action_65
action_88 (43) = happyShift action_66
action_88 (44) = happyShift action_67
action_88 (45) = happyShift action_68
action_88 (46) = happyShift action_69
action_88 (47) = happyShift action_70
action_88 (48) = happyShift action_107
action_88 (50) = happyShift action_72
action_88 (59) = happyShift action_73
action_88 (60) = happyShift action_108
action_88 (61) = happyShift action_75
action_88 (62) = happyShift action_76
action_88 (63) = happyShift action_109
action_88 (64) = happyShift action_127
action_88 (65) = happyShift action_110
action_88 (69) = happyShift action_146
action_88 (71) = happyShift action_79
action_88 (72) = happyShift action_80
action_88 (73) = happyShift action_81
action_88 (74) = happyShift action_82
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (64) = happyShift action_145
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (47) = happyShift action_70
action_90 (48) = happyShift action_107
action_90 (50) = happyShift action_72
action_90 (63) = happyShift action_109
action_90 (65) = happyShift action_110
action_90 (71) = happyShift action_79
action_90 _ = happyReduce_41

action_91 (47) = happyShift action_70
action_91 (48) = happyShift action_107
action_91 (50) = happyShift action_72
action_91 (63) = happyShift action_109
action_91 (65) = happyShift action_110
action_91 (71) = happyShift action_79
action_91 _ = happyReduce_40

action_92 (47) = happyShift action_70
action_92 (48) = happyShift action_107
action_92 (50) = happyShift action_72
action_92 (63) = happyShift action_109
action_92 (65) = happyShift action_110
action_92 (71) = happyShift action_79
action_92 _ = happyReduce_54

action_93 (47) = happyShift action_70
action_93 (48) = happyShift action_107
action_93 (50) = happyShift action_72
action_93 (61) = happyShift action_75
action_93 (62) = happyShift action_76
action_93 (63) = happyShift action_109
action_93 (65) = happyShift action_110
action_93 (71) = happyShift action_79
action_93 (72) = happyShift action_80
action_93 _ = happyReduce_38

action_94 (47) = happyShift action_70
action_94 (50) = happyShift action_72
action_94 (63) = happyShift action_109
action_94 (65) = happyShift action_110
action_94 (71) = happyShift action_79
action_94 _ = happyReduce_26

action_95 (38) = happyShift action_64
action_95 (39) = happyShift action_65
action_95 (43) = happyShift action_66
action_95 (44) = happyShift action_67
action_95 (45) = happyShift action_68
action_95 (46) = happyShift action_69
action_95 (47) = happyShift action_70
action_95 (48) = happyShift action_107
action_95 (50) = happyShift action_72
action_95 (59) = happyShift action_73
action_95 (60) = happyShift action_108
action_95 (61) = happyShift action_75
action_95 (62) = happyShift action_76
action_95 (63) = happyShift action_109
action_95 (65) = happyShift action_110
action_95 (71) = happyShift action_79
action_95 (72) = happyShift action_80
action_95 (73) = happyShift action_81
action_95 (74) = happyShift action_82
action_95 _ = happyReduce_25

action_96 (52) = happyShift action_40
action_96 (53) = happyShift action_41
action_96 (54) = happyShift action_42
action_96 (55) = happyShift action_43
action_96 (56) = happyShift action_44
action_96 (57) = happyShift action_45
action_96 (58) = happyShift action_46
action_96 _ = happyReduce_37

action_97 (47) = happyShift action_70
action_97 (50) = happyShift action_72
action_97 (63) = happyShift action_109
action_97 (65) = happyShift action_110
action_97 (71) = happyShift action_79
action_97 _ = happyReduce_24

action_98 (43) = happyShift action_66
action_98 (44) = happyShift action_67
action_98 (47) = happyShift action_70
action_98 (48) = happyShift action_107
action_98 (50) = happyShift action_72
action_98 (59) = happyShift action_73
action_98 (60) = happyShift action_108
action_98 (61) = happyShift action_75
action_98 (62) = happyShift action_76
action_98 (63) = happyShift action_109
action_98 (65) = happyShift action_110
action_98 (71) = happyShift action_79
action_98 (72) = happyShift action_80
action_98 (73) = happyShift action_81
action_98 (74) = happyShift action_82
action_98 _ = happyReduce_23

action_99 (43) = happyShift action_66
action_99 (44) = happyShift action_67
action_99 (47) = happyShift action_70
action_99 (48) = happyShift action_107
action_99 (50) = happyShift action_72
action_99 (59) = happyShift action_73
action_99 (60) = happyShift action_108
action_99 (61) = happyShift action_75
action_99 (62) = happyShift action_76
action_99 (63) = happyShift action_109
action_99 (65) = happyShift action_110
action_99 (71) = happyShift action_79
action_99 (72) = happyShift action_80
action_99 (73) = happyShift action_81
action_99 (74) = happyShift action_82
action_99 _ = happyReduce_22

action_100 (47) = happyShift action_70
action_100 (48) = happyShift action_107
action_100 (50) = happyShift action_72
action_100 (59) = happyShift action_73
action_100 (60) = happyShift action_108
action_100 (61) = happyShift action_75
action_100 (62) = happyShift action_76
action_100 (63) = happyShift action_109
action_100 (65) = happyShift action_110
action_100 (71) = happyShift action_79
action_100 (72) = happyShift action_80
action_100 _ = happyReduce_21

action_101 (47) = happyShift action_70
action_101 (48) = happyShift action_107
action_101 (50) = happyShift action_72
action_101 (59) = happyShift action_73
action_101 (60) = happyShift action_108
action_101 (61) = happyShift action_75
action_101 (62) = happyShift action_76
action_101 (63) = happyShift action_109
action_101 (65) = happyShift action_110
action_101 (71) = happyShift action_79
action_101 (72) = happyShift action_80
action_101 _ = happyReduce_20

action_102 (38) = happyShift action_64
action_102 (43) = happyShift action_66
action_102 (44) = happyShift action_67
action_102 (45) = happyShift action_68
action_102 (46) = happyShift action_69
action_102 (47) = happyShift action_70
action_102 (48) = happyShift action_107
action_102 (50) = happyShift action_72
action_102 (59) = happyShift action_73
action_102 (60) = happyShift action_108
action_102 (61) = happyShift action_75
action_102 (62) = happyShift action_76
action_102 (63) = happyShift action_109
action_102 (65) = happyShift action_110
action_102 (71) = happyShift action_79
action_102 (72) = happyShift action_80
action_102 (73) = happyShift action_81
action_102 (74) = happyShift action_82
action_102 _ = happyReduce_15

action_103 (43) = happyShift action_66
action_103 (44) = happyShift action_67
action_103 (45) = happyShift action_68
action_103 (46) = happyShift action_69
action_103 (47) = happyShift action_70
action_103 (48) = happyShift action_107
action_103 (50) = happyShift action_72
action_103 (59) = happyShift action_73
action_103 (60) = happyShift action_108
action_103 (61) = happyShift action_75
action_103 (62) = happyShift action_76
action_103 (63) = happyShift action_109
action_103 (65) = happyShift action_110
action_103 (71) = happyShift action_79
action_103 (72) = happyShift action_80
action_103 (73) = happyShift action_81
action_103 (74) = happyShift action_82
action_103 _ = happyReduce_14

action_104 _ = happyReduce_6

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
action_105 (30) = happyShift action_19
action_105 (32) = happyShift action_20
action_105 (35) = happyShift action_21
action_105 (36) = happyShift action_22
action_105 (37) = happyShift action_23
action_105 (40) = happyShift action_24
action_105 (41) = happyShift action_25
action_105 (42) = happyShift action_26
action_105 (48) = happyShift action_27
action_105 (49) = happyShift action_28
action_105 (60) = happyShift action_29
action_105 (63) = happyShift action_30
action_105 (65) = happyShift action_31
action_105 (70) = happyShift action_32
action_105 (6) = happyGoto action_144
action_105 (7) = happyGoto action_5
action_105 (11) = happyGoto action_6
action_105 (12) = happyGoto action_7
action_105 (13) = happyGoto action_8
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (38) = happyShift action_64
action_106 (39) = happyShift action_65
action_106 (43) = happyShift action_66
action_106 (44) = happyShift action_67
action_106 (45) = happyShift action_68
action_106 (46) = happyShift action_69
action_106 (47) = happyShift action_70
action_106 (48) = happyShift action_107
action_106 (50) = happyShift action_72
action_106 (59) = happyShift action_73
action_106 (60) = happyShift action_108
action_106 (61) = happyShift action_75
action_106 (62) = happyShift action_76
action_106 (63) = happyShift action_109
action_106 (65) = happyShift action_110
action_106 (68) = happyShift action_143
action_106 (71) = happyShift action_79
action_106 (72) = happyShift action_80
action_106 (73) = happyShift action_81
action_106 (74) = happyShift action_82
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
action_107 (30) = happyShift action_19
action_107 (32) = happyShift action_20
action_107 (35) = happyShift action_21
action_107 (36) = happyShift action_22
action_107 (37) = happyShift action_23
action_107 (40) = happyShift action_24
action_107 (41) = happyShift action_25
action_107 (42) = happyShift action_26
action_107 (48) = happyShift action_27
action_107 (49) = happyShift action_28
action_107 (60) = happyShift action_29
action_107 (63) = happyShift action_30
action_107 (65) = happyShift action_31
action_107 (70) = happyShift action_32
action_107 (6) = happyGoto action_95
action_107 (7) = happyGoto action_5
action_107 (11) = happyGoto action_6
action_107 (12) = happyGoto action_7
action_107 (13) = happyGoto action_8
action_107 _ = happyFail (happyExpListPerState 107)

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
action_108 (30) = happyShift action_19
action_108 (32) = happyShift action_20
action_108 (35) = happyShift action_21
action_108 (36) = happyShift action_22
action_108 (37) = happyShift action_23
action_108 (40) = happyShift action_24
action_108 (41) = happyShift action_25
action_108 (42) = happyShift action_26
action_108 (48) = happyShift action_27
action_108 (49) = happyShift action_28
action_108 (60) = happyShift action_29
action_108 (63) = happyShift action_30
action_108 (65) = happyShift action_31
action_108 (70) = happyShift action_32
action_108 (6) = happyGoto action_142
action_108 (7) = happyGoto action_5
action_108 (11) = happyGoto action_6
action_108 (12) = happyGoto action_7
action_108 (13) = happyGoto action_8
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (20) = happyShift action_9
action_109 (21) = happyShift action_10
action_109 (22) = happyShift action_11
action_109 (23) = happyShift action_12
action_109 (24) = happyShift action_13
action_109 (25) = happyShift action_14
action_109 (26) = happyShift action_15
action_109 (27) = happyShift action_16
action_109 (28) = happyShift action_17
action_109 (29) = happyShift action_18
action_109 (30) = happyShift action_19
action_109 (32) = happyShift action_20
action_109 (35) = happyShift action_21
action_109 (36) = happyShift action_22
action_109 (37) = happyShift action_23
action_109 (40) = happyShift action_24
action_109 (41) = happyShift action_25
action_109 (42) = happyShift action_26
action_109 (48) = happyShift action_27
action_109 (49) = happyShift action_28
action_109 (60) = happyShift action_29
action_109 (63) = happyShift action_30
action_109 (65) = happyShift action_31
action_109 (70) = happyShift action_32
action_109 (6) = happyGoto action_141
action_109 (7) = happyGoto action_5
action_109 (11) = happyGoto action_6
action_109 (12) = happyGoto action_7
action_109 (13) = happyGoto action_8
action_109 (16) = happyGoto action_89
action_109 _ = happyReduce_79

action_110 (20) = happyShift action_9
action_110 (21) = happyShift action_10
action_110 (22) = happyShift action_11
action_110 (23) = happyShift action_12
action_110 (24) = happyShift action_13
action_110 (25) = happyShift action_14
action_110 (26) = happyShift action_15
action_110 (27) = happyShift action_16
action_110 (28) = happyShift action_17
action_110 (29) = happyShift action_18
action_110 (30) = happyShift action_19
action_110 (32) = happyShift action_20
action_110 (35) = happyShift action_21
action_110 (36) = happyShift action_22
action_110 (37) = happyShift action_23
action_110 (40) = happyShift action_24
action_110 (41) = happyShift action_25
action_110 (42) = happyShift action_26
action_110 (48) = happyShift action_27
action_110 (49) = happyShift action_28
action_110 (60) = happyShift action_29
action_110 (63) = happyShift action_30
action_110 (65) = happyShift action_31
action_110 (70) = happyShift action_32
action_110 (6) = happyGoto action_140
action_110 (7) = happyGoto action_5
action_110 (11) = happyGoto action_6
action_110 (12) = happyGoto action_7
action_110 (13) = happyGoto action_8
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (20) = happyShift action_9
action_111 (21) = happyShift action_10
action_111 (22) = happyShift action_11
action_111 (26) = happyShift action_114
action_111 (11) = happyGoto action_138
action_111 (15) = happyGoto action_139
action_111 _ = happyReduce_76

action_112 (42) = happyShift action_137
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (64) = happyShift action_136
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (73) = happyShift action_57
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (20) = happyShift action_9
action_115 (21) = happyShift action_10
action_115 (22) = happyShift action_11
action_115 (26) = happyShift action_114
action_115 (11) = happyGoto action_112
action_115 (14) = happyGoto action_135
action_115 _ = happyReduce_73

action_116 (20) = happyShift action_9
action_116 (21) = happyShift action_10
action_116 (22) = happyShift action_11
action_116 (23) = happyShift action_12
action_116 (24) = happyShift action_13
action_116 (25) = happyShift action_14
action_116 (26) = happyShift action_15
action_116 (27) = happyShift action_16
action_116 (28) = happyShift action_17
action_116 (29) = happyShift action_18
action_116 (30) = happyShift action_19
action_116 (32) = happyShift action_20
action_116 (35) = happyShift action_21
action_116 (36) = happyShift action_22
action_116 (37) = happyShift action_23
action_116 (40) = happyShift action_24
action_116 (41) = happyShift action_25
action_116 (42) = happyShift action_26
action_116 (48) = happyShift action_27
action_116 (49) = happyShift action_28
action_116 (60) = happyShift action_29
action_116 (63) = happyShift action_30
action_116 (65) = happyShift action_31
action_116 (70) = happyShift action_32
action_116 (4) = happyGoto action_134
action_116 (5) = happyGoto action_3
action_116 (6) = happyGoto action_4
action_116 (7) = happyGoto action_5
action_116 (11) = happyGoto action_6
action_116 (12) = happyGoto action_7
action_116 (13) = happyGoto action_8
action_116 _ = happyReduce_1

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
action_117 (30) = happyShift action_19
action_117 (32) = happyShift action_20
action_117 (35) = happyShift action_21
action_117 (36) = happyShift action_22
action_117 (37) = happyShift action_23
action_117 (40) = happyShift action_24
action_117 (41) = happyShift action_25
action_117 (42) = happyShift action_26
action_117 (48) = happyShift action_27
action_117 (49) = happyShift action_28
action_117 (60) = happyShift action_29
action_117 (63) = happyShift action_30
action_117 (65) = happyShift action_31
action_117 (70) = happyShift action_32
action_117 (4) = happyGoto action_133
action_117 (5) = happyGoto action_3
action_117 (6) = happyGoto action_4
action_117 (7) = happyGoto action_5
action_117 (11) = happyGoto action_6
action_117 (12) = happyGoto action_7
action_117 (13) = happyGoto action_8
action_117 _ = happyReduce_1

action_118 (65) = happyShift action_132
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (20) = happyShift action_9
action_119 (21) = happyShift action_10
action_119 (22) = happyShift action_11
action_119 (23) = happyShift action_12
action_119 (24) = happyShift action_13
action_119 (25) = happyShift action_14
action_119 (26) = happyShift action_15
action_119 (27) = happyShift action_16
action_119 (28) = happyShift action_17
action_119 (29) = happyShift action_18
action_119 (30) = happyShift action_19
action_119 (32) = happyShift action_20
action_119 (35) = happyShift action_21
action_119 (36) = happyShift action_22
action_119 (37) = happyShift action_23
action_119 (40) = happyShift action_24
action_119 (41) = happyShift action_25
action_119 (42) = happyShift action_26
action_119 (48) = happyShift action_27
action_119 (49) = happyShift action_28
action_119 (60) = happyShift action_29
action_119 (63) = happyShift action_30
action_119 (65) = happyShift action_31
action_119 (70) = happyShift action_32
action_119 (4) = happyGoto action_131
action_119 (5) = happyGoto action_3
action_119 (6) = happyGoto action_4
action_119 (7) = happyGoto action_5
action_119 (11) = happyGoto action_6
action_119 (12) = happyGoto action_7
action_119 (13) = happyGoto action_8
action_119 _ = happyReduce_1

action_120 (38) = happyShift action_64
action_120 (39) = happyShift action_65
action_120 (43) = happyShift action_66
action_120 (44) = happyShift action_67
action_120 (45) = happyShift action_68
action_120 (46) = happyShift action_69
action_120 (47) = happyShift action_70
action_120 (48) = happyShift action_107
action_120 (50) = happyShift action_72
action_120 (59) = happyShift action_73
action_120 (60) = happyShift action_108
action_120 (61) = happyShift action_75
action_120 (62) = happyShift action_76
action_120 (63) = happyShift action_109
action_120 (65) = happyShift action_110
action_120 (71) = happyShift action_79
action_120 (72) = happyShift action_80
action_120 (73) = happyShift action_81
action_120 (74) = happyShift action_82
action_120 _ = happyReduce_34

action_121 (38) = happyShift action_64
action_121 (39) = happyShift action_65
action_121 (43) = happyShift action_66
action_121 (44) = happyShift action_67
action_121 (45) = happyShift action_68
action_121 (46) = happyShift action_69
action_121 (47) = happyShift action_70
action_121 (48) = happyShift action_107
action_121 (50) = happyShift action_72
action_121 (59) = happyShift action_73
action_121 (60) = happyShift action_108
action_121 (61) = happyShift action_75
action_121 (62) = happyShift action_76
action_121 (63) = happyShift action_109
action_121 (65) = happyShift action_110
action_121 (71) = happyShift action_79
action_121 (72) = happyShift action_80
action_121 (73) = happyShift action_81
action_121 (74) = happyShift action_82
action_121 _ = happyReduce_33

action_122 (38) = happyShift action_64
action_122 (39) = happyShift action_65
action_122 (43) = happyShift action_66
action_122 (44) = happyShift action_67
action_122 (45) = happyShift action_68
action_122 (46) = happyShift action_69
action_122 (47) = happyShift action_70
action_122 (48) = happyShift action_107
action_122 (50) = happyShift action_72
action_122 (59) = happyShift action_73
action_122 (60) = happyShift action_108
action_122 (61) = happyShift action_75
action_122 (62) = happyShift action_76
action_122 (63) = happyShift action_109
action_122 (65) = happyShift action_110
action_122 (71) = happyShift action_79
action_122 (72) = happyShift action_80
action_122 (73) = happyShift action_81
action_122 (74) = happyShift action_82
action_122 _ = happyReduce_32

action_123 (38) = happyShift action_64
action_123 (39) = happyShift action_65
action_123 (43) = happyShift action_66
action_123 (44) = happyShift action_67
action_123 (45) = happyShift action_68
action_123 (46) = happyShift action_69
action_123 (47) = happyShift action_70
action_123 (48) = happyShift action_107
action_123 (50) = happyShift action_72
action_123 (59) = happyShift action_73
action_123 (60) = happyShift action_108
action_123 (61) = happyShift action_75
action_123 (62) = happyShift action_76
action_123 (63) = happyShift action_109
action_123 (65) = happyShift action_110
action_123 (71) = happyShift action_79
action_123 (72) = happyShift action_80
action_123 (73) = happyShift action_81
action_123 (74) = happyShift action_82
action_123 _ = happyReduce_31

action_124 (38) = happyShift action_64
action_124 (39) = happyShift action_65
action_124 (43) = happyShift action_66
action_124 (44) = happyShift action_67
action_124 (45) = happyShift action_68
action_124 (46) = happyShift action_69
action_124 (47) = happyShift action_70
action_124 (48) = happyShift action_107
action_124 (50) = happyShift action_72
action_124 (59) = happyShift action_73
action_124 (60) = happyShift action_108
action_124 (61) = happyShift action_75
action_124 (62) = happyShift action_76
action_124 (63) = happyShift action_109
action_124 (65) = happyShift action_110
action_124 (71) = happyShift action_79
action_124 (72) = happyShift action_80
action_124 (73) = happyShift action_81
action_124 (74) = happyShift action_82
action_124 _ = happyReduce_30

action_125 (38) = happyShift action_64
action_125 (39) = happyShift action_65
action_125 (43) = happyShift action_66
action_125 (44) = happyShift action_67
action_125 (45) = happyShift action_68
action_125 (46) = happyShift action_69
action_125 (47) = happyShift action_70
action_125 (48) = happyShift action_107
action_125 (50) = happyShift action_72
action_125 (59) = happyShift action_73
action_125 (60) = happyShift action_108
action_125 (61) = happyShift action_75
action_125 (62) = happyShift action_76
action_125 (63) = happyShift action_109
action_125 (65) = happyShift action_110
action_125 (71) = happyShift action_79
action_125 (72) = happyShift action_80
action_125 (73) = happyShift action_81
action_125 (74) = happyShift action_82
action_125 _ = happyReduce_29

action_126 (38) = happyShift action_64
action_126 (39) = happyShift action_65
action_126 (43) = happyShift action_66
action_126 (44) = happyShift action_67
action_126 (45) = happyShift action_68
action_126 (46) = happyShift action_69
action_126 (47) = happyShift action_70
action_126 (48) = happyShift action_107
action_126 (50) = happyShift action_72
action_126 (59) = happyShift action_73
action_126 (60) = happyShift action_108
action_126 (61) = happyShift action_75
action_126 (62) = happyShift action_76
action_126 (63) = happyShift action_109
action_126 (65) = happyShift action_110
action_126 (71) = happyShift action_79
action_126 (72) = happyShift action_80
action_126 (73) = happyShift action_81
action_126 (74) = happyShift action_82
action_126 _ = happyReduce_28

action_127 _ = happyReduce_55

action_128 _ = happyReduce_19

action_129 (20) = happyShift action_9
action_129 (21) = happyShift action_10
action_129 (22) = happyShift action_11
action_129 (23) = happyShift action_12
action_129 (24) = happyShift action_13
action_129 (25) = happyShift action_14
action_129 (26) = happyShift action_15
action_129 (27) = happyShift action_16
action_129 (28) = happyShift action_17
action_129 (29) = happyShift action_18
action_129 (30) = happyShift action_19
action_129 (32) = happyShift action_20
action_129 (35) = happyShift action_21
action_129 (36) = happyShift action_22
action_129 (37) = happyShift action_23
action_129 (40) = happyShift action_24
action_129 (41) = happyShift action_25
action_129 (42) = happyShift action_26
action_129 (48) = happyShift action_27
action_129 (49) = happyShift action_28
action_129 (60) = happyShift action_29
action_129 (63) = happyShift action_30
action_129 (65) = happyShift action_31
action_129 (70) = happyShift action_32
action_129 (6) = happyGoto action_34
action_129 (7) = happyGoto action_5
action_129 (10) = happyGoto action_130
action_129 (11) = happyGoto action_6
action_129 (12) = happyGoto action_7
action_129 (13) = happyGoto action_8
action_129 _ = happyReduce_61

action_130 _ = happyReduce_63

action_131 (68) = happyShift action_160
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (42) = happyShift action_158
action_132 (75) = happyShift action_159
action_132 (18) = happyGoto action_157
action_132 _ = happyFail (happyExpListPerState 132)

action_133 (68) = happyShift action_156
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (68) = happyShift action_155
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (64) = happyShift action_154
action_135 _ = happyFail (happyExpListPerState 135)

action_136 (51) = happyShift action_152
action_136 (67) = happyShift action_153
action_136 _ = happyFail (happyExpListPerState 136)

action_137 (69) = happyShift action_151
action_137 _ = happyReduce_74

action_138 (69) = happyShift action_150
action_138 _ = happyReduce_77

action_139 (64) = happyShift action_149
action_139 _ = happyFail (happyExpListPerState 139)

action_140 (38) = happyShift action_64
action_140 (39) = happyShift action_65
action_140 (43) = happyShift action_66
action_140 (44) = happyShift action_67
action_140 (45) = happyShift action_68
action_140 (46) = happyShift action_69
action_140 (47) = happyShift action_70
action_140 (48) = happyShift action_107
action_140 (50) = happyShift action_72
action_140 (59) = happyShift action_73
action_140 (60) = happyShift action_108
action_140 (61) = happyShift action_75
action_140 (62) = happyShift action_76
action_140 (63) = happyShift action_109
action_140 (65) = happyShift action_110
action_140 (66) = happyShift action_147
action_140 (71) = happyShift action_79
action_140 (72) = happyShift action_80
action_140 (73) = happyShift action_81
action_140 (74) = happyShift action_82
action_140 _ = happyFail (happyExpListPerState 140)

action_141 (38) = happyShift action_64
action_141 (39) = happyShift action_65
action_141 (43) = happyShift action_66
action_141 (44) = happyShift action_67
action_141 (45) = happyShift action_68
action_141 (46) = happyShift action_69
action_141 (47) = happyShift action_70
action_141 (48) = happyShift action_107
action_141 (50) = happyShift action_72
action_141 (59) = happyShift action_73
action_141 (60) = happyShift action_108
action_141 (61) = happyShift action_75
action_141 (62) = happyShift action_76
action_141 (63) = happyShift action_109
action_141 (65) = happyShift action_110
action_141 (69) = happyShift action_146
action_141 (71) = happyShift action_79
action_141 (72) = happyShift action_80
action_141 (73) = happyShift action_81
action_141 (74) = happyShift action_82
action_141 _ = happyReduce_80

action_142 (47) = happyShift action_70
action_142 (48) = happyShift action_107
action_142 (50) = happyShift action_72
action_142 (61) = happyShift action_75
action_142 (62) = happyShift action_76
action_142 (63) = happyShift action_109
action_142 (65) = happyShift action_110
action_142 (71) = happyShift action_79
action_142 (72) = happyShift action_80
action_142 _ = happyReduce_39

action_143 _ = happyReduce_43

action_144 (38) = happyShift action_64
action_144 (39) = happyShift action_65
action_144 (43) = happyShift action_66
action_144 (44) = happyShift action_67
action_144 (45) = happyShift action_68
action_144 (46) = happyShift action_69
action_144 (47) = happyShift action_70
action_144 (48) = happyShift action_107
action_144 (50) = happyShift action_72
action_144 (59) = happyShift action_73
action_144 (60) = happyShift action_108
action_144 (61) = happyShift action_75
action_144 (62) = happyShift action_76
action_144 (63) = happyShift action_109
action_144 (65) = happyShift action_110
action_144 (71) = happyShift action_79
action_144 (72) = happyShift action_80
action_144 (73) = happyShift action_81
action_144 (74) = happyShift action_82
action_144 _ = happyReduce_27

action_145 _ = happyReduce_47

action_146 (20) = happyShift action_9
action_146 (21) = happyShift action_10
action_146 (22) = happyShift action_11
action_146 (23) = happyShift action_12
action_146 (24) = happyShift action_13
action_146 (25) = happyShift action_14
action_146 (26) = happyShift action_15
action_146 (27) = happyShift action_16
action_146 (28) = happyShift action_17
action_146 (29) = happyShift action_18
action_146 (30) = happyShift action_19
action_146 (32) = happyShift action_20
action_146 (35) = happyShift action_21
action_146 (36) = happyShift action_22
action_146 (37) = happyShift action_23
action_146 (40) = happyShift action_24
action_146 (41) = happyShift action_25
action_146 (42) = happyShift action_26
action_146 (48) = happyShift action_27
action_146 (49) = happyShift action_28
action_146 (60) = happyShift action_29
action_146 (63) = happyShift action_30
action_146 (65) = happyShift action_31
action_146 (70) = happyShift action_32
action_146 (6) = happyGoto action_141
action_146 (7) = happyGoto action_5
action_146 (11) = happyGoto action_6
action_146 (12) = happyGoto action_7
action_146 (13) = happyGoto action_8
action_146 (16) = happyGoto action_148
action_146 _ = happyReduce_79

action_147 _ = happyReduce_42

action_148 _ = happyReduce_81

action_149 (51) = happyShift action_172
action_149 (74) = happyShift action_173
action_149 _ = happyFail (happyExpListPerState 149)

action_150 (20) = happyShift action_9
action_150 (21) = happyShift action_10
action_150 (22) = happyShift action_11
action_150 (26) = happyShift action_114
action_150 (11) = happyGoto action_138
action_150 (15) = happyGoto action_171
action_150 _ = happyReduce_76

action_151 (20) = happyShift action_9
action_151 (21) = happyShift action_10
action_151 (22) = happyShift action_11
action_151 (26) = happyShift action_114
action_151 (11) = happyGoto action_112
action_151 (14) = happyGoto action_170
action_151 _ = happyReduce_73

action_152 (20) = happyShift action_9
action_152 (21) = happyShift action_10
action_152 (22) = happyShift action_11
action_152 (26) = happyShift action_114
action_152 (11) = happyGoto action_169
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (20) = happyShift action_9
action_153 (21) = happyShift action_10
action_153 (22) = happyShift action_11
action_153 (23) = happyShift action_12
action_153 (24) = happyShift action_13
action_153 (25) = happyShift action_14
action_153 (26) = happyShift action_15
action_153 (27) = happyShift action_16
action_153 (28) = happyShift action_17
action_153 (29) = happyShift action_18
action_153 (30) = happyShift action_19
action_153 (32) = happyShift action_20
action_153 (35) = happyShift action_21
action_153 (36) = happyShift action_22
action_153 (37) = happyShift action_23
action_153 (40) = happyShift action_24
action_153 (41) = happyShift action_25
action_153 (42) = happyShift action_26
action_153 (48) = happyShift action_27
action_153 (49) = happyShift action_28
action_153 (60) = happyShift action_29
action_153 (63) = happyShift action_30
action_153 (65) = happyShift action_31
action_153 (70) = happyShift action_32
action_153 (4) = happyGoto action_168
action_153 (5) = happyGoto action_3
action_153 (6) = happyGoto action_4
action_153 (7) = happyGoto action_5
action_153 (11) = happyGoto action_6
action_153 (12) = happyGoto action_7
action_153 (13) = happyGoto action_8
action_153 _ = happyReduce_1

action_154 (51) = happyShift action_166
action_154 (67) = happyShift action_167
action_154 _ = happyFail (happyExpListPerState 154)

action_155 _ = happyReduce_8

action_156 _ = happyReduce_9

action_157 (66) = happyShift action_165
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (69) = happyShift action_164
action_158 _ = happyReduce_84

action_159 (69) = happyShift action_163
action_159 _ = happyFail (happyExpListPerState 159)

action_160 (33) = happyShift action_162
action_160 (8) = happyGoto action_161
action_160 _ = happyReduce_57

action_161 (34) = happyShift action_184
action_161 (9) = happyGoto action_183
action_161 _ = happyReduce_59

action_162 (20) = happyShift action_9
action_162 (21) = happyShift action_10
action_162 (22) = happyShift action_11
action_162 (23) = happyShift action_12
action_162 (24) = happyShift action_13
action_162 (25) = happyShift action_14
action_162 (26) = happyShift action_15
action_162 (27) = happyShift action_16
action_162 (28) = happyShift action_17
action_162 (29) = happyShift action_18
action_162 (30) = happyShift action_19
action_162 (32) = happyShift action_20
action_162 (35) = happyShift action_21
action_162 (36) = happyShift action_22
action_162 (37) = happyShift action_23
action_162 (40) = happyShift action_24
action_162 (41) = happyShift action_25
action_162 (42) = happyShift action_26
action_162 (48) = happyShift action_27
action_162 (49) = happyShift action_28
action_162 (60) = happyShift action_29
action_162 (63) = happyShift action_30
action_162 (65) = happyShift action_31
action_162 (70) = happyShift action_32
action_162 (6) = happyGoto action_182
action_162 (7) = happyGoto action_5
action_162 (11) = happyGoto action_6
action_162 (12) = happyGoto action_7
action_162 (13) = happyGoto action_8
action_162 _ = happyFail (happyExpListPerState 162)

action_163 (42) = happyShift action_158
action_163 (75) = happyShift action_159
action_163 (18) = happyGoto action_181
action_163 _ = happyFail (happyExpListPerState 163)

action_164 (42) = happyShift action_158
action_164 (75) = happyShift action_159
action_164 (18) = happyGoto action_180
action_164 _ = happyFail (happyExpListPerState 164)

action_165 (69) = happyShift action_179
action_165 _ = happyReduce_82

action_166 (20) = happyShift action_9
action_166 (21) = happyShift action_10
action_166 (22) = happyShift action_11
action_166 (26) = happyShift action_114
action_166 (11) = happyGoto action_178
action_166 _ = happyFail (happyExpListPerState 166)

action_167 (20) = happyShift action_9
action_167 (21) = happyShift action_10
action_167 (22) = happyShift action_11
action_167 (23) = happyShift action_12
action_167 (24) = happyShift action_13
action_167 (25) = happyShift action_14
action_167 (26) = happyShift action_15
action_167 (27) = happyShift action_16
action_167 (28) = happyShift action_17
action_167 (29) = happyShift action_18
action_167 (30) = happyShift action_19
action_167 (32) = happyShift action_20
action_167 (35) = happyShift action_21
action_167 (36) = happyShift action_22
action_167 (37) = happyShift action_23
action_167 (40) = happyShift action_24
action_167 (41) = happyShift action_25
action_167 (42) = happyShift action_26
action_167 (48) = happyShift action_27
action_167 (49) = happyShift action_28
action_167 (60) = happyShift action_29
action_167 (63) = happyShift action_30
action_167 (65) = happyShift action_31
action_167 (70) = happyShift action_32
action_167 (4) = happyGoto action_177
action_167 (5) = happyGoto action_3
action_167 (6) = happyGoto action_4
action_167 (7) = happyGoto action_5
action_167 (11) = happyGoto action_6
action_167 (12) = happyGoto action_7
action_167 (13) = happyGoto action_8
action_167 _ = happyReduce_1

action_168 (68) = happyShift action_176
action_168 _ = happyFail (happyExpListPerState 168)

action_169 (67) = happyShift action_175
action_169 _ = happyFail (happyExpListPerState 169)

action_170 _ = happyReduce_75

action_171 _ = happyReduce_78

action_172 (20) = happyShift action_9
action_172 (21) = happyShift action_10
action_172 (22) = happyShift action_11
action_172 (26) = happyShift action_114
action_172 (11) = happyGoto action_174
action_172 _ = happyFail (happyExpListPerState 172)

action_173 _ = happyReduce_67

action_174 (74) = happyShift action_191
action_174 _ = happyFail (happyExpListPerState 174)

action_175 (20) = happyShift action_9
action_175 (21) = happyShift action_10
action_175 (22) = happyShift action_11
action_175 (23) = happyShift action_12
action_175 (24) = happyShift action_13
action_175 (25) = happyShift action_14
action_175 (26) = happyShift action_15
action_175 (27) = happyShift action_16
action_175 (28) = happyShift action_17
action_175 (29) = happyShift action_18
action_175 (30) = happyShift action_19
action_175 (32) = happyShift action_20
action_175 (35) = happyShift action_21
action_175 (36) = happyShift action_22
action_175 (37) = happyShift action_23
action_175 (40) = happyShift action_24
action_175 (41) = happyShift action_25
action_175 (42) = happyShift action_26
action_175 (48) = happyShift action_27
action_175 (49) = happyShift action_28
action_175 (60) = happyShift action_29
action_175 (63) = happyShift action_30
action_175 (65) = happyShift action_31
action_175 (70) = happyShift action_32
action_175 (4) = happyGoto action_190
action_175 (5) = happyGoto action_3
action_175 (6) = happyGoto action_4
action_175 (7) = happyGoto action_5
action_175 (11) = happyGoto action_6
action_175 (12) = happyGoto action_7
action_175 (13) = happyGoto action_8
action_175 _ = happyReduce_1

action_176 _ = happyReduce_71

action_177 (68) = happyShift action_189
action_177 _ = happyFail (happyExpListPerState 177)

action_178 (67) = happyShift action_188
action_178 _ = happyFail (happyExpListPerState 178)

action_179 (20) = happyShift action_9
action_179 (21) = happyShift action_10
action_179 (22) = happyShift action_11
action_179 (23) = happyShift action_12
action_179 (24) = happyShift action_13
action_179 (25) = happyShift action_14
action_179 (26) = happyShift action_15
action_179 (27) = happyShift action_16
action_179 (28) = happyShift action_17
action_179 (29) = happyShift action_18
action_179 (30) = happyShift action_19
action_179 (32) = happyShift action_20
action_179 (35) = happyShift action_21
action_179 (36) = happyShift action_22
action_179 (37) = happyShift action_23
action_179 (40) = happyShift action_24
action_179 (41) = happyShift action_25
action_179 (42) = happyShift action_26
action_179 (48) = happyShift action_27
action_179 (49) = happyShift action_28
action_179 (60) = happyShift action_29
action_179 (63) = happyShift action_30
action_179 (65) = happyShift action_31
action_179 (70) = happyShift action_32
action_179 (6) = happyGoto action_51
action_179 (7) = happyGoto action_5
action_179 (11) = happyGoto action_6
action_179 (12) = happyGoto action_7
action_179 (13) = happyGoto action_8
action_179 (17) = happyGoto action_187
action_179 _ = happyFail (happyExpListPerState 179)

action_180 _ = happyReduce_86

action_181 _ = happyReduce_85

action_182 (38) = happyShift action_64
action_182 (39) = happyShift action_65
action_182 (43) = happyShift action_66
action_182 (44) = happyShift action_67
action_182 (45) = happyShift action_68
action_182 (46) = happyShift action_69
action_182 (47) = happyShift action_70
action_182 (48) = happyShift action_107
action_182 (50) = happyShift action_72
action_182 (59) = happyShift action_73
action_182 (60) = happyShift action_108
action_182 (61) = happyShift action_75
action_182 (62) = happyShift action_76
action_182 (63) = happyShift action_109
action_182 (65) = happyShift action_110
action_182 (67) = happyShift action_186
action_182 (71) = happyShift action_79
action_182 (72) = happyShift action_80
action_182 (73) = happyShift action_81
action_182 (74) = happyShift action_82
action_182 _ = happyFail (happyExpListPerState 182)

action_183 _ = happyReduce_56

action_184 (67) = happyShift action_185
action_184 _ = happyFail (happyExpListPerState 184)

action_185 (20) = happyShift action_9
action_185 (21) = happyShift action_10
action_185 (22) = happyShift action_11
action_185 (23) = happyShift action_12
action_185 (24) = happyShift action_13
action_185 (25) = happyShift action_14
action_185 (26) = happyShift action_15
action_185 (27) = happyShift action_16
action_185 (28) = happyShift action_17
action_185 (29) = happyShift action_18
action_185 (30) = happyShift action_19
action_185 (32) = happyShift action_20
action_185 (35) = happyShift action_21
action_185 (36) = happyShift action_22
action_185 (37) = happyShift action_23
action_185 (40) = happyShift action_24
action_185 (41) = happyShift action_25
action_185 (42) = happyShift action_26
action_185 (48) = happyShift action_27
action_185 (49) = happyShift action_28
action_185 (60) = happyShift action_29
action_185 (63) = happyShift action_30
action_185 (65) = happyShift action_31
action_185 (70) = happyShift action_32
action_185 (4) = happyGoto action_195
action_185 (5) = happyGoto action_3
action_185 (6) = happyGoto action_4
action_185 (7) = happyGoto action_5
action_185 (11) = happyGoto action_6
action_185 (12) = happyGoto action_7
action_185 (13) = happyGoto action_8
action_185 _ = happyReduce_1

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
action_186 (30) = happyShift action_19
action_186 (32) = happyShift action_20
action_186 (35) = happyShift action_21
action_186 (36) = happyShift action_22
action_186 (37) = happyShift action_23
action_186 (40) = happyShift action_24
action_186 (41) = happyShift action_25
action_186 (42) = happyShift action_26
action_186 (48) = happyShift action_27
action_186 (49) = happyShift action_28
action_186 (60) = happyShift action_29
action_186 (63) = happyShift action_30
action_186 (65) = happyShift action_31
action_186 (70) = happyShift action_32
action_186 (4) = happyGoto action_194
action_186 (5) = happyGoto action_3
action_186 (6) = happyGoto action_4
action_186 (7) = happyGoto action_5
action_186 (11) = happyGoto action_6
action_186 (12) = happyGoto action_7
action_186 (13) = happyGoto action_8
action_186 _ = happyReduce_1

action_187 _ = happyReduce_83

action_188 (20) = happyShift action_9
action_188 (21) = happyShift action_10
action_188 (22) = happyShift action_11
action_188 (23) = happyShift action_12
action_188 (24) = happyShift action_13
action_188 (25) = happyShift action_14
action_188 (26) = happyShift action_15
action_188 (27) = happyShift action_16
action_188 (28) = happyShift action_17
action_188 (29) = happyShift action_18
action_188 (30) = happyShift action_19
action_188 (32) = happyShift action_20
action_188 (35) = happyShift action_21
action_188 (36) = happyShift action_22
action_188 (37) = happyShift action_23
action_188 (40) = happyShift action_24
action_188 (41) = happyShift action_25
action_188 (42) = happyShift action_26
action_188 (48) = happyShift action_27
action_188 (49) = happyShift action_28
action_188 (60) = happyShift action_29
action_188 (63) = happyShift action_30
action_188 (65) = happyShift action_31
action_188 (70) = happyShift action_32
action_188 (4) = happyGoto action_193
action_188 (5) = happyGoto action_3
action_188 (6) = happyGoto action_4
action_188 (7) = happyGoto action_5
action_188 (11) = happyGoto action_6
action_188 (12) = happyGoto action_7
action_188 (13) = happyGoto action_8
action_188 _ = happyReduce_1

action_189 _ = happyReduce_69

action_190 (68) = happyShift action_192
action_190 _ = happyFail (happyExpListPerState 190)

action_191 _ = happyReduce_68

action_192 _ = happyReduce_72

action_193 (68) = happyShift action_198
action_193 _ = happyFail (happyExpListPerState 193)

action_194 (68) = happyShift action_197
action_194 _ = happyFail (happyExpListPerState 194)

action_195 (68) = happyShift action_196
action_195 _ = happyFail (happyExpListPerState 195)

action_196 _ = happyReduce_60

action_197 (33) = happyShift action_162
action_197 (8) = happyGoto action_199
action_197 _ = happyReduce_57

action_198 _ = happyReduce_70

action_199 _ = happyReduce_58

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

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (Import happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 6 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 5 6 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (convertProcessToWhile happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (HasNext happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  6 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Next happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  6 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Size happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  6 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  6 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn6
		 (Int' happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyTerminal (TokenBool _ happy_var_1))
	 =  HappyAbsSyn6
		 (Boolean' happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn6
		 (Break
	)

happyReduce_19 = happySpecReduce_3  6 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Stream happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LE happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GE happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (EQ' happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (NE happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Take happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 6 happyReduction_27
happyReduction_27 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (VarDec happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Plus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Minus (VarRef happy_var_1) happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Times (VarRef happy_var_1) happy_var_3)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Div (VarRef happy_var_1) happy_var_3)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Exponent (VarRef happy_var_1) happy_var_3)
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarAssign happy_var_1 (Modulo (VarRef happy_var_1) happy_var_3)
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  6 happyReduction_35
happyReduction_35 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Plus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  6 happyReduction_36
happyReduction_36 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn6
		 (VarAssign happy_var_2 (Minus (VarRef happy_var_2) (Int' 1))
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  6 happyReduction_37
happyReduction_37 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (VarRef happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  6 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  6 happyReduction_39
happyReduction_39 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  6 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Times happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  6 happyReduction_41
happyReduction_41 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Div happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 6 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (StreamGet happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 4 6 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (InputGet happy_var_3
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_2  6 happyReduction_44
happyReduction_44 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Print happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  6 happyReduction_45
happyReduction_45 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  6 happyReduction_46
happyReduction_46 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happyReduce 4 6 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_2  6 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (FnReturn happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  6 happyReduction_49
happyReduction_49 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Not happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  6 happyReduction_50
happyReduction_50 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Exponent happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  6 happyReduction_51
happyReduction_51 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  6 happyReduction_52
happyReduction_52 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (LT' happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  6 happyReduction_53
happyReduction_53 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (GT' happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  6 happyReduction_54
happyReduction_54 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negate happy_var_2
	)
happyReduction_54 _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  6 happyReduction_55
happyReduction_55 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happyReduce 7 7 happyReduction_56
happyReduction_56 ((HappyAbsSyn9  happy_var_7) `HappyStk`
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

happyReduce_57 = happySpecReduce_0  8 happyReduction_57
happyReduction_57  =  HappyAbsSyn8
		 ([]
	)

happyReduce_58 = happyReduce 6 8 happyReduction_58
happyReduction_58 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 ((happy_var_2, happy_var_4) : happy_var_6
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_0  9 happyReduction_59
happyReduction_59  =  HappyAbsSyn9
		 ([]
	)

happyReduce_60 = happyReduce 4 9 happyReduction_60
happyReduction_60 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 ([(Boolean' True, happy_var_3)]
	) `HappyStk` happyRest

happyReduce_61 = happySpecReduce_0  10 happyReduction_61
happyReduction_61  =  HappyAbsSyn10
		 ([]
	)

happyReduce_62 = happySpecReduce_1  10 happyReduction_62
happyReduction_62 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  10 happyReduction_63
happyReduction_63 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_63 _ _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  11 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn11
		 (TypeInt
	)

happyReduce_65 = happySpecReduce_1  11 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn11
		 (TypeBoolean
	)

happyReduce_66 = happySpecReduce_1  11 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn11
		 (TypeStream
	)

happyReduce_67 = happyReduce 6 11 happyReduction_67
happyReduction_67 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (TypeFunction TypeNone happy_var_4
	) `HappyStk` happyRest

happyReduce_68 = happyReduce 8 11 happyReduction_68
happyReduction_68 (_ `HappyStk`
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

happyReduce_69 = happyReduce 8 12 happyReduction_69
happyReduction_69 (_ `HappyStk`
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

happyReduce_70 = happyReduce 10 12 happyReduction_70
happyReduction_70 (_ `HappyStk`
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

happyReduce_71 = happyReduce 7 13 happyReduction_71
happyReduction_71 (_ `HappyStk`
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

happyReduce_72 = happyReduce 9 13 happyReduction_72
happyReduction_72 (_ `HappyStk`
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

happyReduce_73 = happySpecReduce_0  14 happyReduction_73
happyReduction_73  =  HappyAbsSyn14
		 ([]
	)

happyReduce_74 = happySpecReduce_2  14 happyReduction_74
happyReduction_74 (HappyTerminal (TokenVar _ happy_var_2))
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn14
		 ([(happy_var_1, happy_var_2)]
	)
happyReduction_74 _ _  = notHappyAtAll 

happyReduce_75 = happyReduce 4 14 happyReduction_75
happyReduction_75 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn11  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 ((happy_var_1, happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_76 = happySpecReduce_0  15 happyReduction_76
happyReduction_76  =  HappyAbsSyn15
		 ([]
	)

happyReduce_77 = happySpecReduce_1  15 happyReduction_77
happyReduction_77 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn15
		 ([happy_var_1]
	)
happyReduction_77 _  = notHappyAtAll 

happyReduce_78 = happySpecReduce_3  15 happyReduction_78
happyReduction_78 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1 : happy_var_3
	)
happyReduction_78 _ _ _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_0  16 happyReduction_79
happyReduction_79  =  HappyAbsSyn16
		 ([]
	)

happyReduce_80 = happySpecReduce_1  16 happyReduction_80
happyReduction_80 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 ([happy_var_1]
	)
happyReduction_80 _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_3  16 happyReduction_81
happyReduction_81 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1 : happy_var_3
	)
happyReduction_81 _ _ _  = notHappyAtAll 

happyReduce_82 = happyReduce 5 17 happyReduction_82
happyReduction_82 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 ([(happy_var_1, happy_var_4)]
	) `HappyStk` happyRest

happyReduce_83 = happyReduce 7 17 happyReduction_83
happyReduction_83 ((HappyAbsSyn17  happy_var_7) `HappyStk`
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

happyReduce_84 = happySpecReduce_1  18 happyReduction_84
happyReduction_84 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn18
		 ([happy_var_1]
	)
happyReduction_84 _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_3  18 happyReduction_85
happyReduction_85 (HappyAbsSyn18  happy_var_3)
	_
	_
	 =  HappyAbsSyn18
		 ("_" : happy_var_3
	)
happyReduction_85 _ _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_3  18 happyReduction_86
happyReduction_86 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn18
		 (happy_var_1 : happy_var_3
	)
happyReduction_86 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 76 76 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSemicolon _ -> cont 19;
	TokenIntType _ -> cont 20;
	TokenStreamType _ -> cont 21;
	TokenBooleanType _ -> cont 22;
	TokenImport _ -> cont 23;
	TokenInput _ -> cont 24;
	TokenPrint _ -> cont 25;
	TokenFunction _ -> cont 26;
	TokenReturn _ -> cont 27;
	TokenWhile _ -> cont 28;
	TokenProcess _ -> cont 29;
	TokenBreak _ -> cont 30;
	TokenAs _ -> cont 31;
	TokenIf _ -> cont 32;
	TokenElif _ -> cont 33;
	TokenElse _ -> cont 34;
	TokenHasNext _ -> cont 35;
	TokenNext _ -> cont 36;
	TokenSize _ -> cont 37;
	TokenAnd _ -> cont 38;
	TokenOr _ -> cont 39;
	TokenInt _ happy_dollar_dollar -> cont 40;
	TokenBool _ happy_dollar_dollar -> cont 41;
	TokenVar _ happy_dollar_dollar -> cont 42;
	TokenLE _ -> cont 43;
	TokenGE _ -> cont 44;
	TokenEQ _ -> cont 45;
	TokenNE _ -> cont 46;
	TokenCons _ -> cont 47;
	TokenPlusPlus _ -> cont 48;
	TokenMinusMinus _ -> cont 49;
	TokenTake _ -> cont 50;
	TokenReturnArrow _ -> cont 51;
	TokenAssign _ -> cont 52;
	TokenPlusEquals _ -> cont 53;
	TokenMinusEquals _ -> cont 54;
	TokenTimesEquals _ -> cont 55;
	TokenDivEquals _ -> cont 56;
	TokenExponentEquals _ -> cont 57;
	TokenModuloEquals _ -> cont 58;
	TokenPlus _ -> cont 59;
	TokenMinus _ -> cont 60;
	TokenTimes _ -> cont 61;
	TokenDiv _ -> cont 62;
	TokenLParen _ -> cont 63;
	TokenRParen _ -> cont 64;
	TokenLSquare _ -> cont 65;
	TokenRSquare _ -> cont 66;
	TokenLCurly _ -> cont 67;
	TokenRCurly _ -> cont 68;
	TokenComma _ -> cont 69;
	TokenNot _ -> cont 70;
	TokenExponent _ -> cont 71;
	TokenModulo _ -> cont 72;
	TokenLT _ -> cont 73;
	TokenGT _ -> cont 74;
	TokenUnderscore _ -> cont 75;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 76 tk tks = happyError' (tks, explist)
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

data Exp = Import String
         | While Exp [Exp]
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

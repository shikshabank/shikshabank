.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/MultiplyOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forMul"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 33
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 31
    .param p1, "args"    # [Ljava/lang/Object;

    .line 38
    move-object/from16 v0, p1

    array-length v1, v0

    .line 39
    .local v1, "len":I
    if-nez v1, :cond_a

    .line 40
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 41
    :cond_a
    const/4 v2, 0x0

    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Number;

    .line 42
    .local v3, "result":Ljava/lang/Number;
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    .line 43
    .local v4, "code":I
    const/4 v5, 0x1

    .local v5, "i":I
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-wide v13, v9

    move-wide v15, v13

    move-object/from16 v17, v11

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v6

    move-wide v7, v9

    move v6, v5

    move v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    .end local v3    # "result":Ljava/lang/Number;
    .local v4, "result":Ljava/lang/Number;
    .local v5, "code":I
    .local v6, "i":I
    :goto_2c
    if-ge v6, v1, :cond_19f

    .line 45
    aget-object v21, v0, v6

    .line 46
    .local v21, "arg2":Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 47
    .local v0, "code2":I
    if-ge v5, v0, :cond_39

    move/from16 v22, v0

    goto :goto_3b

    :cond_39
    move/from16 v22, v5

    :goto_3b
    move/from16 v5, v22

    .line 49
    packed-switch v5, :pswitch_data_1a0

    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .local v22, "code2":I
    .local v23, "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .local v1, "bi1":Ljava/math/BigInteger;
    .local v2, "i1":I
    .local v3, "i2":I
    .local v13, "l2":J
    .local v15, "l1":J
    move-object/from16 v17, v19

    .local v17, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v18, v20

    .line 95
    .local v7, "d2":D
    .local v9, "d1":D
    .local v11, "f2":F
    .local v12, "f1":F
    .local v18, "bd2":Ljava/math/BigDecimal;
    move-object/from16 v19, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v19, "bi2":Ljava/math/BigInteger;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    move-object/from16 v20, v1

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .local v20, "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    move-object v4, v0

    move-object/from16 v27, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v27

    move-object/from16 v28, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v28

    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    goto/16 :goto_197

    .line 90
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    .local v17, "bi2":Ljava/math/BigInteger;
    .local v18, "bi1":Ljava/math/BigInteger;
    .local v19, "bd1":Ljava/math/BigDecimal;
    .local v20, "bd2":Ljava/math/BigDecimal;
    :pswitch_6b
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 91
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 92
    move/from16 v22, v0

    .end local v0    # "code2":I
    .restart local v22    # "code2":I
    new-instance v0, Lgnu/math/DFloNum;

    move/from16 v23, v1

    move/from16 v24, v2

    .end local v1    # "len":I
    .end local v2    # "i1":I
    .restart local v23    # "len":I
    .local v24, "i1":I
    mul-double v1, v9, v7

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 93
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    move/from16 v2, v24

    goto/16 :goto_197

    .line 49
    .end local v3    # "i2":I
    .end local v7    # "d2":D
    .end local v9    # "d1":D
    .end local v11    # "f2":F
    .end local v12    # "f1":F
    .end local v13    # "l2":J
    .end local v15    # "l1":J
    .end local v17    # "bi2":Ljava/math/BigInteger;
    .end local v18    # "bi1":Ljava/math/BigInteger;
    .end local v19    # "bd1":Ljava/math/BigDecimal;
    .end local v20    # "bd2":Ljava/math/BigDecimal;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "i1":I
    .local v0, "code2":I
    .restart local v1    # "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_85
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v7, v13

    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    .local v7, "l2":J
    move-wide v9, v15

    .local v9, "l1":J
    move-object/from16 v13, v19

    .local v13, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v14, v20

    .line 85
    .restart local v11    # "f2":F
    .restart local v12    # "f1":F
    .local v14, "bd2":Ljava/math/BigDecimal;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v15

    .line 86
    .local v15, "d1":D
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v17

    .line 87
    .local v17, "d2":D
    move-object/from16 v24, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v24, "bi2":Ljava/math/BigInteger;
    new-instance v0, Ljava/lang/Double;

    move-object/from16 v25, v1

    move/from16 v26, v2

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .end local v2    # "i1":I
    .local v25, "bi1":Ljava/math/BigInteger;
    .local v26, "i1":I
    mul-double v1, v15, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 88
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    move/from16 v2, v26

    move-wide v13, v7

    move-wide/from16 v7, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    move-wide/from16 v27, v9

    move-wide v9, v15

    move-wide/from16 v15, v27

    goto/16 :goto_197

    .line 49
    .end local v3    # "i2":I
    .end local v7    # "l2":J
    .end local v9    # "l1":J
    .end local v11    # "f2":F
    .end local v12    # "f1":F
    .end local v13    # "bd1":Ljava/math/BigDecimal;
    .end local v14    # "bd2":Ljava/math/BigDecimal;
    .end local v15    # "d1":D
    .end local v17    # "d2":D
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "bi2":Ljava/math/BigInteger;
    .end local v25    # "bi1":Ljava/math/BigInteger;
    .end local v26    # "i1":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_b9
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v11, v13

    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    .local v11, "l2":J
    move-wide v13, v15

    .local v13, "l1":J
    move-object/from16 v15, v19

    .local v15, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v16, v20

    .line 80
    .local v16, "bd2":Ljava/math/BigDecimal;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v17

    .line 81
    .local v17, "f1":F
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v18

    .line 82
    .local v18, "f2":F
    move-object/from16 v24, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .restart local v24    # "bi2":Ljava/math/BigInteger;
    new-instance v0, Ljava/lang/Float;

    move-object/from16 v25, v1

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .restart local v25    # "bi1":Ljava/math/BigInteger;
    mul-float v1, v17, v18

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 83
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    move-wide v15, v13

    move-wide v13, v11

    move/from16 v12, v17

    move/from16 v11, v18

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    goto/16 :goto_197

    .line 49
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v11    # "l2":J
    .end local v13    # "l1":J
    .end local v15    # "bd1":Ljava/math/BigDecimal;
    .end local v16    # "bd2":Ljava/math/BigDecimal;
    .end local v17    # "f1":F
    .end local v18    # "f2":F
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "bi2":Ljava/math/BigInteger;
    .end local v25    # "bi1":Ljava/math/BigInteger;
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_e7
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .local v1, "bi1":Ljava/math/BigInteger;
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    .local v13, "l2":J
    .local v15, "l1":J
    move-object/from16 v17, v19

    .local v17, "bd1":Ljava/math/BigDecimal;
    move-object/from16 v18, v20

    .line 76
    .local v18, "bd2":Ljava/math/BigDecimal;
    move-object/from16 v24, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .restart local v24    # "bi2":Ljava/math/BigInteger;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    move-object/from16 v25, v1

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .restart local v25    # "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 78
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    goto/16 :goto_197

    .line 49
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v13    # "l2":J
    .end local v15    # "l1":J
    .end local v17    # "bd1":Ljava/math/BigDecimal;
    .end local v18    # "bd2":Ljava/math/BigDecimal;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "bi2":Ljava/math/BigInteger;
    .end local v25    # "bi1":Ljava/math/BigInteger;
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_10a
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .line 71
    .local v1, "bi1":Ljava/math/BigInteger;
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    .restart local v13    # "l2":J
    .restart local v15    # "l1":J
    nop

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v17, "bi2":Ljava/math/BigInteger;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 72
    .local v0, "bd1":Ljava/math/BigDecimal;
    nop

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .local v18, "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 73
    .local v1, "bd2":Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 74
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    goto/16 :goto_197

    .line 49
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v13    # "l2":J
    .end local v15    # "l1":J
    .end local v17    # "bi2":Ljava/math/BigInteger;
    .end local v18    # "bi1":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    :pswitch_126
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object/from16 v0, v17

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object/from16 v1, v18

    .line 67
    .local v1, "bi1":Ljava/math/BigInteger;
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    .restart local v13    # "l2":J
    .restart local v15    # "l1":J
    nop

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .restart local v17    # "bi2":Ljava/math/BigInteger;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .restart local v18    # "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 69
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    goto/16 :goto_197

    .line 49
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v13    # "l2":J
    .end local v15    # "l1":J
    .end local v17    # "bi2":Ljava/math/BigInteger;
    .end local v18    # "bi1":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_13e
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-wide v0, v13

    .local v0, "l2":J
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    move-wide v13, v15

    .line 62
    .local v13, "l1":J
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v15

    .line 63
    .local v15, "bi1":Ljava/math/BigInteger;
    move-wide/from16 v17, v0

    .end local v0    # "l2":J
    .local v17, "l2":J
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    .line 64
    .local v0, "bi2":Ljava/math/BigInteger;
    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 65
    .end local v4    # "result":Ljava/lang/Number;
    .local v1, "result":Ljava/lang/Number;
    move-object v4, v1

    move-wide/from16 v27, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v15

    move-wide v15, v13

    move-wide/from16 v13, v27

    goto :goto_197

    .line 49
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .end local v13    # "l1":J
    .end local v15    # "bi1":Ljava/math/BigInteger;
    .end local v17    # "l2":J
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_15d
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move v0, v2

    .local v0, "i1":I
    move v1, v3

    .line 57
    .local v1, "i2":I
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 58
    .local v2, "l1":J
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v13

    .line 59
    .local v13, "l2":J
    new-instance v15, Ljava/lang/Long;

    move/from16 v16, v0

    move/from16 v24, v1

    .end local v0    # "i1":I
    .end local v1    # "i2":I
    .local v16, "i1":I
    .local v24, "i2":I
    mul-long v0, v2, v13

    invoke-direct {v15, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v15

    .line 60
    .end local v4    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v4, v0

    move-wide/from16 v27, v2

    move/from16 v2, v16

    move-wide/from16 v15, v27

    move/from16 v3, v24

    goto :goto_197

    .line 52
    .end local v2    # "l1":J
    .end local v13    # "l2":J
    .end local v16    # "i1":I
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "i2":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v4    # "result":Ljava/lang/Number;
    :pswitch_181
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v0

    .line 53
    .local v0, "i1":I
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 54
    .local v1, "i2":I
    new-instance v2, Ljava/lang/Integer;

    mul-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 55
    .end local v4    # "result":Ljava/lang/Number;
    .local v2, "result":Ljava/lang/Number;
    move v3, v1

    move-object v4, v2

    move v2, v0

    .line 43
    .end local v0    # "i1":I
    .end local v1    # "i2":I
    .end local v2    # "result":Ljava/lang/Number;
    .end local v21    # "arg2":Ljava/lang/Object;
    .end local v22    # "code2":I
    .restart local v4    # "result":Ljava/lang/Number;
    :goto_197
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    goto/16 :goto_2c

    .line 99
    .end local v6    # "i":I
    .end local v23    # "len":I
    .local v1, "len":I
    :cond_19f
    return-object v4

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_181
        :pswitch_15d
        :pswitch_13e
        :pswitch_126
        :pswitch_10a
        :pswitch_e7
        :pswitch_b9
        :pswitch_85
        :pswitch_6b
    .end packed-switch
.end method

.method public defaultResult()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

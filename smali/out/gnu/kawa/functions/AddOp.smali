.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "code":I
    packed-switch v0, :pswitch_data_6c

    .line 119
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    return-object v1

    .line 117
    :pswitch_10
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 115
    :pswitch_1b
    new-instance v1, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 113
    :pswitch_26
    new-instance v1, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    .line 111
    :pswitch_31
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    return-object v1

    .line 109
    :pswitch_3a
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_43
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 105
    :pswitch_4c
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_55
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 101
    :pswitch_60
    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_55
        :pswitch_4c
        :pswitch_43
        :pswitch_3a
        :pswitch_31
        :pswitch_26
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 92
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 133
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plusOrMinus"    # I

    .line 20
    const/4 v0, 0x1

    if-lez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x2

    :goto_6
    invoke-direct {p0, p1, v1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 16
    iput v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 21
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 22
    if-lez p2, :cond_12

    const-string v0, "gnu.kawa.functions.CompileArith:$Pl"

    goto :goto_14

    :cond_12
    const-string v0, "gnu.kawa.functions.CompileArith:$Mn"

    .line 25
    .local v0, "compiler":Ljava/lang/String;
    :goto_14
    sget-object v1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28
    .param p0, "plusOrMinus"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 35
    move/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 36
    .local v1, "code1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v2

    .line 41
    .local v2, "code2":I
    if-ge v1, v2, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    .line 42
    .local v3, "code":I
    :goto_f
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_154

    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .local v20, "code1":I
    .local v23, "code2":I
    .local v24, "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v10

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v11, v10

    .local v10, "bi2":Ljava/math/BigInteger;
    .local v11, "bi1":Ljava/math/BigInteger;
    move-wide v12, v7

    .local v7, "l2":J
    .local v9, "i2":I
    .local v12, "l1":J
    move v14, v6

    .local v6, "f2":F
    .local v14, "f1":F
    move-wide v15, v4

    .line 79
    .local v4, "d2":D
    .local v15, "d1":D
    move/from16 v17, v1

    .end local v1    # "i1":I
    .local v17, "i1":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 80
    .local v1, "num1":Lgnu/math/Numeric;
    move-object/from16 v18, v2

    .end local v2    # "bd2":Ljava/math/BigDecimal;
    .local v18, "bd2":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    .line 81
    .local v2, "num2":Lgnu/math/Numeric;
    invoke-virtual {v1, v2, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v19

    return-object v19

    .line 42
    .end local v4    # "d2":D
    .end local v6    # "f2":F
    .end local v7    # "l2":J
    .end local v9    # "i2":I
    .end local v10    # "bi2":Ljava/math/BigInteger;
    .end local v11    # "bi1":Ljava/math/BigInteger;
    .end local v12    # "l1":J
    .end local v14    # "f1":F
    .end local v15    # "d1":D
    .end local v17    # "i1":I
    .end local v18    # "bd2":Ljava/math/BigDecimal;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_37
    move v11, v9

    .local v11, "i1":I
    move-object v12, v10

    .local v12, "bd2":Ljava/math/BigDecimal;
    move-object v13, v10

    .local v13, "bd1":Ljava/math/BigDecimal;
    move-object v14, v10

    .restart local v10    # "bi2":Ljava/math/BigInteger;
    .local v14, "bi1":Ljava/math/BigInteger;
    move-wide v15, v7

    .restart local v7    # "l2":J
    .restart local v9    # "i2":I
    .local v15, "l1":J
    move/from16 v17, v6

    .restart local v6    # "f2":F
    .local v17, "f1":F
    move-wide/from16 v18, v4

    .line 75
    .restart local v4    # "d2":D
    .local v18, "d1":D
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    .line 76
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 77
    move/from16 v20, v1

    .end local v1    # "code1":I
    .restart local v20    # "code1":I
    new-instance v1, Lgnu/math/DFloNum;

    if-lez v0, :cond_51

    add-double v21, v18, v4

    goto :goto_53

    :cond_51
    sub-double v21, v18, v4

    :goto_53
    move/from16 v23, v2

    move/from16 v24, v3

    move-wide/from16 v2, v21

    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 42
    .end local v4    # "d2":D
    .end local v6    # "f2":F
    .end local v7    # "l2":J
    .end local v9    # "i2":I
    .end local v10    # "bi2":Ljava/math/BigInteger;
    .end local v11    # "i1":I
    .end local v12    # "bd2":Ljava/math/BigDecimal;
    .end local v13    # "bd1":Ljava/math/BigDecimal;
    .end local v14    # "bi1":Ljava/math/BigInteger;
    .end local v15    # "l1":J
    .end local v17    # "f1":F
    .end local v18    # "d1":D
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .restart local v1    # "code1":I
    .restart local v2    # "code2":I
    .restart local v3    # "code":I
    :pswitch_5d
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v10

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v4, v10

    .local v4, "bi1":Ljava/math/BigInteger;
    move-object v5, v10

    .local v5, "bi2":Ljava/math/BigInteger;
    move-wide v10, v7

    .restart local v7    # "l2":J
    .restart local v9    # "i2":I
    .local v10, "l1":J
    move v12, v6

    .line 71
    .restart local v6    # "f2":F
    .local v12, "f1":F
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v13

    .line 72
    .local v13, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v15

    .line 73
    .local v15, "d2":D
    move/from16 v17, v1

    .end local v1    # "i1":I
    .local v17, "i1":I
    new-instance v1, Ljava/lang/Double;

    if-lez v0, :cond_7b

    add-double v18, v13, v15

    goto :goto_7d

    :cond_7b
    sub-double v18, v13, v15

    :goto_7d
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v2, v18

    .end local v2    # "bd2":Ljava/math/BigDecimal;
    .end local v3    # "bd1":Ljava/math/BigDecimal;
    .local v21, "bd2":Ljava/math/BigDecimal;
    .local v22, "bd1":Ljava/math/BigDecimal;
    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 42
    .end local v4    # "bi1":Ljava/math/BigInteger;
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "f2":F
    .end local v7    # "l2":J
    .end local v9    # "i2":I
    .end local v10    # "l1":J
    .end local v12    # "f1":F
    .end local v13    # "d1":D
    .end local v15    # "d2":D
    .end local v17    # "i1":I
    .end local v20    # "code1":I
    .end local v21    # "bd2":Ljava/math/BigDecimal;
    .end local v22    # "bd1":Ljava/math/BigDecimal;
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_87
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v10

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v4, v10

    .restart local v4    # "bi1":Ljava/math/BigInteger;
    move-object v5, v10

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    move-wide v10, v7

    .restart local v10    # "l1":J
    move-wide v6, v7

    .local v6, "l2":J
    move v8, v9

    .line 67
    .local v8, "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v9

    .line 68
    .local v9, "f1":F
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v12

    .line 69
    .local v12, "f2":F
    new-instance v13, Ljava/lang/Float;

    if-lez v0, :cond_a4

    add-float v14, v9, v12

    goto :goto_a6

    :cond_a4
    sub-float v14, v9, v12

    :goto_a6
    invoke-direct {v13, v14}, Ljava/lang/Float;-><init>(F)V

    return-object v13

    .line 42
    .end local v4    # "bi1":Ljava/math/BigInteger;
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "i2":I
    .end local v9    # "f1":F
    .end local v10    # "l1":J
    .end local v12    # "f2":F
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_aa
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v10

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v4, v10

    .restart local v4    # "bi1":Ljava/math/BigInteger;
    move-object v5, v10

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    move-wide v10, v7

    .restart local v10    # "l1":J
    move-wide v6, v7

    .restart local v6    # "l2":J
    move v8, v9

    .line 64
    .restart local v8    # "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v12

    invoke-static {v9, v12, v0}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v9

    return-object v9

    .line 42
    .end local v4    # "bi1":Ljava/math/BigInteger;
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "i2":I
    .end local v10    # "l1":J
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_c5
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bi1":Ljava/math/BigInteger;
    move-object v3, v10

    .local v3, "bi2":Ljava/math/BigInteger;
    move-wide v4, v7

    .local v4, "l1":J
    move-wide v6, v7

    .restart local v6    # "l2":J
    move v8, v9

    .line 60
    .restart local v8    # "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 61
    .local v9, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 62
    .local v10, "bd2":Ljava/math/BigDecimal;
    if-lez v0, :cond_e0

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    goto :goto_e4

    :cond_e0
    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    :goto_e4
    return-object v11

    .line 42
    .end local v4    # "l1":J
    .end local v6    # "l2":J
    .end local v8    # "i2":I
    .end local v9    # "bd1":Ljava/math/BigDecimal;
    .end local v10    # "bd2":Ljava/math/BigDecimal;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_e5
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-object v2, v10

    .local v2, "bi1":Ljava/math/BigInteger;
    move-object v3, v10

    .local v3, "bi2":Ljava/math/BigInteger;
    move-wide v4, v7

    .restart local v4    # "l1":J
    move-wide v6, v7

    .restart local v6    # "l2":J
    move v8, v9

    .line 57
    .restart local v8    # "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v9

    return-object v9

    .line 42
    .end local v4    # "l1":J
    .end local v6    # "l2":J
    .end local v8    # "i2":I
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_fe
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move-wide v2, v7

    .local v2, "l1":J
    move-wide v4, v7

    .local v4, "l2":J
    move v6, v9

    .line 53
    .local v6, "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v7

    .line 54
    .local v7, "bi1":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v8

    .line 55
    .local v8, "bi2":Ljava/math/BigInteger;
    if-lez v0, :cond_117

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_11b

    :cond_117
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    :goto_11b
    return-object v9

    .line 42
    .end local v4    # "l2":J
    .end local v6    # "i2":I
    .end local v7    # "bi1":Ljava/math/BigInteger;
    .end local v8    # "bi2":Ljava/math/BigInteger;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .restart local v3    # "code":I
    :pswitch_11c
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v9

    .local v1, "i1":I
    move v2, v9

    .line 49
    .local v2, "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 50
    .local v3, "l1":J
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v5

    .line 51
    .local v5, "l2":J
    new-instance v7, Ljava/lang/Long;

    if-lez v0, :cond_133

    add-long v8, v3, v5

    goto :goto_135

    :cond_133
    sub-long v8, v3, v5

    :goto_135
    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    return-object v7

    .line 45
    .end local v5    # "l2":J
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_139
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 46
    .local v1, "i1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    .line 47
    .local v2, "i2":I
    new-instance v3, Ljava/lang/Integer;

    if-lez v0, :cond_14e

    add-int v4, v1, v2

    goto :goto_150

    :cond_14e
    sub-int v4, v1, v2

    :goto_150
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v3

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_139
        :pswitch_11c
        :pswitch_fe
        :pswitch_e5
        :pswitch_c5
        :pswitch_aa
        :pswitch_87
        :pswitch_5d
        :pswitch_37
    .end packed-switch
.end method

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "plusOrMinus"    # I
    .param p1, "init"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 151
    array-length v0, p2

    .line 152
    .local v0, "len":I
    move-object v1, p1

    .line 153
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_e

    .line 154
    aget-object v3, p2, v2

    invoke-static {p0, v1, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    .end local v2    # "i":I
    :cond_e
    return-object v1
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "plusOrMinus"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .line 138
    array-length v0, p1

    .line 139
    .local v0, "len":I
    if-nez v0, :cond_8

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 141
    :cond_8
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 142
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    if-gez p0, :cond_15

    .line 143
    invoke-static {v1}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 144
    :cond_15
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 145
    aget-object v3, p1, v2

    invoke-static {p0, v1, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 146
    .end local v2    # "i":I
    :cond_21
    return-object v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 160
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

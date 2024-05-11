.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "DivideOp.java"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v1, Lgnu/kawa/functions/DivideOp;

    const-string v3, "quotient"

    const/4 v4, 0x6

    invoke-direct {v1, v3, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v3, Lgnu/kawa/functions/DivideOp;

    const-string v5, "remainder"

    const/16 v6, 0x8

    invoke-direct {v3, v5, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v5, Lgnu/kawa/functions/DivideOp;

    const-string v7, "modulo"

    invoke-direct {v5, v7, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v7, Lgnu/kawa/functions/DivideOp;

    const-string v8, "div"

    invoke-direct {v7, v8, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v8, Lgnu/kawa/functions/DivideOp;

    const-string v9, "mod"

    invoke-direct {v8, v9, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v9, Lgnu/kawa/functions/DivideOp;

    const-string v10, "div0"

    invoke-direct {v9, v10, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v4, Lgnu/kawa/functions/DivideOp;

    const-string v10, "mod0"

    invoke-direct {v4, v10, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    .line 29
    const/4 v6, 0x3

    iput v6, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    iput v6, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    iput v6, v3, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 32
    const/4 v0, 0x1

    iput v0, v5, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 33
    const/4 v0, 0x5

    iput v0, v7, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    iput v0, v8, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    iput v2, v9, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    iput v2, v4, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/DivideOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 35
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 51
    .local v2, "len":I
    if-nez v2, :cond_c

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 53
    :cond_c
    const/4 v3, 0x0

    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/Number;

    .line 54
    .local v4, "result":Ljava/lang/Number;
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1d

    .line 55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lgnu/kawa/functions/DivideOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 56
    :cond_1d
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v6

    .line 57
    .local v6, "code":I
    const/4 v7, 0x1

    .local v7, "i":I
    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    move-wide v14, v8

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move v8, v6

    move v9, v7

    move-wide v12, v14

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v4, 0x0

    .end local v4    # "result":Ljava/lang/Number;
    .end local v6    # "code":I
    .local v7, "result":Ljava/lang/Number;
    .local v8, "code":I
    .local v9, "i":I
    :goto_38
    if-ge v9, v2, :cond_2eb

    .line 59
    aget-object v24, v1, v9

    .line 60
    .local v24, "arg2":Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v10

    .line 61
    .local v10, "code2":I
    if-ge v8, v10, :cond_44

    move v11, v10

    goto :goto_45

    :cond_44
    move v11, v8

    :goto_45
    move v8, v11

    .line 62
    nop

    .line 63
    .local v11, "scode":I
    const/4 v5, 0x4

    if-ge v8, v5, :cond_63

    .line 65
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v5, :pswitch_data_2ec

    .line 72
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v1, 0x3

    if-ne v5, v1, :cond_60

    const/4 v1, 0x1

    if-eq v8, v1, :cond_64

    const/4 v5, 0x2

    if-ne v8, v5, :cond_61

    .line 74
    goto :goto_64

    .line 69
    :pswitch_5b
    const/4 v5, 0x4

    move v8, v5

    move v11, v5

    .line 70
    const/4 v1, 0x1

    goto :goto_64

    .line 72
    :cond_60
    const/4 v1, 0x1

    .line 76
    :cond_61
    const/4 v11, 0x4

    goto :goto_64

    .line 63
    :cond_63
    const/4 v1, 0x1

    .line 80
    :cond_64
    :goto_64
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v1, 0x5

    move/from16 v28, v2

    .end local v2    # "len":I
    .local v28, "len":I
    const/16 v2, 0x8

    if-ne v5, v1, :cond_7b

    const/16 v1, 0xa

    if-gt v8, v1, :cond_7b

    .line 82
    const/16 v11, 0xa

    .line 83
    if-eq v8, v2, :cond_89

    const/4 v1, 0x7

    if-eq v8, v1, :cond_89

    .line 84
    const/16 v8, 0x9

    goto :goto_89

    .line 86
    :cond_7b
    if-eq v11, v2, :cond_81

    const/4 v1, 0x7

    if-ne v11, v1, :cond_89

    goto :goto_82

    :cond_81
    const/4 v1, 0x7

    .line 88
    :goto_82
    const/16 v11, 0x9

    .line 89
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-ne v5, v1, :cond_89

    .line 90
    move v8, v11

    .line 92
    :cond_89
    :goto_89
    packed-switch v11, :pswitch_data_2f4

    :pswitch_8c
    const-wide/16 v25, 0x0

    move-object/from16 v1, v16

    .local v1, "bd1":Ljava/math/BigDecimal;
    .local v3, "i1":I
    .local v4, "i2":I
    .local v12, "l1":J
    .local v14, "l2":J
    move-object/from16 v5, v17

    .local v5, "bd2":Ljava/math/BigDecimal;
    .local v6, "mprec":I
    move-object/from16 v16, v19

    .local v16, "mcontext":Ljava/math/MathContext;
    move-object/from16 v17, v18

    .line 213
    .local v17, "mround":Ljava/math/RoundingMode;
    .local v20, "d1":D
    .local v22, "d2":D
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    .line 214
    .local v2, "num1":Lgnu/math/Numeric;
    move-object/from16 v19, v1

    .end local v1    # "bd1":Ljava/math/BigDecimal;
    .local v19, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 215
    .local v1, "num2":Lgnu/math/Numeric;
    move/from16 v27, v3

    .end local v3    # "i1":I
    .local v27, "i1":I
    iget v3, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v4

    const/16 v4, 0x8

    .end local v4    # "i2":I
    .local v29, "i2":I
    if-ne v3, v4, :cond_235

    invoke-virtual {v1}, Lgnu/math/Numeric;->isZero()Z

    move-result v3

    if-eqz v3, :cond_235

    .line 216
    invoke-virtual {v1}, Lgnu/math/Numeric;->isExact()Z

    move-result v3

    if-eqz v3, :cond_230

    move-object v3, v2

    goto/16 :goto_234

    .line 92
    .end local v1    # "num2":Lgnu/math/Numeric;
    .end local v2    # "num1":Lgnu/math/Numeric;
    .end local v5    # "bd2":Ljava/math/BigDecimal;
    .end local v6    # "mprec":I
    .end local v12    # "l1":J
    .end local v14    # "l2":J
    .end local v16    # "mcontext":Ljava/math/MathContext;
    .end local v17    # "mround":Ljava/math/RoundingMode;
    .end local v19    # "bd1":Ljava/math/BigDecimal;
    .end local v20    # "d1":D
    .end local v22    # "d2":D
    .end local v27    # "i1":I
    .end local v29    # "i2":I
    :pswitch_b9
    move-object/from16 v1, v16

    .local v1, "bd1":Ljava/math/BigDecimal;
    .restart local v14    # "l2":J
    move v2, v3

    .local v2, "i1":I
    .restart local v12    # "l1":J
    move v3, v4

    .local v3, "i2":I
    move-object/from16 v4, v17

    .local v4, "bd2":Ljava/math/BigDecimal;
    move v5, v6

    .local v5, "mprec":I
    move-object/from16 v6, v19

    .local v6, "mcontext":Ljava/math/MathContext;
    move-object/from16 v16, v18

    .line 189
    .local v16, "mround":Ljava/math/RoundingMode;
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v17

    .line 190
    .local v17, "d1":D
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v22

    .line 191
    .restart local v22    # "d2":D
    move-object/from16 v20, v1

    .end local v1    # "bd1":Ljava/math/BigDecimal;
    .local v20, "bd1":Ljava/math/BigDecimal;
    iget v1, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v1, :pswitch_data_30a

    move/from16 v21, v2

    move/from16 v27, v3

    const-wide/16 v25, 0x0

    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .local v21, "i1":I
    .local v27, "i2":I
    goto :goto_132

    .line 205
    .end local v21    # "i1":I
    .end local v27    # "i2":I
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    :pswitch_da
    const-wide/16 v25, 0x0

    cmpl-double v1, v22, v25

    if-eqz v1, :cond_f3

    .line 206
    move/from16 v21, v2

    .end local v2    # "i1":I
    .restart local v21    # "i1":I
    div-double v1, v17, v22

    move/from16 v27, v3

    .end local v3    # "i2":I
    .restart local v27    # "i2":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    mul-double v1, v1, v22

    sub-double v17, v17, v1

    goto :goto_f7

    .line 205
    .end local v21    # "i1":I
    .end local v27    # "i2":I
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    :cond_f3
    move/from16 v21, v2

    move/from16 v27, v3

    .line 207
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .restart local v21    # "i1":I
    .restart local v27    # "i2":I
    :goto_f7
    invoke-static/range {v17 .. v18}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v7

    goto :goto_132

    .line 201
    .end local v21    # "i1":I
    .end local v27    # "i2":I
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    :pswitch_fc
    move/from16 v21, v2

    move/from16 v27, v3

    const-wide/16 v25, 0x0

    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .restart local v21    # "i1":I
    .restart local v27    # "i2":I
    div-double v1, v17, v22

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v7

    .line 202
    const/4 v1, 0x4

    move v11, v1

    move v8, v1

    .line 203
    goto :goto_132

    .line 198
    .end local v21    # "i1":I
    .end local v27    # "i2":I
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    :pswitch_110
    move/from16 v21, v2

    move/from16 v27, v3

    const-wide/16 v25, 0x0

    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .restart local v21    # "i1":I
    .restart local v27    # "i2":I
    div-double v1, v17, v22

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 199
    goto :goto_132

    .line 195
    .end local v21    # "i1":I
    .end local v27    # "i2":I
    .restart local v2    # "i1":I
    .restart local v3    # "i2":I
    :pswitch_125
    move/from16 v21, v2

    move/from16 v27, v3

    const-wide/16 v25, 0x0

    .end local v2    # "i1":I
    .end local v3    # "i2":I
    .restart local v21    # "i1":I
    .restart local v27    # "i2":I
    div-double v1, v17, v22

    invoke-static {v1, v2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v7

    .line 196
    nop

    .line 210
    :goto_132
    move-object/from16 v19, v6

    move/from16 v3, v21

    move v6, v5

    move-wide/from16 v31, v17

    move-object/from16 v17, v4

    move-object/from16 v18, v16

    move-object/from16 v16, v20

    move/from16 v4, v27

    move-wide/from16 v20, v31

    goto/16 :goto_2af

    .line 92
    .end local v4    # "bd2":Ljava/math/BigDecimal;
    .end local v5    # "mprec":I
    .end local v6    # "mcontext":Ljava/math/MathContext;
    .end local v12    # "l1":J
    .end local v14    # "l2":J
    .end local v16    # "mround":Ljava/math/RoundingMode;
    .end local v17    # "d1":D
    .end local v20    # "bd1":Ljava/math/BigDecimal;
    .end local v21    # "i1":I
    .end local v22    # "d2":D
    .end local v27    # "i2":I
    :pswitch_145
    const-wide/16 v25, 0x0

    move-wide v1, v14

    .local v1, "l2":J
    .local v3, "i1":I
    move-wide v5, v12

    .line 147
    .local v4, "i2":I
    .local v5, "l1":J
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v12

    .line 148
    .local v12, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v13

    .line 149
    .local v13, "bd2":Ljava/math/BigDecimal;
    const/4 v14, 0x0

    .line 151
    .local v14, "mprec":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v15

    packed-switch v15, :pswitch_data_318

    :pswitch_159
    move-object/from16 v15, v18

    .local v15, "mround":Ljava/math/RoundingMode;
    goto :goto_179

    .end local v15    # "mround":Ljava/math/RoundingMode;
    :pswitch_15c
    move-object/from16 v15, v18

    .line 163
    .restart local v15    # "mround":Ljava/math/RoundingMode;
    invoke-virtual {v13}, Ljava/math/BigDecimal;->signum()I

    move-result v16

    if-gez v16, :cond_167

    sget-object v16, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_169

    :cond_167
    sget-object v16, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    :goto_169
    move-object/from16 v15, v16

    goto :goto_179

    .line 151
    .end local v15    # "mround":Ljava/math/RoundingMode;
    :pswitch_16c
    move-object/from16 v15, v18

    .line 160
    .restart local v15    # "mround":Ljava/math/RoundingMode;
    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 161
    goto :goto_17b

    .line 151
    .end local v15    # "mround":Ljava/math/RoundingMode;
    :pswitch_171
    move-object/from16 v15, v18

    .line 157
    .restart local v15    # "mround":Ljava/math/RoundingMode;
    sget-object v15, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 158
    goto :goto_17b

    .line 154
    .end local v15    # "mround":Ljava/math/RoundingMode;
    :pswitch_176
    sget-object v15, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 155
    .restart local v15    # "mround":Ljava/math/RoundingMode;
    goto :goto_17b

    .line 165
    :goto_179
    sget-object v15, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 168
    :goto_17b
    move-wide/from16 v16, v1

    .end local v1    # "l2":J
    .local v16, "l2":J
    new-instance v1, Ljava/math/MathContext;

    invoke-direct {v1, v14, v15}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 169
    .local v1, "mcontext":Ljava/math/MathContext;
    iget v2, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v2, :pswitch_data_326

    :pswitch_187
    goto :goto_1a3

    .line 183
    :pswitch_188
    invoke-virtual {v12, v13, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_1a3

    .line 178
    :pswitch_18d
    invoke-virtual {v12, v13, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 180
    const/4 v2, 0x3

    move v11, v2

    move v8, v2

    .line 181
    goto :goto_1a3

    .line 175
    :pswitch_199
    invoke-virtual {v12, v13, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 176
    goto :goto_1a3

    .line 172
    :pswitch_19e
    invoke-virtual {v12, v13}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 173
    nop

    .line 186
    :goto_1a3
    move-object/from16 v19, v1

    move-object/from16 v18, v15

    move-wide/from16 v31, v16

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-wide v12, v5

    move v6, v14

    move-wide/from16 v14, v31

    goto/16 :goto_2af

    .line 92
    .end local v1    # "mcontext":Ljava/math/MathContext;
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v5    # "l1":J
    .end local v12    # "bd1":Ljava/math/BigDecimal;
    .end local v13    # "bd2":Ljava/math/BigDecimal;
    .end local v14    # "mprec":I
    .end local v15    # "mround":Ljava/math/RoundingMode;
    .end local v16    # "l2":J
    :pswitch_1b3
    const-wide/16 v25, 0x0

    move-wide v1, v14

    .line 123
    .local v1, "l2":J
    .restart local v3    # "i1":I
    .restart local v4    # "i2":I
    .local v12, "l1":J
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v5, :pswitch_data_334

    :pswitch_1bb
    goto :goto_1f3

    .line 132
    :pswitch_1bc
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v15

    invoke-static {v5, v14, v15}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    .line 135
    goto :goto_1f3

    .line 127
    :pswitch_1cd
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v15

    invoke-static {v5, v14, v15}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    .line 130
    goto :goto_1f3

    .line 137
    :pswitch_1de
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-static {v5, v14}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v7

    .line 139
    instance-of v5, v7, Lgnu/math/IntNum;

    if-eqz v5, :cond_1f0

    const/4 v5, 0x4

    goto :goto_1f1

    :cond_1f0
    const/4 v5, 0x6

    :goto_1f1
    move v8, v5

    .line 141
    move v11, v8

    .line 144
    :goto_1f3
    move-wide v14, v1

    goto/16 :goto_2af

    .line 92
    .end local v1    # "l2":J
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v12    # "l1":J
    :pswitch_1f6
    const-wide/16 v25, 0x0

    move v1, v3

    .local v1, "i1":I
    move v2, v4

    .line 109
    .local v2, "i2":I
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 110
    .local v3, "l1":J
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v12

    .line 111
    .local v12, "l2":J
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v5, :pswitch_data_342

    .line 117
    div-long/2addr v3, v12

    goto :goto_20b

    .line 114
    :pswitch_209
    rem-long/2addr v3, v12

    .line 115
    nop

    .line 120
    :goto_20b
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 121
    move-wide v14, v12

    move-wide v12, v3

    move v3, v1

    move v4, v2

    goto/16 :goto_2af

    .line 95
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v3    # "l1":J
    .end local v12    # "l2":J
    :pswitch_215
    const-wide/16 v25, 0x0

    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 96
    .restart local v1    # "i1":I
    invoke-static/range {v24 .. v24}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    .line 97
    .restart local v2    # "i2":I
    iget v3, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v3, :pswitch_data_348

    .line 103
    div-int/2addr v1, v2

    goto :goto_228

    .line 100
    :pswitch_226
    rem-int/2addr v1, v2

    .line 101
    nop

    .line 106
    :goto_228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 107
    move v3, v1

    move v4, v2

    goto/16 :goto_2af

    .line 216
    .local v1, "num2":Lgnu/math/Numeric;
    .local v2, "num1":Lgnu/math/Numeric;
    .local v5, "bd2":Ljava/math/BigDecimal;
    .local v6, "mprec":I
    .local v12, "l1":J
    .local v14, "l2":J
    .local v16, "mcontext":Ljava/math/MathContext;
    .local v17, "mround":Ljava/math/RoundingMode;
    .restart local v19    # "bd1":Ljava/math/BigDecimal;
    .local v20, "d1":D
    .restart local v22    # "d2":D
    .local v27, "i1":I
    .restart local v29    # "i2":I
    :cond_230
    invoke-virtual {v2}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v3

    :goto_234
    return-object v3

    .line 217
    :cond_235
    invoke-virtual {v2, v1}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    .line 218
    .local v3, "numr":Lgnu/math/Numeric;
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move-object/from16 v30, v5

    const/16 v5, 0x8

    .end local v5    # "bd2":Ljava/math/BigDecimal;
    .local v30, "bd2":Ljava/math/BigDecimal;
    if-ne v4, v5, :cond_254

    .line 219
    move-object v4, v3

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    .line 220
    :cond_254
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v4, :pswitch_data_34e

    .line 233
    move-object v7, v3

    move-object/from16 v18, v17

    move/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v17, v30

    move-object/from16 v31, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v31

    goto :goto_2af

    .line 223
    :pswitch_269
    move-object v4, v3

    check-cast v4, Lgnu/math/RealNum;

    iget v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v7

    .line 224
    const/4 v4, 0x4

    move v5, v4

    .end local v8    # "code":I
    .local v5, "code":I
    move v11, v4

    .line 225
    move v8, v5

    move-object/from16 v18, v17

    move/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v17, v30

    move-object/from16 v31, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v31

    goto :goto_2af

    .line 227
    .end local v5    # "code":I
    .restart local v8    # "code":I
    :pswitch_285
    move-object v4, v3

    check-cast v4, Lgnu/math/RealNum;

    iget v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v7

    .line 228
    move-object/from16 v18, v17

    move/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v17, v30

    move-object/from16 v31, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v31

    goto :goto_2af

    .line 230
    :pswitch_29d
    invoke-virtual {v3}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v7

    .line 231
    move-object/from16 v18, v17

    move/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v17, v30

    move-object/from16 v31, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v31

    .line 236
    .end local v1    # "num2":Lgnu/math/Numeric;
    .end local v2    # "num1":Lgnu/math/Numeric;
    .end local v3    # "numr":Lgnu/math/Numeric;
    .end local v6    # "mprec":I
    .end local v12    # "l1":J
    .end local v14    # "l2":J
    .end local v16    # "mcontext":Ljava/math/MathContext;
    .end local v17    # "mround":Ljava/math/RoundingMode;
    .end local v19    # "bd1":Ljava/math/BigDecimal;
    .end local v20    # "d1":D
    .end local v22    # "d2":D
    .end local v27    # "i1":I
    .end local v29    # "i2":I
    .end local v30    # "bd2":Ljava/math/BigDecimal;
    :goto_2af
    if-eq v8, v11, :cond_2e2

    .line 238
    packed-switch v8, :pswitch_data_358

    :pswitch_2b4
    goto :goto_2e2

    .line 250
    :pswitch_2b5
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 251
    .end local v7    # "result":Ljava/lang/Number;
    .local v1, "result":Ljava/lang/Number;
    move-object v7, v1

    goto :goto_2e2

    .line 247
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v7    # "result":Ljava/lang/Number;
    :pswitch_2bf
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 248
    .end local v7    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v7, v1

    goto :goto_2e2

    .line 253
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v7    # "result":Ljava/lang/Number;
    :pswitch_2c9
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v7, v1

    .end local v7    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    goto :goto_2e2

    .line 244
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v7    # "result":Ljava/lang/Number;
    :pswitch_2cf
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 245
    .end local v7    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v7, v1

    goto :goto_2e2

    .line 241
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v7    # "result":Ljava/lang/Number;
    :pswitch_2d9
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 242
    .end local v7    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v7, v1

    .line 57
    .end local v1    # "result":Ljava/lang/Number;
    .end local v10    # "code2":I
    .end local v11    # "scode":I
    .end local v24    # "arg2":Ljava/lang/Object;
    .restart local v7    # "result":Ljava/lang/Number;
    :cond_2e2
    :goto_2e2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v28

    const/4 v5, 0x1

    goto/16 :goto_38

    .line 257
    .end local v9    # "i":I
    .end local v28    # "len":I
    .local v2, "len":I
    :cond_2eb
    return-object v7

    :pswitch_data_2ec
    .packed-switch 0x4
        :pswitch_5b
        :pswitch_5b
    .end packed-switch

    :pswitch_data_2f4
    .packed-switch 0x1
        :pswitch_215
        :pswitch_1f6
        :pswitch_8c
        :pswitch_1b3
        :pswitch_145
        :pswitch_8c
        :pswitch_8c
        :pswitch_8c
        :pswitch_b9
    .end packed-switch

    :pswitch_data_30a
    .packed-switch 0x4
        :pswitch_125
        :pswitch_125
        :pswitch_110
        :pswitch_fc
        :pswitch_da
    .end packed-switch

    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_176
        :pswitch_171
        :pswitch_16c
        :pswitch_159
        :pswitch_15c
    .end packed-switch

    :pswitch_data_326
    .packed-switch 0x4
        :pswitch_19e
        :pswitch_187
        :pswitch_199
        :pswitch_18d
        :pswitch_188
    .end packed-switch

    :pswitch_data_334
    .packed-switch 0x4
        :pswitch_1de
        :pswitch_1bb
        :pswitch_1cd
        :pswitch_1cd
        :pswitch_1bc
    .end packed-switch

    :pswitch_data_342
    .packed-switch 0x8
        :pswitch_209
    .end packed-switch

    :pswitch_data_348
    .packed-switch 0x8
        :pswitch_226
    .end packed-switch

    :pswitch_data_34e
    .packed-switch 0x5
        :pswitch_29d
        :pswitch_285
        :pswitch_269
    .end packed-switch

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_2d9
        :pswitch_2cf
        :pswitch_2c9
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2bf
        :pswitch_2b5
    .end packed-switch
.end method

.method public getRoundingMode()I
    .registers 2

    .line 16
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return v0
.end method

.method public numArgs()I
    .registers 3

    .line 262
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/16 v0, -0xfff

    goto :goto_a

    :cond_8
    const/16 v0, 0x2002

    :goto_a
    return v0
.end method

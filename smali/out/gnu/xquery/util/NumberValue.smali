.class public Lgnu/xquery/util/NumberValue;
.super Lgnu/mapping/Procedure1;
.source "NumberValue.java"


# static fields
.field public static final NaN:Ljava/lang/Double;

.field public static final numberValue:Lgnu/xquery/util/NumberValue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lgnu/xquery/util/NumberValue;

    invoke-direct {v0}, Lgnu/xquery/util/NumberValue;-><init>()V

    sput-object v0, Lgnu/xquery/util/NumberValue;->numberValue:Lgnu/xquery/util/NumberValue;

    .line 16
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static abs(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "value"    # Ljava/lang/Object;

    .line 89
    if-eqz p0, :cond_69

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_69

    .line 91
    :cond_7
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    .line 92
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_30

    .line 94
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    .line 95
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 96
    .local v1, "x":D
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 97
    .local v3, "bits":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_21

    .line 98
    return-object v0

    .line 99
    :cond_21
    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v3, v5

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5

    .line 107
    .end local v0    # "d":Ljava/lang/Double;
    .end local v1    # "x":D
    .end local v3    # "bits":J
    :cond_30
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4f

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    .line 110
    .local v0, "d":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 111
    .local v1, "x":F
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 112
    .local v2, "bits":I
    if-ltz v2, :cond_42

    .line 113
    return-object v0

    .line 114
    :cond_42
    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 115
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 117
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 122
    .end local v0    # "d":Ljava/lang/Float;
    .end local v1    # "x":F
    .end local v2    # "bits":I
    :cond_4f
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_61

    .line 124
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    .line 125
    .local v0, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-gez v1, :cond_60

    .line 126
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 127
    :cond_60
    return-object v0

    .line 129
    .end local v0    # "dec":Ljava/math/BigDecimal;
    :cond_61
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0}, Lgnu/math/Numeric;->abs()Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 90
    :cond_69
    :goto_69
    return-object p0
.end method

.method public static ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "val"    # Ljava/lang/Object;

    .line 151
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 152
    .local v0, "value":Ljava/lang/Number;
    if-nez v0, :cond_7

    .line 153
    return-object p0

    .line 154
    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1b

    .line 155
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 156
    :cond_1b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_31

    .line 157
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 158
    :cond_31
    instance-of v1, v0, Ljava/math/BigDecimal;

    const/4 v2, 0x2

    if-eqz v1, :cond_49

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 161
    .local v1, "dec":Ljava/math/BigDecimal;
    sget-object v3, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 163
    .end local v1    # "dec":Ljava/math/BigDecimal;
    :cond_49
    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    return-object v1
.end method

.method public static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "val"    # Ljava/lang/Object;

    .line 134
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 135
    .local v0, "value":Ljava/lang/Number;
    if-nez v0, :cond_7

    .line 136
    return-object p0

    .line 137
    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1b

    .line 138
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 139
    :cond_1b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_31

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 141
    :cond_31
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_49

    .line 143
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 144
    .local v1, "dec":Ljava/math/BigDecimal;
    sget-object v2, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 146
    .end local v1    # "dec":Ljava/math/BigDecimal;
    :cond_49
    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    return-object v1
.end method

.method public static isNaN(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 20
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_c

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_c

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1b

    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public static numberCast(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;

    .line 43
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_45

    if-nez p0, :cond_7

    goto :goto_45

    .line 45
    :cond_7
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2b

    .line 47
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 48
    .local v0, "vals":Lgnu/mapping/Values;
    invoke-virtual {v0}, Lgnu/mapping/Values;->startPos()I

    move-result v1

    .line 49
    .local v1, "ipos":I
    const/4 v2, 0x0

    .line 50
    .local v2, "count":I
    :goto_13
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    move v1, v3

    if-eqz v3, :cond_2b

    .line 52
    if-gtz v2, :cond_23

    .line 54
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object p0

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 53
    :cond_23
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "non-singleton sequence cast to number"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    .end local v0    # "vals":Lgnu/mapping/Values;
    .end local v1    # "ipos":I
    .end local v2    # "count":I
    :cond_2b
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_38

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_34

    goto :goto_38

    .line 60
    :cond_34
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 59
    :cond_38
    :goto_38
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 44
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return-object v0
.end method

.method public static numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 67
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_24

    .line 79
    :cond_d
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_21

    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_19

    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_21

    .line 81
    :cond_19
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .local v0, "d":D
    goto :goto_33

    .line 83
    .end local v0    # "d":D
    :cond_21
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .restart local v0    # "d":D
    goto :goto_33

    .line 71
    .end local v0    # "d":D
    :cond_24
    :goto_24
    :try_start_24
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    return-object v0

    .line 74
    :catchall_2f
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/Throwable;
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 77
    .local v0, "d":D
    nop

    .line 84
    :goto_33
    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static round(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "arg"    # Ljava/lang/Object;

    .line 168
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/Number;
    if-nez v0, :cond_7

    .line 170
    return-object p0

    .line 171
    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3b

    .line 173
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 174
    .local v8, "val":D
    cmpl-double v1, v8, v4

    if-ltz v1, :cond_31

    cmpg-double v1, v8, v6

    if-gtz v1, :cond_31

    cmpg-double v1, v8, v6

    if-ltz v1, :cond_2e

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_31

    .line 176
    :cond_2e
    const-wide/high16 v1, -0x8000000000000000L

    .end local v8    # "val":D
    .local v1, "val":D
    goto :goto_36

    .line 178
    .end local v1    # "val":D
    .restart local v8    # "val":D
    :cond_31
    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 179
    .end local v8    # "val":D
    .restart local v1    # "val":D
    :goto_36
    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 181
    .end local v1    # "val":D
    :cond_3b
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6d

    .line 183
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 184
    .local v1, "val":F
    float-to-double v8, v1

    cmpl-double v10, v8, v4

    if-ltz v10, :cond_5e

    float-to-double v4, v1

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_5e

    float-to-double v4, v1

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_5b

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-gez v4, :cond_5e

    .line 186
    :cond_5b
    const/high16 v1, -0x80000000

    goto :goto_68

    .line 188
    :cond_5e
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 189
    :goto_68
    invoke-static {v1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 191
    .end local v1    # "val":F
    :cond_6d
    instance-of v1, v0, Ljava/math/BigDecimal;

    const/4 v2, 0x4

    if-eqz v1, :cond_8d

    .line 193
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 194
    .local v1, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    if-ltz v3, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x5

    .line 196
    .local v2, "mode":I
    :goto_7d
    sget-object v3, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 199
    .end local v1    # "dec":Ljava/math/BigDecimal;
    .end local v2    # "mode":I
    :cond_8d
    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    return-object v1
.end method

.method public static roundHalfToEven(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 252
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NumberValue;->roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "precision"    # Lgnu/math/IntNum;

    .line 204
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 205
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_7

    .line 206
    return-object p0

    .line 207
    :cond_7
    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_f

    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_29

    .line 209
    :cond_f
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 210
    .local v1, "v":D
    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_60

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_60

    .line 213
    .end local v1    # "v":D
    :cond_29
    sget-object v1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, v0}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    .line 214
    .local v1, "dec":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result v2

    .line 240
    .local v2, "prec":I
    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 241
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_47

    .line 242
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 243
    :cond_47
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_54

    .line 244
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-static {v3}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 245
    :cond_54
    instance-of v3, v0, Lgnu/math/IntNum;

    if-eqz v3, :cond_5f

    .line 246
    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v3, v1}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 247
    :cond_5f
    return-object v1

    .line 211
    .end local v2    # "prec":I
    .local v1, "v":D
    :cond_60
    :goto_60
    return-object p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 27
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_c

    .line 31
    :try_start_6
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return-object v0

    .line 33
    :catchall_b
    move-exception v0

    .line 38
    :cond_c
    sget-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-object v0
.end method

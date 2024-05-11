.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field static typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

.field static typeRealNum:Lgnu/kawa/lispexpr/LangObjType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 109
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 110
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 111
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    .line 112
    const-string v0, "gnu.math.Numeric"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 213
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_8

    .line 214
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 215
    :cond_8
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_15

    .line 216
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p0

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 217
    :cond_15
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_30

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_30

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_30

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_26

    goto :goto_30

    .line 220
    :cond_26
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 219
    :cond_30
    :goto_30
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_8

    .line 184
    move-object v0, p0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 185
    :cond_8
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_16

    .line 186
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 187
    :cond_16
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 178
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 173
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 163
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 202
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_8

    .line 203
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    return-object v0

    .line 204
    :cond_8
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_17

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 206
    :cond_17
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_23

    .line 207
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 208
    :cond_23
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 192
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 197
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 237
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    .line 238
    .local v0, "n":Lgnu/math/Numeric;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_b

    :cond_8
    move-object v1, p0

    check-cast v1, Lgnu/math/Numeric;

    :goto_b
    return-object v1
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 225
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_8

    .line 226
    move-object v0, p0

    check-cast v0, Lgnu/math/RatNum;

    return-object v0

    .line 227
    :cond_8
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_17

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 229
    :cond_17
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_23

    .line 230
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0

    .line 232
    :cond_23
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .registers 9
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "kind":I
    instance-of v1, p0, Lgnu/bytecode/PrimType;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_31

    .line 120
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    .local v1, "sig":C
    const/16 v7, 0x56

    if-eq v1, v7, :cond_30

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_30

    const/16 v7, 0x43

    if-ne v1, v7, :cond_20

    goto :goto_30

    .line 123
    :cond_20
    const/16 v6, 0x44

    if-ne v1, v6, :cond_25

    .line 124
    return v5

    .line 125
    :cond_25
    const/16 v5, 0x46

    if-ne v1, v5, :cond_2a

    .line 126
    return v4

    .line 127
    :cond_2a
    const/16 v4, 0x4a

    if-ne v1, v4, :cond_2f

    .line 128
    return v3

    .line 130
    :cond_2f
    return v2

    .line 122
    :cond_30
    :goto_30
    return v6

    .line 132
    .end local v1    # "sig":C
    :cond_31
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "tname":Ljava/lang/String;
    sget-object v7, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 134
    const/4 v2, 0x4

    return v2

    .line 135
    :cond_3f
    sget-object v7, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 136
    const/4 v2, 0x6

    return v2

    .line 137
    :cond_49
    sget-object v7, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 138
    const/16 v2, 0x9

    return v2

    .line 139
    :cond_54
    const-string v7, "java.lang.Double"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 140
    return v5

    .line 141
    :cond_5d
    const-string v5, "java.lang.Float"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 142
    return v4

    .line 143
    :cond_66
    const-string v4, "java.lang.Long"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 144
    return v3

    .line 145
    :cond_6f
    const-string v3, "java.lang.Integer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    const-string v3, "java.lang.Short"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    const-string v3, "java.lang.Byte"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    goto :goto_b3

    .line 149
    :cond_88
    const-string v2, "java.math.BigInteger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 150
    const/4 v2, 0x3

    return v2

    .line 151
    :cond_92
    const-string v2, "java.math.BigDecimal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 152
    const/4 v2, 0x5

    return v2

    .line 153
    :cond_9c
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 154
    const/16 v2, 0xa

    return v2

    .line 155
    :cond_a7
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 156
    const/16 v2, 0xb

    return v2

    .line 158
    :cond_b2
    return v6

    .line 148
    :cond_b3
    :goto_b3
    return v2
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 38
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_21

    .line 40
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_a

    .line 41
    const/4 v0, 0x4

    return v0

    .line 42
    :cond_a
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_10

    .line 43
    const/4 v0, 0x6

    return v0

    .line 44
    :cond_10
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_17

    .line 45
    const/16 v0, 0x9

    return v0

    .line 46
    :cond_17
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_1e

    .line 47
    const/16 v0, 0xa

    return v0

    .line 49
    :cond_1e
    const/16 v0, 0xb

    return v0

    .line 51
    :cond_21
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, -0x1

    if-eqz v0, :cond_55

    .line 53
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_53

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_53

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_33

    goto :goto_53

    .line 56
    :cond_33
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_39

    .line 57
    const/4 v0, 0x2

    return v0

    .line 58
    :cond_39
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3f

    .line 59
    const/4 v0, 0x7

    return v0

    .line 60
    :cond_3f
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_46

    .line 61
    const/16 v0, 0x8

    return v0

    .line 62
    :cond_46
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4c

    .line 63
    const/4 v0, 0x3

    return v0

    .line 64
    :cond_4c
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_52

    .line 65
    const/4 v0, 0x5

    return v0

    .line 67
    :cond_52
    return v1

    .line 55
    :cond_53
    :goto_53
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_55
    return v1
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "code"    # I

    .line 282
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_80

    .line 337
    .local v0, "i":I
    .local v1, "d":D
    .local v3, "l":J
    .local v5, "f":F
    move-object v6, p0

    check-cast v6, Ljava/lang/Number;

    return-object v6

    .line 333
    :pswitch_d
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    return-object v6

    .line 335
    :pswitch_12
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    check-cast v6, Lgnu/math/RealNum;

    return-object v6

    .line 329
    :pswitch_19
    instance-of v6, p0, Lgnu/math/DFloNum;

    if-eqz v6, :cond_1e

    .line 330
    return-object p0

    .line 331
    :cond_1e
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    return-object v6

    .line 282
    .end local v1    # "d":D
    .end local v3    # "l":J
    .end local v5    # "f":F
    :pswitch_27
    move-wide v1, v3

    .local v1, "l":J
    move v3, v5

    .line 320
    .local v3, "f":F
    instance-of v4, p0, Ljava/lang/Double;

    if-eqz v4, :cond_2e

    .line 321
    return-object p0

    .line 322
    :cond_2e
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v4

    .line 324
    .local v4, "d":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6

    .line 282
    .end local v1    # "l":J
    .end local v3    # "f":F
    .end local v4    # "d":D
    :pswitch_37
    move-wide v1, v3

    .line 311
    .restart local v1    # "l":J
    instance-of v3, p0, Ljava/lang/Float;

    if-eqz v3, :cond_3d

    .line 312
    return-object p0

    .line 313
    :cond_3d
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v3

    .line 315
    .restart local v3    # "f":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4

    .line 282
    .end local v1    # "l":J
    .end local v3    # "f":F
    :pswitch_46
    move-wide v1, v3

    .line 309
    .restart local v1    # "l":J
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v3

    return-object v3

    .line 282
    .end local v1    # "l":J
    :pswitch_4c
    move-wide v1, v3

    .line 307
    .restart local v1    # "l":J
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 282
    .end local v1    # "l":J
    :pswitch_52
    move-wide v1, v3

    .line 305
    .restart local v1    # "l":J
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 282
    .end local v1    # "l":J
    :pswitch_58
    move-wide v1, v3

    .line 303
    .restart local v1    # "l":J
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 294
    .end local v1    # "l":J
    :pswitch_5e
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_63

    .line 295
    return-object p0

    .line 296
    :cond_63
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 298
    .restart local v1    # "l":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 285
    .end local v0    # "i":I
    .end local v1    # "l":J
    :pswitch_6f
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_74

    .line 286
    return-object p0

    .line 287
    :cond_74
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 289
    .restart local v0    # "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_4c
        :pswitch_46
        :pswitch_37
        :pswitch_27
        :pswitch_19
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method public static isExact(Ljava/lang/Number;)Z
    .registers 2
    .param p0, "num"    # Ljava/lang/Number;

    .line 343
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_c

    .line 344
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0}, Lgnu/math/Numeric;->isExact()Z

    move-result v0

    return v0

    .line 345
    :cond_c
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1a

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1a

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .registers 2
    .param p0, "kind"    # I

    .line 75
    packed-switch p0, :pswitch_data_30

    .line 100
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 98
    :pswitch_6
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    return-object v0

    .line 96
    :pswitch_9
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object v0

    .line 94
    :pswitch_c
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object v0

    .line 92
    :pswitch_f
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 90
    :pswitch_12
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 88
    :pswitch_15
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object v0

    .line 86
    :pswitch_18
    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_1f
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    return-object v0

    .line 82
    :pswitch_22
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_29
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 78
    :pswitch_2c
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_22
        :pswitch_1f
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static toExact(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3
    .param p0, "num"    # Ljava/lang/Number;

    .line 351
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_c

    .line 352
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0}, Lgnu/math/Numeric;->toExact()Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 353
    :cond_c
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1a

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1a

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_19

    goto :goto_1a

    .line 357
    :cond_19
    return-object p0

    .line 355
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static toInexact(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3
    .param p0, "num"    # Ljava/lang/Number;

    .line 362
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_c

    .line 363
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 364
    :cond_c
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_22

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_22

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_19

    goto :goto_22

    .line 368
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 366
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/Object;
    .param p1, "radix"    # I

    .line 247
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 248
    .local v0, "code":I
    const/16 v1, 0xa

    packed-switch v0, :pswitch_data_58

    :pswitch_9
    goto :goto_4f

    .line 259
    :pswitch_a
    if-ne p1, v1, :cond_15

    .line 260
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 263
    :cond_15
    :pswitch_15
    if-ne p1, v1, :cond_20

    .line 264
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    :cond_20
    :pswitch_20
    if-ne p1, v1, :cond_4f

    .line 269
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 257
    :pswitch_2b
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    :pswitch_34
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :pswitch_3d
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 251
    :pswitch_46
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
    :cond_4f
    :goto_4f
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_a
        :pswitch_9
        :pswitch_15
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

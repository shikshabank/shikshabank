.class public Lgnu/kawa/xml/XIntegerType;
.super Lgnu/kawa/xml/XDataType;
.source "XIntegerType.java"


# static fields
.field public static final byteType:Lgnu/kawa/xml/XIntegerType;

.field public static final intType:Lgnu/kawa/xml/XIntegerType;

.field public static final integerType:Lgnu/kawa/xml/XIntegerType;

.field public static final longType:Lgnu/kawa/xml/XIntegerType;

.field public static final negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

.field public static final shortType:Lgnu/kawa/xml/XIntegerType;

.field static typeIntNum:Lgnu/bytecode/ClassType;

.field public static final unsignedByteType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedIntType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedLongType:Lgnu/kawa/xml/XIntegerType;

.field public static final unsignedShortType:Lgnu/kawa/xml/XIntegerType;


# instance fields
.field isUnsignedType:Z

.field public final maxValue:Lgnu/math/IntNum;

.field public final minValue:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 23
    const-string v0, "gnu.math.IntNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    .line 32
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    sget-object v3, Lgnu/kawa/xml/XIntegerType;->decimalType:Lgnu/kawa/xml/XDataType;

    const-string v2, "integer"

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    .line 35
    new-instance v9, Lgnu/kawa/xml/XIntegerType;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v6

    const-string v2, "long"

    const/16 v4, 0x8

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v9, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    .line 38
    new-instance v1, Lgnu/kawa/xml/XIntegerType;

    const/high16 v2, -0x80000000

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    const v2, 0x7fffffff

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    const-string v8, "int"

    const/16 v10, 0x9

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v1, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    .line 42
    new-instance v4, Lgnu/kawa/xml/XIntegerType;

    const/16 v2, -0x8000

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v14

    const/16 v2, 0x7fff

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    const-string v11, "short"

    const/16 v13, 0xa

    move-object v10, v4

    move-object v12, v1

    invoke-direct/range {v10 .. v15}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v4, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    .line 46
    new-instance v1, Lgnu/kawa/xml/XIntegerType;

    const/16 v2, -0x80

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    const/16 v2, 0x7f

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    const-string v3, "byte"

    const/16 v5, 0xb

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v1, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    .line 50
    new-instance v10, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    const-string v2, "nonPositiveInteger"

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v10, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 54
    new-instance v1, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v13

    const-string v9, "negativeInteger"

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v1, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 58
    new-instance v8, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const-string v2, "nonNegativeInteger"

    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v8, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    .line 62
    new-instance v11, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    const-string v0, "18446744073709551615"

    invoke-static {v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v7

    const-string v3, "unsignedLong"

    const/16 v5, 0xd

    move-object v2, v11

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v11, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    .line 66
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v13

    const-wide v1, 0xffffffffL

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v14

    const-string v10, "unsignedInt"

    const/16 v12, 0xe

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    .line 70
    new-instance v3, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v16

    const v1, 0xffff

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v17

    const-string v13, "unsignedShort"

    const/16 v15, 0xf

    move-object v12, v3

    move-object v14, v0

    invoke-direct/range {v12 .. v17}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v3, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    .line 74
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    const/16 v1, 0xff

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    const-string v2, "unsignedByte"

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    .line 78
    new-instance v0, Lgnu/kawa/xml/XIntegerType;

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v6

    const-string v3, "positiveInteger"

    const/16 v5, 0x11

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    sput-object v0, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "base"    # Lgnu/kawa/xml/XDataType;
    .param p3, "typeCode"    # I
    .param p4, "min"    # Lgnu/math/IntNum;
    .param p5, "max"    # Lgnu/math/IntNum;

    .line 94
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->typeIntNum:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 95
    iput-object p4, p0, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    .line 96
    iput-object p5, p0, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    .line 97
    iput-object p2, p0, Lgnu/kawa/xml/XIntegerType;->baseType:Lgnu/kawa/xml/XDataType;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base"    # Lgnu/kawa/xml/XDataType;
    .param p3, "typeCode"    # I
    .param p4, "min"    # Lgnu/math/IntNum;
    .param p5, "max"    # Lgnu/math/IntNum;

    .line 87
    invoke-direct/range {p0 .. p5}, Lgnu/kawa/xml/XIntegerType;-><init>(Ljava/lang/Object;Lgnu/kawa/xml/XDataType;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 88
    const-string v0, "unsigned"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    .line 89
    return-void
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 137
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    .line 138
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_16

    :cond_12
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    :goto_16
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1b
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_27

    .line 141
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 142
    :cond_27
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_37

    .line 143
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 144
    :cond_37
    instance-of v0, p1, Lgnu/math/RealNum;

    const/4 v1, 0x3

    if-eqz v0, :cond_48

    .line 145
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 146
    :cond_48
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5c

    .line 147
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 148
    :cond_5c
    invoke-super {p0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Lgnu/math/IntNum;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 103
    return v1

    .line 104
    :cond_6
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_c

    .line 105
    return v2

    .line 106
    :cond_c
    instance-of v3, p1, Lgnu/kawa/xml/XInteger;

    if-eqz v3, :cond_17

    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/XInteger;

    invoke-virtual {v0}, Lgnu/kawa/xml/XInteger;->getIntegerType()Lgnu/kawa/xml/XIntegerType;

    move-result-object v0

    .line 109
    .local v0, "objType":Lgnu/kawa/xml/XDataType;
    :cond_17
    :goto_17
    if-eqz v0, :cond_1f

    .line 111
    if-ne v0, p0, :cond_1c

    .line 112
    return v2

    .line 113
    :cond_1c
    iget-object v0, v0, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    goto :goto_17

    .line 115
    :cond_1f
    return v1
.end method

.method public isUnsignedType()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lgnu/kawa/xml/XIntegerType;->isUnsignedType:Z

    return v0
.end method

.method public valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 5
    .param p1, "value"    # Lgnu/math/IntNum;

    .line 125
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    if-eq p0, v0, :cond_44

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->minValue:Lgnu/math/IntNum;

    if-eqz v0, :cond_e

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-ltz v0, :cond_19

    :cond_e
    iget-object v0, p0, Lgnu/kawa/xml/XIntegerType;->maxValue:Lgnu/math/IntNum;

    if-eqz v0, :cond_3e

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_3e

    .line 129
    :cond_19
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/xml/XIntegerType;->name:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3e
    :goto_3e
    new-instance v0, Lgnu/kawa/xml/XInteger;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/xml/XInteger;-><init>(Lgnu/math/IntNum;Lgnu/kawa/xml/XIntegerType;)V

    return-object v0

    .line 132
    :cond_44
    return-object p1
.end method

.method public valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/XIntegerType;->valueOf(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

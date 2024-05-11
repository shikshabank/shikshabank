.class public Lgnu/kawa/functions/IntegerFormat;
.super Lgnu/text/IntegerFormat;
.source "IntegerFormat.java"


# static fields
.field private static plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lgnu/text/IntegerFormat;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/IntegerFormat;
    .registers 1

    .line 20
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    if-nez v0, :cond_b

    .line 21
    new-instance v0, Lgnu/kawa/functions/IntegerFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    sput-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    .line 22
    :cond_b
    sget-object v0, Lgnu/kawa/functions/IntegerFormat;->plainDecimalFormat:Lgnu/kawa/functions/IntegerFormat;

    return-object v0
.end method

.method public static getInstance(IIIIII)Ljava/text/Format;
    .registers 8
    .param p0, "base"    # I
    .param p1, "minWidth"    # I
    .param p2, "padChar"    # I
    .param p3, "commaChar"    # I
    .param p4, "commaInterval"    # I
    .param p5, "flags"    # I

    .line 29
    const/4 v0, 0x1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_23

    .line 31
    if-ne p2, v1, :cond_21

    if-ne p2, v1, :cond_21

    if-ne p3, v1, :cond_21

    if-ne p4, v1, :cond_21

    .line 37
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 38
    .local v0, "seenColon":Z
    :goto_13
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1c

    .line 39
    invoke-static {v0}, Lgnu/text/RomanIntegerFormat;->getInstance(Z)Lgnu/text/RomanIntegerFormat;

    move-result-object v1

    return-object v1

    .line 41
    :cond_1c
    invoke-static {v0}, Lgnu/text/EnglishIntegerFormat;->getInstance(Z)Lgnu/text/EnglishIntegerFormat;

    move-result-object v1

    return-object v1

    .line 43
    .end local v0    # "seenColon":Z
    :cond_21
    const/16 p0, 0xa

    .line 45
    :cond_23
    if-ne p1, v1, :cond_26

    const/4 p1, 0x1

    .line 46
    :cond_26
    if-ne p2, v1, :cond_2a

    const/16 p2, 0x20

    .line 47
    :cond_2a
    if-ne p3, v1, :cond_2e

    const/16 p3, 0x2c

    .line 48
    :cond_2e
    if-ne p4, v1, :cond_31

    const/4 p4, 0x3

    .line 49
    :cond_31
    const/16 v1, 0xa

    if-ne p0, v1, :cond_49

    if-ne p1, v0, :cond_49

    const/16 v0, 0x20

    if-ne p2, v0, :cond_49

    const/16 v0, 0x2c

    if-ne p3, v0, :cond_49

    const/4 v0, 0x3

    if-ne p4, v0, :cond_49

    if-nez p5, :cond_49

    .line 52
    invoke-static {}, Lgnu/kawa/functions/IntegerFormat;->getInstance()Lgnu/kawa/functions/IntegerFormat;

    move-result-object v0

    return-object v0

    .line 53
    :cond_49
    new-instance v0, Lgnu/kawa/functions/IntegerFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/IntegerFormat;-><init>()V

    .line 54
    .local v0, "fmt":Lgnu/kawa/functions/IntegerFormat;
    iput p0, v0, Lgnu/kawa/functions/IntegerFormat;->base:I

    .line 55
    iput p1, v0, Lgnu/kawa/functions/IntegerFormat;->minWidth:I

    .line 56
    iput p2, v0, Lgnu/kawa/functions/IntegerFormat;->padChar:I

    .line 57
    iput p3, v0, Lgnu/kawa/functions/IntegerFormat;->commaChar:I

    .line 58
    iput p4, v0, Lgnu/kawa/functions/IntegerFormat;->commaInterval:I

    .line 59
    iput p5, v0, Lgnu/kawa/functions/IntegerFormat;->flags:I

    .line 60
    return-object v0
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "radix"    # I

    .line 65
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_11

    .line 66
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_11
    invoke-super {p0, p1, p2}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

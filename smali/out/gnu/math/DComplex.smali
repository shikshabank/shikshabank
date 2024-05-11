.class public Lgnu/math/DComplex;
.super Lgnu/math/Complex;
.source "DComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:D

.field real:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5
    .param p1, "real"    # D
    .param p3, "imag"    # D

    .line 24
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    .line 25
    iput-wide p1, p0, Lgnu/math/DComplex;->real:D

    .line 26
    iput-wide p3, p0, Lgnu/math/DComplex;->imag:D

    .line 27
    return-void
.end method

.method public static div(DDDD)Lgnu/math/DComplex;
    .registers 25
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D
    .param p4, "y_re"    # D
    .param p6, "y_im"    # D

    .line 211
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 212
    .local v0, "ar":D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 215
    .local v2, "ai":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1e

    .line 217
    div-double v6, p4, p6

    .line 218
    .local v6, "t":D
    mul-double v8, v6, v6

    add-double/2addr v8, v4

    mul-double v4, p6, v8

    .line 219
    .local v4, "d":D
    mul-double v8, p0, v6

    add-double v8, v8, p2

    .line 220
    .local v8, "nr":D
    mul-double v10, p2, v6

    sub-double v10, v10, p0

    .local v10, "ni":D
    goto :goto_2d

    .line 224
    .end local v4    # "d":D
    .end local v6    # "t":D
    .end local v8    # "nr":D
    .end local v10    # "ni":D
    :cond_1e
    div-double v6, p6, p4

    .line 225
    .restart local v6    # "t":D
    mul-double v8, v6, v6

    add-double/2addr v8, v4

    mul-double v4, p4, v8

    .line 226
    .restart local v4    # "d":D
    mul-double v8, p2, v6

    add-double v8, p0, v8

    .line 227
    .restart local v8    # "nr":D
    mul-double v10, p0, v6

    sub-double v10, p2, v10

    .line 229
    .restart local v10    # "ni":D
    :goto_2d
    new-instance v12, Lgnu/math/DComplex;

    div-double v13, v8, v4

    move-wide v15, v0

    .end local v0    # "ar":D
    .local v15, "ar":D
    div-double v0, v10, v4

    invoke-direct {v12, v13, v14, v0, v1}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v12
.end method

.method public static log(DD)Lgnu/math/Complex;
    .registers 10
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D

    .line 175
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 179
    .local v0, "h":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DComplex;->make(DD)Lgnu/math/Complex;

    move-result-object v2

    return-object v2
.end method

.method public static power(DDDD)Lgnu/math/DComplex;
    .registers 24
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D
    .param p4, "y_re"    # D
    .param p6, "y_im"    # D

    .line 160
    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 164
    .local v0, "h":D
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 165
    .local v2, "logr":D
    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 166
    .local v8, "t":D
    mul-double v10, v2, p4

    mul-double v12, p6, v8

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    .line 167
    .local v10, "r":D
    mul-double v12, p6, v2

    mul-double v14, p4, v8

    add-double/2addr v12, v14

    .line 168
    .end local v8    # "t":D
    .local v12, "t":D
    invoke-static {v10, v11, v12, v13}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v8

    return-object v8
.end method

.method public static sqrt(DD)Lgnu/math/Complex;
    .registers 16
    .param p0, "x_re"    # D
    .param p2, "x_im"    # D

    .line 235
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 240
    .local v0, "r":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_d

    .line 241
    move-wide v2, v0

    .local v2, "ni":D
    move-wide v4, v0

    .local v4, "nr":D
    goto :goto_38

    .line 242
    .end local v2    # "ni":D
    .end local v4    # "nr":D
    :cond_d
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, p0, v2

    if-lez v8, :cond_25

    .line 244
    add-double v2, v0, p0

    mul-double v2, v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 245
    .local v2, "nr":D
    div-double v6, p2, v2

    div-double v4, v6, v4

    move-wide v10, v2

    move-wide v2, v4

    move-wide v4, v10

    .local v4, "ni":D
    goto :goto_38

    .line 249
    .end local v2    # "nr":D
    .end local v4    # "ni":D
    :cond_25
    sub-double v8, v0, p0

    mul-double v8, v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 250
    .local v6, "ni":D
    cmpg-double v8, p2, v2

    if-gez v8, :cond_33

    .line 251
    neg-double v2, v6

    .end local v6    # "ni":D
    .local v2, "ni":D
    goto :goto_34

    .line 250
    .end local v2    # "ni":D
    .restart local v6    # "ni":D
    :cond_33
    move-wide v2, v6

    .line 252
    .end local v6    # "ni":D
    .restart local v2    # "ni":D
    :goto_34
    div-double v6, p2, v2

    div-double v4, v6, v4

    .line 254
    .local v4, "nr":D
    :goto_38
    new-instance v6, Lgnu/math/DComplex;

    invoke-direct {v6, v4, v5, v2, v3}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v6
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 13
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 116
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_37

    .line 118
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    .line 119
    .local v0, "yc":Lgnu/math/Complex;
    invoke-virtual {v0}, Lgnu/math/Complex;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    sget-object v2, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    if-ne v1, v2, :cond_2f

    .line 121
    new-instance v1, Lgnu/math/DComplex;

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    int-to-double v4, p2

    invoke-virtual {v0}, Lgnu/math/Complex;->reValue()D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lgnu/math/DComplex;->imag:D

    int-to-double v6, p2

    invoke-virtual {v0}, Lgnu/math/Complex;->imValue()D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v1

    .line 120
    :cond_2f
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "units mis-match"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "yc":Lgnu/math/Complex;
    :cond_37
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 11
    .param p1, "y"    # Ljava/lang/Object;

    .line 146
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_18

    .line 148
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    .line 149
    .local v0, "yc":Lgnu/math/Complex;
    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-virtual {v0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v1

    return-object v1

    .line 152
    .end local v0    # "yc":Lgnu/math/Complex;
    :cond_18
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public doubleImagValue()D
    .registers 3

    .line 32
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .line 30
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    if-eqz p1, :cond_39

    instance-of v1, p1, Lgnu/math/Complex;

    if-nez v1, :cond_8

    goto :goto_39

    .line 48
    :cond_8
    move-object v1, p1

    check-cast v1, Lgnu/math/Complex;

    .line 49
    .local v1, "y":Lgnu/math/Complex;
    invoke-virtual {v1}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v2

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v2, v3, :cond_38

    iget-wide v2, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1}, Lgnu/math/Complex;->reValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_38

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1}, Lgnu/math/Complex;->imValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_38

    const/4 v0, 0x1

    :cond_38
    return v0

    .line 47
    .end local v1    # "y":Lgnu/math/Complex;
    :cond_39
    :goto_39
    return v0
.end method

.method public im()Lgnu/math/RealNum;
    .registers 4

    .line 31
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->imag:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public isExact()Z
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 16
    .param p1, "y"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_30

    .line 131
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    .line 132
    .local v0, "yc":Lgnu/math/Complex;
    invoke-virtual {v0}, Lgnu/math/Complex;->unit()Lgnu/math/Unit;

    move-result-object v1

    sget-object v2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v1, v2, :cond_2b

    .line 134
    invoke-virtual {v0}, Lgnu/math/Complex;->reValue()D

    move-result-wide v1

    .line 135
    .local v1, "y_re":D
    invoke-virtual {v0}, Lgnu/math/Complex;->imValue()D

    move-result-wide v3

    .line 136
    .local v3, "y_im":D
    new-instance v5, Lgnu/math/DComplex;

    iget-wide v6, p0, Lgnu/math/DComplex;->real:D

    mul-double v8, v6, v1

    iget-wide v10, p0, Lgnu/math/DComplex;->imag:D

    mul-double v12, v10, v3

    sub-double/2addr v8, v12

    mul-double v6, v6, v3

    mul-double v10, v10, v1

    add-double/2addr v6, v10

    invoke-direct {v5, v8, v9, v6, v7}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v5

    .line 139
    .end local v1    # "y_re":D
    .end local v3    # "y_im":D
    :cond_2b
    invoke-static {p0, v0}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v1

    return-object v1

    .line 141
    .end local v0    # "yc":Lgnu/math/Complex;
    :cond_30
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public final neg()Lgnu/math/Numeric;
    .registers 6

    .line 112
    new-instance v0, Lgnu/math/DComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    neg-double v1, v1

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .registers 4

    .line 29
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 404
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->real:D

    .line 405
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DComplex;->imag:D

    .line 406
    return-void
.end method

.method public toExact()Lgnu/math/Complex;
    .registers 5

    .line 41
    new-instance v0, Lgnu/math/CComplex;

    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v1, v2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    iget-wide v2, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v2, v3}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lgnu/math/DComplex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 58
    const-string v0, ""

    .line 61
    .local v0, "prefix":Ljava/lang/String;
    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v1, v5

    if-nez v7, :cond_11

    .line 63
    const-string v0, "#i"

    const-string v1, "1/0"

    .local v1, "reString":Ljava/lang/String;
    goto :goto_2b

    .line 65
    .end local v1    # "reString":Ljava/lang/String;
    :cond_11
    cmpl-double v7, v1, v3

    if-nez v7, :cond_1a

    .line 67
    const-string v0, "#i"

    const-string v1, "-1/0"

    .restart local v1    # "reString":Ljava/lang/String;
    goto :goto_2b

    .line 69
    .end local v1    # "reString":Ljava/lang/String;
    :cond_1a
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 71
    const-string v0, "#i"

    const-string v1, "0/0"

    .restart local v1    # "reString":Ljava/lang/String;
    goto :goto_2b

    .line 74
    .end local v1    # "reString":Ljava/lang/String;
    :cond_25
    iget-wide v1, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "reString":Ljava/lang/String;
    :goto_2b
    iget-wide v7, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_49

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 80
    :cond_49
    iget-wide v7, p0, Lgnu/math/DComplex;->imag:D

    cmpl-double v2, v7, v5

    if-nez v2, :cond_54

    .line 82
    const-string v0, "#i"

    const-string v2, "+1/0i"

    .local v2, "imString":Ljava/lang/String;
    goto :goto_9d

    .line 84
    .end local v2    # "imString":Ljava/lang/String;
    :cond_54
    cmpl-double v2, v7, v3

    if-nez v2, :cond_5d

    .line 86
    const-string v0, "#i"

    const-string v2, "-1/0i"

    .restart local v2    # "imString":Ljava/lang/String;
    goto :goto_9d

    .line 88
    .end local v2    # "imString":Ljava/lang/String;
    :cond_5d
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 90
    const-string v0, "#i"

    const-string v2, "+0/0i"

    .restart local v2    # "imString":Ljava/lang/String;
    goto :goto_9d

    .line 94
    .end local v2    # "imString":Ljava/lang/String;
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lgnu/math/DComplex;->imag:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .restart local v2    # "imString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_9d

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_9d
    :goto_9d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lgnu/math/DComplex;->real:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v4, v9

    if-nez v6, :cond_ae

    move-object v4, v0

    goto :goto_bf

    :cond_ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .param p1, "radix"    # I

    .line 105
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 106
    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DComplex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-wide v0, p0, Lgnu/math/DComplex;->real:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 398
    iget-wide v0, p0, Lgnu/math/DComplex;->imag:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 399
    return-void
.end method

.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .registers 15
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;
    .param p2, "k"    # I

    .line 252
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    int-to-long v2, p2

    iget v4, p1, Lgnu/math/Duration;->months:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 255
    .local v0, "months":J
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v6, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    int-to-long v6, p2

    iget-wide v8, p1, Lgnu/math/Duration;->seconds:J

    mul-long v8, v8, v4

    iget v10, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long v6, v6, v8

    add-long/2addr v2, v6

    .line 259
    .local v2, "nanos":J
    new-instance v6, Lgnu/math/Duration;

    invoke-direct {v6}, Lgnu/math/Duration;-><init>()V

    .line 260
    .local v6, "d":Lgnu/math/Duration;
    long-to-int v7, v0

    iput v7, v6, Lgnu/math/Duration;->months:I

    .line 261
    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v7, v8

    iput-wide v7, v6, Lgnu/math/Duration;->seconds:J

    .line 262
    rem-long v4, v2, v4

    long-to-int v5, v4

    iput v5, v6, Lgnu/math/Duration;->nanos:I

    .line 263
    iget-object v4, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object v5, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v4, v5, :cond_43

    sget-object v5, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v4, v5, :cond_43

    .line 265
    iget-object v4, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v4, v6, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 266
    return-object v6

    .line 264
    :cond_43
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "cannot add these duration types"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .registers 7
    .param p0, "nanoSeconds"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 372
    if-nez p0, :cond_3

    .line 373
    return-void

    .line 374
    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 376
    .local v0, "pos":I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 378
    .local v1, "len":I
    add-int/lit8 v2, v0, 0x9

    sub-int/2addr v2, v1

    .line 379
    .local v2, "pad":I
    :goto_16
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x30

    if-ltz v2, :cond_20

    .line 380
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 381
    :cond_20
    add-int/lit8 v1, v0, 0x9

    .line 382
    :goto_22
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_30

    .line 383
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 384
    return-void

    .line 382
    :cond_30
    goto :goto_22
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .registers 11
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .line 287
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    iget v2, p1, Lgnu/math/Duration;->months:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 288
    .local v0, "months":J
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v6, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    mul-long v6, v6, v4

    iget v4, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 290
    .local v2, "nanos":J
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gez v7, :cond_27

    cmp-long v7, v2, v5

    if-gtz v7, :cond_27

    .line 291
    return v4

    .line 292
    :cond_27
    const/4 v7, 0x1

    cmp-long v8, v0, v5

    if-lez v8, :cond_31

    cmp-long v8, v2, v5

    if-ltz v8, :cond_31

    .line 293
    return v7

    .line 294
    :cond_31
    cmp-long v8, v0, v5

    if-nez v8, :cond_42

    .line 295
    cmp-long v8, v2, v5

    if-gez v8, :cond_3a

    goto :goto_41

    :cond_3a
    cmp-long v4, v2, v5

    if-lez v4, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    return v4

    .line 296
    :cond_42
    const/4 v4, -0x2

    return v4
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .registers 13
    .param p0, "dur1"    # Lgnu/math/Duration;
    .param p1, "dur2"    # Lgnu/math/Duration;

    .line 217
    iget v0, p0, Lgnu/math/Duration;->months:I

    .line 218
    .local v0, "months1":I
    iget v1, p1, Lgnu/math/Duration;->months:I

    .line 219
    .local v1, "months2":I
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    long-to-double v2, v2

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v5, v4

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v5

    .line 220
    .local v2, "sec1":D
    iget-wide v5, p1, Lgnu/math/Duration;->seconds:J

    long-to-double v5, v5

    int-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v9

    .line 221
    .local v5, "sec2":D
    const-wide/16 v7, 0x0

    if-nez v1, :cond_36

    cmpl-double v4, v5, v7

    if-eqz v4, :cond_2e

    goto :goto_36

    .line 222
    :cond_2e
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v7, "divide duration by zero"

    invoke-direct {v4, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_36
    :goto_36
    if-nez v1, :cond_3d

    .line 225
    if-nez v0, :cond_4f

    .line 226
    div-double v7, v2, v5

    return-wide v7

    .line 228
    :cond_3d
    cmpl-double v4, v5, v7

    if-nez v4, :cond_4f

    .line 230
    cmpl-double v4, v2, v7

    if-nez v4, :cond_4f

    .line 231
    int-to-double v7, v0

    int-to-double v9, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    return-wide v7

    .line 233
    :cond_4f
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v7, "divide of incompatible durations"

    invoke-direct {v4, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .registers 7
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .line 512
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget v1, p1, Lgnu/math/Duration;->months:I

    if-ne v0, v1, :cond_16

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    iget-wide v2, p1, Lgnu/math/Duration;->seconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    iget v1, p1, Lgnu/math/Duration;->nanos:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .registers 6
    .param p0, "months"    # I
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I
    .param p4, "unit"    # Lgnu/math/Unit;

    .line 24
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 25
    .local v0, "d":Lgnu/math/Duration;
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 26
    iput-wide p1, v0, Lgnu/math/Duration;->seconds:J

    .line 27
    iput p3, v0, Lgnu/math/Duration;->nanos:I

    .line 28
    iput-object p4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 29
    return-object v0
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .registers 4
    .param p0, "minutes"    # I

    .line 42
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 43
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 44
    mul-int/lit8 v1, p0, 0x3c

    int-to-long v1, v1

    iput-wide v1, v0, Lgnu/math/Duration;->seconds:J

    .line 45
    return-object v0
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .registers 3
    .param p0, "months"    # I

    .line 34
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 35
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 37
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .line 50
    invoke-static {p0, p1}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    .line 51
    .local v0, "d":Lgnu/math/Duration;
    if-eqz v0, :cond_7

    .line 53
    return-object v0

    .line 52
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 69
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 393
    move v0, p1

    .line 394
    .local v0, "i":I
    const-wide/16 v1, -0x1

    .line 395
    .local v1, "val":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, "len":I
    :goto_7
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    if-ge v0, v3, :cond_44

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 399
    .local v8, "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 400
    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 401
    .local v9, "dig":I
    if-gez v9, :cond_2e

    .line 403
    cmp-long v4, v1, v6

    if-gez v4, :cond_23

    shl-int/lit8 v4, p1, 0x10

    int-to-long v4, v4

    return-wide v4

    .line 404
    :cond_23
    const/16 v4, 0x20

    shl-long v4, v1, v4

    shl-int/lit8 v6, v0, 0x10

    int-to-long v6, v6

    or-long/2addr v4, v6

    int-to-long v6, v8

    or-long/2addr v4, v6

    return-wide v4

    .line 406
    :cond_2e
    cmp-long v10, v1, v6

    if-gez v10, :cond_34

    int-to-long v6, v9

    goto :goto_3a

    :cond_34
    const-wide/16 v6, 0xa

    mul-long v6, v6, v1

    int-to-long v10, v9

    add-long/2addr v6, v10

    :goto_3a
    move-wide v1, v6

    .line 407
    const-wide/32 v6, 0x7fffffff

    cmp-long v10, v1, v6

    if-lez v10, :cond_43

    .line 408
    return-wide v4

    .line 409
    .end local v8    # "ch":C
    .end local v9    # "dig":I
    :cond_43
    goto :goto_7

    .line 410
    :cond_44
    cmp-long v8, v1, v6

    if-gez v8, :cond_4b

    shl-int/lit8 v4, p1, 0x10

    int-to-long v4, v4

    :cond_4b
    return-wide v4
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .registers 12
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # D

    .line 271
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_57

    .line 273
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    .line 274
    .local v0, "months":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 276
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    .line 277
    .local v2, "nanos":D
    new-instance v4, Lgnu/math/Duration;

    invoke-direct {v4}, Lgnu/math/Duration;-><init>()V

    .line 278
    .local v4, "d":Lgnu/math/Duration;
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lgnu/math/Duration;->months:I

    .line 279
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double v7, v2, v5

    double-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v4, Lgnu/math/Duration;->seconds:J

    .line 280
    rem-double v5, v2, v5

    double-to-int v5, v5

    iput v5, v4, Lgnu/math/Duration;->nanos:I

    .line 281
    iget-object v5, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v5, v4, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 282
    return-object v4

    .line 275
    .end local v2    # "nanos":D
    .end local v4    # "d":Lgnu/math/Duration;
    :cond_4f
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow/NaN when multiplying a duration"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v0    # "months":D
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot multiply general duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .registers 20
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .line 77
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local p0    # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 81
    .local v3, "len":I
    if-ge v2, v3, :cond_19

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_19

    .line 83
    const/4 v4, 0x1

    .line 84
    .local v4, "negative":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 87
    .end local v4    # "negative":Z
    :cond_19
    const/4 v4, 0x0

    .line 88
    .restart local v4    # "negative":Z
    :goto_1a
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    if-ge v5, v3, :cond_153

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_29

    goto/16 :goto_153

    .line 90
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 91
    const/4 v5, 0x0

    .local v5, "months":I
    const/4 v7, 0x0

    .line 92
    .local v7, "nanos":I
    const-wide/16 v8, 0x0

    .line 93
    .local v8, "seconds":J
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 94
    .local v10, "part":J
    long-to-int v12, v10

    shr-int/lit8 v2, v12, 0x10

    .line 95
    long-to-int v12, v10

    int-to-char v12, v12

    .line 96
    .local v12, "ch":C
    sget-object v13, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    const/16 v14, 0x59

    const/16 v15, 0x4d

    if-ne v0, v13, :cond_45

    if-eq v12, v14, :cond_44

    if-ne v12, v15, :cond_45

    .line 97
    :cond_44
    return-object v6

    .line 98
    :cond_45
    const/16 v13, 0x20

    if-ne v12, v14, :cond_59

    .line 100
    move v14, v7

    .end local v7    # "nanos":I
    .local v14, "nanos":I
    shr-long v6, v10, v13

    long-to-int v7, v6

    mul-int/lit8 v5, v7, 0xc

    .line 101
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 102
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 103
    long-to-int v6, v10

    int-to-char v12, v6

    goto :goto_5a

    .line 98
    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :cond_59
    move v14, v7

    .line 105
    .end local v7    # "nanos":I
    .restart local v14    # "nanos":I
    :goto_5a
    if-ne v12, v15, :cond_6b

    .line 107
    int-to-long v6, v5

    shr-long v16, v10, v13

    add-long v6, v6, v16

    long-to-int v5, v6

    .line 108
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 109
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 110
    long-to-int v6, v10

    int-to-char v12, v6

    .line 112
    :cond_6b
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_73

    if-eq v2, v3, :cond_73

    .line 113
    const/4 v6, 0x0

    return-object v6

    .line 114
    :cond_73
    const/16 v6, 0x44

    if-ne v12, v6, :cond_8d

    .line 116
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_7d

    .line 117
    const/4 v6, 0x0

    return-object v6

    .line 118
    :cond_7d
    shr-long v6, v10, v13

    long-to-int v7, v6

    int-to-long v6, v7

    const-wide/32 v16, 0x15180

    mul-long v8, v6, v16

    .line 119
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 120
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 122
    :cond_8d
    shl-int/lit8 v6, v2, 0x10

    int-to-long v6, v6

    cmp-long v16, v10, v6

    if-eqz v16, :cond_96

    .line 123
    const/4 v6, 0x0

    return-object v6

    .line 124
    :cond_96
    if-ne v2, v3, :cond_9b

    move v7, v14

    goto/16 :goto_13a

    .line 128
    :cond_9b
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_151

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_a9

    goto/16 :goto_151

    .line 132
    :cond_a9
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_af

    .line 133
    const/4 v6, 0x0

    return-object v6

    .line 134
    :cond_af
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 135
    .end local v10    # "part":J
    .local v6, "part":J
    long-to-int v10, v6

    int-to-char v10, v10

    .line 136
    .end local v12    # "ch":C
    .local v10, "ch":C
    const/16 v11, 0x48

    if-ne v10, v11, :cond_c9

    .line 138
    shr-long v11, v6, v13

    long-to-int v12, v11

    mul-int/lit16 v12, v12, 0xe10

    int-to-long v11, v12

    add-long/2addr v8, v11

    .line 139
    long-to-int v11, v6

    shr-int/lit8 v2, v11, 0x10

    .line 140
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 141
    long-to-int v11, v6

    int-to-char v10, v11

    .line 143
    :cond_c9
    if-ne v10, v15, :cond_de

    .line 145
    shr-long v11, v6, v13

    long-to-int v12, v11

    mul-int/lit8 v12, v12, 0x3c

    int-to-long v11, v12

    add-long/2addr v8, v11

    .line 146
    long-to-int v11, v6

    shr-int/lit8 v2, v11, 0x10

    .line 147
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 148
    long-to-int v11, v6

    int-to-char v10, v11

    move v12, v10

    move-wide v10, v6

    goto :goto_e0

    .line 143
    :cond_de
    move v12, v10

    move-wide v10, v6

    .line 150
    .end local v6    # "part":J
    .local v10, "part":J
    .restart local v12    # "ch":C
    :goto_e0
    const/16 v6, 0x2e

    const/16 v7, 0x53

    if-eq v12, v7, :cond_e8

    if-ne v12, v6, :cond_f0

    .line 152
    :cond_e8
    shr-long v6, v10, v13

    long-to-int v7, v6

    int-to-long v6, v7

    add-long/2addr v8, v6

    .line 153
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 155
    :cond_f0
    const/16 v6, 0x2e

    if-ne v12, v6, :cond_139

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_139

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_139

    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "nfrac":I
    :goto_105
    const/16 v13, 0x9

    if-ge v2, v3, :cond_12a

    .line 161
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "pos":I
    .local v15, "pos":I
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 162
    invoke-static {v12, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 163
    .local v2, "dig":I
    if-gez v2, :cond_118

    .line 164
    move v7, v14

    move v2, v15

    goto :goto_12b

    .line 165
    :cond_118
    if-ge v6, v13, :cond_11f

    .line 166
    mul-int/lit8 v13, v14, 0xa

    add-int/2addr v13, v2

    move v14, v13

    .end local v14    # "nanos":I
    .local v13, "nanos":I
    goto :goto_126

    .line 167
    .end local v13    # "nanos":I
    .restart local v14    # "nanos":I
    :cond_11f
    if-ne v6, v13, :cond_126

    const/4 v13, 0x5

    if-lt v2, v13, :cond_126

    .line 168
    add-int/lit8 v14, v14, 0x1

    .line 159
    .end local v2    # "dig":I
    :cond_126
    :goto_126
    add-int/lit8 v6, v6, 0x1

    move v2, v15

    goto :goto_105

    .end local v15    # "pos":I
    .local v2, "pos":I
    :cond_12a
    move v7, v14

    .line 170
    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :goto_12b
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "nfrac":I
    .local v14, "nfrac":I
    if-ge v6, v13, :cond_133

    .line 171
    mul-int/lit8 v7, v7, 0xa

    move v6, v14

    goto :goto_12b

    .line 172
    :cond_133
    const/16 v6, 0x53

    if-eq v12, v6, :cond_13a

    .line 173
    const/4 v6, 0x0

    return-object v6

    .line 176
    .end local v7    # "nanos":I
    .local v14, "nanos":I
    :cond_139
    move v7, v14

    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :cond_13a
    :goto_13a
    if-eq v2, v3, :cond_13e

    .line 177
    const/4 v6, 0x0

    return-object v6

    .line 178
    :cond_13e
    new-instance v6, Lgnu/math/Duration;

    invoke-direct {v6}, Lgnu/math/Duration;-><init>()V

    .line 179
    .local v6, "d":Lgnu/math/Duration;
    if-eqz v4, :cond_148

    .line 181
    neg-int v5, v5

    .line 182
    neg-long v8, v8

    .line 183
    neg-int v7, v7

    .line 185
    :cond_148
    iput v5, v6, Lgnu/math/Duration;->months:I

    .line 186
    iput-wide v8, v6, Lgnu/math/Duration;->seconds:J

    .line 187
    iput v7, v6, Lgnu/math/Duration;->nanos:I

    .line 188
    iput-object v0, v6, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 189
    return-object v6

    .line 129
    .end local v6    # "d":Lgnu/math/Duration;
    .end local v7    # "nanos":I
    .restart local v14    # "nanos":I
    :cond_151
    :goto_151
    const/4 v6, 0x0

    return-object v6

    .line 89
    .end local v5    # "months":I
    .end local v8    # "seconds":J
    .end local v10    # "part":J
    .end local v12    # "ch":C
    .end local v14    # "nanos":I
    :cond_153
    :goto_153
    return-object v6
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 5
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 194
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_c

    .line 195
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0, p2}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 196
    :cond_c
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    .line 197
    move-object v1, p1

    check-cast v1, Lgnu/math/DateTime;

    invoke-static {v1, p0, v0}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 301
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_c

    .line 302
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v0

    return v0

    .line 304
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 7
    .param p1, "y"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_27

    .line 240
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 241
    .local v0, "dy":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1f

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 243
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {p0, v2, v3}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v2

    return-object v2

    .line 242
    :cond_1f
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "divide of duration by 0 or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0    # "dy":D
    :cond_27
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_38

    .line 246
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p1

    check-cast v1, Lgnu/math/Duration;

    invoke-static {p0, v1}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 247
    :cond_38
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 522
    if-eqz p1, :cond_f

    instance-of v0, p1, Lgnu/math/Duration;

    if-nez v0, :cond_7

    goto :goto_f

    .line 524
    :cond_7
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result v0

    return v0

    .line 523
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public getDays()I
    .registers 5

    .line 426
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getHours()I
    .registers 5

    .line 431
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMinutes()I
    .registers 5

    .line 436
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMonths()I
    .registers 2

    .line 421
    iget v0, p0, Lgnu/math/Duration;->months:I

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getNanoSeconds()J
    .registers 5

    .line 466
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    iget v2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNanoSecondsOnly()I
    .registers 2

    .line 446
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    return v0
.end method

.method public getSecondsOnly()I
    .registers 5

    .line 441
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getTotalMinutes()J
    .registers 5

    .line 461
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMonths()I
    .registers 2

    .line 451
    iget v0, p0, Lgnu/math/Duration;->months:I

    return v0
.end method

.method public getTotalSeconds()J
    .registers 3

    .line 456
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    return-wide v0
.end method

.method public getYears()I
    .registers 2

    .line 416
    iget v0, p0, Lgnu/math/Duration;->months:I

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 504
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget-wide v1, p0, Lgnu/math/Duration;->seconds:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .registers 6

    .line 471
    iget v0, p0, Lgnu/math/Duration;->months:I

    if-nez v0, :cond_12

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 4
    .param p1, "y"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_10

    .line 204
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 205
    :cond_10
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 4
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 210
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_10

    .line 212
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 211
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public number()Lgnu/math/Complex;
    .registers 3

    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 490
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->months:I

    .line 491
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/Duration;->seconds:J

    .line 492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->nanos:I

    .line 493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 21

    .line 309
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget v2, v0, Lgnu/math/Duration;->months:I

    .line 311
    .local v2, "m":I
    iget-wide v3, v0, Lgnu/math/Duration;->seconds:J

    .line 312
    .local v3, "s":J
    iget v5, v0, Lgnu/math/Duration;->nanos:I

    .line 313
    .local v5, "n":I
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ltz v2, :cond_1b

    cmp-long v9, v3, v7

    if-ltz v9, :cond_1b

    if-gez v5, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v9, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v9, 0x1

    .line 314
    .local v9, "neg":Z
    :goto_1c
    if-eqz v9, :cond_26

    .line 316
    neg-int v2, v2

    .line 317
    neg-long v3, v3

    .line 318
    neg-int v5, v5

    .line 319
    const/16 v10, 0x2d

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    :cond_26
    const/16 v10, 0x50

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    div-int/lit8 v10, v2, 0xc

    .line 323
    .local v10, "y":I
    if-eqz v10, :cond_3a

    .line 325
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    const/16 v11, 0x59

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    mul-int/lit8 v11, v10, 0xc

    sub-int/2addr v2, v11

    .line 329
    :cond_3a
    const/16 v11, 0x4d

    if-eqz v2, :cond_44

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_44
    const-wide/32 v12, 0x15180

    div-long v14, v3, v12

    .line 335
    .local v14, "d":J
    cmp-long v16, v14, v7

    if-eqz v16, :cond_58

    .line 337
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 338
    const/16 v11, 0x44

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    mul-long v12, v12, v14

    sub-long/2addr v3, v12

    .line 341
    :cond_58
    cmp-long v11, v3, v7

    if-nez v11, :cond_76

    if-eqz v5, :cond_5f

    goto :goto_76

    .line 365
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v6, :cond_73

    .line 366
    iget-object v6, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v7, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v6, v7, :cond_6e

    const-string v6, "0M"

    goto :goto_70

    :cond_6e
    const-string v6, "T0S"

    :goto_70
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_73
    move v6, v9

    move v13, v10

    goto :goto_bb

    .line 343
    :cond_76
    :goto_76
    const/16 v6, 0x54

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const-wide/16 v11, 0xe10

    move v6, v9

    move v13, v10

    .end local v9    # "neg":Z
    .end local v10    # "y":I
    .local v6, "neg":Z
    .local v13, "y":I
    div-long v9, v3, v11

    .line 345
    .local v9, "hr":J
    cmp-long v17, v9, v7

    if-eqz v17, :cond_90

    .line 347
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 348
    const/16 v7, 0x48

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    mul-long v11, v11, v9

    sub-long/2addr v3, v11

    .line 351
    :cond_90
    const-wide/16 v7, 0x3c

    div-long v11, v3, v7

    .line 352
    .local v11, "mn":J
    const-wide/16 v17, 0x0

    cmp-long v19, v11, v17

    if-eqz v19, :cond_a7

    .line 354
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 355
    const/16 v7, 0x4d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-wide/16 v7, 0x3c

    mul-long v7, v7, v11

    sub-long/2addr v3, v7

    .line 358
    :cond_a7
    const-wide/16 v7, 0x0

    cmp-long v16, v3, v7

    if-nez v16, :cond_af

    if-eqz v5, :cond_ba

    .line 360
    :cond_af
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v5, v1}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 362
    const/16 v7, 0x53

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    .end local v9    # "hr":J
    .end local v11    # "mn":J
    :cond_ba
    nop

    .line 367
    :goto_bb
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public unit()Lgnu/math/Unit;
    .registers 2

    .line 496
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

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

    .line 481
    iget v0, p0, Lgnu/math/Duration;->months:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.class public Lgnu/math/BitOps;
.super Ljava/lang/Object;
.source "BitOps.java"


# static fields
.field static final bit4_count:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 489
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lgnu/math/BitOps;->bit4_count:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .registers 6
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 128
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_c

    .line 129
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    and-int/2addr v0, p1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 130
    :cond_c
    const/4 v0, 0x0

    if-ltz p1, :cond_19

    .line 131
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v1, v0

    and-int/2addr v0, p1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 132
    :cond_19
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 133
    .local v1, "len":I
    new-array v2, v1, [I

    .line 134
    .local v2, "words":[I
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v0

    and-int/2addr v3, p1

    aput v3, v2, v0

    .line 135
    :goto_24
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2f

    .line 136
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    aput v0, v2, v1

    goto :goto_24

    .line 137
    :cond_2f
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 7
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 143
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_b

    .line 144
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 145
    :cond_b
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_16

    .line 146
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v0}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 147
    :cond_16
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_1f

    .line 149
    move-object v0, p0

    .local v0, "temp":Lgnu/math/IntNum;
    move-object p0, p1

    move-object p1, v0

    .line 152
    .end local v0    # "temp":Lgnu/math/IntNum;
    :cond_1f
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_2a

    :cond_28
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    .line 153
    .local v0, "len":I
    :goto_2a
    new-array v1, v0, [I

    .line 154
    .local v1, "words":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    iget v3, p1, Lgnu/math/IntNum;->ival:I

    if-ge v2, v3, :cond_3f

    .line 155
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 156
    :cond_3f
    :goto_3f
    if-ge v2, v0, :cond_4a

    .line 157
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    aput v3, v1, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 158
    :cond_4a
    invoke-static {v1, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3
.end method

.method public static bitCount(I)I
    .registers 4
    .param p0, "i"    # I

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "count":I
    :goto_1
    if-eqz p0, :cond_d

    .line 497
    sget-object v1, Lgnu/math/BitOps;->bit4_count:[B

    and-int/lit8 v2, p0, 0xf

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    .line 498
    ushr-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 500
    :cond_d
    return v0
.end method

.method public static bitCount(Lgnu/math/IntNum;)I
    .registers 5
    .param p0, "x"    # Lgnu/math/IntNum;

    .line 516
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 517
    .local v0, "x_words":[I
    if-nez v0, :cond_c

    .line 519
    const/4 v1, 0x1

    .line 520
    .local v1, "x_len":I
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v2

    .local v2, "i":I
    goto :goto_12

    .line 524
    .end local v1    # "x_len":I
    .end local v2    # "i":I
    :cond_c
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 525
    .restart local v1    # "x_len":I
    invoke-static {v0, v1}, Lgnu/math/BitOps;->bitCount([II)I

    move-result v2

    .line 527
    .restart local v2    # "i":I
    :goto_12
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_1c

    mul-int/lit8 v3, v1, 0x20

    sub-int/2addr v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    return v3
.end method

.method public static bitCount([II)I
    .registers 4
    .param p0, "x"    # [I
    .param p1, "len"    # I

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "count":I
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_d

    .line 507
    aget v1, p0, p1

    invoke-static {v1}, Lgnu/math/BitOps;->bitCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 508
    :cond_d
    return v0
.end method

.method public static bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 5
    .param p0, "op"    # I
    .param p1, "x"    # Lgnu/math/IntNum;
    .param p2, "y"    # Lgnu/math/IntNum;

    .line 192
    sparse-switch p0, :sswitch_data_22

    .line 200
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 201
    .local v0, "result":Lgnu/math/IntNum;
    invoke-static {v0, p0, p1, p2}, Lgnu/math/BitOps;->setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V

    .line 202
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "result":Lgnu/math/IntNum;
    :sswitch_10
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 197
    :sswitch_15
    return-object p2

    .line 196
    :sswitch_16
    return-object p1

    .line 195
    :sswitch_17
    invoke-static {p1, p2}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 194
    :sswitch_1c
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_17
        0x3 -> :sswitch_16
        0x5 -> :sswitch_15
        0xf -> :sswitch_10
    .end sparse-switch
.end method

.method public static bitValue(Lgnu/math/IntNum;I)Z
    .registers 8
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "bitno"    # I

    .line 19
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 20
    .local v0, "i":I
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 22
    const/16 v1, 0x20

    if-lt p1, v1, :cond_f

    if-gez v0, :cond_15

    goto :goto_14

    :cond_f
    shr-int v1, v0, p1

    and-int/2addr v1, v3

    if-eqz v1, :cond_15

    :goto_14
    const/4 v2, 0x1

    :cond_15
    return v2

    .line 26
    :cond_16
    shr-int/lit8 v1, p1, 0x5

    .line 27
    .local v1, "wordno":I
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-lt v1, v0, :cond_23

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_2a

    goto :goto_29

    :cond_23
    aget v4, v4, v1

    shr-int/2addr v4, p1

    and-int/2addr v4, v3

    if-eqz v4, :cond_2a

    :goto_29
    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method static dataBufferFor(Lgnu/math/IntNum;I)[I
    .registers 8
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "bitno"    # I

    .line 37
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 39
    .local v0, "i":I
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v1, v1, 0x5

    .line 40
    .local v1, "nwords":I
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/4 v3, -0x1

    if-nez v2, :cond_1e

    .line 42
    if-nez v1, :cond_e

    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_e
    new-array v2, v1, [I

    .line 45
    .local v2, "data":[I
    const/4 v4, 0x0

    aput v0, v2, v4

    .line 46
    if-gez v0, :cond_42

    .line 48
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_16
    if-ge v4, v1, :cond_1d

    .line 49
    aput v3, v2, v4

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .end local v4    # "j":I
    :cond_1d
    goto :goto_42

    .line 54
    .end local v2    # "data":[I
    :cond_1e
    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v1, v2, 0x5

    .line 55
    if-le v1, v0, :cond_26

    move v2, v1

    goto :goto_27

    :cond_26
    move v2, v0

    :goto_27
    new-array v2, v2, [I

    .line 56
    .restart local v2    # "data":[I
    move v4, v0

    .restart local v4    # "j":I
    :goto_2a
    add-int/2addr v4, v3

    if-ltz v4, :cond_34

    .line 57
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    aget v5, v5, v4

    aput v5, v2, v4

    goto :goto_2a

    .line 58
    .end local v4    # "j":I
    :cond_34
    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    if-gez v4, :cond_42

    .line 60
    move v4, v0

    .restart local v4    # "j":I
    :goto_3b
    if-ge v4, v1, :cond_42

    .line 61
    aput v3, v2, v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 64
    .end local v4    # "j":I
    :cond_42
    :goto_42
    return-object v2
.end method

.method public static extract(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .registers 14
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "startBit"    # I
    .param p2, "endBit"    # I

    .line 396
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x20

    if-ge p2, v2, :cond_1b

    .line 398
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_d

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_11

    :cond_d
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v2, v0

    .line 399
    .local v0, "word0":I
    :goto_11
    shl-int v2, v1, p2

    xor-int/2addr v1, v2

    and-int/2addr v1, v0

    shr-int/2addr v1, p1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 402
    .end local v0    # "word0":I
    :cond_1b
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    const/16 v4, 0x1f

    if-nez v3, :cond_32

    .line 404
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    if-ltz v3, :cond_30

    .line 405
    if-lt p1, v4, :cond_28

    goto :goto_2b

    :cond_28
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    shr-int/2addr v0, p1

    :goto_2b
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 406
    :cond_30
    const/4 v3, 0x1

    .local v3, "x_len":I
    goto :goto_34

    .line 409
    .end local v3    # "x_len":I
    :cond_32
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    .line 410
    .restart local v3    # "x_len":I
    :goto_34
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v5

    .line 411
    .local v5, "neg":Z
    mul-int/lit8 v6, v3, 0x20

    if-le p2, v6, :cond_43

    .line 413
    mul-int/lit8 p2, v3, 0x20

    .line 414
    if-nez v5, :cond_47

    if-nez p1, :cond_47

    .line 415
    return-object p0

    .line 418
    :cond_43
    add-int/lit8 v6, p2, 0x1f

    shr-int/lit8 v3, v6, 0x5

    .line 419
    :cond_47
    sub-int v6, p2, p1

    .line 420
    .local v6, "length":I
    const/16 v7, 0x40

    if-ge v6, v7, :cond_6b

    .line 423
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_5a

    .line 424
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-lt p1, v2, :cond_56

    goto :goto_57

    :cond_56
    move v4, p1

    :goto_57
    shr-int/2addr v0, v4

    int-to-long v0, v0

    .local v0, "l":J
    goto :goto_60

    .line 426
    .end local v0    # "l":J
    :cond_5a
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v0, v3, p1}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v0

    .line 427
    .restart local v0    # "l":J
    :goto_60
    const-wide/16 v7, -0x1

    shl-long v9, v7, v6

    xor-long/2addr v7, v9

    and-long/2addr v7, v0

    invoke-static {v7, v8}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 429
    .end local v0    # "l":J
    :cond_6b
    shr-int/lit8 v4, p1, 0x5

    .line 433
    .local v4, "startWord":I
    shr-int/lit8 v7, p2, 0x5

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v7, v4

    .line 434
    .local v7, "buf_len":I
    new-array v8, v7, [I

    .line 435
    .local v8, "buf":[I
    iget-object v9, p0, Lgnu/math/IntNum;->words:[I

    if-nez v9, :cond_82

    .line 436
    if-lt p1, v2, :cond_7c

    const/4 v2, -0x1

    goto :goto_7f

    :cond_7c
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    shr-int/2addr v2, p1

    :goto_7f
    aput v2, v8, v0

    goto :goto_8a

    .line 439
    :cond_82
    sub-int/2addr v3, v4

    .line 440
    and-int/lit8 p1, p1, 0x1f

    .line 441
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v8, v0, v4, v3, p1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 443
    :goto_8a
    shr-int/lit8 v0, v6, 0x5

    .line 444
    .end local v3    # "x_len":I
    .local v0, "x_len":I
    aget v2, v8, v0

    shl-int v3, v1, v6

    xor-int/2addr v1, v3

    and-int/2addr v1, v2

    aput v1, v8, v0

    .line 445
    add-int/lit8 v1, v0, 0x1

    invoke-static {v8, v1}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 164
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static lowestBitSet(I)I
    .registers 3
    .param p0, "i"    # I

    .line 450
    if-nez p0, :cond_4

    .line 451
    const/4 v0, -0x1

    return v0

    .line 452
    :cond_4
    const/4 v0, 0x0

    .line 453
    .local v0, "index":I
    :goto_5
    and-int/lit16 v1, p0, 0xff

    if-nez v1, :cond_e

    .line 455
    ushr-int/lit8 p0, p0, 0x8

    .line 456
    add-int/lit8 v0, v0, 0x8

    goto :goto_5

    .line 458
    :cond_e
    :goto_e
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_17

    .line 460
    ushr-int/lit8 p0, p0, 0x2

    .line 461
    add-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 463
    :cond_17
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1d

    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 465
    :cond_1d
    return v0
.end method

.method public static lowestBitSet(Lgnu/math/IntNum;)I
    .registers 6
    .param p0, "x"    # Lgnu/math/IntNum;

    .line 470
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 471
    .local v0, "x_words":[I
    if-nez v0, :cond_b

    .line 473
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v1}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result v1

    return v1

    .line 477
    :cond_b
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 478
    .local v1, "x_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1d

    .line 480
    aget v3, v0, v2

    invoke-static {v3}, Lgnu/math/BitOps;->lowestBitSet(I)I

    move-result v3

    .line 481
    .local v3, "b":I
    if-ltz v3, :cond_1c

    .line 482
    mul-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v3

    return v4

    .line 483
    .end local v3    # "b":I
    :cond_1c
    goto :goto_e

    .line 484
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, -0x1

    return v2
.end method

.method public static not(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "x"    # Lgnu/math/IntNum;

    .line 176
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static reverseBits(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .registers 25
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 532
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lgnu/math/IntNum;->ival:I

    .line 533
    .local v2, "ival":I
    iget-object v3, v0, Lgnu/math/IntNum;->words:[I

    .line 534
    .local v3, "xwords":[I
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    if-nez v3, :cond_3c

    .line 536
    const/16 v8, 0x3f

    if-ge v1, v8, :cond_3c

    .line 538
    int-to-long v8, v2

    .line 539
    .local v8, "w":J
    move/from16 v10, p1

    .line 540
    .local v10, "i":I
    add-int/lit8 v11, v1, -0x1

    .line 541
    .local v11, "j":I
    :goto_17
    if-ge v10, v11, :cond_37

    .line 543
    shr-long v12, v8, v10

    and-long/2addr v12, v6

    .line 544
    .local v12, "biti":J
    shr-long v14, v8, v11

    and-long/2addr v14, v6

    .line 545
    .local v14, "bitj":J
    shl-long v16, v6, v10

    shl-long v18, v6, v11

    or-long v16, v16, v18

    xor-long v16, v16, v4

    and-long v8, v8, v16

    .line 546
    shl-long v16, v12, v11

    or-long v16, v8, v16

    shl-long v18, v14, v10

    or-long v8, v16, v18

    .line 547
    add-int/lit8 v10, v10, 0x1

    .line 548
    nop

    .end local v12    # "biti":J
    .end local v14    # "bitj":J
    add-int/lit8 v11, v11, -0x1

    .line 549
    goto :goto_17

    .line 550
    :cond_37
    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4

    .line 553
    .end local v8    # "w":J
    .end local v10    # "i":I
    .end local v11    # "j":I
    :cond_3c
    add-int/lit8 v8, v1, -0x1

    invoke-static {v0, v8}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object v8

    .line 554
    .local v8, "data":[I
    move/from16 v9, p1

    .line 555
    .local v9, "i":I
    add-int/lit8 v10, v1, -0x1

    .line 556
    .local v10, "j":I
    :goto_46
    if-ge v9, v10, :cond_9c

    .line 558
    shr-int/lit8 v11, v9, 0x5

    .line 559
    .local v11, "ii":I
    shr-int/lit8 v12, v10, 0x5

    .line 560
    .local v12, "jj":I
    aget v13, v8, v11

    .line 561
    .local v13, "wi":I
    shr-int v14, v13, v9

    const/4 v15, 0x1

    and-int/2addr v14, v15

    .line 562
    .local v14, "biti":I
    if-ne v11, v12, :cond_6d

    .line 564
    shr-int v16, v13, v10

    and-int/lit8 v15, v16, 0x1

    .line 565
    .local v15, "bitj":I
    int-to-long v4, v13

    shl-long v18, v6, v9

    shl-long v20, v6, v10

    or-long v18, v18, v20

    const-wide/16 v16, -0x1

    xor-long v18, v18, v16

    and-long v4, v4, v18

    long-to-int v5, v4

    .line 566
    .end local v13    # "wi":I
    .local v5, "wi":I
    shl-int v4, v14, v10

    or-int/2addr v4, v5

    shl-int v13, v15, v9

    or-int/2addr v4, v13

    .line 567
    .end local v5    # "wi":I
    .end local v15    # "bitj":I
    .local v4, "wi":I
    goto :goto_92

    .line 570
    .end local v4    # "wi":I
    .restart local v13    # "wi":I
    :cond_6d
    move-wide/from16 v16, v4

    aget v4, v8, v12

    .line 571
    .local v4, "wj":I
    and-int/lit8 v5, v10, 0x1f

    shr-int v5, v4, v5

    and-int/2addr v5, v15

    .line 572
    .local v5, "bitj":I
    and-int/lit8 v18, v9, 0x1f

    shl-int v18, v15, v18

    xor-int/lit8 v18, v18, -0x1

    and-int v13, v13, v18

    .line 573
    and-int/lit8 v18, v10, 0x1f

    shl-int v15, v15, v18

    xor-int/lit8 v15, v15, -0x1

    and-int/2addr v4, v15

    .line 574
    and-int/lit8 v15, v9, 0x1f

    shl-int v15, v5, v15

    or-int/2addr v13, v15

    .line 575
    and-int/lit8 v15, v10, 0x1f

    shl-int v15, v14, v15

    or-int/2addr v4, v15

    .line 576
    aput v4, v8, v12

    move v4, v13

    .line 578
    .end local v5    # "bitj":I
    .end local v13    # "wi":I
    .local v4, "wi":I
    :goto_92
    aput v4, v8, v11

    .line 579
    add-int/lit8 v9, v9, 0x1

    .line 580
    nop

    .end local v4    # "wi":I
    .end local v11    # "ii":I
    .end local v12    # "jj":I
    .end local v14    # "biti":I
    add-int/lit8 v10, v10, -0x1

    .line 581
    move-wide/from16 v4, v16

    goto :goto_46

    .line 582
    :cond_9c
    array-length v4, v8

    invoke-static {v8, v4}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4
.end method

.method public static setBitOp(Lgnu/math/IntNum;ILgnu/math/IntNum;Lgnu/math/IntNum;)V
    .registers 15
    .param p0, "result"    # Lgnu/math/IntNum;
    .param p1, "op"    # I
    .param p2, "x"    # Lgnu/math/IntNum;
    .param p3, "y"    # Lgnu/math/IntNum;

    .line 208
    iget-object v0, p3, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_5

    goto :goto_16

    .line 209
    :cond_5
    iget-object v0, p2, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_f

    iget v0, p2, Lgnu/math/IntNum;->ival:I

    iget v1, p3, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_16

    .line 211
    :cond_f
    move-object v0, p2

    .local v0, "temp":Lgnu/math/IntNum;
    move-object p2, p3

    move-object p3, v0

    .line 212
    invoke-static {p1}, Lgnu/math/BitOps;->swappedOp(I)I

    move-result p1

    .line 217
    .end local v0    # "temp":Lgnu/math/IntNum;
    :cond_16
    :goto_16
    iget-object v0, p3, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 219
    iget v0, p3, Lgnu/math/IntNum;->ival:I

    .line 220
    .local v0, "yi":I
    const/4 v2, 0x1

    .local v2, "ylen":I
    goto :goto_25

    .line 224
    .end local v0    # "yi":I
    .end local v2    # "ylen":I
    :cond_1f
    iget-object v0, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    .line 225
    .restart local v0    # "yi":I
    iget v2, p3, Lgnu/math/IntNum;->ival:I

    .line 227
    .restart local v2    # "ylen":I
    :goto_25
    iget-object v3, p2, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_2d

    .line 229
    iget v3, p2, Lgnu/math/IntNum;->ival:I

    .line 230
    .local v3, "xi":I
    const/4 v4, 0x1

    .local v4, "xlen":I
    goto :goto_33

    .line 234
    .end local v3    # "xi":I
    .end local v4    # "xlen":I
    :cond_2d
    iget-object v3, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v1

    .line 235
    .restart local v3    # "xi":I
    iget v4, p2, Lgnu/math/IntNum;->ival:I

    .line 237
    .restart local v4    # "xlen":I
    :goto_33
    const/4 v5, 0x1

    if-le v4, v5, :cond_39

    .line 238
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 239
    :cond_39
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    .line 240
    .local v6, "w":[I
    const/4 v7, 0x0

    .line 245
    .local v7, "i":I
    const/4 v8, 0x0

    .line 247
    .local v8, "finish":I
    const/4 v9, 0x2

    packed-switch p1, :pswitch_data_1b4

    .line 368
    .local v1, "ni":I
    const/4 v1, -0x1

    goto/16 :goto_182

    .line 360
    :goto_44
    :pswitch_44
    and-int v9, v3, v0

    xor-int/lit8 v1, v9, -0x1

    .line 361
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_51

    .line 364
    if-gez v0, :cond_182

    const/4 v8, 0x2

    goto/16 :goto_182

    .line 362
    :cond_51
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .local v9, "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_44

    .line 351
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_5f
    :pswitch_5f
    xor-int/lit8 v9, v3, -0x1

    or-int v1, v9, v0

    .line 352
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_6c

    .line 355
    if-ltz v0, :cond_182

    const/4 v8, 0x2

    goto/16 :goto_182

    .line 353
    :cond_6c
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_5f

    .line 345
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :pswitch_7a
    xor-int/lit8 v1, v3, -0x1

    .line 346
    const/4 v8, 0x2

    .line 347
    goto/16 :goto_182

    .line 338
    :goto_7f
    :pswitch_7f
    xor-int/lit8 v9, v0, -0x1

    or-int v1, v3, v9

    .line 339
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_8c

    .line 342
    if-gez v0, :cond_182

    const/4 v8, 0x1

    goto/16 :goto_182

    .line 340
    :cond_8c
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_7f

    .line 330
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_9a
    :pswitch_9a
    xor-int/lit8 v1, v0, -0x1

    .line 331
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_a2

    goto/16 :goto_182

    .line 332
    :cond_a2
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_9a

    .line 321
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_b0
    :pswitch_b0
    xor-int v10, v3, v0

    xor-int/lit8 v1, v10, -0x1

    .line 322
    add-int/lit8 v10, v7, 0x1

    if-lt v10, v2, :cond_bf

    .line 325
    if-ltz v0, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v9, 0x1

    :goto_bc
    move v8, v9

    .line 326
    goto/16 :goto_182

    .line 323
    :cond_bf
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "i":I
    .local v10, "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v10

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v10

    move v7, v10

    goto :goto_b0

    .line 312
    .end local v10    # "i":I
    .restart local v7    # "i":I
    :goto_cd
    :pswitch_cd
    or-int v9, v3, v0

    xor-int/lit8 v1, v9, -0x1

    .line 313
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_da

    .line 316
    if-ltz v0, :cond_182

    const/4 v8, 0x2

    goto/16 :goto_182

    .line 314
    :cond_da
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_cd

    .line 303
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_e8
    :pswitch_e8
    or-int v1, v3, v0

    .line 304
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_f3

    .line 307
    if-ltz v0, :cond_182

    const/4 v8, 0x1

    goto/16 :goto_182

    .line 305
    :cond_f3
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_e8

    .line 294
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_101
    :pswitch_101
    xor-int v1, v3, v0

    .line 295
    add-int/lit8 v10, v7, 0x1

    if-lt v10, v2, :cond_10e

    .line 298
    if-gez v0, :cond_10a

    goto :goto_10b

    :cond_10a
    const/4 v9, 0x1

    :goto_10b
    move v8, v9

    .line 299
    goto/16 :goto_182

    .line 296
    :cond_10e
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "i":I
    .restart local v10    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v10

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v10

    move v7, v10

    goto :goto_101

    .line 286
    .end local v10    # "i":I
    .restart local v7    # "i":I
    :goto_11c
    :pswitch_11c
    move v1, v0

    .line 287
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_123

    goto/16 :goto_182

    .line 288
    :cond_123
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_11c

    .line 277
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_131
    :pswitch_131
    xor-int/lit8 v9, v3, -0x1

    and-int v1, v9, v0

    .line 278
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_13d

    .line 281
    if-gez v0, :cond_182

    const/4 v8, 0x2

    goto :goto_182

    .line 279
    :cond_13d
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_131

    .line 271
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :pswitch_14b
    move v1, v3

    .line 272
    const/4 v8, 0x1

    .line 273
    goto :goto_182

    .line 264
    :goto_14e
    :pswitch_14e
    xor-int/lit8 v9, v0, -0x1

    and-int v1, v3, v9

    .line 265
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_15a

    .line 268
    if-ltz v0, :cond_182

    const/4 v8, 0x1

    goto :goto_182

    .line 266
    :cond_15a
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_14e

    .line 255
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :goto_168
    :pswitch_168
    and-int v1, v3, v0

    .line 256
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v2, :cond_172

    .line 259
    if-gez v0, :cond_182

    const/4 v8, 0x1

    goto :goto_182

    .line 257
    :cond_172
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    aput v1, v6, v7

    iget-object v7, p2, Lgnu/math/IntNum;->words:[I

    aget v3, v7, v9

    iget-object v7, p3, Lgnu/math/IntNum;->words:[I

    aget v0, v7, v9

    move v7, v9

    goto :goto_168

    .line 250
    .end local v1    # "ni":I
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :pswitch_180
    const/4 v1, 0x0

    .line 251
    .restart local v1    # "ni":I
    nop

    .line 373
    :cond_182
    :goto_182
    add-int/lit8 v9, v7, 0x1

    if-ne v9, v4, :cond_187

    .line 374
    const/4 v8, 0x0

    .line 375
    :cond_187
    packed-switch v8, :pswitch_data_1d6

    goto :goto_1b1

    .line 386
    :pswitch_18b
    aput v1, v6, v7

    :goto_18d
    add-int/2addr v7, v5

    if-ge v7, v4, :cond_1b1

    iget-object v9, p2, Lgnu/math/IntNum;->words:[I

    aget v9, v9, v7

    xor-int/lit8 v9, v9, -0x1

    aput v9, v6, v7

    goto :goto_18d

    .line 385
    :pswitch_199
    aput v1, v6, v7

    :goto_19b
    add-int/2addr v7, v5

    if-ge v7, v4, :cond_1b1

    iget-object v9, p2, Lgnu/math/IntNum;->words:[I

    aget v9, v9, v7

    aput v9, v6, v7

    goto :goto_19b

    .line 378
    :pswitch_1a5
    if-nez v7, :cond_1ac

    if-nez v6, :cond_1ac

    .line 380
    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 381
    return-void

    .line 383
    :cond_1ac
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .local v5, "i":I
    aput v1, v6, v7

    .line 384
    move v7, v5

    .line 388
    .end local v5    # "i":I
    .restart local v7    # "i":I
    :cond_1b1
    :goto_1b1
    iput v7, p0, Lgnu/math/IntNum;->ival:I

    .line 389
    return-void

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_180
        :pswitch_168
        :pswitch_14e
        :pswitch_14b
        :pswitch_131
        :pswitch_11c
        :pswitch_101
        :pswitch_e8
        :pswitch_cd
        :pswitch_b0
        :pswitch_9a
        :pswitch_7f
        :pswitch_7a
        :pswitch_5f
        :pswitch_44
    .end packed-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_1a5
        :pswitch_199
        :pswitch_18b
    .end packed-switch
.end method

.method public static setBitValue(Lgnu/math/IntNum;II)Lgnu/math/IntNum;
    .registers 10
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "bitno"    # I
    .param p2, "newValue"    # I

    .line 70
    const/4 v0, 0x1

    and-int/2addr p2, v0

    .line 71
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 74
    .local v1, "i":I
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_21

    .line 76
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_d

    move v2, p1

    :cond_d
    shr-int v2, v1, v2

    and-int/2addr v2, v0

    .line 77
    .local v2, "oldValue":I
    if-ne v2, p2, :cond_13

    .line 78
    return-object p0

    .line 79
    :cond_13
    const/16 v3, 0x3f

    if-ge p1, v3, :cond_20

    .line 80
    int-to-long v3, v1

    shl-int/2addr v0, p1

    int-to-long v5, v0

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 81
    .end local v2    # "oldValue":I
    :cond_20
    goto :goto_3a

    .line 84
    :cond_21
    shr-int/lit8 v2, p1, 0x5

    .line 86
    .local v2, "wordno":I
    if-lt v2, v1, :cond_31

    .line 87
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-gez v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    .local v3, "oldValue":I
    :goto_30
    goto :goto_37

    .line 89
    .end local v3    # "oldValue":I
    :cond_31
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    shr-int/2addr v3, p1

    and-int/2addr v3, v0

    .line 90
    .restart local v3    # "oldValue":I
    :goto_37
    if-ne v3, p2, :cond_3a

    .line 91
    return-object p0

    .line 93
    .end local v2    # "wordno":I
    .end local v3    # "oldValue":I
    :cond_3a
    :goto_3a
    invoke-static {p0, p1}, Lgnu/math/BitOps;->dataBufferFor(Lgnu/math/IntNum;I)[I

    move-result-object v2

    .line 94
    .local v2, "data":[I
    shr-int/lit8 v3, p1, 0x5

    aget v4, v2, v3

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v0, v5

    xor-int/2addr v0, v4

    aput v0, v2, v3

    .line 95
    array-length v0, v2

    invoke-static {v2, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static swappedOp(I)I
    .registers 2
    .param p0, "op"    # I

    .line 184
    const-string v0, "\u0000\u0001\u0004\u0005\u0002\u0003\u0006\u0007\u0008\t\u000c\r\n\u000b\u000e\u000f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static test(Lgnu/math/IntNum;I)Z
    .registers 5
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 101
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 102
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 103
    :cond_e
    if-ltz p1, :cond_19

    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v2

    and-int/2addr v0, p1

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_19
    return v1
.end method

.method public static test(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .registers 5
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 109
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_b

    .line 110
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result v0

    return v0

    .line 111
    :cond_b
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_16

    .line 112
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v0}, Lgnu/math/BitOps;->test(Lgnu/math/IntNum;I)Z

    move-result v0

    return v0

    .line 113
    :cond_16
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_1f

    .line 115
    move-object v0, p0

    .local v0, "temp":Lgnu/math/IntNum;
    move-object p0, p1

    move-object p1, v0

    .line 117
    .end local v0    # "temp":Lgnu/math/IntNum;
    :cond_1f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v1, :cond_34

    .line 119
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 120
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 122
    .end local v0    # "i":I
    :cond_34
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    return v0
.end method

.method public static xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .registers 3
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 170
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lgnu/math/BitOps;->bitOp(ILgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

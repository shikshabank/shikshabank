.class public Lgnu/text/LineBufferedReader;
.super Ljava/io/Reader;
.source "LineBufferedReader.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000

.field private static final CONVERT_CR:I = 0x1

.field private static final DONT_KEEP_FULL_LINES:I = 0x8

.field private static final PREV_WAS_CR:I = 0x4

.field private static final USER_BUFFER:I = 0x2


# instance fields
.field public buffer:[C

.field private flags:I

.field highestPos:I

.field protected in:Ljava/io/Reader;

.field public limit:I

.field protected lineNumber:I

.field private lineStartPos:I

.field protected markPos:I

.field path:Lgnu/text/Path;

.field public pos:I

.field protected readAheadLimit:I

.field public readState:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 133
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 134
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 138
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    const/16 v0, 0xa

    iput-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 139
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    .line 140
    return-void
.end method

.method private clearMark()V
    .registers 5

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 166
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v1, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 169
    .local v0, "i":I
    :goto_9
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lt v0, v1, :cond_11

    .line 170
    nop

    .line 180
    return-void

    .line 171
    :cond_11
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    .line 172
    .local v1, "ch":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_2b

    const/16 v3, 0xd

    if-ne v1, v3, :cond_33

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v3, v3, v0

    if-eq v3, v2, :cond_33

    .line 175
    :cond_2b
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 176
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 179
    .end local v1    # "ch":C
    :cond_33
    goto :goto_9
.end method

.method static countLines([CII)I
    .registers 9
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "count":I
    const/4 v1, 0x0

    .line 639
    .local v1, "prev":C
    move v2, p1

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_17

    .line 641
    aget-char v3, p0, v2

    .line 642
    .local v3, "ch":C
    const/16 v4, 0xa

    const/16 v5, 0xd

    if-ne v3, v4, :cond_f

    if-ne v1, v5, :cond_11

    :cond_f
    if-ne v3, v5, :cond_13

    .line 643
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 644
    :cond_13
    move v1, v3

    .line 639
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 646
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method private reserve([CI)V
    .registers 7
    .param p1, "buffer"    # [C
    .param p2, "reserve"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget v0, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr p2, v0

    .line 212
    array-length v0, p1

    if-gt p2, v0, :cond_9

    .line 213
    const/4 v0, 0x0

    .local v0, "saveStart":I
    goto/16 :goto_70

    .line 216
    .end local v0    # "saveStart":I
    :cond_9
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 217
    .restart local v0    # "saveStart":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v1, :cond_2a

    iget v2, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v2, v3, :cond_2a

    .line 219
    sub-int/2addr v3, v2

    if-gt v3, v1, :cond_27

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_24

    sub-int v1, p2, v2

    array-length v2, p1

    if-le v1, v2, :cond_24

    goto :goto_27

    .line 224
    :cond_24
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    goto :goto_2a

    .line 222
    :cond_27
    :goto_27
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 227
    :cond_2a
    :goto_2a
    array-length v1, p1

    sub-int/2addr p2, v1

    .line 228
    if-gt p2, v0, :cond_39

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v0, v1, :cond_57

    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_39

    .line 231
    goto :goto_57

    .line 232
    :cond_39
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gt p2, v1, :cond_42

    if-le v0, v1, :cond_42

    .line 233
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    goto :goto_57

    .line 234
    :cond_42
    iget v2, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4e

    .line 235
    sub-int v1, v0, p2

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_57

    .line 238
    :cond_4e
    if-ltz v1, :cond_52

    .line 239
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 240
    :cond_52
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array p1, v1, [C

    .line 243
    :cond_57
    :goto_57
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 244
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 245
    iget v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->markPos:I

    .line 246
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 247
    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 249
    :goto_70
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v1, :cond_7a

    .line 250
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v0, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :cond_7a
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 252
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public fill(I)I
    .registers 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .registers 7

    .line 433
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-lez v0, :cond_14

    .line 435
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v0, -0x1

    aget-char v4, v4, v5

    .line 436
    .local v4, "prev":C
    if-eq v4, v3, :cond_13

    if-ne v4, v1, :cond_14

    .line 437
    :cond_13
    return v2

    .line 439
    .end local v4    # "prev":C
    :cond_14
    iget v4, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-gtz v4, :cond_1c

    .line 440
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v0, v1

    return v0

    .line 444
    :cond_1c
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v0

    :goto_22
    move v0, v2

    .line 445
    .local v0, "start":I
    nop

    .local v2, "i":I
    :goto_24
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-ge v2, v4, :cond_35

    .line 447
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aget-char v2, v4, v2

    .line 448
    .local v2, "ch":C
    if-eq v2, v3, :cond_32

    if-ne v2, v1, :cond_33

    .line 449
    :cond_32
    move v0, v5

    .line 450
    .end local v2    # "ch":C
    :cond_33
    move v2, v5

    goto :goto_24

    .line 451
    .end local v5    # "i":I
    :cond_35
    sub-int/2addr v4, v0

    .line 452
    .local v4, "col":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v1, :cond_3b

    .line 453
    sub-int/2addr v4, v1

    .line 454
    :cond_3b
    return v4
.end method

.method public final getConvertCR()Z
    .registers 3

    .line 97
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public getLineNumber()I
    .registers 5

    .line 404
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 405
    .local v0, "lineno":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-nez v1, :cond_1f

    .line 407
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v1, :cond_2d

    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-le v1, v2, :cond_2d

    .line 409
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v2, v1

    .line 410
    .local v1, "prev":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1c

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1e

    .line 411
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 412
    .end local v1    # "prev":C
    :cond_1e
    goto :goto_2d

    .line 415
    :cond_1f
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-gez v2, :cond_26

    const/4 v2, 0x0

    :cond_26
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-static {v1, v2, v3}, Lgnu/text/LineBufferedReader;->countLines([CII)I

    move-result v1

    add-int/2addr v0, v1

    .line 416
    :cond_2d
    :goto_2d
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getPath()Lgnu/text/Path;
    .registers 2

    .line 382
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    return-object v0
.end method

.method public getReadState()C
    .registers 2

    .line 53
    iget-char v0, p0, Lgnu/text/LineBufferedReader;->readState:C

    return v0
.end method

.method public incrLineNumber(II)V
    .registers 4
    .param p1, "lineDelta"    # I
    .param p2, "lineStartPos"    # I

    .line 426
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v0, p1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 427
    iput p2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 428
    return-void
.end method

.method public lineStart(Z)V
    .registers 2
    .param p1, "revisited"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    monitor-enter p0

    .line 464
    :try_start_1
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_8

    .line 465
    invoke-direct {p0}, Lgnu/text/LineBufferedReader;->clearMark()V

    .line 466
    .end local p0    # "this":Lgnu/text/LineBufferedReader;
    :cond_8
    iput p1, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 467
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->markPos:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 468
    monitor-exit p0

    return-void

    .line 463
    .end local p1    # "readAheadLimit":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public peek()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v0, v1, :cond_23

    if-lez v0, :cond_23

    .line 713
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    .line 714
    .local v2, "ch":C
    const/16 v3, 0xa

    if-eq v2, v3, :cond_23

    const/16 v3, 0xd

    if-eq v2, v3, :cond_23

    .line 716
    aget-char v0, v1, v0

    .line 717
    .end local v2    # "ch":C
    .local v0, "ch":C
    if-ne v0, v3, :cond_22

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 718
    const/16 v0, 0xa

    .line 719
    :cond_22
    return v0

    .line 722
    .end local v0    # "ch":C
    :cond_23
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 723
    .local v0, "c":I
    if-ltz v0, :cond_2c

    .line 724
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 725
    :cond_2c
    return v0
.end method

.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v0, :cond_b

    .line 258
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    .local v1, "prev":C
    goto :goto_1c

    .line 259
    .end local v1    # "prev":C
    :cond_b
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_14

    .line 260
    const/16 v1, 0xd

    .restart local v1    # "prev":C
    goto :goto_1c

    .line 261
    .end local v1    # "prev":C
    :cond_14
    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v1, :cond_1b

    .line 262
    const/16 v1, 0xa

    .restart local v1    # "prev":C
    goto :goto_1c

    .line 264
    .end local v1    # "prev":C
    :cond_1b
    const/4 v1, 0x0

    .line 265
    .restart local v1    # "prev":C
    :goto_1c
    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v1, v3, :cond_25

    if-ne v1, v2, :cond_5c

    .line 267
    :cond_25
    iget v5, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v5, v0, :cond_38

    iget v5, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-eqz v5, :cond_31

    iget v5, p0, Lgnu/text/LineBufferedReader;->markPos:I

    if-gt v0, v5, :cond_38

    .line 269
    :cond_31
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 270
    iget v5, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/2addr v5, v4

    iput v5, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 272
    :cond_38
    iget v5, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-ge v0, v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v5, 0x0

    .line 273
    .local v5, "revisited":Z
    :goto_3f
    if-ne v1, v2, :cond_52

    if-gt v0, v4, :cond_4a

    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_55

    goto :goto_52

    :cond_4a
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x2

    aget-char v0, v6, v0

    if-eq v0, v3, :cond_55

    .line 276
    :cond_52
    :goto_52
    invoke-virtual {p0, v5}, Lgnu/text/LineBufferedReader;->lineStart(Z)V

    .line 278
    :cond_55
    if-nez v5, :cond_5c

    .line 279
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 282
    .end local v5    # "revisited":Z
    :cond_5c
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v5, :cond_97

    .line 284
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-nez v0, :cond_6d

    .line 285
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    goto :goto_73

    .line 286
    :cond_6d
    array-length v6, v0

    if-ne v5, v6, :cond_73

    .line 287
    invoke-direct {p0, v0, v4}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    .line 288
    :cond_73
    :goto_73
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-nez v0, :cond_86

    .line 290
    if-ne v1, v3, :cond_80

    .line 291
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_86

    .line 293
    :cond_80
    iget v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v5, v5, -0x5

    iput v5, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 295
    :cond_86
    :goto_86
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-virtual {p0, v5}, Lgnu/text/LineBufferedReader;->fill(I)I

    move-result v0

    .line 296
    .local v0, "readCount":I
    if-gtz v0, :cond_92

    .line 297
    const/4 v2, -0x1

    return v2

    .line 298
    :cond_92
    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    add-int/2addr v5, v0

    iput v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 301
    .end local v0    # "readCount":I
    :cond_97
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v0, v5

    .line 302
    .local v0, "ch":I
    if-ne v0, v2, :cond_bd

    .line 304
    if-ne v1, v3, :cond_c6

    .line 310
    iget v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    sub-int/2addr v6, v4

    if-ne v2, v6, :cond_b2

    .line 312
    iget v3, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    sub-int/2addr v3, v4

    iput v3, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 313
    sub-int/2addr v2, v4

    iput v2, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 315
    :cond_b2
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 316
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    return v2

    .line 319
    :cond_bd
    if-ne v0, v3, :cond_c6

    .line 321
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 322
    return v2

    .line 324
    :cond_c6
    return v0
.end method

.method public read([CII)I
    .registers 12
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_8

    .line 332
    const/4 v0, 0x0

    .local v0, "ch":I
    goto :goto_20

    .line 333
    .end local v0    # "ch":I
    :cond_8
    if-lez v0, :cond_11

    .line 334
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    .restart local v0    # "ch":I
    goto :goto_20

    .line 335
    .end local v0    # "ch":I
    :cond_11
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1e

    iget v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v0, :cond_1c

    goto :goto_1e

    .line 338
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "ch":I
    goto :goto_20

    .line 336
    .end local v0    # "ch":I
    :cond_1e
    :goto_1e
    const/16 v0, 0xa

    .line 339
    .restart local v0    # "ch":I
    :goto_20
    move v1, p3

    .line 340
    .local v1, "to_do":I
    :goto_21
    if-lez v1, :cond_75

    .line 342
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_58

    const/16 v4, 0xa

    if-eq v0, v4, :cond_58

    const/16 v5, 0xd

    if-ne v0, v5, :cond_32

    goto :goto_58

    .line 359
    :cond_32
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 360
    .local v2, "p":I
    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 361
    .local v3, "lim":I
    sub-int v6, v3, v2

    if-ge v1, v6, :cond_3c

    .line 362
    add-int v3, v2, v1

    .line 363
    :cond_3c
    :goto_3c
    if-ge v2, v3, :cond_50

    .line 365
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v0, v6, v2

    .line 368
    if-eq v0, v4, :cond_50

    if-ne v0, v5, :cond_47

    .line 369
    goto :goto_50

    .line 370
    :cond_47
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "off":I
    .local v6, "off":I
    int-to-char v7, v0

    aput-char v7, p1, p2

    .line 371
    add-int/lit8 v2, v2, 0x1

    move p2, v6

    goto :goto_3c

    .line 373
    .end local v6    # "off":I
    .restart local p2    # "off":I
    :cond_50
    :goto_50
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v4, v2, v4

    sub-int/2addr v1, v4

    .line 374
    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 375
    .end local v2    # "p":I
    .end local v3    # "lim":I
    goto :goto_21

    .line 346
    :cond_58
    :goto_58
    if-lt v2, v3, :cond_5f

    if-ge v1, p3, :cond_5f

    .line 347
    sub-int v2, p3, v1

    return v2

    .line 348
    :cond_5f
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 349
    if-gez v0, :cond_6c

    .line 351
    sub-int/2addr p3, v1

    .line 352
    if-gtz p3, :cond_6a

    const/4 v2, -0x1

    goto :goto_6b

    :cond_6a
    move v2, p3

    :goto_6b
    return v2

    .line 354
    :cond_6c
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    int-to-char v3, v0

    aput-char v3, p1, p2

    .line 355
    add-int/lit8 v1, v1, -0x1

    move p2, v2

    goto :goto_21

    .line 377
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_75
    return p3
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 534
    .local v0, "ch":I
    if-gez v0, :cond_8

    .line 535
    const/4 v1, 0x0

    return-object v1

    .line 536
    :cond_8
    const/16 v1, 0xd

    if-eq v0, v1, :cond_69

    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    goto :goto_69

    .line 538
    :cond_11
    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    .line 539
    .local v3, "start":I
    :cond_15
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v4, v5, :cond_50

    .line 541
    iget-object v5, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v5, v4

    .line 542
    if-eq v0, v1, :cond_27

    if-ne v0, v2, :cond_15

    .line 544
    :cond_27
    add-int/lit8 v6, v6, -0x1

    .line 545
    .local v6, "end":I
    if-eq v0, v2, :cond_46

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v1

    if-nez v1, :cond_46

    .line 547
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v4, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v1, v4, :cond_3c

    .line 549
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 550
    goto :goto_50

    .line 552
    :cond_3c
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v4, v4, v1

    if-ne v4, v2, :cond_46

    .line 553
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 555
    :cond_46
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int v4, v6, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 558
    .end local v6    # "end":I
    :cond_50
    :goto_50
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 560
    const/16 v2, 0x49

    invoke-virtual {p0, v1, v2}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 561
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 537
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "start":I
    :cond_69
    :goto_69
    const-string v1, ""

    return-object v1
.end method

.method public readLine(Ljava/lang/StringBuffer;C)V
    .registers 9
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "mode"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    :goto_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 492
    .local v0, "ch":I
    if-gez v0, :cond_7

    .line 493
    return-void

    .line 494
    :cond_7
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 495
    .local v1, "start":I
    :cond_d
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v3, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v2, v3, :cond_5c

    .line 497
    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v0, v3, v2

    .line 498
    const/16 v2, 0xd

    const/16 v5, 0xa

    if-eq v0, v2, :cond_23

    if-ne v0, v5, :cond_d

    .line 500
    :cond_23
    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 501
    const/16 v3, 0x50

    if-ne p2, v3, :cond_34

    .line 503
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 504
    return-void

    .line 506
    :cond_34
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v3

    const/16 v4, 0x49

    if-nez v3, :cond_56

    if-ne v0, v5, :cond_3f

    goto :goto_56

    .line 513
    :cond_3f
    if-eq p2, v4, :cond_44

    .line 514
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_44
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 516
    if-ne v0, v5, :cond_50

    .line 518
    if-eq p2, v4, :cond_5b

    .line 519
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5b

    .line 521
    :cond_50
    if-ltz v0, :cond_5b

    .line 522
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_5b

    .line 508
    :cond_56
    :goto_56
    if-eq p2, v4, :cond_5b

    .line 509
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_5b
    :goto_5b
    return-void

    .line 527
    :cond_5c
    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    sub-int/2addr v2, v1

    invoke-virtual {p1, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 528
    .end local v0    # "ch":I
    .end local v1    # "start":I
    goto :goto_0
.end method

.method public ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    if-lez v0, :cond_14

    .line 474
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    if-le v0, v1, :cond_c

    .line 475
    iput v0, p0, Lgnu/text/LineBufferedReader;->highestPos:I

    .line 476
    :cond_c
    iget v0, p0, Lgnu/text/LineBufferedReader;->markPos:I

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/LineBufferedReader;->readAheadLimit:I

    .line 478
    return-void

    .line 473
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBuffer([C)V
    .registers 5
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 188
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    if-eqz v1, :cond_10

    .line 190
    array-length v2, v1

    new-array p1, v2, [C

    .line 191
    array-length v2, v1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 194
    :cond_10
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_28

    .line 198
    :cond_17
    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-gt v1, v2, :cond_29

    .line 200
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 201
    invoke-direct {p0, p1, v0}, Lgnu/text/LineBufferedReader;->reserve([CI)V

    .line 203
    :goto_28
    return-void

    .line 199
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "setBuffer - too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setConvertCR(Z)V
    .registers 3
    .param p1, "convertCR"    # Z

    .line 101
    if-eqz p1, :cond_9

    .line 102
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_f

    .line 104
    :cond_9
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 105
    :goto_f
    return-void
.end method

.method public setKeepFullLines(Z)V
    .registers 3
    .param p1, "keep"    # Z

    .line 90
    if-eqz p1, :cond_9

    .line 91
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    goto :goto_f

    .line 93
    :cond_9
    iget v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/text/LineBufferedReader;->flags:I

    .line 94
    :goto_f
    return-void
.end method

.method public setLineNumber(I)V
    .registers 4
    .param p1, "lineNumber"    # I

    .line 421
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 422
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 397
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/LineBufferedReader;->setPath(Lgnu/text/Path;)V

    .line 398
    return-void
.end method

.method public setPath(Lgnu/text/Path;)V
    .registers 2
    .param p1, "path"    # Lgnu/text/Path;

    .line 387
    iput-object p1, p0, Lgnu/text/LineBufferedReader;->path:Lgnu/text/Path;

    .line 388
    return-void
.end method

.method public skip(I)I
    .registers 9
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    if-gez p1, :cond_12

    .line 569
    neg-int v0, p1

    .line 570
    .local v0, "to_do":I
    :goto_3
    if-lez v0, :cond_f

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v1, :cond_f

    .line 571
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 570
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 572
    :cond_f
    add-int v1, p1, v0

    return v1

    .line 577
    .end local v0    # "to_do":I
    :cond_12
    move v0, p1

    .line 579
    .restart local v0    # "to_do":I
    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v2, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v1, v2, :cond_1b

    .line 580
    const/4 v1, 0x0

    .local v1, "ch":I
    goto :goto_33

    .line 581
    .end local v1    # "ch":I
    :cond_1b
    if-lez v1, :cond_24

    .line 582
    iget-object v2, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v2, v1

    .restart local v1    # "ch":I
    goto :goto_33

    .line 583
    .end local v1    # "ch":I
    :cond_24
    iget v1, p0, Lgnu/text/LineBufferedReader;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_31

    iget v1, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ltz v1, :cond_2f

    goto :goto_31

    .line 586
    :cond_2f
    const/4 v1, 0x0

    .restart local v1    # "ch":I
    goto :goto_33

    .line 584
    .end local v1    # "ch":I
    :cond_31
    :goto_31
    const/16 v1, 0xa

    .line 587
    .restart local v1    # "ch":I
    :goto_33
    if-lez v0, :cond_70

    .line 589
    const/16 v2, 0xa

    if-eq v1, v2, :cond_64

    const/16 v3, 0xd

    if-eq v1, v3, :cond_64

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v4, v5, :cond_44

    goto :goto_64

    .line 598
    :cond_44
    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 599
    .local v4, "p":I
    iget v5, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 600
    .local v5, "lim":I
    sub-int v6, v5, v4

    if-ge v0, v6, :cond_4e

    .line 601
    add-int v5, v4, v0

    .line 602
    :cond_4e
    :goto_4e
    if-ge v4, v5, :cond_5c

    .line 604
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v1, v6, v4

    .line 607
    if-eq v1, v2, :cond_5c

    if-ne v1, v3, :cond_59

    .line 608
    goto :goto_5c

    .line 609
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 611
    :cond_5c
    :goto_5c
    iget v2, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int v2, v4, v2

    sub-int/2addr v0, v2

    .line 612
    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 613
    .end local v4    # "p":I
    .end local v5    # "lim":I
    goto :goto_33

    .line 591
    :cond_64
    :goto_64
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 592
    if-gez v1, :cond_6d

    .line 593
    sub-int v2, p1, v0

    return v2

    .line 594
    :cond_6d
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    .line 615
    :cond_70
    return p1
.end method

.method public skip()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    .line 633
    return-void
.end method

.method public skipRestOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    :goto_0
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 656
    .local v0, "c":I
    if-gez v0, :cond_7

    .line 657
    return-void

    .line 658
    :cond_7
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_19

    .line 660
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 661
    if-ltz v0, :cond_1c

    if-eq v0, v2, :cond_1c

    .line 662
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->unread()V

    goto :goto_1c

    .line 665
    :cond_19
    if-ne v0, v2, :cond_1d

    .line 666
    nop

    .line 668
    .end local v0    # "c":I
    :cond_1c
    :goto_1c
    return-void

    .line 667
    :cond_1d
    goto :goto_0
.end method

.method public final skip_quick()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 628
    return-void
.end method

.method public unread()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    if-eqz v0, :cond_4b

    .line 676
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 677
    iget-object v1, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v1, v1, v0

    .line 678
    .local v1, "ch":C
    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq v1, v3, :cond_14

    if-ne v1, v2, :cond_4a

    .line 680
    :cond_14
    if-lez v0, :cond_2c

    if-ne v1, v3, :cond_2c

    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v5, v4, -0x1

    aget-char v0, v0, v5

    if-ne v0, v2, :cond_2c

    .line 681
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 682
    :cond_2c
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v4, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    if-ge v0, v4, :cond_4a

    .line 684
    iget v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->lineNumber:I

    .line 686
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .local v0, "i":I
    :cond_3a
    if-lez v0, :cond_48

    .line 688
    iget-object v4, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v4, v0

    .line 689
    if-eq v1, v2, :cond_46

    if-ne v1, v3, :cond_3a

    .line 691
    :cond_46
    add-int/lit8 v0, v0, 0x1

    .line 695
    :cond_48
    iput v0, p0, Lgnu/text/LineBufferedReader;->lineStartPos:I

    .line 698
    .end local v0    # "i":I
    :cond_4a
    return-void

    .line 675
    .end local v1    # "ch":C
    :cond_4b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unread too much"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method public unread_quick()V
    .registers 2

    .line 705
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 706
    return-void
.end method

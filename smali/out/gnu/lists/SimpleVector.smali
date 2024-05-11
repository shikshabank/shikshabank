.class public abstract Lgnu/lists/SimpleVector;
.super Lgnu/lists/AbstractSequence;
.source "SimpleVector.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Lgnu/lists/Array;


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method

.method protected static compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .registers 9
    .param p0, "v1"    # Lgnu/lists/SimpleVector;
    .param p1, "v2"    # Lgnu/lists/SimpleVector;

    .line 388
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 389
    .local v0, "n1":I
    iget v1, p1, Lgnu/lists/SimpleVector;->size:I

    .line 390
    .local v1, "n2":I
    if-le v0, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 391
    .local v2, "n":I
    :goto_9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_21

    .line 393
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v4

    .line 394
    .local v4, "i1":I
    invoke-virtual {p1, v3}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v5

    .line 395
    .local v5, "i2":I
    const/16 v6, 0xb

    if-eq v6, v5, :cond_1e

    .line 396
    if-le v4, v5, :cond_1c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v6, -0x1

    :goto_1d
    return v6

    .line 391
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 398
    .end local v3    # "i":I
    :cond_21
    sub-int v3, v0, v1

    return v3
.end method

.method protected static compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I
    .registers 11
    .param p0, "v1"    # Lgnu/lists/SimpleVector;
    .param p1, "v2"    # Lgnu/lists/SimpleVector;

    .line 403
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 404
    .local v0, "n1":I
    iget v1, p1, Lgnu/lists/SimpleVector;->size:I

    .line 405
    .local v1, "n2":I
    if-le v0, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 406
    .local v2, "n":I
    :goto_9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_23

    .line 408
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v4

    .line 409
    .local v4, "i1":J
    invoke-virtual {p1, v3}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v6

    .line 410
    .local v6, "i2":J
    cmp-long v8, v4, v6

    if-eqz v8, :cond_20

    .line 411
    cmp-long v8, v4, v6

    if-lez v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v8, -0x1

    :goto_1f
    return v8

    .line 406
    .end local v4    # "i1":J
    .end local v6    # "i2":J
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 413
    .end local v3    # "i":I
    :cond_23
    sub-int v3, v0, v1

    return v3
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 227
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 228
    .local v0, "newSize":I
    iput v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 229
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    .line 230
    .local v1, "length":I
    if-le v0, v1, :cond_16

    .line 231
    const/16 v2, 0x10

    if-ge v1, v2, :cond_11

    goto :goto_13

    :cond_11
    mul-int/lit8 v2, v1, 0x2

    :goto_13
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 232
    :cond_16
    iput v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 233
    if-eq v0, p1, :cond_21

    .line 234
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    invoke-virtual {p0, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 235
    :cond_21
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 213
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 8
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "changed":Z
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 243
    .local v1, "count":I
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 244
    add-int v2, p1, v1

    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 245
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 247
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    move p1, v3

    goto :goto_18

    .line 250
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "index":I
    .restart local p1    # "index":I
    :cond_2a
    return v0
.end method

.method protected addPos(ILjava/lang/Object;)I
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 219
    ushr-int/lit8 v0, p1, 0x1

    .line 220
    .local v0, "index":I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/SimpleVector;->add(ILjava/lang/Object;)V

    .line 222
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public clear()V
    .registers 2

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 380
    return-void
.end method

.method protected abstract clearBuffer(II)V
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 418
    shl-int/lit8 v0, p1, 0x1

    add-int v1, p1, p2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/SimpleVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 419
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 423
    ushr-int/lit8 v0, p1, 0x1

    .line 424
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt v0, v1, :cond_8

    .line 425
    const/4 v1, 0x0

    return v1

    .line 426
    :cond_8
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 427
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 7
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 432
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 433
    return-void

    .line 434
    :cond_7
    ushr-int/lit8 v0, p1, 0x1

    .line 435
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 436
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    if-le v1, v2, :cond_11

    .line 437
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 438
    :cond_11
    :goto_11
    if-ge v0, v1, :cond_1d

    .line 439
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 440
    :cond_1d
    return-void
.end method

.method public createPos(IZ)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 102
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    return v0
.end method

.method public fill(IILjava/lang/Object;)V
    .registers 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 199
    if-ltz p1, :cond_10

    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-gt p2, v0, :cond_10

    .line 201
    move v0, p1

    .local v0, "i":I
    :goto_7
    if-ge v0, p2, :cond_f

    .line 202
    invoke-virtual {p0, v0, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 203
    .end local v0    # "i":I
    :cond_f
    return-void

    .line 200
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method public fill(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 185
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .local v0, "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    .line 186
    invoke-virtual {p0, v0, p1}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 187
    .end local v0    # "i":I
    :cond_a
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .registers 6
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 191
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_8

    :cond_6
    ushr-int/lit8 v1, p1, 0x1

    .line 192
    .local v1, "i":I
    :goto_8
    if-ne p2, v0, :cond_d

    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_f

    :cond_d
    ushr-int/lit8 v0, p2, 0x1

    .line 193
    .local v0, "j":I
    :goto_f
    if-ge v1, v0, :cond_17

    .line 194
    invoke-virtual {p0, v1, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 195
    :cond_17
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 130
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected abstract getBuffer()Ljava/lang/Object;
.end method

.method protected abstract getBuffer(I)Ljava/lang/Object;
.end method

.method public abstract getBufferLength()I
.end method

.method public getElementKind()I
    .registers 2

    .line 449
    const/16 v0, 0x20

    return v0
.end method

.method public getNextKind(I)I
    .registers 3
    .param p1, "ipos"    # I

    .line 444
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .registers 4
    .param p1, "ipos"    # I

    .line 137
    ushr-int/lit8 v0, p1, 0x1

    .line 138
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-lt v0, v1, :cond_9

    sget-object v1, Lgnu/lists/SimpleVector;->eofValue:Ljava/lang/Object;

    goto :goto_d

    :cond_9
    invoke-virtual {p0, v0}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    return-object v1
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .line 167
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public intAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 148
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_9

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->intAtBuffer(I)I

    move-result v0

    return v0

    .line 149
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public intAtBuffer(I)I
    .registers 3
    .param p1, "index"    # I

    .line 143
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isAfterPos(I)Z
    .registers 3
    .param p1, "ipos"    # I

    .line 92
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public longAt(I)J
    .registers 4
    .param p1, "index"    # I

    .line 155
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_9

    .line 157
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->longAtBuffer(I)J

    move-result-wide v0

    return-wide v0

    .line 156
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public longAtBuffer(I)J
    .registers 4
    .param p1, "index"    # I

    .line 162
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected nextIndex(I)I
    .registers 3
    .param p1, "ipos"    # I

    .line 97
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_8

    :cond_6
    ushr-int/lit8 v0, p1, 0x1

    :goto_8
    return v0
.end method

.method public nextPos(I)I
    .registers 5
    .param p1, "ipos"    # I

    .line 107
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 108
    return v0

    .line 109
    :cond_5
    ushr-int/lit8 v1, p1, 0x1

    .line 110
    .local v1, "index":I
    iget v2, p0, Lgnu/lists/SimpleVector;->size:I

    if-ne v1, v2, :cond_c

    .line 111
    return v0

    .line 112
    :cond_c
    shl-int/lit8 v0, v1, 0x1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I

    .line 311
    if-ltz p1, :cond_19

    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_19

    .line 313
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    .local v0, "result":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 315
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 316
    invoke-virtual {p0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 317
    return-object v0

    .line 312
    .end local v0    # "result":Ljava/lang/Object;
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 322
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 324
    const/4 v1, 0x0

    return v1

    .line 325
    :cond_8
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 326
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 327
    invoke-virtual {p0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 328
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7
    .param p1, "c"    # Ljava/util/Collection;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 336
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v2, v3, :cond_1d

    .line 338
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 339
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 341
    const/4 v0, 0x1

    goto :goto_1a

    .line 345
    :cond_13
    if-eqz v0, :cond_18

    .line 346
    invoke-virtual {p0, v1, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 336
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 350
    .end local v2    # "i":I
    :cond_1d
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 351
    return v0
.end method

.method public removePos(II)V
    .registers 7
    .param p1, "ipos"    # I
    .param p2, "count"    # I

    .line 287
    ushr-int/lit8 v0, p1, 0x1

    .line 288
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    if-le v0, v1, :cond_8

    .line 289
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 291
    :cond_8
    if-ltz p2, :cond_e

    .line 293
    move v2, v0

    .line 294
    .local v2, "ipos0":I
    add-int v3, v0, p2

    .local v3, "ipos1":I
    goto :goto_12

    .line 298
    .end local v2    # "ipos0":I
    .end local v3    # "ipos1":I
    :cond_e
    add-int v2, v0, p2

    .line 299
    .restart local v2    # "ipos0":I
    move v3, v0

    .line 300
    .restart local v3    # "ipos1":I
    neg-int p2, p2

    .line 302
    :goto_12
    if-ltz v2, :cond_23

    if-ge v3, v1, :cond_23

    .line 304
    sub-int/2addr v1, v3

    invoke-virtual {p0, v3, v2, v1}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 305
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, p2

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 306
    invoke-virtual {p0, v1, p2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 307
    return-void

    .line 303
    :cond_23
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method protected removePosRange(II)V
    .registers 5
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .line 273
    ushr-int/lit8 p1, p1, 0x1

    .line 274
    ushr-int/lit8 p2, p2, 0x1

    .line 275
    if-lt p1, p2, :cond_7

    .line 276
    return-void

    .line 277
    :cond_7
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-le p2, v0, :cond_d

    .line 278
    iget p2, p0, Lgnu/lists/SimpleVector;->size:I

    .line 279
    :cond_d
    sub-int/2addr v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 280
    sub-int v0, p2, p1

    .line 281
    .local v0, "count":I
    iget v1, p0, Lgnu/lists/SimpleVector;->size:I

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 282
    invoke-virtual {p0, v1, v0}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 283
    return-void
.end method

.method protected resizeShift(IIII)V
    .registers 12
    .param p1, "oldGapStart"    # I
    .param p2, "oldGapEnd"    # I
    .param p3, "newGapStart"    # I
    .param p4, "newGapEnd"    # I

    .line 58
    sub-int v0, p2, p1

    .line 59
    .local v0, "oldGapSize":I
    sub-int v1, p4, p3

    .line 60
    .local v1, "newGapSize":I
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    .line 61
    .local v2, "oldLength":I
    sub-int v3, v2, v0

    add-int/2addr v3, v1

    .line 62
    .local v3, "newLength":I
    if-le v3, v2, :cond_12

    .line 64
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 65
    iput v3, p0, Lgnu/lists/SimpleVector;->size:I

    .line 67
    :cond_12
    sub-int v4, p1, p3

    .line 68
    .local v4, "gapDelta":I
    if-ltz v4, :cond_23

    .line 70
    sub-int v5, v2, p2

    .line 71
    .local v5, "endLength":I
    sub-int v6, v3, v5

    invoke-virtual {p0, p2, v6, v5}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 72
    if-lez v4, :cond_22

    .line 73
    invoke-virtual {p0, p3, p4, v4}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 74
    .end local v5    # "endLength":I
    :cond_22
    goto :goto_2f

    .line 77
    :cond_23
    sub-int v5, v3, p4

    .line 78
    .restart local v5    # "endLength":I
    sub-int v6, v2, v5

    invoke-virtual {p0, v6, p4, v5}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 79
    sub-int v6, p3, p1

    invoke-virtual {p0, p2, p1, v6}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 81
    .end local v5    # "endLength":I
    :goto_2f
    invoke-virtual {p0, p3, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 82
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7
    .param p1, "c"    # Ljava/util/Collection;

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 358
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v3, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge v2, v3, :cond_1d

    .line 360
    invoke-virtual {p0, v2}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 361
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 363
    const/4 v0, 0x1

    goto :goto_1a

    .line 367
    :cond_13
    if-eqz v0, :cond_18

    .line 368
    invoke-virtual {p0, v1, v3}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 358
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 372
    .end local v2    # "i":I
    :cond_1d
    invoke-virtual {p0, v1}, Lgnu/lists/SimpleVector;->setSize(I)V

    .line 373
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 174
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    if-ge p1, v0, :cond_c

    .line 176
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->getBuffer(I)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "old":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0

    .line 175
    .end local v0    # "old":Ljava/lang/Object;
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected abstract setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setBufferLength(I)V
.end method

.method public setSize(I)V
    .registers 6
    .param p1, "size"    # I

    .line 39
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    .line 40
    .local v0, "oldSize":I
    iput p1, p0, Lgnu/lists/SimpleVector;->size:I

    .line 41
    if-ge p1, v0, :cond_c

    .line 42
    sub-int v1, v0, p1

    invoke-virtual {p0, p1, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    goto :goto_21

    .line 45
    :cond_c
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    .line 46
    .local v1, "oldLength":I
    if-le p1, v1, :cond_21

    .line 48
    const/16 v2, 0x10

    if-ge v1, v2, :cond_17

    goto :goto_19

    :cond_17
    mul-int/lit8 v2, v1, 0x2

    .line 49
    .local v2, "newLength":I
    :goto_19
    if-le p1, v2, :cond_1d

    move v3, p1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    invoke-virtual {p0, v3}, Lgnu/lists/SimpleVector;->setBufferLength(I)V

    .line 52
    .end local v1    # "oldLength":I
    .end local v2    # "newLength":I
    :cond_21
    :goto_21
    return-void
.end method

.method public shift(III)V
    .registers 5
    .param p1, "srcStart"    # I
    .param p2, "dstStart"    # I
    .param p3, "count"    # I

    .line 207
    invoke-virtual {p0}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "data":Ljava/lang/Object;
    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-void
.end method

.method public final size()I
    .registers 2

    .line 25
    iget v0, p0, Lgnu/lists/SimpleVector;->size:I

    return v0
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .registers 7
    .param p1, "lowBounds"    # [I
    .param p2, "dimensions"    # [I
    .param p3, "offset0"    # I
    .param p4, "factors"    # [I

    .line 455
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 456
    .local v0, "array":Lgnu/lists/GeneralArray;
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 457
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 458
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 459
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 460
    iput-object p0, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 461
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgnu/lists/GeneralArray;->simple:Z

    .line 462
    return-object v0
.end method

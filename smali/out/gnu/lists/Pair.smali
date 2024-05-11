.class public Lgnu/lists/Pair;
.super Lgnu/lists/LList;
.source "Pair.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected car:Ljava/lang/Object;

.field protected cdr:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "carval"    # Ljava/lang/Object;
    .param p2, "cdrval"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I
    .registers 9
    .param p0, "pair1"    # Lgnu/lists/Pair;
    .param p1, "pair2"    # Lgnu/lists/Pair;

    .line 198
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 199
    return v0

    .line 200
    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    .line 201
    return v1

    .line 202
    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    .line 203
    return v2

    .line 206
    :cond_c
    :goto_c
    iget-object v3, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 207
    .local v3, "x1":Ljava/lang/Object;
    iget-object v4, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 208
    .local v4, "x2":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    move-object v6, v4

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 209
    .local v5, "d":I
    if-eqz v5, :cond_1d

    .line 210
    return v5

    .line 211
    :cond_1d
    iget-object v3, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 212
    iget-object v4, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 213
    if-ne v3, v4, :cond_24

    .line 214
    return v0

    .line 215
    :cond_24
    if-nez v3, :cond_27

    .line 216
    return v1

    .line 217
    :cond_27
    if-nez v4, :cond_2a

    .line 218
    return v2

    .line 219
    :cond_2a
    instance-of v6, v3, Lgnu/lists/Pair;

    if-eqz v6, :cond_3a

    instance-of v6, v4, Lgnu/lists/Pair;

    if-nez v6, :cond_33

    goto :goto_3a

    .line 221
    :cond_33
    move-object p0, v3

    check-cast p0, Lgnu/lists/Pair;

    .line 222
    move-object p1, v4

    check-cast p1, Lgnu/lists/Pair;

    .line 223
    .end local v3    # "x1":Ljava/lang/Object;
    .end local v4    # "x2":Ljava/lang/Object;
    .end local v5    # "d":I
    goto :goto_c

    .line 220
    .restart local v3    # "x1":Ljava/lang/Object;
    .restart local v4    # "x2":Ljava/lang/Object;
    .restart local v5    # "d":I
    :cond_3a
    :goto_3a
    move-object v0, v3

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v4

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z
    .registers 7
    .param p0, "pair1"    # Lgnu/lists/Pair;
    .param p1, "pair2"    # Lgnu/lists/Pair;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 172
    return v0

    .line 173
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3b

    if-nez p1, :cond_a

    goto :goto_3b

    .line 177
    :cond_a
    :goto_a
    iget-object v2, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 178
    .local v2, "x1":Ljava/lang/Object;
    iget-object v3, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 179
    .local v3, "x2":Ljava/lang/Object;
    if-eq v2, v3, :cond_19

    if-eqz v2, :cond_18

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 180
    :cond_18
    return v1

    .line 181
    :cond_19
    iget-object v2, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 182
    iget-object v3, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 183
    if-ne v2, v3, :cond_20

    .line 184
    return v0

    .line 185
    :cond_20
    if-eqz v2, :cond_3a

    if-nez v3, :cond_25

    goto :goto_3a

    .line 187
    :cond_25
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_35

    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_2e

    goto :goto_35

    .line 189
    :cond_2e
    move-object p0, v2

    check-cast p0, Lgnu/lists/Pair;

    .line 190
    move-object p1, v3

    check-cast p1, Lgnu/lists/Pair;

    .line 192
    .end local v2    # "x1":Ljava/lang/Object;
    .end local v3    # "x2":Ljava/lang/Object;
    goto :goto_a

    .line 188
    .restart local v2    # "x1":Ljava/lang/Object;
    .restart local v3    # "x2":Ljava/lang/Object;
    :cond_35
    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 186
    :cond_3a
    :goto_3a
    return v1

    .line 174
    .end local v2    # "x1":Ljava/lang/Object;
    .end local v3    # "x2":Ljava/lang/Object;
    :cond_3b
    :goto_3b
    return v1
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .registers 3
    .param p0, "car"    # Ljava/lang/Object;
    .param p1, "cdr"    # Ljava/lang/Object;

    .line 265
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 228
    sget-object v0, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_6

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_6
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-static {p0, v0}, Lgnu/lists/Pair;->compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 257
    if-eqz p1, :cond_e

    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_e

    .line 258
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-static {p0, v0}, Lgnu/lists/Pair;->equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z

    move-result v0

    return v0

    .line 260
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I

    .line 237
    move-object v0, p0

    .line 238
    .local v0, "pair":Lgnu/lists/Pair;
    move v1, p1

    .line 239
    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_1b

    .line 241
    add-int/lit8 v1, v1, -0x1

    .line 242
    iget-object v2, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_10

    .line 243
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    goto :goto_2

    .line 244
    :cond_10
    instance-of v3, v2, Lgnu/lists/Sequence;

    if-eqz v3, :cond_1b

    .line 245
    check-cast v2, Lgnu/lists/Sequence;

    invoke-interface {v2, v1}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 249
    :cond_1b
    if-nez v1, :cond_20

    .line 250
    iget-object v2, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v2

    .line 252
    :cond_20
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_27

    :goto_26
    throw v2

    :goto_27
    goto :goto_26
.end method

.method public getCar()Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .registers 2

    .line 33
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .registers 3
    .param p1, "ipos"    # I

    .line 118
    if-gtz p1, :cond_a

    .line 119
    if-nez p1, :cond_7

    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_9

    :cond_7
    sget-object v0, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    :goto_9
    return-object v0

    .line 120
    :cond_a
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .registers 3
    .param p1, "ipos"    # I

    .line 125
    if-gtz p1, :cond_e

    .line 126
    if-nez p1, :cond_7

    sget-object v0, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object v0

    iget-object v0, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    :goto_d
    return-object v0

    .line 127
    :cond_e
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext(I)Z
    .registers 3
    .param p1, "ipos"    # I

    .line 98
    if-gtz p1, :cond_8

    .line 99
    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 100
    :cond_8
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "hash":I
    move-object v1, p0

    .line 157
    .local v1, "list":Ljava/lang/Object;
    :goto_2
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_1a

    .line 159
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 160
    .local v2, "pair":Lgnu/lists/Pair;
    iget-object v3, v2, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 161
    .local v3, "obj":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v3, :cond_11

    const/4 v5, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_15
    add-int v0, v4, v5

    .line 162
    iget-object v1, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 163
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_2

    .line 164
    :cond_1a
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_25

    if-eqz v1, :cond_25

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 166
    :cond_25
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final lastPair()Lgnu/lists/Pair;
    .registers 4

    .line 132
    move-object v0, p0

    .line 135
    .local v0, "pair":Lgnu/lists/Pair;
    :goto_1
    iget-object v1, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 136
    .local v1, "next":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_b

    .line 137
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    .line 140
    .end local v1    # "next":Ljava/lang/Object;
    goto :goto_1

    .line 139
    .restart local v1    # "next":Ljava/lang/Object;
    :cond_b
    return-object v0
.end method

.method public length()I
    .registers 8

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "n":I
    move-object v1, p0

    .line 63
    .local v1, "slow":Ljava/lang/Object;
    move-object v2, p0

    .line 66
    .local v2, "fast":Ljava/lang/Object;
    :goto_3
    sget-object v3, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_8

    .line 67
    return v0

    .line 68
    :cond_8
    instance-of v3, v2, Lgnu/lists/Pair;

    const/4 v4, -0x2

    if-nez v3, :cond_20

    .line 70
    instance-of v3, v2, Lgnu/lists/Sequence;

    if-eqz v3, :cond_1f

    .line 72
    move-object v3, v2

    check-cast v3, Lgnu/lists/Sequence;

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    .line 73
    .local v3, "j":I
    if-ltz v3, :cond_1d

    add-int v4, v0, v3

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    return v4

    .line 75
    .end local v3    # "j":I
    :cond_1f
    return v4

    .line 77
    :cond_20
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    .line 78
    .local v3, "fast_pair":Lgnu/lists/Pair;
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_2c

    .line 79
    add-int/lit8 v4, v0, 0x1

    return v4

    .line 80
    :cond_2c
    if-ne v2, v1, :cond_32

    if-lez v0, :cond_32

    .line 81
    const/4 v4, -0x1

    return v4

    .line 82
    :cond_32
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v6, v5, Lgnu/lists/Pair;

    if-nez v6, :cond_3d

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    iget-object v2, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 86
    goto :goto_3

    .line 88
    :cond_3d
    instance-of v6, v1, Lgnu/lists/Pair;

    if-nez v6, :cond_42

    .line 89
    return v4

    .line 90
    :cond_42
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    iget-object v1, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 91
    check-cast v5, Lgnu/lists/Pair;

    iget-object v2, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 92
    nop

    .end local v3    # "fast_pair":Lgnu/lists/Pair;
    add-int/lit8 v0, v0, 0x2

    .line 93
    goto :goto_3
.end method

.method public nextPos(I)I
    .registers 5
    .param p1, "ipos"    # I

    .line 105
    const/4 v0, 0x0

    if-gtz p1, :cond_13

    .line 107
    if-gez p1, :cond_6

    .line 108
    return v0

    .line 109
    :cond_6
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    new-instance v1, Lgnu/lists/LListPosition;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v2}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    invoke-virtual {v0, v1}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v0

    return v0

    .line 112
    :cond_13
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    check-cast v1, Lgnu/lists/LListPosition;

    .line 113
    .local v1, "it":Lgnu/lists/LListPosition;
    invoke-virtual {v1}, Lgnu/lists/LListPosition;->gotoNext()Z

    move-result v2

    if-eqz v2, :cond_20

    move v0, p1

    :cond_20
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 329
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 335
    return-object p0
.end method

.method public setCar(Ljava/lang/Object;)V
    .registers 2
    .param p1, "car"    # Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public setCdr(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cdr"    # Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public setCdrBackdoor(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cdr"    # Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 4

    .line 42
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgnu/lists/Pair;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    .line 43
    .local v0, "n":I
    if-ltz v0, :cond_8

    .line 44
    return v0

    .line 45
    :cond_8
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 46
    const v1, 0x7fffffff

    return v1

    .line 47
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not a true list"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .line 270
    invoke-virtual {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    .line 271
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 272
    .local v1, "arr":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 273
    .local v2, "i":I
    move-object v3, p0

    .line 274
    .local v3, "rest":Lgnu/lists/Sequence;
    :goto_8
    if-ge v2, v0, :cond_1d

    instance-of v4, v3, Lgnu/lists/Pair;

    if-eqz v4, :cond_1d

    .line 276
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 277
    .local v4, "pair":Lgnu/lists/Pair;
    iget-object v5, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v5, v1, v2

    .line 278
    iget-object v5, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lgnu/lists/Sequence;

    .line 274
    .end local v4    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 280
    :cond_1d
    move v4, v2

    .line 281
    .local v4, "prefix":I
    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 283
    sub-int v5, v2, v4

    invoke-interface {v3, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 285
    :cond_2b
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "arr"    # [Ljava/lang/Object;

    .line 290
    array-length v0, p1

    .line 291
    .local v0, "alen":I
    invoke-virtual {p0}, Lgnu/lists/Pair;->length()I

    move-result v1

    .line 292
    .local v1, "len":I
    if-le v1, v0, :cond_a

    .line 295
    new-array p1, v1, [Ljava/lang/Object;

    .line 296
    move v0, v1

    .line 298
    :cond_a
    const/4 v2, 0x0

    .line 299
    .local v2, "i":I
    move-object v3, p0

    .line 300
    .local v3, "rest":Lgnu/lists/Sequence;
    :goto_c
    if-ge v2, v1, :cond_21

    instance-of v4, v3, Lgnu/lists/Pair;

    if-eqz v4, :cond_21

    .line 302
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 303
    .local v4, "pair":Lgnu/lists/Pair;
    iget-object v5, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 304
    iget-object v5, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lgnu/lists/Sequence;

    .line 300
    .end local v4    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 306
    :cond_21
    move v4, v2

    .line 307
    .local v4, "prefix":I
    :goto_22
    if-ge v2, v1, :cond_2f

    .line 309
    sub-int v5, v2, v4

    invoke-interface {v3, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 311
    :cond_2f
    if-ge v1, v0, :cond_34

    .line 312
    const/4 v5, 0x0

    aput-object v5, p1, v1

    .line 313
    :cond_34
    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 323
    return-void
.end method

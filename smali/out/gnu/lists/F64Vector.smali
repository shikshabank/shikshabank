.class public Lgnu/lists/F64Vector;
.super Lgnu/lists/SimpleVector;
.source "F64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[D


# instance fields
.field data:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lgnu/lists/F64Vector;->empty:[D

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/F64Vector;->empty:[D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 35
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(ID)V
    .registers 5
    .param p1, "size"    # I
    .param p2, "value"    # D

    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [D

    .line 26
    .local v0, "array":[D
    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 27
    iput p1, p0, Lgnu/lists/F64Vector;->size:I

    .line 28
    :goto_9
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_10

    .line 29
    aput-wide p2, v0, p1

    goto :goto_9

    .line 30
    :cond_10
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .line 45
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/F64Vector;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public constructor <init>([D)V
    .registers 3
    .param p1, "data"    # [D

    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 41
    array-length v0, p1

    iput v0, p0, Lgnu/lists/F64Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 127
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_e

    .line 128
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 129
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_e
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 14
    .param p1, "obj"    # Ljava/lang/Object;

    .line 166
    move-object v0, p1

    check-cast v0, Lgnu/lists/F64Vector;

    .line 167
    .local v0, "vec2":Lgnu/lists/F64Vector;
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 168
    .local v1, "arr1":[D
    iget-object v2, v0, Lgnu/lists/F64Vector;->data:[D

    .line 169
    .local v2, "arr2":[D
    iget v3, p0, Lgnu/lists/F64Vector;->size:I

    .line 170
    .local v3, "n1":I
    iget v4, v0, Lgnu/lists/F64Vector;->size:I

    .line 171
    .local v4, "n2":I
    if-le v3, v4, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v3

    .line 172
    .local v5, "n":I
    :goto_10
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v5, :cond_26

    .line 174
    aget-wide v7, v1, v6

    .line 175
    .local v7, "v1":D
    aget-wide v9, v2, v6

    .line 176
    .local v9, "v2":D
    cmpl-double v11, v7, v9

    if-eqz v11, :cond_23

    .line 177
    cmpl-double v11, v7, v9

    if-lez v11, :cond_21

    const/4 v11, 0x1

    goto :goto_22

    :cond_21
    const/4 v11, -0x1

    :goto_22
    return v11

    .line 172
    .end local v7    # "v1":D
    .end local v9    # "v2":D
    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 179
    .end local v6    # "i":I
    :cond_26
    sub-int v6, v3, v4

    return v6
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 7
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 140
    ushr-int/lit8 v0, p1, 0x1

    .line 141
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/F64Vector;->size:I

    if-lt v0, v1, :cond_8

    .line 142
    const/4 v1, 0x0

    return v1

    .line 143
    :cond_8
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v2, v1, v0

    invoke-interface {p2, v2, v3}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 9
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 149
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    return-void

    .line 151
    :cond_7
    ushr-int/lit8 v0, p1, 0x1

    .line 152
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 153
    .local v1, "end":I
    :goto_b
    if-ge v0, v1, :cond_17

    .line 154
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v3, v2, v0

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 155
    :cond_17
    return-void
.end method

.method public final doubleAt(I)D
    .registers 5
    .param p1, "index"    # I

    .line 72
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-ge p1, v0, :cond_9

    .line 74
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    return-wide v1

    .line 73
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final doubleAtBuffer(I)D
    .registers 5
    .param p1, "index"    # I

    .line 79
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I

    .line 84
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-gt p1, v0, :cond_d

    .line 86
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .registers 2

    .line 68
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 53
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .registers 2

    .line 133
    const/16 v0, 0x1a

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "f64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .registers 5
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    double-to-int v0, v1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 198
    .local v0, "size":I
    new-array v1, v0, [D

    .line 199
    .local v1, "data":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 201
    .end local v2    # "i":I
    :cond_12
    iput-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    .line 202
    iput v0, p0, Lgnu/lists/F64Vector;->size:I

    .line 203
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Lgnu/lists/F64Vector;->data:[D

    invoke-static {p2}, Lgnu/lists/Convert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    aput-wide v2, v1, p1

    .line 115
    return-object v0
.end method

.method public setBufferLength(I)V
    .registers 7
    .param p1, "length"    # I

    .line 58
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    array-length v1, v0

    .line 59
    .local v1, "oldLength":I
    if-eq v1, p1, :cond_12

    .line 61
    new-array v2, p1, [D

    .line 62
    .local v2, "tmp":[D
    if-ge v1, p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, p1

    :goto_c
    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    .line 66
    .end local v2    # "tmp":[D
    :cond_12
    return-void
.end method

.method public final setDoubleAt(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 101
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    if-gt p1, v0, :cond_9

    .line 103
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aput-wide p2, v0, p1

    .line 104
    return-void

    .line 102
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setDoubleAtBuffer(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 108
    iget-object v0, p0, Lgnu/lists/F64Vector;->data:[D

    aput-wide p2, v0, p1

    .line 109
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget v0, p0, Lgnu/lists/F64Vector;->size:I

    .line 189
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_12

    .line 191
    iget-object v2, p0, Lgnu/lists/F64Vector;->data:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 192
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

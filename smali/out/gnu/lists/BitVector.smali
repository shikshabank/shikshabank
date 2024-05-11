.class public Lgnu/lists/BitVector;
.super Lgnu/lists/SimpleVector;
.source "BitVector.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field protected static empty:[Z


# instance fields
.field data:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Z

    sput-object v0, Lgnu/lists/BitVector;->empty:[Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 16
    sget-object v0, Lgnu/lists/BitVector;->empty:[Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 34
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "size"    # I
    .param p2, "value"    # Z

    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    new-array v0, p1, [Z

    .line 22
    .local v0, "array":[Z
    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 23
    iput p1, p0, Lgnu/lists/BitVector;->size:I

    .line 24
    if-eqz p2, :cond_13

    .line 26
    :goto_b
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_13

    .line 27
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_b

    .line 29
    :cond_13
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/BitVector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 3
    .param p1, "data"    # [Z

    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/BitVector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method public final booleanAt(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 71
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_9

    .line 73
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final booleanAtBuffer(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 78
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method protected clearBuffer(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 114
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_d

    .line 115
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 116
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_d
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 127
    ushr-int/lit8 v0, p1, 0x1

    .line 128
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/BitVector;->size:I

    if-lt v0, v1, :cond_8

    .line 129
    const/4 v1, 0x0

    return v1

    .line 130
    :cond_8
    iget-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 131
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 7
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 136
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    return-void

    .line 138
    :cond_7
    ushr-int/lit8 v0, p1, 0x1

    .line 139
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 140
    .local v1, "end":I
    :goto_b
    if-ge v0, v1, :cond_17

    .line 141
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v2, v2, v0

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 142
    :cond_17
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 83
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_d

    .line 85
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 84
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .registers 2

    .line 67
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 52
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .registers 2

    .line 120
    const/16 v0, 0x1b

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 123
    const-string v0, "b"

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 160
    .local v0, "size":I
    new-array v1, v0, [Z

    .line 161
    .local v1, "data":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 163
    .end local v2    # "i":I
    :cond_12
    iput-object v1, p0, Lgnu/lists/BitVector;->data:[Z

    .line 164
    iput v0, p0, Lgnu/lists/BitVector;->size:I

    .line 165
    return-void
.end method

.method public final setBooleanAt(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 102
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    if-gt p1, v0, :cond_9

    .line 104
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    .line 105
    return-void

    .line 103
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setBooleanAtBuffer(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 109
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aput-boolean p2, v0, p1

    .line 110
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v1, v0, p1

    .line 96
    .local v1, "old":Z
    invoke-static {p2}, Lgnu/lists/Convert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, p1

    .line 97
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBufferLength(I)V
    .registers 7
    .param p1, "length"    # I

    .line 57
    iget-object v0, p0, Lgnu/lists/BitVector;->data:[Z

    array-length v1, v0

    .line 58
    .local v1, "oldLength":I
    if-eq v1, p1, :cond_12

    .line 60
    new-array v2, p1, [Z

    .line 61
    .local v2, "tmp":[Z
    if-ge v1, p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, p1

    :goto_c
    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    .line 65
    .end local v2    # "tmp":[Z
    :cond_12
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Lgnu/lists/BitVector;->size:I

    .line 151
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_12

    .line 153
    iget-object v2, p0, Lgnu/lists/BitVector;->data:[Z

    aget-boolean v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 154
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

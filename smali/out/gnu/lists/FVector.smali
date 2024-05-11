.class public Lgnu/lists/FVector;
.super Lgnu/lists/SimpleVector;
.source "FVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/Consumable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[Ljava/lang/Object;


# instance fields
.field public data:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 21
    sget-object v0, Lgnu/lists/FVector;->empty:[Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "num"    # I

    .line 25
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 26
    iput p1, p0, Lgnu/lists/FVector;->size:I

    .line 27
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 5
    .param p1, "num"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    .line 33
    .local v0, "data":[Ljava/lang/Object;
    if-eqz p2, :cond_f

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_f

    .line 36
    aput-object p2, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 38
    .end local v1    # "i":I
    :cond_f
    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lgnu/lists/FVector;->size:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1, "seq"    # Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 53
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .param p1, "data"    # [Ljava/lang/Object;

    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lgnu/lists/FVector;->size:I

    .line 46
    iput-object p1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static varargs make([Ljava/lang/Object;)Lgnu/lists/FVector;
    .registers 2
    .param p0, "data"    # [Ljava/lang/Object;

    .line 66
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected clearBuffer(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 115
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 116
    .local v0, "d":[Ljava/lang/Object;
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_d

    .line 117
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const/4 v2, 0x0

    aput-object v2, v0, p1

    move p1, v1

    goto :goto_2

    .line 118
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_d
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 141
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;

    .line 142
    .local v0, "vec2":Lgnu/lists/FVector;
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 143
    .local v1, "d1":[Ljava/lang/Object;
    iget-object v2, v0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 144
    .local v2, "d2":[Ljava/lang/Object;
    iget v3, p0, Lgnu/lists/FVector;->size:I

    .line 145
    .local v3, "n1":I
    iget v4, v0, Lgnu/lists/FVector;->size:I

    .line 146
    .local v4, "n2":I
    if-le v3, v4, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v3

    .line 147
    .local v5, "n":I
    :goto_10
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v5, :cond_25

    .line 149
    aget-object v7, v1, v6

    check-cast v7, Ljava/lang/Comparable;

    .line 150
    .local v7, "v1":Ljava/lang/Comparable;
    aget-object v8, v2, v6

    check-cast v8, Ljava/lang/Comparable;

    .line 151
    .local v8, "v2":Ljava/lang/Comparable;
    invoke-interface {v7, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    .line 152
    .local v9, "d":I
    if-eqz v9, :cond_22

    .line 153
    return v9

    .line 147
    .end local v7    # "v1":Ljava/lang/Comparable;
    .end local v8    # "v2":Ljava/lang/Comparable;
    .end local v9    # "d":I
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 155
    .end local v6    # "i":I
    :cond_25
    sub-int v6, v3, v4

    return v6
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .registers 5
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 199
    const-string v0, "#vector"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 200
    iget v0, p0, Lgnu/lists/FVector;->size:I

    .line 201
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 202
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 203
    .end local v1    # "i":I
    :cond_14
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    .line 204
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 5
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 178
    ushr-int/lit8 v0, p1, 0x1

    .line 179
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/FVector;->size:I

    if-lt v0, v1, :cond_8

    .line 180
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_8
    iget-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 182
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 7
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 187
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    return-void

    .line 189
    :cond_7
    ushr-int/lit8 v0, p1, 0x1

    .line 190
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 191
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/FVector;->size:I

    if-le v1, v2, :cond_11

    .line 192
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .line 193
    :cond_11
    :goto_11
    if-ge v0, v1, :cond_1d

    .line 194
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 195
    :cond_1d
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    instance-of v1, p1, Lgnu/lists/FVector;

    if-nez v1, :cond_8

    goto :goto_2e

    .line 124
    :cond_8
    move-object v1, p1

    check-cast v1, Lgnu/lists/FVector;

    .line 125
    .local v1, "obj_vec":Lgnu/lists/FVector;
    iget v2, p0, Lgnu/lists/FVector;->size:I

    .line 126
    .local v2, "n":I
    iget-object v3, v1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v3, :cond_2d

    iget v3, v1, Lgnu/lists/FVector;->size:I

    if-eq v3, v2, :cond_16

    goto :goto_2d

    .line 128
    :cond_16
    iget-object v3, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 129
    .local v3, "this_data":[Ljava/lang/Object;
    iget-object v4, v1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 130
    .local v4, "obj_data":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v2, :cond_2b

    .line 132
    aget-object v6, v3, v5

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 133
    return v0

    .line 130
    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 135
    .end local v5    # "i":I
    :cond_2b
    const/4 v0, 0x1

    return v0

    .line 127
    .end local v3    # "this_data":[Ljava/lang/Object;
    .end local v4    # "obj_data":[Ljava/lang/Object;
    :cond_2d
    :goto_2d
    return v0

    .line 123
    .end local v1    # "obj_vec":Lgnu/lists/FVector;
    .end local v2    # "n":I
    :cond_2e
    :goto_2e
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 101
    iget v0, p0, Lgnu/lists/FVector;->size:I

    if-ge p1, v0, :cond_9

    .line 103
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 102
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .registers 2

    .line 87
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getBufferLength()I
    .registers 2

    .line 72
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
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

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 224
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 225
    .local v1, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_12

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 227
    .end local v2    # "i":I
    :cond_12
    iput v0, p0, Lgnu/lists/FVector;->size:I

    .line 228
    iput-object v1, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public final setAll(Ljava/lang/Object;)V
    .registers 4
    .param p1, "new_value"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 172
    .local v0, "d":[Ljava/lang/Object;
    iget v1, p0, Lgnu/lists/FVector;->size:I

    .local v1, "i":I
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_b

    .line 173
    aput-object p1, v0, v1

    goto :goto_4

    .line 174
    .end local v1    # "i":I
    :cond_b
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 109
    .local v1, "old":Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 110
    return-object v1
.end method

.method public setBufferLength(I)V
    .registers 7
    .param p1, "length"    # I

    .line 77
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    array-length v1, v0

    .line 78
    .local v1, "oldLength":I
    if-eq v1, p1, :cond_12

    .line 80
    new-array v2, p1, [Ljava/lang/Object;

    .line 81
    .local v2, "tmp":[Ljava/lang/Object;
    if-ge v1, p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, p1

    :goto_c
    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 85
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_12
    return-void
.end method

.method public shift(III)V
    .registers 5
    .param p1, "srcStart"    # I
    .param p2, "dstStart"    # I
    .param p3, "count"    # I

    .line 91
    iget-object v0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    invoke-static {v0, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
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

    .line 214
    iget v0, p0, Lgnu/lists/FVector;->size:I

    .line 215
    .local v0, "n":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_12

    .line 217
    iget-object v2, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 218
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

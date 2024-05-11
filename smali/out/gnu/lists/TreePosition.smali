.class public Lgnu/lists/TreePosition;
.super Lgnu/lists/SeqPosition;
.source "TreePosition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field depth:I

.field istack:[I

.field sstack:[Lgnu/lists/AbstractSequence;

.field start:I

.field private xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;I)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "index"    # I

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreePosition;)V
    .registers 2
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .line 56
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lgnu/lists/TreePosition;->set(Lgnu/lists/TreePosition;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "root"    # Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 46
    iput-object p1, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 62
    new-instance v0, Lgnu/lists/TreePosition;

    invoke-direct {v0, p0}, Lgnu/lists/TreePosition;-><init>(Lgnu/lists/TreePosition;)V

    return-object v0
.end method

.method public dump()V
    .registers 7

    .line 253
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TreePosition dump depth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/lists/TreePosition;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget v1, p0, Lgnu/lists/TreePosition;->depth:I

    if-gt v0, v1, :cond_7e

    .line 256
    if-nez v0, :cond_30

    iget-object v1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_35

    :cond_30
    iget-object v2, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    .line 257
    .local v1, "seq":Lgnu/lists/AbstractSequence;
    :goto_35
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ipos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_69

    iget v4, p0, Lgnu/lists/TreePosition;->ipos:I

    goto :goto_70

    :cond_69
    iget-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v5, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v5, v0

    aget v4, v4, v5

    :goto_70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    .end local v1    # "seq":Lgnu/lists/AbstractSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 260
    .end local v0    # "i":I
    :cond_7e
    return-void
.end method

.method public getAncestor(I)Ljava/lang/Object;
    .registers 5
    .param p1, "up"    # I

    .line 217
    if-nez p1, :cond_b

    .line 218
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_b
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    sub-int/2addr v0, p1

    .line 220
    .local v0, "i":I
    if-gtz v0, :cond_15

    .line 221
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->getRoot()Lgnu/lists/AbstractSequence;

    move-result-object v1

    return-object v1

    .line 222
    :cond_15
    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object v1, v1, v0

    iget-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getDepth()I
    .registers 2

    .line 96
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPosNext()Ljava/lang/Object;
    .registers 3

    .line 107
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_7

    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    goto :goto_f

    :cond_7
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getRoot()Lgnu/lists/AbstractSequence;
    .registers 3

    .line 102
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    aget-object v0, v0, v1

    :goto_d
    return-object v0
.end method

.method public gotoAttributesStart()Z
    .registers 2

    .line 192
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_a

    .line 194
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/AbstractSequence;

    .line 198
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_a
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoAttributesStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    return v0
.end method

.method public gotoChildrenStart()Z
    .registers 4

    .line 171
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 173
    iget-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    instance-of v2, v0, Lgnu/lists/AbstractSequence;

    if-nez v2, :cond_c

    .line 174
    return v1

    .line 175
    :cond_c
    iput v1, p0, Lgnu/lists/TreePosition;->depth:I

    .line 176
    check-cast v0, Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 177
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreePosition;->setPos(I)V

    goto :goto_25

    .line 181
    :cond_1c
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoChildrenStart(Lgnu/lists/TreePosition;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 182
    return v1

    .line 184
    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method

.method public final gotoParent()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractSequence;->gotoParent(Lgnu/lists/TreePosition;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public pop()V
    .registers 3

    .line 141
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 142
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->popNoRelease()V

    .line 143
    return-void
.end method

.method public popNoRelease()V
    .registers 4

    .line 147
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    if-gez v0, :cond_10

    .line 149
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    goto :goto_24

    .line 154
    :cond_10
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v2, v0

    aget-object v0, v1, v2

    iput-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 155
    iget-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lgnu/lists/TreePosition;->ipos:I

    .line 157
    :goto_24
    return-void
.end method

.method public push(Lgnu/lists/AbstractSequence;I)V
    .registers 11
    .param p1, "child"    # Lgnu/lists/AbstractSequence;
    .param p2, "iposChild"    # I

    .line 112
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    iget v1, p0, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v1, v0

    .line 113
    .local v1, "d":I
    if-ltz v1, :cond_3c

    .line 115
    if-nez v1, :cond_14

    .line 117
    const/16 v0, 0x8

    new-array v2, v0, [I

    iput-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 118
    new-array v0, v0, [Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    goto :goto_30

    .line 120
    :cond_14
    iget-object v2, p0, Lgnu/lists/TreePosition;->istack:[I

    array-length v3, v2

    if-lt v1, v3, :cond_30

    .line 122
    mul-int/lit8 v3, v1, 0x2

    .line 123
    .local v3, "ndepth":I
    new-array v4, v3, [I

    .line 124
    .local v4, "itemp":[I
    new-array v5, v3, [Ljava/lang/Object;

    .line 125
    .local v5, "xtemp":[Ljava/lang/Object;
    new-array v6, v3, [Lgnu/lists/AbstractSequence;

    .line 126
    .local v6, "stemp":[Lgnu/lists/AbstractSequence;
    const/4 v7, 0x0

    invoke-static {v2, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    invoke-static {v0, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v4, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 129
    iput-object v6, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 131
    .end local v3    # "ndepth":I
    .end local v4    # "itemp":[I
    .end local v5    # "xtemp":[Ljava/lang/Object;
    .end local v6    # "stemp":[Lgnu/lists/AbstractSequence;
    :cond_30
    :goto_30
    iget-object v0, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    iget-object v2, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    aput-object v2, v0, v1

    .line 132
    iget-object v0, p0, Lgnu/lists/TreePosition;->istack:[I

    iget v2, p0, Lgnu/lists/TreePosition;->ipos:I

    aput v2, v0, v1

    .line 134
    :cond_3c
    iget v0, p0, Lgnu/lists/TreePosition;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 135
    iput-object p1, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 136
    iput p2, p0, Lgnu/lists/TreePosition;->ipos:I

    .line 137
    return-void
.end method

.method public release()V
    .registers 3

    .line 228
    :goto_0
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    if-eqz v0, :cond_f

    .line 230
    iget-object v0, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 231
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->pop()V

    goto :goto_0

    .line 233
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public set(Lgnu/lists/TreePosition;)V
    .registers 9
    .param p1, "position"    # Lgnu/lists/TreePosition;

    .line 67
    invoke-virtual {p0}, Lgnu/lists/TreePosition;->release()V

    .line 68
    iget v0, p1, Lgnu/lists/TreePosition;->depth:I

    .line 69
    .local v0, "d":I
    iput v0, p0, Lgnu/lists/TreePosition;->depth:I

    .line 70
    if-gez v0, :cond_e

    .line 72
    iget-object v1, p1, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    iput-object v1, p0, Lgnu/lists/TreePosition;->xpos:Ljava/lang/Object;

    .line 73
    return-void

    .line 75
    :cond_e
    iget-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    if-eqz v1, :cond_15

    array-length v1, v1

    if-gt v1, v0, :cond_1b

    .line 76
    :cond_15
    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [Lgnu/lists/AbstractSequence;

    iput-object v1, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    .line 77
    :cond_1b
    iget-object v1, p0, Lgnu/lists/TreePosition;->istack:[I

    if-eqz v1, :cond_22

    array-length v1, v1

    if-gt v1, v0, :cond_28

    .line 78
    :cond_22
    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/lists/TreePosition;->istack:[I

    .line 81
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget v2, p0, Lgnu/lists/TreePosition;->depth:I

    if-ge v1, v2, :cond_4a

    .line 83
    iget v3, p1, Lgnu/lists/TreePosition;->start:I

    add-int/2addr v3, v1

    .line 84
    .local v3, "j":I
    iget-object v4, p1, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    aget-object v4, v4, v3

    .line 85
    .local v4, "seq":Lgnu/lists/AbstractSequence;
    iget-object v5, p0, Lgnu/lists/TreePosition;->sstack:[Lgnu/lists/AbstractSequence;

    add-int/lit8 v6, v2, -0x1

    aput-object v4, v5, v6

    .line 86
    iget-object v5, p0, Lgnu/lists/TreePosition;->istack:[I

    sub-int/2addr v2, v1

    iget-object v6, p1, Lgnu/lists/TreePosition;->istack:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v6

    aput v6, v5, v2

    .line 81
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 88
    .end local v4    # "seq":Lgnu/lists/AbstractSequence;
    :cond_4a
    iget-object v2, p1, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 89
    .local v2, "seq":Lgnu/lists/AbstractSequence;
    iput-object v2, p0, Lgnu/lists/TreePosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 90
    iget v3, p1, Lgnu/lists/TreePosition;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/lists/AbstractSequence;->copyPos(I)I

    move-result v3

    iput v3, p0, Lgnu/lists/TreePosition;->ipos:I

    .line 91
    return-void
.end method

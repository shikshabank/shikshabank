.class public Lgnu/bytecode/MiscAttr;
.super Lgnu/bytecode/Attribute;
.source "MiscAttr.java"


# instance fields
.field data:[B

.field dataLength:I

.field offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 27
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 19
    invoke-direct {p0, p1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 21
    iput p3, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 22
    iput p4, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    .line 23
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .line 32
    iget v0, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 7
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 91
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 92
    invoke-virtual {p0}, Lgnu/bytecode/MiscAttr;->getLength()I

    move-result v0

    .line 93
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_3c

    .line 95
    iget-object v2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v2, v2, v1

    .line 96
    .local v2, "b":I
    rem-int/lit8 v3, v1, 0x14

    const/16 v4, 0x20

    if-nez v3, :cond_17

    .line 97
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 98
    :cond_17
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 99
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 100
    and-int/lit8 v3, v2, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    rem-int/lit8 v3, v1, 0x14

    if-eqz v3, :cond_38

    if-ne v1, v0, :cond_3b

    .line 103
    :cond_38
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 104
    .end local v2    # "b":I
    :cond_3b
    goto :goto_8

    .line 105
    .end local v1    # "i":I
    :cond_3c
    return-void
.end method

.method protected put1(I)V
    .registers 6
    .param p1, "val"    # I

    .line 58
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    if-nez v0, :cond_b

    .line 59
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    goto :goto_1b

    .line 60
    :cond_b
    iget v1, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    .line 62
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 63
    .local v2, "tmp":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 66
    .end local v2    # "tmp":[B
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 67
    return-void
.end method

.method protected put2(I)V
    .registers 3
    .param p1, "val"    # I

    .line 71
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 72
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->put1(I)V

    .line 73
    return-void
.end method

.method protected put2(II)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "val"    # I

    .line 77
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 78
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 79
    return-void
.end method

.method protected u1()I
    .registers 3

    .line 46
    iget v0, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->u1(I)I

    move-result v0

    return v0
.end method

.method protected u1(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 36
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected u2()I
    .registers 3

    .line 51
    iget v0, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->u2(I)I

    move-result v0

    .line 52
    .local v0, "v":I
    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 53
    return v0
.end method

.method protected u2(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 41
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    return v1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    iget v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 87
    return-void
.end method

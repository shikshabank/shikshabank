.class public Lgnu/bytecode/LineNumbersAttr;
.super Lgnu/bytecode/Attribute;
.source "LineNumbersAttr.java"


# instance fields
.field linenumber_count:I

.field linenumber_table:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 24
    const-string v0, "LineNumberTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lgnu/bytecode/LineNumbersAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 27
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "numbers"    # [S
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 31
    invoke-direct {p0, p2}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 32
    iput-object p1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 33
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 34
    return-void
.end method


# virtual methods
.method public final getLength()I
    .registers 2

    .line 56
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLineCount()I
    .registers 2

    .line 58
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    return v0
.end method

.method public getLineNumberTable()[S
    .registers 2

    .line 59
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 73
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 75
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 77
    const-string v0, ", count: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    if-ge v0, v1, :cond_4d

    .line 81
    const-string v1, "  line: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    const-string v1, " at pc: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    mul-int/lit8 v3, v0, 0x2

    aget-short v1, v1, v3

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 86
    .end local v0    # "i":I
    :cond_4d
    return-void
.end method

.method public put(II)V
    .registers 7
    .param p1, "linenumber"    # I
    .param p2, "PC"    # I

    .line 41
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    if-nez v0, :cond_b

    .line 42
    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    goto :goto_1f

    .line 43
    :cond_b
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_1f

    .line 45
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [S

    .line 46
    .local v2, "new_linenumbers":[S
    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 50
    .end local v2    # "new_linenumbers":[S
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v1, 0x2

    int-to-short v3, p2

    aput-short v3, v0, v2

    .line 51
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-short v3, p1

    aput-short v3, v0, v2

    .line 52
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 53
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v0, 0x2

    .line 65
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 67
    iget-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 69
    .end local v1    # "i":I
    :cond_16
    return-void
.end method

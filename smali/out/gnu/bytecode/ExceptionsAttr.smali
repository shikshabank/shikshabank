.class public Lgnu/bytecode/ExceptionsAttr;
.super Lgnu/bytecode/Attribute;
.source "ExceptionsAttr.java"


# instance fields
.field exception_table:[S

.field exceptions:[Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "meth"    # Lgnu/bytecode/Method;

    .line 19
    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lgnu/bytecode/ExceptionsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 21
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 7
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 44
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 46
    .local v0, "cp":Lgnu/bytecode/ConstantPool;
    iget-object v1, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v1, v1

    .line 47
    .local v1, "count":I
    new-array v2, v1, [S

    iput-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 48
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_24

    .line 50
    iget-object v3, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    iget-object v4, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    iget v4, v4, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 48
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 52
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .registers 2

    .line 64
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getLength()I
    .registers 2

    .line 58
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 79
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 81
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 83
    const-string v0, ", count: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 85
    .local v0, "count":I
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    if-ge v1, v0, :cond_40

    .line 88
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v2, v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 89
    .local v2, "catch_type_index":I
    const-string v3, "  "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 91
    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 86
    .end local v2    # "catch_type_index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 94
    .end local v1    # "i":I
    :cond_40
    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "excep_types"    # [Lgnu/bytecode/ClassType;

    .line 39
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 40
    return-void
.end method

.method public setExceptions([SLgnu/bytecode/ClassType;)V
    .registers 7
    .param p1, "indices"    # [S
    .param p2, "cl"    # Lgnu/bytecode/ClassType;

    .line 27
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 28
    array-length v0, p1

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p2}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 30
    .local v0, "cp":Lgnu/bytecode/ConstantPool;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_25

    .line 31
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-short v3, p1, v1

    invoke-virtual {v0, v3}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v3}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    aput-object v3, v2, v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 33
    .end local v1    # "i":I
    :cond_25
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

    .line 69
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 70
    .local v0, "count":I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 73
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 75
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

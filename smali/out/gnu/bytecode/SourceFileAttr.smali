.class public Lgnu/bytecode/SourceFileAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceFileAttr.java"


# instance fields
.field filename:Ljava/lang/String;

.field filename_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/ClassType;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ctype"    # Lgnu/bytecode/ClassType;

    .line 58
    const-string v0, "SourceFile"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v0, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 61
    .local v0, "filenameConstant":Lgnu/bytecode/CpoolUtf8;
    iget-object v1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 62
    iput p1, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 52
    const-string v0, "SourceFile"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static fixSourceFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "fname"    # Ljava/lang/String;

    .line 26
    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "fsep":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 30
    .local v1, "fsep0":C
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1e

    .line 31
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 33
    .end local v1    # "fsep0":C
    :cond_1e
    return-object p0
.end method

.method public static setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .registers 4
    .param p0, "cl"    # Lgnu/bytecode/ClassType;
    .param p1, "filename"    # Ljava/lang/String;

    .line 38
    const-string v0, "SourceFile"

    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 39
    .local v0, "attr":Lgnu/bytecode/Attribute;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lgnu/bytecode/SourceFileAttr;

    if-eqz v1, :cond_13

    .line 41
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/SourceFileAttr;

    invoke-virtual {v1, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Ljava/lang/String;)V

    goto :goto_1b

    .line 45
    :cond_13
    new-instance v1, Lgnu/bytecode/SourceFileAttr;

    invoke-direct {v1, p1}, Lgnu/bytecode/SourceFileAttr;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "sattr":Lgnu/bytecode/SourceFileAttr;
    invoke-virtual {v1, p0}, Lgnu/bytecode/SourceFileAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 48
    .end local v1    # "sattr":Lgnu/bytecode/SourceFileAttr;
    :goto_1b
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 68
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 69
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    if-nez v0, :cond_17

    .line 70
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 71
    :cond_17
    return-void
.end method

.method public final getLength()I
    .registers 2

    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 4
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 82
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 86
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 88
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 89
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 91
    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    .line 22
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    return-void
.end method

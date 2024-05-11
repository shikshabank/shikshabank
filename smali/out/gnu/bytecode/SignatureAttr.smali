.class public Lgnu/bytecode/SignatureAttr;
.super Lgnu/bytecode/Attribute;
.source "SignatureAttr.java"


# instance fields
.field signature:Ljava/lang/String;

.field signature_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/Member;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "owner"    # Lgnu/bytecode/Member;

    .line 31
    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 32
    instance-of v0, p2, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_d

    move-object v0, p2

    check-cast v0, Lgnu/bytecode/ClassType;

    goto :goto_11

    :cond_d
    invoke-interface {p2}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 34
    .local v0, "ctype":Lgnu/bytecode/ClassType;
    :goto_11
    iget-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/CpoolUtf8;

    .line 36
    .local v1, "signatureConstant":Lgnu/bytecode/CpoolUtf8;
    iget-object v2, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v2, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 37
    iput p1, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "signature"    # Ljava/lang/String;

    .line 25
    const-string v0, "Signature"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 42
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 43
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    if-nez v0, :cond_17

    .line 44
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 45
    :cond_17
    return-void
.end method

.method public final getLength()I
    .registers 2

    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 4
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 56
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 57
    const-string v0, "  "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 59
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/SignatureAttr;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 62
    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .registers 3
    .param p1, "sig"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    .line 21
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

    .line 51
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    return-void
.end method

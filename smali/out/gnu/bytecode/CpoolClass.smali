.class public Lgnu/bytecode/CpoolClass;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolClass.java"


# instance fields
.field clas:Lgnu/bytecode/ObjectType;

.field name:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V
    .registers 4
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "hash"    # I
    .param p3, "n"    # Lgnu/bytecode/CpoolUtf8;

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    iput-object p3, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    .line 19
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .registers 2
    .param p0, "name"    # Lgnu/bytecode/CpoolUtf8;

    .line 56
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v0

    xor-int/lit16 v0, v0, 0xf0f

    return v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 4

    .line 36
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassType()Lgnu/bytecode/ObjectType;
    .registers 5

    .line 42
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 43
    .local v0, "otype":Lgnu/bytecode/ObjectType;
    if-eqz v0, :cond_5

    .line 44
    return-object v0

    .line 45
    :cond_5
    iget-object v1, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 46
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1a

    .line 47
    invoke-static {v1}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lgnu/bytecode/ObjectType;

    goto :goto_26

    .line 49
    :cond_1a
    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 50
    :goto_26
    iput-object v0, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 51
    return-object v0
.end method

.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .registers 2

    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public final getStringName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 21
    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 61
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    if-nez v0, :cond_c

    .line 62
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    .line 63
    :cond_c
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .registers 8
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "verbosity"    # I

    .line 74
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 75
    const-string v1, "Class "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_15

    .line 76
    :cond_9
    if-le p2, v0, :cond_15

    .line 78
    const-string v1, "Class name: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 81
    :cond_15
    :goto_15
    iget-object v1, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 82
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 83
    .local v2, "nlen":I
    if-le v2, v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2c

    .line 84
    invoke-static {v1, v0, v2, p1}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    goto :goto_37

    .line 86
    :cond_2c
    const/16 v0, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 87
    :goto_37
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .registers 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    return-void
.end method

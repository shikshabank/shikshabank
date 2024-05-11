.class public Lgnu/bytecode/CpoolNameAndType;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolNameAndType.java"


# instance fields
.field name:Lgnu/bytecode/CpoolUtf8;

.field type:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V
    .registers 5
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "hash"    # I
    .param p3, "n"    # Lgnu/bytecode/CpoolUtf8;
    .param p4, "t"    # Lgnu/bytecode/CpoolUtf8;

    .line 19
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 20
    iput-object p3, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 21
    iput-object p4, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    .line 22
    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I
    .registers 4
    .param p0, "name"    # Lgnu/bytecode/CpoolUtf8;
    .param p1, "type"    # Lgnu/bytecode/CpoolUtf8;

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .registers 2

    .line 28
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 24
    const/16 v0, 0xc

    return v0
.end method

.method public final getType()Lgnu/bytecode/CpoolUtf8;
    .registers 2

    .line 33
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 43
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    if-nez v0, :cond_e

    .line 44
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0, v1}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    .line 45
    :cond_e
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .registers 5
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "verbosity"    # I

    .line 57
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 58
    const-string v1, "NameAndType "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_15

    .line 59
    :cond_9
    if-le p2, v0, :cond_15

    .line 61
    const-string v1, "NameAndType name: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 64
    :cond_15
    :goto_15
    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printName(Ljava/lang/String;)V

    .line 65
    if-gt p2, v0, :cond_24

    .line 66
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2e

    .line 69
    :cond_24
    const-string v0, ", signature: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 72
    :goto_2e
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    .line 73
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

    .line 50
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method

.class public abstract Lgnu/bytecode/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field container:Lgnu/bytecode/AttrContainer;

.field name:Ljava/lang/String;

.field name_index:I

.field next:Lgnu/bytecode/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p0, "container"    # Lgnu/bytecode/AttrContainer;
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 95
    invoke-interface {p0}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 96
    .local v0, "attr":Lgnu/bytecode/Attribute;
    :goto_4
    if-eqz v0, :cond_12

    .line 98
    invoke-virtual {v0}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v1

    if-nez v1, :cond_f

    .line 99
    invoke-virtual {v0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 96
    :cond_f
    iget-object v0, v0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_4

    .line 101
    .end local v0    # "attr":Lgnu/bytecode/Attribute;
    :cond_12
    return-void
.end method

.method public static count(Lgnu/bytecode/AttrContainer;)I
    .registers 4
    .param p0, "container"    # Lgnu/bytecode/AttrContainer;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "count":I
    invoke-interface {p0}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v1

    .line 129
    .local v1, "attr":Lgnu/bytecode/Attribute;
    :goto_5
    if-eqz v1, :cond_12

    .line 131
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v2

    if-nez v2, :cond_f

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_f
    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_5

    .line 134
    .end local v1    # "attr":Lgnu/bytecode/Attribute;
    :cond_12
    return v0
.end method

.method public static get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;
    .registers 4
    .param p0, "container"    # Lgnu/bytecode/AttrContainer;
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    invoke-interface {p0}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 74
    .local v0, "attr":Lgnu/bytecode/Attribute;
    :goto_4
    if-eqz v0, :cond_10

    .line 76
    invoke-virtual {v0}, Lgnu/bytecode/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_d

    .line 77
    return-object v0

    .line 74
    :cond_d
    iget-object v0, v0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_4

    .line 79
    .end local v0    # "attr":Lgnu/bytecode/Attribute;
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLengthAll(Lgnu/bytecode/AttrContainer;)I
    .registers 4
    .param p0, "container"    # Lgnu/bytecode/AttrContainer;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "length":I
    invoke-interface {p0}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v1

    .line 112
    .local v1, "attr":Lgnu/bytecode/Attribute;
    :goto_5
    if-eqz v1, :cond_17

    .line 114
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v2

    if-nez v2, :cond_14

    .line 115
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    .line 112
    :cond_14
    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_5

    .line 117
    .end local v1    # "attr":Lgnu/bytecode/Attribute;
    :cond_17
    return v0
.end method

.method public static writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V
    .registers 6
    .param p0, "container"    # Lgnu/bytecode/AttrContainer;
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {p0}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v0

    .line 141
    .local v0, "count":I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    invoke-interface {p0}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v1

    .line 143
    .local v1, "attr":Lgnu/bytecode/Attribute;
    :goto_b
    if-eqz v1, :cond_30

    .line 145
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->isSkipped()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 146
    goto :goto_25

    .line 147
    :cond_14
    iget v2, v1, Lgnu/bytecode/Attribute;->name_index:I

    if-eqz v2, :cond_28

    .line 149
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 150
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    invoke-virtual {v1, p1}, Lgnu/bytecode/Attribute;->write(Ljava/io/DataOutputStream;)V

    .line 143
    :goto_25
    iget-object v1, v1, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_b

    .line 148
    :cond_28
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Attribute.writeAll called without assignConstants"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v1    # "attr":Lgnu/bytecode/Attribute;
    :cond_30
    return-void
.end method


# virtual methods
.method public addToFrontOf(Lgnu/bytecode/AttrContainer;)V
    .registers 3
    .param p1, "container"    # Lgnu/bytecode/AttrContainer;

    .line 33
    invoke-virtual {p0, p1}, Lgnu/bytecode/Attribute;->setContainer(Lgnu/bytecode/AttrContainer;)V

    .line 34
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 35
    invoke-interface {p1, p0}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 36
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 87
    iget v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    if-nez v0, :cond_14

    .line 88
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    .line 89
    :cond_14
    return-void
.end method

.method public final getContainer()Lgnu/bytecode/AttrContainer;
    .registers 2

    .line 20
    iget-object v0, p0, Lgnu/bytecode/Attribute;->container:Lgnu/bytecode/AttrContainer;

    return-object v0
.end method

.method public abstract getLength()I
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameIndex()I
    .registers 2

    .line 56
    iget v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    return v0
.end method

.method public final getNext()Lgnu/bytecode/Attribute;
    .registers 2

    .line 26
    iget-object v0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public final isSkipped()Z
    .registers 2

    .line 45
    iget v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 3
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 157
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lgnu/bytecode/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 159
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lgnu/bytecode/Attribute;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 161
    return-void
.end method

.method public final setContainer(Lgnu/bytecode/AttrContainer;)V
    .registers 2
    .param p1, "container"    # Lgnu/bytecode/AttrContainer;

    .line 22
    iput-object p1, p0, Lgnu/bytecode/Attribute;->container:Lgnu/bytecode/AttrContainer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Attribute;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNameIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .line 57
    iput p1, p0, Lgnu/bytecode/Attribute;->name_index:I

    return-void
.end method

.method public final setNext(Lgnu/bytecode/Attribute;)V
    .registers 2
    .param p1, "next"    # Lgnu/bytecode/Attribute;

    .line 28
    iput-object p1, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public final setSkipped()V
    .registers 2

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    return-void
.end method

.method public final setSkipped(Z)V
    .registers 3
    .param p1, "skip"    # Z

    .line 48
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Lgnu/bytecode/Attribute;->name_index:I

    return-void
.end method

.method public abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

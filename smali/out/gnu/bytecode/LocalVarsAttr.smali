.class public Lgnu/bytecode/LocalVarsAttr;
.super Lgnu/bytecode/Attribute;
.source "LocalVarsAttr.java"


# instance fields
.field public current_scope:Lgnu/bytecode/Scope;

.field private method:Lgnu/bytecode/Method;

.field parameter_scope:Lgnu/bytecode/Scope;

.field used:[Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 23
    const-string v0, "LocalVariableTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 25
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    iput-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .registers 3
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 32
    const-string v0, "LocalVariableTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 34
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 35
    iput-object p0, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 36
    return-void
.end method


# virtual methods
.method public allVars()Lgnu/bytecode/VarEnumerator;
    .registers 3

    .line 42
    new-instance v0, Lgnu/bytecode/VarEnumerator;

    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-direct {v0, v1}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    return-object v0
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 6
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 106
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 110
    .local v0, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_7
    :goto_7
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    move-object v2, v1

    .local v2, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_45

    .line 112
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v2, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 114
    iget v1, v2, Lgnu/bytecode/Variable;->name_index:I

    if-nez v1, :cond_2c

    .line 115
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, v2, Lgnu/bytecode/Variable;->name_index:I

    .line 116
    :cond_2c
    iget v1, v2, Lgnu/bytecode/Variable;->signature_index:I

    if-nez v1, :cond_7

    .line 117
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, v2, Lgnu/bytecode/Variable;->signature_index:I

    goto :goto_7

    .line 121
    :cond_45
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .registers 8
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .line 46
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {p1, v0}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 47
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 48
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 49
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v1

    .local v1, "var":Lgnu/bytecode/Variable;
    :goto_11
    if-eqz v1, :cond_69

    .line 51
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 53
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isAssigned()Z

    move-result v2

    if-nez v2, :cond_23

    .line 54
    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    goto :goto_64

    .line 55
    :cond_23
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v2, v2, v3

    if-nez v2, :cond_32

    .line 56
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aput-object v1, v2, v3

    goto :goto_64

    .line 57
    :cond_32
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v2, v2, v3

    if-ne v2, v1, :cond_3b

    goto :goto_64

    .line 58
    :cond_3b
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent local variable assignments for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v5, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_64
    :goto_64
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    goto :goto_11

    .line 62
    .end local v1    # "var":Lgnu/bytecode/Variable;
    :cond_69
    return-void
.end method

.method public final getCount()I
    .registers 5

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "local_variable_count":I
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v1

    .line 91
    .local v1, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_5
    :goto_5
    invoke-virtual {v1}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v2

    move-object v3, v2

    .local v3, "var":Lgnu/bytecode/Variable;
    if-eqz v2, :cond_15

    .line 93
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 96
    :cond_15
    return v0
.end method

.method public final getLength()I
    .registers 2

    .line 101
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .registers 2

    .line 38
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 4

    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 78
    .local v0, "vars":Lgnu/bytecode/VarEnumerator;
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    move-object v2, v1

    .local v2, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_17

    .line 80
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v2, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 81
    const/4 v1, 0x0

    return v1

    .line 83
    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method public preserveVariablesUpto(Lgnu/bytecode/Scope;)V
    .registers 4
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .line 70
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .local v0, "cur":Lgnu/bytecode/Scope;
    :goto_2
    if-eq v0, p1, :cond_a

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    .line 70
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_2

    .line 72
    .end local v0    # "cur":Lgnu/bytecode/Scope;
    :cond_a
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 8
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 147
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 148
    .local v0, "vars":Lgnu/bytecode/VarEnumerator;
    const-string v1, "Attribute \""

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v1, "\", length:"

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 152
    const-string v1, ", count: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 156
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    move-object v2, v1

    .local v2, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_a1

    .line 158
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v2, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 160
    const-string v1, "  slot#"

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    iget v1, v2, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 162
    const-string v1, ": name: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 163
    iget v1, v2, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 165
    const-string v1, ", type: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    iget v1, v2, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 167
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 168
    const-string v1, " (pc: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v1, v2, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 171
    .local v1, "scope":Lgnu/bytecode/Scope;
    if-eqz v1, :cond_96

    iget-object v3, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-eqz v3, :cond_96

    iget-object v3, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-eqz v3, :cond_96

    iget-object v3, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    move v4, v3

    .local v4, "start_pc":I
    if-ltz v3, :cond_96

    iget-object v3, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    move v5, v3

    .local v5, "end_pc":I
    if-gez v3, :cond_88

    goto :goto_96

    .line 177
    :cond_88
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 178
    const-string v3, " length: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 179
    sub-int v3, v5, v4

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_9b

    .line 174
    .end local v4    # "start_pc":I
    .end local v5    # "end_pc":I
    :cond_96
    :goto_96
    const-string v3, "unknown"

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 181
    :goto_9b
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 182
    .end local v1    # "scope":Lgnu/bytecode/Scope;
    goto :goto_2b

    .line 184
    :cond_a1
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 8
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v0

    .line 127
    .local v0, "vars":Lgnu/bytecode/VarEnumerator;
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_e
    :goto_e
    invoke-virtual {v0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    move-object v2, v1

    .local v2, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_3d

    .line 131
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    iget-object v1, v2, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 134
    .local v1, "scope":Lgnu/bytecode/Scope;
    iget-object v3, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    .line 135
    .local v3, "start_pc":I
    iget-object v4, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v4, v4, Lgnu/bytecode/Label;->position:I

    .line 136
    .local v4, "end_pc":I
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    sub-int v5, v4, v3

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    iget v5, v2, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 139
    iget v5, v2, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 140
    iget v5, v2, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    .end local v1    # "scope":Lgnu/bytecode/Scope;
    .end local v3    # "start_pc":I
    .end local v4    # "end_pc":I
    goto :goto_e

    .line 143
    :cond_3d
    return-void
.end method

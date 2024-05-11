.class public Lgnu/bytecode/Scope;
.super Ljava/lang/Object;
.source "Scope.java"


# instance fields
.field end:Lgnu/bytecode/Label;

.field firstChild:Lgnu/bytecode/Scope;

.field lastChild:Lgnu/bytecode/Scope;

.field last_var:Lgnu/bytecode/Variable;

.field nextSibling:Lgnu/bytecode/Scope;

.field parent:Lgnu/bytecode/Scope;

.field preserved:Z

.field start:Lgnu/bytecode/Label;

.field vars:Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .registers 3
    .param p1, "start"    # Lgnu/bytecode/Label;
    .param p2, "end"    # Lgnu/bytecode/Label;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 28
    iput-object p2, p0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 29
    return-void
.end method

.method static equals([B[B)Z
    .registers 7
    .param p0, "name1"    # [B
    .param p1, "name2"    # [B

    .line 105
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 106
    return v2

    .line 107
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 108
    return v0

    .line 109
    :cond_a
    array-length v1, p0

    .local v1, "i":I
    :cond_b
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_16

    .line 110
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_b

    .line 111
    return v2

    .line 112
    .end local v1    # "i":I
    :cond_16
    return v0
.end method


# virtual methods
.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;
    .param p2, "type"    # Lgnu/bytecode/Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lgnu/bytecode/Variable;

    invoke-direct {v0, p3, p2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 52
    .local v0, "var":Lgnu/bytecode/Variable;
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 53
    return-object v0
.end method

.method public addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;
    .param p2, "var"    # Lgnu/bytecode/Variable;

    .line 88
    invoke-virtual {p0, p2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 89
    invoke-virtual {p2}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 90
    invoke-virtual {p2, p1}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 91
    :cond_e
    return-void
.end method

.method public addVariable(Lgnu/bytecode/Variable;)V
    .registers 3
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 58
    iget-object v0, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    if-nez v0, :cond_7

    .line 59
    iput-object p1, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    goto :goto_9

    .line 61
    :cond_7
    iput-object p1, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 62
    :goto_9
    iput-object p1, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 63
    iput-object p0, p1, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 64
    return-void
.end method

.method public addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V
    .registers 5
    .param p1, "prev"    # Lgnu/bytecode/Variable;
    .param p2, "var"    # Lgnu/bytecode/Variable;

    .line 69
    if-nez p1, :cond_9

    .line 71
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    iput-object v0, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 72
    iput-object p2, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    goto :goto_f

    .line 76
    :cond_9
    iget-object v0, p1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    iput-object v0, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 77
    iput-object p2, p1, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    .line 79
    :goto_f
    iget-object v0, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    if-ne v0, p1, :cond_15

    .line 80
    iput-object p2, p0, Lgnu/bytecode/Scope;->last_var:Lgnu/bytecode/Variable;

    .line 81
    :cond_15
    iget-object v0, p2, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eq v0, p2, :cond_1c

    .line 83
    iput-object p0, p2, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 84
    return-void

    .line 82
    :cond_1c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "cycle"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allVars()Lgnu/bytecode/VarEnumerator;
    .registers 2

    .line 34
    new-instance v0, Lgnu/bytecode/VarEnumerator;

    invoke-direct {v0, p0}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    return-object v0
.end method

.method public final firstVar()Lgnu/bytecode/Variable;
    .registers 2

    .line 32
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method freeLocals(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 149
    iget-boolean v0, p0, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v0, :cond_5

    .line 150
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    .local v0, "var":Lgnu/bytecode/Variable;
    :goto_7
    if-eqz v0, :cond_1b

    .line 153
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_18

    .line 154
    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->freeLocal(Lgnu/bytecode/CodeAttr;)V

    .line 151
    :cond_18
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_7

    .line 156
    .end local v0    # "var":Lgnu/bytecode/Variable;
    :cond_1b
    iget-object v0, p0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    .local v0, "child":Lgnu/bytecode/Scope;
    :goto_1d
    if-eqz v0, :cond_2c

    .line 158
    iget-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    if-eqz v1, :cond_29

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    .line 161
    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 156
    :cond_29
    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    goto :goto_1d

    .line 164
    .end local v0    # "child":Lgnu/bytecode/Scope;
    :cond_2c
    return-void
.end method

.method public getVariable(I)Lgnu/bytecode/Variable;
    .registers 3
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    .line 99
    .local v0, "var":Lgnu/bytecode/Variable;
    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_9

    .line 100
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_2

    .line 101
    :cond_9
    return-object v0
.end method

.method public linkChild(Lgnu/bytecode/Scope;)V
    .registers 3
    .param p1, "parent"    # Lgnu/bytecode/Scope;

    .line 39
    iput-object p1, p0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    .line 40
    if-nez p1, :cond_5

    .line 41
    return-void

    .line 42
    :cond_5
    iget-object v0, p1, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    if-nez v0, :cond_c

    .line 43
    iput-object p0, p1, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    goto :goto_e

    .line 45
    :cond_c
    iput-object p0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    .line 46
    :goto_e
    iput-object p0, p1, Lgnu/bytecode/Scope;->lastChild:Lgnu/bytecode/Scope;

    .line 47
    return-void
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lgnu/bytecode/Scope;->vars:Lgnu/bytecode/Variable;

    .local v0, "var":Lgnu/bytecode/Variable;
    :goto_2
    if-eqz v0, :cond_10

    .line 138
    iget-object v1, v0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 139
    return-object v0

    .line 137
    :cond_d
    iget-object v0, v0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    goto :goto_2

    .line 141
    .end local v0    # "var":Lgnu/bytecode/Variable;
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public noteStartFunction(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 127
    invoke-virtual {p0, p1}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 128
    iget-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 129
    return-void
.end method

.method public setStartPC(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 117
    iget-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-nez v0, :cond_b

    .line 118
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .line 119
    :cond_b
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    .line 120
    .local v0, "reachable":Z
    iget-object v1, p0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {v1, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 121
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 122
    return-void
.end method

.class public Lgnu/bytecode/VarEnumerator;
.super Ljava/lang/Object;
.source "VarEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field currentScope:Lgnu/bytecode/Scope;

.field next:Lgnu/bytecode/Variable;

.field topScope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Scope;)V
    .registers 2
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    .line 20
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->reset()V

    .line 21
    return-void
.end method

.method private fixup()V
    .registers 3

    .line 36
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_32

    .line 38
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    if-eqz v0, :cond_11

    .line 39
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->firstChild:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_29

    .line 42
    :cond_11
    :goto_11
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    if-nez v0, :cond_23

    .line 44
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v1, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    if-ne v0, v1, :cond_1e

    .line 45
    return-void

    .line 46
    :cond_1e
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    goto :goto_11

    .line 48
    :cond_23
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    iget-object v0, v0, Lgnu/bytecode/Scope;->nextSibling:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 50
    :goto_29
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 52
    :cond_32
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 75
    .local v0, "result":Lgnu/bytecode/Variable;
    if-eqz v0, :cond_7

    .line 77
    return-object v0

    .line 76
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "VarEnumerator"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .registers 3

    .line 57
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 58
    .local v0, "result":Lgnu/bytecode/Variable;
    if-eqz v0, :cond_f

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 61
    if-nez v1, :cond_f

    .line 62
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 64
    :cond_f
    return-object v0
.end method

.method public final reset()V
    .registers 2

    .line 25
    iget-object v0, p0, Lgnu/bytecode/VarEnumerator;->topScope:Lgnu/bytecode/Scope;

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->currentScope:Lgnu/bytecode/Scope;

    .line 26
    if-eqz v0, :cond_11

    .line 28
    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/VarEnumerator;->next:Lgnu/bytecode/Variable;

    .line 29
    if-nez v0, :cond_11

    .line 30
    invoke-direct {p0}, Lgnu/bytecode/VarEnumerator;->fixup()V

    .line 32
    :cond_11
    return-void
.end method

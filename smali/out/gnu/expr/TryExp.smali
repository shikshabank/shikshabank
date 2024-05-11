.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "try_clause"    # Lgnu/expr/Expression;
    .param p2, "finally_clause"    # Lgnu/expr/Expression;

    .line 26
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 28
    iput-object p2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_10

    .line 58
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_f

    .line 59
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    .line 61
    :cond_f
    return-void

    .line 40
    :catchall_10
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_11
    iget-object v1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .local v1, "clause":Lgnu/expr/CatchClause;
    :goto_13
    if-eqz v1, :cond_3a

    .line 45
    invoke-virtual {v1}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 46
    .local v2, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 47
    .local v3, "typeVal":Lgnu/bytecode/ClassType;
    invoke-virtual {v3, v0}, Lgnu/bytecode/ClassType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 49
    iput-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, p1}, Lgnu/expr/CatchClause;->apply(Lgnu/mapping/CallContext;)V
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_3c

    .line 58
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_35

    .line 59
    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_35
    return-void

    .line 43
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "typeVal":Lgnu/bytecode/ClassType;
    :cond_36
    :try_start_36
    iget-object v2, v1, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    move-object v1, v2

    goto :goto_13

    .line 54
    .end local v1    # "clause":Lgnu/expr/CatchClause;
    :cond_3a
    nop

    .end local p1    # "ctx":Lgnu/mapping/CallContext;
    throw v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    .line 58
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local p1    # "ctx":Lgnu/mapping/CallContext;
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_44

    .line 59
    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_44
    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 9
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 65
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 68
    .local v2, "has_finally":Z
    :goto_b
    instance-of v3, p2, Lgnu/expr/StackTarget;

    if-nez v3, :cond_27

    instance-of v3, p2, Lgnu/expr/ConsumerTarget;

    if-nez v3, :cond_27

    instance-of v3, p2, Lgnu/expr/IgnoreTarget;

    if-nez v3, :cond_27

    instance-of v3, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1e

    if-nez v1, :cond_1e

    goto :goto_27

    .line 73
    :cond_1e
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .local v1, "ttarg":Lgnu/expr/Target;
    goto :goto_28

    .line 71
    .end local v1    # "ttarg":Lgnu/expr/Target;
    :cond_27
    :goto_27
    move-object v1, p2

    .line 74
    .restart local v1    # "ttarg":Lgnu/expr/Target;
    :goto_28
    instance-of v3, v1, Lgnu/expr/StackTarget;

    if-eqz v3, :cond_31

    invoke-virtual {v1}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_32

    :cond_31
    const/4 v3, 0x0

    :goto_32
    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 76
    iget-object v3, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v3, p1, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 77
    iget-object v3, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 78
    .local v3, "catch_clause":Lgnu/expr/CatchClause;
    :goto_3c
    if-eqz v3, :cond_46

    .line 80
    invoke-virtual {v3, p1, v1}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    invoke-virtual {v3}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v3

    goto :goto_3c

    .line 83
    :cond_46
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_57

    .line 85
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 86
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v4, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 87
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 89
    :cond_57
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 90
    if-eq v1, p2, :cond_63

    .line 91
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 92
    :cond_63
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .registers 2

    .line 18
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .registers 2

    .line 19
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 115
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v0, :cond_b

    .line 116
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 118
    :cond_b
    invoke-super {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 5
    .param p1, "ps"    # Lgnu/mapping/OutPort;

    .line 123
    const-string v0, "(Try"

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 125
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 126
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 127
    .local v0, "catch_clause":Lgnu/expr/CatchClause;
    :goto_12
    if-eqz v0, :cond_1c

    .line 129
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 127
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_12

    .line 131
    :cond_1c
    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v2, :cond_2d

    .line 133
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 134
    const-string v2, " finally: "

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 137
    :cond_2d
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .registers 2
    .param p1, "catch_clauses"    # Lgnu/expr/CatchClause;

    .line 22
    iput-object p1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 23
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 96
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 101
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 102
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 103
    .local v0, "catch_clause":Lgnu/expr/CatchClause;
    :goto_a
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_18

    if-eqz v0, :cond_18

    .line 105
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_a

    .line 109
    :cond_18
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_26

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_26

    .line 110
    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 111
    :cond_26
    return-void
.end method

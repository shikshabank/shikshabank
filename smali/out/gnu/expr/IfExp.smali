.class public Lgnu/expr/IfExp;
.super Lgnu/expr/Expression;
.source "IfExp.java"


# instance fields
.field else_clause:Lgnu/expr/Expression;

.field test:Lgnu/expr/Expression;

.field then_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .registers 4
    .param p1, "i"    # Lgnu/expr/Expression;
    .param p2, "t"    # Lgnu/expr/Expression;
    .param p3, "e"    # Lgnu/expr/Expression;

    .line 20
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iput-object p3, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 22
    return-void
.end method

.method public static compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 14
    .param p0, "test"    # Lgnu/expr/Expression;
    .param p1, "then_clause"    # Lgnu/expr/Expression;
    .param p2, "else_clause"    # Lgnu/expr/Expression;
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .line 61
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 62
    .local v0, "language":Lgnu/expr/Language;
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 63
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    const/4 v2, 0x0

    .line 68
    .local v2, "falseLabel":Lgnu/bytecode/Label;
    instance-of v3, p4, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_2b

    instance-of v3, p2, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_2b

    .line 71
    const/4 v3, 0x1

    .line 72
    .local v3, "falseInherited":Z
    move-object v4, p2

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 74
    move-object v5, p4

    check-cast v5, Lgnu/expr/ConditionalTarget;

    iget-object v2, v5, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_2a

    .line 76
    :cond_25
    move-object v5, p4

    check-cast v5, Lgnu/expr/ConditionalTarget;

    iget-object v2, v5, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    .line 77
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2a
    goto :goto_50

    .line 78
    .end local v3    # "falseInherited":Z
    :cond_2b
    instance-of v3, p2, Lgnu/expr/ExitExp;

    if-eqz v3, :cond_4f

    move-object v3, p2

    check-cast v3, Lgnu/expr/ExitExp;

    iget-object v3, v3, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_4f

    move-object v3, p2

    check-cast v3, Lgnu/expr/ExitExp;

    iget-object v3, v3, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    move-object v4, v3

    .local v4, "block":Lgnu/expr/BlockExp;
    iget-object v3, v3, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    instance-of v3, v3, Lgnu/expr/IgnoreTarget;

    if-eqz v3, :cond_4f

    iget-object v3, v4, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v3}, Lgnu/bytecode/ExitableBlock;->exitIsGoto()Lgnu/bytecode/Label;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_4f

    .line 83
    const/4 v3, 0x1

    .restart local v3    # "falseInherited":Z
    goto :goto_50

    .line 86
    .end local v3    # "falseInherited":Z
    .end local v4    # "block":Lgnu/expr/BlockExp;
    :cond_4f
    const/4 v3, 0x0

    .line 87
    .restart local v3    # "falseInherited":Z
    :goto_50
    if-nez v2, :cond_58

    .line 89
    new-instance v4, Lgnu/bytecode/Label;

    invoke-direct {v4, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v2, v4

    .line 94
    :cond_58
    if-ne p0, p1, :cond_69

    instance-of v4, p4, Lgnu/expr/ConditionalTarget;

    if-eqz v4, :cond_69

    instance-of v4, p1, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_69

    .line 97
    const/4 v4, 0x1

    .line 98
    .local v4, "trueInherited":Z
    move-object v5, p4

    check-cast v5, Lgnu/expr/ConditionalTarget;

    iget-object v5, v5, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .local v5, "trueLabel":Lgnu/bytecode/Label;
    goto :goto_6f

    .line 102
    .end local v4    # "trueInherited":Z
    .end local v5    # "trueLabel":Lgnu/bytecode/Label;
    :cond_69
    const/4 v4, 0x0

    .line 103
    .restart local v4    # "trueInherited":Z
    new-instance v5, Lgnu/bytecode/Label;

    invoke-direct {v5, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 105
    .restart local v5    # "trueLabel":Lgnu/bytecode/Label;
    :goto_6f
    new-instance v6, Lgnu/expr/ConditionalTarget;

    invoke-direct {v6, v5, v2, v0}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 107
    .local v6, "ctarget":Lgnu/expr/ConditionalTarget;
    if-eqz v4, :cond_79

    .line 108
    const/4 v7, 0x0

    iput-boolean v7, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 109
    :cond_79
    invoke-virtual {p0, p3, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitIfThen()V

    .line 111
    if-nez v4, :cond_8b

    .line 113
    invoke-virtual {v5, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 117
    iget-object v7, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 118
    .local v7, "callContextSave":Lgnu/bytecode/Variable;
    invoke-virtual {p1, p3, p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    iput-object v7, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 121
    .end local v7    # "callContextSave":Lgnu/bytecode/Variable;
    :cond_8b
    if-nez v3, :cond_a3

    .line 123
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 124
    invoke-virtual {v2, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 126
    iget-object v7, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 127
    .restart local v7    # "callContextSave":Lgnu/bytecode/Variable;
    if-nez p2, :cond_9d

    .line 128
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p3, v8, p4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_a0

    .line 130
    :cond_9d
    invoke-virtual {p2, p3, p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 131
    :goto_a0
    iput-object v7, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 132
    .end local v7    # "callContextSave":Lgnu/bytecode/Variable;
    goto :goto_a6

    .line 134
    :cond_a3
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 135
    :goto_a6
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 136
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_1d

    .line 39
    :cond_16
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1d

    .line 40
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 41
    :cond_1d
    :goto_1d
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 6
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 52
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_a

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :cond_a
    invoke-static {v0, v1, v2, p1, p2}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    return-void
.end method

.method public getElseClause()Lgnu/expr/Expression;
    .registers 2

    .line 26
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .registers 2

    .line 30
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Lgnu/expr/Expression;
    .registers 2

    .line 24
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getThenClause()Lgnu/expr/Expression;
    .registers 2

    .line 25
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 4

    .line 154
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 155
    .local v0, "t1":Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v1, :cond_d

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 156
    .local v1, "t2":Lgnu/bytecode/Type;
    :goto_11
    invoke-static {v0, v1}, Lgnu/expr/Language;->unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2
.end method

.method protected mustCompile()Z
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 5
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 161
    const-string v0, "(If "

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v1}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 163
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 164
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 165
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 166
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_25

    .line 168
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 169
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 171
    :cond_25
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method select(Z)Lgnu/expr/Expression;
    .registers 3
    .param p1, "truth"    # Z

    .line 45
    if-eqz p1, :cond_5

    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v0, :cond_b

    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :cond_b
    :goto_b
    return-object v0
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

    .line 140
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 4
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

    .line 145
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 146
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_14

    .line 147
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 148
    :cond_14
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_22

    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_22

    .line 149
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 150
    :cond_22
    return-void
.end method

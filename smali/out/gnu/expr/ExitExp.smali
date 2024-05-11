.class public Lgnu/expr/ExitExp;
.super Lgnu/expr/Expression;
.source "ExitExp.java"


# instance fields
.field block:Lgnu/expr/BlockExp;

.field result:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/BlockExp;)V
    .registers 3
    .param p1, "block"    # Lgnu/expr/BlockExp;

    .line 25
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 26
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 27
    iput-object p1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 28
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V
    .registers 3
    .param p1, "result"    # Lgnu/expr/Expression;
    .param p2, "block"    # Lgnu/expr/BlockExp;

    .line 19
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 21
    iput-object p2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 22
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

    .line 34
    new-instance v0, Lgnu/expr/BlockExitException;

    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/expr/BlockExitException;-><init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V

    throw v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 6
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 39
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 40
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-nez v1, :cond_a

    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 41
    .local v1, "res":Lgnu/expr/Expression;
    :cond_a
    iget-object v2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    iget-object v2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v2}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 43
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "mapper"    # Lgnu/kawa/util/IdentityHashTable;

    .line 47
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-static {v0, p1}, Lgnu/expr/ExitExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    .line 48
    .local v0, "res":Lgnu/expr/Expression;
    if-nez v0, :cond_e

    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v1, :cond_e

    .line 49
    const/4 v1, 0x0

    return-object v1

    .line 50
    :cond_e
    iget-object v1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    invoke-virtual {p1, v1}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "b":Ljava/lang/Object;
    new-instance v2, Lgnu/expr/ExitExp;

    if-nez v1, :cond_1b

    iget-object v3, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    goto :goto_1e

    :cond_1b
    move-object v3, v1

    check-cast v3, Lgnu/expr/BlockExp;

    :goto_1e
    invoke-direct {v2, v0, v3}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V

    .line 53
    .local v2, "copy":Lgnu/expr/ExitExp;
    invoke-virtual {p0}, Lgnu/expr/ExitExp;->getFlags()I

    move-result v3

    iput v3, v2, Lgnu/expr/ExitExp;->flags:I

    .line 54
    return-object v2
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 85
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method protected mustCompile()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 5
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 69
    const-string v0, "(Exit"

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 71
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-nez v0, :cond_14

    goto :goto_20

    .line 74
    :cond_14
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 72
    :cond_20
    :goto_20
    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
    :goto_25
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v0, :cond_31

    .line 77
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 78
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 80
    :cond_31
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 81
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

    .line 59
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 64
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 65
    return-void
.end method

.class public Lgnu/expr/ChainLambdas;
.super Lgnu/expr/ExpExpVisitor;
.source "ChainLambdas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Lgnu/expr/ScopeExp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    return-void
.end method

.method public static chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .registers 4
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 13
    new-instance v0, Lgnu/expr/ChainLambdas;

    invoke-direct {v0}, Lgnu/expr/ChainLambdas;-><init>()V

    .line 14
    .local v0, "visitor":Lgnu/expr/ChainLambdas;
    invoke-virtual {v0, p1}, Lgnu/expr/ChainLambdas;->setContext(Lgnu/expr/Compilation;)V

    .line 15
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ChainLambdas;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method protected visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ClassExp;
    .param p2, "scope"    # Lgnu/expr/ScopeExp;

    .line 63
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 64
    .local v0, "parent":Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_e

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_e

    .line 66
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/ClassExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 67
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 70
    :cond_e
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    .line 72
    return-object p1
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ClassExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 9
    move-object v0, p2

    check-cast v0, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ChainLambdas;->visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "scope"    # Lgnu/expr/ScopeExp;

    .line 30
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 31
    .local v0, "parent":Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_e

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_e

    .line 33
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 34
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 37
    :cond_e
    iput-object p2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 38
    const/4 v1, 0x0

    iput-object v1, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 39
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x0

    .local v1, "prev":Lgnu/expr/LambdaExp;
    iget-object v2, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 44
    .local v2, "child":Lgnu/expr/LambdaExp;
    :goto_1c
    if-eqz v2, :cond_25

    .line 46
    iget-object v3, v2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 47
    .local v3, "next":Lgnu/expr/LambdaExp;
    iput-object v1, v2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 48
    move-object v1, v2

    .line 49
    move-object v2, v3

    .line 50
    .end local v3    # "next":Lgnu/expr/LambdaExp;
    goto :goto_1c

    .line 51
    :cond_25
    iput-object v1, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 53
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    iget-object v3, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v3, :cond_3a

    .line 54
    iget-object v3, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 55
    :cond_3a
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 56
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->mustCompile()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 57
    iget-object v3, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 58
    :cond_48
    return-object p1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 9
    move-object v0, p2

    check-cast v0, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ChainLambdas;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ScopeExp;
    .param p2, "scope"    # Lgnu/expr/ScopeExp;

    .line 20
    iput-object p2, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 21
    invoke-virtual {p1, p0, p1}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->setIndexes()V

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 24
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 25
    :cond_13
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ScopeExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 9
    move-object v0, p2

    check-cast v0, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

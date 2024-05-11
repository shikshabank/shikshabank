.class Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
.super Lgnu/expr/ExpVisitor;
.source "CompileMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/functions/CompileMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExitThroughFinallyChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor<",
        "Lgnu/expr/Expression;",
        "Lgnu/expr/TryExp;",
        ">;"
    }
.end annotation


# instance fields
.field decl:Lgnu/expr/Declaration;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 396
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z
    .registers 4
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "body"    # Lgnu/expr/Expression;

    .line 403
    new-instance v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;

    invoke-direct {v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;-><init>()V

    .line 404
    .local v0, "visitor":Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    iput-object p0, v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "r"    # Lgnu/expr/Expression;
    .param p2, "d"    # Lgnu/expr/TryExp;

    .line 411
    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/Expression;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 396
    move-object v0, p2

    check-cast v0, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "currentTry"    # Lgnu/expr/TryExp;

    .line 416
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-ne v0, v1, :cond_e

    if-eqz p2, :cond_e

    .line 417
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    .line 418
    :cond_e
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 396
    move-object v0, p2

    check-cast v0, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "exp"    # Lgnu/expr/TryExp;
    .param p2, "currentTry"    # Lgnu/expr/TryExp;

    .line 423
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-object p1
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/TryExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 396
    move-object v0, p2

    check-cast v0, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.class public Lgnu/commonlisp/lang/UnwindProtect;
.super Lkawa/lang/Syntax;
.source "UnwindProtect.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 11
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_b

    .line 12
    const-string v0, "invalid syntax for unwind-protect"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 13
    :cond_b
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 14
    .local v0, "pair":Lgnu/lists/Pair;
    new-instance v1, Lgnu/expr/TryExp;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v1
.end method

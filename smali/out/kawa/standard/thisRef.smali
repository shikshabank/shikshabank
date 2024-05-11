.class public Lkawa/standard/thisRef;
.super Lkawa/lang/Syntax;
.source "thisRef.java"


# static fields
.field public static final thisSyntax:Lkawa/standard/thisRef;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lkawa/standard/thisRef;

    invoke-direct {v0}, Lkawa/standard/thisRef;-><init>()V

    sput-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    .line 10
    const-string v1, "this"

    invoke-virtual {v0, v1}, Lkawa/standard/thisRef;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 8
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_51

    .line 16
    iget-object v0, p2, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 17
    .local v0, "method":Lgnu/expr/LambdaExp;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 18
    .local v2, "firstParam":Lgnu/expr/Declaration;
    :goto_13
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 20
    :cond_1b
    const/4 v2, 0x0

    .line 21
    const/16 v3, 0x65

    if-eqz v0, :cond_46

    iget-object v4, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v4, :cond_25

    goto :goto_46

    .line 23
    :cond_25
    iget-object v4, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 24
    const-string v1, "use of \'this\' in a static method"

    invoke-virtual {p2, v3, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_4b

    .line 27
    :cond_33
    new-instance v3, Lgnu/expr/Declaration;

    sget-object v4, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v3, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 29
    iget-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v3, 0x1000

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_4b

    .line 22
    :cond_46
    :goto_46
    const-string v1, "use of \'this\' not in a named method"

    invoke-virtual {p2, v3, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 32
    :cond_4b
    :goto_4b
    new-instance v1, Lgnu/expr/ThisExp;

    invoke-direct {v1, v2}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    return-object v1

    .line 35
    .end local v0    # "method":Lgnu/expr/LambdaExp;
    .end local v2    # "firstParam":Lgnu/expr/Declaration;
    :cond_51
    const-string v0, "this with parameter not implemented"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

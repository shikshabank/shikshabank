.class public Lkawa/standard/syntax;
.super Lkawa/lang/Quote;
.source "syntax.java"


# static fields
.field static final makeTemplateScopeMethod:Lgnu/bytecode/Method;

.field public static final quasiSyntax:Lkawa/standard/syntax;

.field public static final syntax:Lkawa/standard/syntax;

.field static final typeTemplateScope:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 9
    new-instance v0, Lkawa/standard/syntax;

    const-string v1, "syntax"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->syntax:Lkawa/standard/syntax;

    .line 10
    new-instance v0, Lkawa/standard/syntax;

    const-string v1, "quasisyntax"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkawa/standard/syntax;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/syntax;->quasiSyntax:Lkawa/standard/syntax;

    .line 22
    const-string v0, "kawa.lang.TemplateScope"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    .line 24
    const-string v1, "make"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isQuasi"    # Z

    .line 14
    invoke-direct {p0, p1, p2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method static makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 10
    .param p0, "form"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 65
    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    .line 66
    .local v0, "template":Lkawa/lang/SyntaxTemplate;
    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 67
    .local v1, "matchArray":Lgnu/expr/Expression;
    iget-object v2, p1, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 68
    .local v2, "patternScope":Lkawa/lang/PatternScope;
    if-eqz v2, :cond_18

    iget-object v3, v2, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    if-eqz v3, :cond_18

    .line 69
    new-instance v3, Lgnu/expr/ReferenceExp;

    iget-object v4, v2, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    invoke-direct {v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v1, v3

    .line 70
    :cond_18
    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    new-instance v4, Lgnu/expr/ReferenceExp;

    iget-object v5, p1, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    invoke-direct {v4, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 71
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    const-string v6, "kawa.lang.SyntaxTemplate"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    const-string v7, "execute"

    invoke-virtual {v6, v7, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v4
.end method


# virtual methods
.method protected expandColonForms()Z
    .registers 2

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 60
    invoke-static {p1, p2}, Lkawa/standard/syntax;->makeSyntax(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 29
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_1b

    goto :goto_5c

    .line 32
    :cond_1b
    iget-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    .line 33
    .local v0, "saveTemplateScopeDecl":Lgnu/expr/Declaration;
    if-nez v0, :cond_3a

    .line 35
    invoke-virtual {p2}, Lkawa/lang/Translator;->letStart()V

    .line 36
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lkawa/standard/syntax;->makeTemplateScopeMethod:Lgnu/bytecode/Method;

    sget-object v3, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 39
    .local v1, "init":Lgnu/expr/Expression;
    const/4 v2, 0x0

    sget-object v3, Lkawa/standard/syntax;->typeTemplateScope:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v2, v3, v1}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 40
    .local v2, "templateScopeDecl":Lgnu/expr/Declaration;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->setCanRead()V

    .line 41
    iput-object v2, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    .line 42
    invoke-virtual {p2}, Lkawa/lang/Translator;->letEnter()V

    .line 47
    .end local v1    # "init":Lgnu/expr/Expression;
    .end local v2    # "templateScopeDecl":Lgnu/expr/Declaration;
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lkawa/standard/syntax;->isQuasi:Z

    if-eqz v2, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, -0x1

    :goto_45
    invoke-virtual {p0, v1, v2, p2}, Lkawa/standard/syntax;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lkawa/standard/syntax;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    .line 50
    .local v1, "body":Lgnu/expr/Expression;
    if-nez v0, :cond_54

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v2
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_58

    goto :goto_55

    :cond_54
    move-object v2, v1

    .line 54
    :goto_55
    iput-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    return-object v2

    .end local v1    # "body":Lgnu/expr/Expression;
    :catchall_58
    move-exception v1

    iput-object v0, p2, Lkawa/lang/Translator;->templateScopeDecl:Lgnu/expr/Declaration;

    throw v1

    .line 31
    .end local v0    # "saveTemplateScopeDecl":Lgnu/expr/Declaration;
    :cond_5c
    :goto_5c
    const-string v0, "syntax forms requires a single form"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

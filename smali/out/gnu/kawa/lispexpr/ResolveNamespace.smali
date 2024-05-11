.class public Lgnu/kawa/lispexpr/ResolveNamespace;
.super Lkawa/lang/Syntax;
.source "ResolveNamespace.java"


# static fields
.field public static final resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

.field public static final resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;


# instance fields
.field resolvingQName:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v1, "$resolve-namespace$"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveNamespace:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 14
    new-instance v2, Lgnu/kawa/lispexpr/ResolveNamespace;

    const-string v3, "$resolve-qname"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lgnu/kawa/lispexpr/ResolveNamespace;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    .line 25
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ResolveNamespace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolvingQName"    # Z

    .line 21
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-boolean p2, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    .line 23
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 11
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 29
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 30
    .local v0, "pair":Lgnu/lists/Pair;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 31
    .local v1, "prefix":Lgnu/expr/Expression;
    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v2

    .line 32
    .local v2, "namespace":Lgnu/mapping/Namespace;
    if-nez v2, :cond_43

    .line 34
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "pstr":Ljava/lang/String;
    const-string v4, "[default-element-namespace]"

    if-ne v3, v4, :cond_20

    .line 36
    sget-object v2, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    goto :goto_43

    .line 39
    :cond_20
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 40
    .local v4, "savePos":Ljava/lang/Object;
    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown namespace prefix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 41
    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 42
    invoke-static {v3, v3}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v2

    .line 45
    .end local v3    # "pstr":Ljava/lang/String;
    .end local v4    # "savePos":Ljava/lang/Object;
    :cond_43
    :goto_43
    iget-boolean v3, p0, Lgnu/kawa/lispexpr/ResolveNamespace;->resolvingQName:Z

    if-eqz v3, :cond_60

    .line 47
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    .line 48
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "local":Ljava/lang/String;
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v2, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 52
    .end local v3    # "local":Ljava/lang/String;
    :cond_60
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method

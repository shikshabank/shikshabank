.class public Lkawa/lib/syntax$frame0;
.super Lgnu/expr/ModuleBody;
.source "syntax.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsyntax.scm\nScheme\n*S Scheme\n*F\n+ 1 syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm\n*L\n161#1,3:161\n*E\n"
.end annotation


# instance fields
.field $unnamed$0:Lkawa/lang/TemplateScope;

.field $unnamed$1:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "clauses"    # Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lkawa/lib/syntax$frame0;->$unnamed$1:[Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/syntax;->Lit85:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 163
    sget-object v1, Lkawa/lib/syntax;->Lit86:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/syntax;->Lit87:Lkawa/lang/SyntaxTemplate;

    iget-object v3, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v2, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/lib/syntax$frame0;->lambda6loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_62

    :cond_29
    sget-object v1, Lkawa/lib/syntax;->Lit88:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_62

    :cond_34
    sget-object v1, Lkawa/lib/syntax;->Lit89:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lkawa/lib/syntax;->Lit90:Lkawa/lang/SyntaxTemplate;

    iget-object v3, p0, Lkawa/lib/syntax$frame0;->$unnamed$0:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invalid case-lambda clause"

    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_4d

    check-cast v1, [Ljava/lang/Object;

    goto :goto_53

    :cond_4d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    move-object v1, v3

    :goto_53
    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_62

    :cond_5c
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_62
    return-object v0
.end method

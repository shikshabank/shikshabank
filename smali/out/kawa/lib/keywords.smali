.class public Lkawa/lib/keywords;
.super Lgnu/expr/ModuleBody;
.source "keywords.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nkeywords.scm\nScheme\n*S Scheme\n*F\n+ 1 keywords.scm\n/u2/home/jis/ai2-kawa/kawa/lib/keywords.scm\n*L\n1#1,10:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/keywords;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final keyword$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final keyword$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grkeyword:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string->keyword"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/keywords;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "keyword->string"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/keywords;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "keyword?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/keywords;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lkawa/lib/keywords;

    invoke-direct {v3}, Lkawa/lib/keywords;-><init>()V

    sput-object v3, Lkawa/lib/keywords;->$instance:Lkawa/lib/keywords;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    const/16 v6, 0x1001

    invoke-direct {v4, v3, v5, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/keywords;->keyword$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/keywords;->keyword$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/keywords;->string$Mn$Grkeyword:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isKeyword(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 3
    nop

    .line 4
    invoke-static {p0}, Lgnu/expr/Keyword;->isKeyword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static keyword$To$String(Lgnu/expr/Keyword;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "keyword"    # Lgnu/expr/Keyword;

    .line 6
    nop

    .line 7
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string$To$Keyword(Ljava/lang/String;)Lgnu/expr/Keyword;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 9
    nop

    .line 10
    invoke-static {p0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_34

    .line 9
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    if-nez p2, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12
    invoke-static {p1}, Lkawa/lib/keywords;->string$To$Keyword(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_17
    :try_start_17
    check-cast p2, Lgnu/expr/Keyword;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_1e

    invoke-static {p2}, Lkawa/lib/keywords;->keyword$To$String(Lgnu/expr/Keyword;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_1e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "keyword->string"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_28
    invoke-static {p2}, Lkawa/lib/keywords;->isKeyword(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_33

    :cond_31
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_33
    return-object p1

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_17
        :pswitch_a
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2a

    .line 3
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 9
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 6
    :pswitch_13
    instance-of v0, p2, Lgnu/expr/Keyword;

    if-nez v0, :cond_1b

    const p1, -0xbffff

    return p1

    :cond_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 3
    :pswitch_22
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    nop

    .line 6
    nop

    .line 9
    return-void
.end method

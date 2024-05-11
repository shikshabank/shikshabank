.class public Lkawa/lib/thread;
.super Lgnu/expr/ModuleBody;
.source "thread.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nthread.scm\nScheme\n*S Scheme\n*F\n+ 1 thread.scm\n/u2/home/jis/ai2-kawa/kawa/lib/thread.scm\n*L\n1#1,19:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/thread;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lkawa/lang/SyntaxRules;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field public static final future:Lkawa/lang/Macro;

.field public static final runnable:Lgnu/expr/ModuleMethod;

.field public static final sleep:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;
    .registers 3
    .param p0, "p"    # Lgnu/mapping/Procedure;

    .line 13
    nop

    .line 14
    new-instance v0, Lgnu/mapping/Future;

    invoke-direct {v0, p0}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;)V

    const/4 v1, 0x0

    .line 15
    .local v0, "f":Lgnu/mapping/Future;
    invoke-virtual {v0}, Lgnu/mapping/Future;->start()V

    .line 16
    nop

    .end local v0    # "f":Lgnu/mapping/Future;
    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "runnable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "%make-future"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "future"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/thread;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v7, v3, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v9, v10, v8, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v15, 0x2

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v1, v12, v6

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "lambda"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v12, v3

    const-string v10, "\u0001"

    const-string v11, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\t\u0010\u0008\u0003"

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v14, v7, v6

    invoke-direct {v2, v4, v7, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lkawa/lib/thread;->Lit2:Lkawa/lang/SyntaxRules;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "sleep"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lib/thread;

    invoke-direct {v6}, Lkawa/lib/thread;-><init>()V

    sput-object v6, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x1001

    invoke-direct {v7, v6, v3, v4, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/thread;->sleep:Lgnu/expr/ModuleMethod;

    invoke-static {v5, v2, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v2

    sput-object v2, Lkawa/lib/thread;->future:Lkawa/lang/Macro;

    new-instance v2, Lgnu/expr/ModuleMethod;

    invoke-direct {v2, v6, v15, v1, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v2, v0, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/thread;->runnable:Lgnu/expr/ModuleMethod;

    invoke-virtual {v6}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;
    .registers 2
    .param p0, "p"    # Lgnu/mapping/Procedure;

    .line 18
    nop

    .line 19
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .registers 1
    .param p0, "time"    # Lgnu/math/Quantity;

    .line 4
    nop

    .line 5
    invoke-static {p0}, Lkawa/standard/sleep;->sleep(Lgnu/math/Quantity;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3c

    .line 18
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lkawa/lib/thread;->runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "runnable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lkawa/lib/thread;->$PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "%make-future"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 4
    :pswitch_2b
    :try_start_2b
    check-cast p2, Lgnu/math/Quantity;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_33

    invoke-static {p2}, Lkawa/lib/thread;->sleep(Lgnu/math/Quantity;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_33
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "sleep"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_34

    .line 4
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 18
    :pswitch_f
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :pswitch_1b
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 4
    :pswitch_27
    instance-of v0, p2, Lgnu/math/Quantity;

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 4
    nop

    .line 13
    nop

    .line 18
    return-void
.end method

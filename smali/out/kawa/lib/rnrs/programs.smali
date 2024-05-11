.class public Lkawa/lib/rnrs/programs;
.super Lgnu/expr/ModuleBody;
.source "programs.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprograms.scm\nScheme\n*S Scheme\n*F\n+ 1 programs.scm\n/u2/home/jis/ai2-kawa/kawa/lib/rnrs/programs.scm\n*L\n1#1,15:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/rnrs/programs;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final command$Mnline:Lgnu/expr/ModuleMethod;

.field public static final exit:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/programs;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "command-line"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/programs;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sput-object v3, Lkawa/lib/rnrs/programs;->Lit0:Lgnu/math/IntNum;

    new-instance v3, Lkawa/lib/rnrs/programs;

    invoke-direct {v3}, Lkawa/lib/rnrs/programs;-><init>()V

    sput-object v3, Lkawa/lib/rnrs/programs;->$instance:Lkawa/lib/rnrs/programs;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/rnrs/programs;->command$Mnline:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v2, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/programs;->exit:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static commandLine()Lgnu/lists/LList;
    .registers 2

    .line 5
    nop

    .line 6
    nop

    .line 7
    sget-object v0, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    const-string v1, "kawa"

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static exit()V
    .registers 1

    sget-object v0, Lkawa/lib/rnrs/programs;->Lit0:Lgnu/math/IntNum;

    invoke-static {v0}, Lkawa/lib/rnrs/programs;->exit(Ljava/lang/Object;)V

    return-void
.end method

.method public static exit(Ljava/lang/Object;)V
    .registers 6
    .param p0, "code"    # Ljava/lang/Object;

    .line 9
    nop

    .line 10
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 11
    nop

    .line 12
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    :try_start_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_17

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2a

    .end local p0    # "code":Ljava/lang/Object;
    :catch_17
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "status"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .restart local p0    # "code":Ljava/lang/Object;
    :cond_21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v0, :cond_27

    move v0, v1

    .local v0, "status":I
    goto :goto_2a

    .end local v0    # "status":I
    :cond_27
    const/4 v0, -0x1

    move v0, v1

    const/4 v1, -0x1

    .restart local v0    # "status":I
    :goto_2a
    move v0, v1

    .line 15
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .end local v0    # "status":I
    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_16

    .line 9
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {}, Lkawa/lib/rnrs/programs;->exit()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 5
    :pswitch_10
    invoke-static {}, Lkawa/lib/rnrs/programs;->commandLine()Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 9
    invoke-static {p2}, Lkawa/lib/rnrs/programs;->exit(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 5
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 9
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 5
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    nop

    .line 9
    return-void
.end method

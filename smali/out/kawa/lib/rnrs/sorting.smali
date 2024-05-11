.class public Lkawa/lib/rnrs/sorting;
.super Lgnu/expr/ModuleBody;
.source "sorting.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsorting.scm\nScheme\n*S Scheme\n*F\n+ 1 sorting.scm\n/u2/home/jis/ai2-kawa/kawa/lib/rnrs/sorting.scm\n*L\n1#1,14:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/rnrs/sorting;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mnsort:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnsort:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnsort$Ex:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-sort!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/sorting;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "vector-sort"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/sorting;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "list-sort"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/rnrs/sorting;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lkawa/lib/rnrs/sorting;

    invoke-direct {v3}, Lkawa/lib/rnrs/sorting;-><init>()V

    sput-object v3, Lkawa/lib/rnrs/sorting;->$instance:Lkawa/lib/rnrs/sorting;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    const/16 v6, 0x2002

    invoke-direct {v4, v3, v5, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/rnrs/sorting;->list$Mnsort:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/rnrs/sorting;->vector$Mnsort:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/sorting;->vector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static listSort(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "less$Qu"    # Ljava/lang/Object;
    .param p1, "list"    # Ljava/lang/Object;

    .line 7
    nop

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static vectorSort(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "less$Qu"    # Ljava/lang/Object;
    .param p1, "seq"    # Ljava/lang/Object;

    .line 10
    nop

    .line 11
    :try_start_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/Sequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .end local p0    # "less$Qu":Ljava/lang/Object;
    .end local p1    # "seq":Ljava/lang/Object;
    :catch_a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "%sort-vector"

    invoke-direct {v0, p0, v2, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public static vectorSort$Ex(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "proc"    # Ljava/lang/Object;
    .param p1, "vector"    # Ljava/lang/Object;

    .line 13
    nop

    .line 14
    :try_start_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/Sequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .end local p0    # "proc":Ljava/lang/Object;
    .end local p1    # "vector":Ljava/lang/Object;
    :catch_a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "%vector-sort!"

    invoke-direct {v0, p0, v2, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1c

    .line 13
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2, p3}, Lkawa/lib/rnrs/sorting;->vectorSort$Ex(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 10
    :pswitch_10
    invoke-static {p2, p3}, Lkawa/lib/rnrs/sorting;->vectorSort(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 7
    :pswitch_16
    invoke-static {p2, p3}, Lkawa/lib/rnrs/sorting;->listSort(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_28

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 13
    :pswitch_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10
    :pswitch_15
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 7
    :pswitch_1e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_15
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

    .line 7
    nop

    .line 10
    nop

    .line 13
    return-void
.end method

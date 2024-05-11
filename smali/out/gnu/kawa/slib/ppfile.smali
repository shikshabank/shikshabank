.class public Lgnu/kawa/slib/ppfile;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nppfile.scm\nScheme\n*S Scheme\n*F\n+ 1 ppfile.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm\n*L\n20#1,51:20\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/ppfile;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/text/Char;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field public static final pprint$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final pprint$Mnfilter$Mnfile:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "pprint-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/ppfile;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "pprint-filter-file"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/ppfile;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xa

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    const/16 v2, 0x3b

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    new-instance v2, Lgnu/kawa/slib/ppfile;

    invoke-direct {v2}, Lgnu/kawa/slib/ppfile;-><init>()V

    sput-object v2, Lgnu/kawa/slib/ppfile;->$instance:Lgnu/kawa/slib/ppfile;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x3

    const/16 v5, -0xffe

    invoke-direct {v3, v2, v4, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/ppfile;->pprint$Mnfilter$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v1, v2, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v3, "source-location"

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:70"

    invoke-virtual {v1, v3, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lgnu/kawa/slib/ppfile;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x5

    const/16 v4, 0x2001

    invoke-direct {v1, v2, v3, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/ppfile;->pprint$Mnfile:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public static pprintFile(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "ifile"    # Ljava/lang/Object;
    .param p1, "oport"    # Ljava/lang/Object;

    .line 68
    nop

    .line 69
    sget-object v0, Lgnu/kawa/slib/ppfile;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "inport"    # Ljava/lang/Object;
    .param p1, "filter"    # Ljava/lang/Object;
    .param p2, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    .local v0, "optarg":Lgnu/lists/LList;
    new-instance v1, Lgnu/kawa/slib/ppfile$frame;

    invoke-direct {v1}, Lgnu/kawa/slib/ppfile$frame;-><init>()V

    iput-object p1, v1, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/ppfile$frame;->optarg:Lgnu/lists/LList;

    .line 27
    iget-object v3, v1, Lgnu/kawa/slib/ppfile$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    .local v2, "fun":Lgnu/mapping/Procedure;
    move-object v2, v3

    .line 24
    invoke-static {p0}, Lkawa/lib/ports;->isInputPort(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 25
    invoke-virtual {v1, p0}, Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25

    .line 26
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_21} :catch_26

    invoke-static {v1, v2}, Lkawa/lib/ports;->callWithInputFile(Lgnu/text/Path;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .end local v2    # "fun":Lgnu/mapping/Procedure;
    :goto_25
    return-object v1

    .end local v0    # "optarg":Lgnu/lists/LList;
    .end local p0    # "inport":Ljava/lang/Object;
    .end local p1    # "filter":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_26
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string v1, "call-with-input-file"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_14

    .line 68
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_f
    invoke-static {p2}, Lgnu/kawa/slib/ppfile;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 68
    invoke-static {p2, p3}, Lgnu/kawa/slib/ppfile;->pprintFile(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 22
    const/4 p1, 0x0

    aget-object v0, p2, p1

    const/4 p1, 0x1

    aget-object v1, p2, p1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x2

    new-array v2, p1, [Ljava/lang/Object;

    :goto_10
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_19

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/ppfile;->pprintFilterFile$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    add-int/lit8 v3, p1, 0x2

    aget-object v3, p2, v3

    aput-object v3, v2, p1

    goto :goto_10

    :cond_20
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 70
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 68
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 70
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 68
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 22
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 20
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 22
    nop

    .line 68
    return-void
.end method

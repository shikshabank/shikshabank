.class public Lgnu/kawa/slib/srfi37;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/option$Mntype;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi37.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi37.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm\n+ 2 DefineRecordType.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm\n*L\n36#1,182:36\n35#2:10000\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi37;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/text/Char;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/text/Char;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final args$Mnfold:Lgnu/expr/ModuleMethod;

.field public static final option:Lgnu/expr/ModuleMethod;

.field public static final option$Mnnames:Lgnu/expr/ModuleMethod;

.field public static final option$Mnoptional$Mnarg$Qu:Lgnu/expr/ModuleMethod;

.field public static final option$Mnprocessor:Lgnu/expr/ModuleMethod;

.field public static final option$Mnrequired$Mnarg$Qu:Lgnu/expr/ModuleMethod;

.field static final option$Mntype:Ljava/lang/Class;

.field public static final option$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "args-fold"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "option-processor"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi37;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "option-optional-arg?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/srfi37;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "option-required-arg?"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi37;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "option-names"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi37;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "option"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/srfi37;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "option?"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/srfi37;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x0

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    const/4 v7, 0x3

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    const/16 v7, 0x3d

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    const/16 v7, 0x2d

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    const/4 v7, 0x1

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    new-instance v7, Lgnu/kawa/slib/srfi37;

    invoke-direct {v7}, Lgnu/kawa/slib/srfi37;-><init>()V

    sput-object v7, Lgnu/kawa/slib/srfi37;->$instance:Lgnu/kawa/slib/srfi37;

    const-class v8, Lgnu/kawa/slib/option$Mntype;

    sput-object v8, Lgnu/kawa/slib/srfi37;->option$Mntype:Ljava/lang/Class;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/16 v9, 0x19

    const/16 v10, 0x1001

    invoke-direct {v8, v7, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lgnu/kawa/slib/srfi37;->option$Qu:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x1a

    const/16 v9, 0x4004

    invoke-direct {v6, v7, v8, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lgnu/kawa/slib/srfi37;->option:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x1b

    invoke-direct {v5, v7, v6, v4, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lgnu/kawa/slib/srfi37;->option$Mnnames:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x1c

    invoke-direct {v4, v7, v5, v3, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/srfi37;->option$Mnrequired$Mnarg$Qu:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x1d

    invoke-direct {v3, v7, v4, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/srfi37;->option$Mnoptional$Mnarg$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1e

    invoke-direct {v2, v7, v3, v1, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi37;->option$Mnprocessor:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    const/16 v3, -0xffc

    invoke-direct {v1, v7, v2, v0, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi37;->args$Mnfold:Lgnu/expr/ModuleMethod;

    invoke-virtual {v7}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "args"    # Ljava/lang/Object;
    .param p1, "options"    # Ljava/lang/Object;
    .param p2, "unrecognizedOptionProc"    # Ljava/lang/Object;
    .param p3, "operandProc"    # Ljava/lang/Object;
    .param p4, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    .local v0, "seeds":Lgnu/lists/LList;
    new-instance v1, Lgnu/kawa/slib/srfi37$frame;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi37$frame;-><init>()V

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    iput-object p3, v1, Lgnu/kawa/slib/srfi37$frame;->operand$Mnproc:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 61
    nop

    .line 63
    nop

    .line 69
    nop

    .line 78
    nop

    .line 122
    nop

    .line 130
    nop

    .line 61
    nop

    .line 217
    invoke-virtual {v1, p0, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isOption(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 49
    nop

    .line 47
    instance-of v0, p0, Lgnu/kawa/slib/option$Mntype;

    return v0
.end method

.method public static isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .line 52
    nop

    .line 47
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->optional$Mnarg$Qu:Ljava/lang/Object;

    return-object v0
.end method

.method public static isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .line 51
    nop

    .line 47
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->required$Mnarg$Qu:Ljava/lang/Object;

    return-object v0
.end method

.method public static option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;
    .registers 6
    .param p0, "names"    # Ljava/lang/Object;
    .param p1, "required$Mnarg$Qu"    # Ljava/lang/Object;
    .param p2, "optional$Mnarg$Qu"    # Ljava/lang/Object;
    .param p3, "processor"    # Ljava/lang/Object;

    .line 48
    nop

    .line 47
    new-instance v0, Lgnu/kawa/slib/option$Mntype;

    invoke-direct {v0}, Lgnu/kawa/slib/option$Mntype;-><init>()V

    const/4 v1, 0x0

    .local v0, "tmp":Lgnu/kawa/slib/option$Mntype;
    iput-object p0, v0, Lgnu/kawa/slib/option$Mntype;->names:Ljava/lang/Object;

    iput-object p1, v0, Lgnu/kawa/slib/option$Mntype;->required$Mnarg$Qu:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/option$Mntype;->optional$Mnarg$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lgnu/kawa/slib/option$Mntype;->processor:Ljava/lang/Object;

    .line 10000
    nop

    .end local v0    # "tmp":Lgnu/kawa/slib/option$Mntype;
    return-object v0
.end method

.method public static optionNames(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .line 50
    nop

    .line 47
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->names:Ljava/lang/Object;

    return-object v0
.end method

.method public static optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .line 53
    nop

    .line 47
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->processor:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_58

    .line 53
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "option-processor"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 52
    :pswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "option-optional-arg?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 51
    :pswitch_2b
    :try_start_2b
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_32

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :catch_32
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "option-required-arg?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 50
    :pswitch_3b
    :try_start_3b
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_42

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->optionNames(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :catch_42
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "option-names"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 49
    :pswitch_4b
    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOption(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_56

    :cond_54
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_56
    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x19
        :pswitch_4b
        :pswitch_6
        :pswitch_3b
        :pswitch_2b
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    .line 48
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_27

    .line 55
    const/4 p1, 0x0

    aget-object v0, p2, p1

    const/4 p1, 0x1

    aget-object v1, p2, p1

    const/4 p1, 0x2

    aget-object v2, p2, p1

    const/4 p1, 0x3

    aget-object v3, p2, p1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x4

    new-array v4, p1, [Ljava/lang/Object;

    :goto_17
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_20

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_20
    add-int/lit8 v5, p1, 0x4

    aget-object v5, p2, v5

    aput-object v5, v4, p1

    goto :goto_17

    :cond_27
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_46

    .line 49
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 53
    :pswitch_f
    instance-of v0, p2, Lgnu/kawa/slib/option$Mntype;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 52
    :pswitch_1b
    instance-of v0, p2, Lgnu/kawa/slib/option$Mntype;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 51
    :pswitch_27
    instance-of v0, p2, Lgnu/kawa/slib/option$Mntype;

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 50
    :pswitch_33
    instance-of v0, p2, Lgnu/kawa/slib/option$Mntype;

    if-nez v0, :cond_38

    return v1

    :cond_38
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 49
    :pswitch_3f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_46
    .packed-switch 0x19
        :pswitch_3f
        :pswitch_a
        :pswitch_33
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    .line 48
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_15
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_f

    .line 55
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 36
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 47
    nop

    .line 55
    return-void
.end method

.class public Lgnu/kawa/slib/srfi37$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi37.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi37.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm\n+ 2 syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm\n*L\n90#1,28:90\n145#2:10000\n*E\n"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field index:Ljava/lang/Object;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field name:C

.field option:Ljava/lang/Object;

.field seeds:Ljava/lang/Object;

.field shorts:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi37$frame;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    const/16 v4, -0x1000

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1a

    :pswitch_5
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda12()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda10()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda8()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_14
        :pswitch_5
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1a

    :pswitch_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_14
        :pswitch_5
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .registers 6

    .line 103
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_8
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_33

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 104
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 105
    iget-char v3, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 106
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v4, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 107
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_33
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v4, "option-processor"

    invoke-direct {v1, v0, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 102
    nop

    .line 10000
    nop

    .line 102
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 108
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lambda12()Ljava/lang/Object;
    .registers 6

    .line 111
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_8
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_2d

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 112
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 113
    iget-char v3, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 115
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 111
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_2d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v4, "option-processor"

    invoke-direct {v1, v0, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 110
    nop

    .line 10000
    nop

    .line 110
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 117
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lambda8()Ljava/lang/Object;
    .registers 11

    .line 91
    const-string v0, "substring"

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v4, 0x0

    :try_start_a
    check-cast v3, Lgnu/kawa/slib/option$Mntype;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_65

    invoke-static {v3}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    .line 92
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 93
    iget-char v3, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    .line 94
    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_23
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_25} :catch_5e

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 96
    iget-object v8, p0, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_2f
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_36} :catch_57

    iget-object v5, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_38
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3a} :catch_4e

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v6, v0, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x4

    .line 98
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_4e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v1, v0, v2, v4, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 96
    :catch_57
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v5, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 95
    :catch_5e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 91
    :catch_65
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-processor"

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 90
    nop

    .line 10000
    nop

    .line 90
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_10

    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_b
        :pswitch_6
        :pswitch_b
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_14

    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_c
        :pswitch_7
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

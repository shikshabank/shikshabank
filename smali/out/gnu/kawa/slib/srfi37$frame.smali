.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi37.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi37.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm\n+ 2 std_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/std_syntax.scm\n*L\n63#1,153:63\n30#2:10000\n*E\n"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "l"    # Ljava/lang/Object;
    .param p1, "$Qu"    # Ljava/lang/Object;

    .line 63
    nop

    .line 64
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2b

    :cond_a
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_21

    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    .line 66
    :cond_21
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2b
    return-object v0
.end method


# virtual methods
.method public lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;

    .line 69
    new-instance v0, Lgnu/kawa/slib/srfi37$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 78
    const-string v0, "string-ref"

    const-string v1, "string-length"

    new-instance v2, Lgnu/kawa/slib/srfi37$frame1;

    invoke-direct {v2}, Lgnu/kawa/slib/srfi37$frame1;-><init>()V

    iput-object p0, v2, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iput-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iput-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iput-object p4, v2, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    .line 79
    sget-object p1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    const/4 p4, 0x1

    :try_start_1a
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1c} :catch_121

    invoke-static {p3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_36

    .line 80
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_f9

    .line 81
    :cond_36
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_38
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3a} :catch_11a

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    :try_start_3c
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_43
    .catch Ljava/lang/ClassCastException; {:try_start_3c .. :try_end_43} :catch_112

    invoke-static {p1, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    iput-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    .line 82
    iget-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_58

    goto :goto_6c

    :cond_58
    iget-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object p1

    :goto_6c
    iput-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 87
    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object p2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {p2, p3, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_7c
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_7e
    .catch Ljava/lang/ClassCastException; {:try_start_7c .. :try_end_7e} :catch_10b

    invoke-static {p3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_8a
    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_91
    .catch Ljava/lang/ClassCastException; {:try_start_8a .. :try_end_91} :catch_101

    const-string p2, "option-required-arg?"

    const/4 p3, 0x0

    if-eqz p1, :cond_c4

    .line 88
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_98
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_9a
    .catch Ljava/lang/ClassCastException; {:try_start_98 .. :try_end_9a} :catch_bd

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_a7

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_cf

    :goto_a6
    goto :goto_c6

    :cond_a7
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_a9
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_ab
    .catch Ljava/lang/ClassCastException; {:try_start_a9 .. :try_end_ab} :catch_b4

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_cf

    goto :goto_a6

    .line 89
    :catch_b4
    move-exception p2

    new-instance p4, Lgnu/mapping/WrongType;

    const-string v0, "option-optional-arg?"

    invoke-direct {p4, p2, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    .line 88
    :catch_bd
    move-exception p4

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p4, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 87
    :cond_c4
    if-eqz p1, :cond_cf

    .line 90
    :goto_c6
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f9

    .line 100
    :cond_cf
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_d1
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_d3
    .catch Ljava/lang/ClassCastException; {:try_start_d1 .. :try_end_d3} :catch_fa

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_e4

    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f1

    goto :goto_e8

    :cond_e4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_f1

    .line 102
    :goto_e8
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f9

    .line 110
    :cond_f1
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_f9
    return-object p1

    .line 100
    :catch_fa
    move-exception p4

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p4, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 87
    :catch_101
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, -0x2

    const-string v0, "x"

    invoke-direct {p3, p2, v0, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_10b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 81
    :catch_112
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_11a
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 79
    :catch_121
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_129

    :goto_128
    throw p2

    :goto_129
    goto :goto_128
.end method

.method public lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "operands"    # Ljava/lang/Object;
    .param p2, "seeds"    # Ljava/lang/Object;

    .line 122
    new-instance v0, Lgnu/kawa/slib/srfi37$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame2;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 124
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26

    .line 125
    :cond_1e
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    :goto_26
    return-object v0
.end method

.method public lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 130
    const-string v0, "string-length"

    new-instance v1, Lgnu/kawa/slib/srfi37$frame3;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi37$frame3;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 132
    sget-object p1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object p2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_252

    .line 133
    :cond_1d
    sget-object p2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {p2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 134
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    .line 137
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    const-string p2, "--"

    invoke-static {p2, p1}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 141
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/slib/srfi37$frame;->lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_252

    .line 142
    :cond_41
    nop

    .line 147
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    const/4 p2, 0x1

    :try_start_45
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_47} :catch_261

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le p1, v2, :cond_51

    const/4 p1, 0x1

    goto :goto_52

    :cond_51
    const/4 p1, 0x0

    :goto_52
    const/4 v2, 0x2

    const-string v4, "string-ref"

    if-eqz p1, :cond_11a

    .line 148
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_5b
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_5d
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_5d} :catch_113

    invoke-static {v5, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    .line 147
    if-eqz p1, :cond_10b

    .line 149
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_6f
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_6f .. :try_end_71} :catch_104

    invoke-static {v5, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    .line 147
    if-eqz p1, :cond_fc

    .line 150
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_83
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_83 .. :try_end_85} :catch_f5

    invoke-static {v5, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    add-int/2addr p1, p2

    and-int/2addr p1, p2

    .line 147
    if-eqz p1, :cond_ed

    .line 151
    nop

    .line 147
    nop

    .line 151
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    .line 152
    :goto_99
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_9d
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_9f
    .catch Ljava/lang/ClassCastException; {:try_start_9d .. :try_end_9f} :catch_e6

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_b2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_ce

    :cond_b2
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_b6
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_b8
    .catch Ljava/lang/ClassCastException; {:try_start_b6 .. :try_end_b8} :catch_df

    :try_start_b8
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_bf
    .catch Ljava/lang/ClassCastException; {:try_start_b8 .. :try_end_bf} :catch_d8

    invoke-static {v6, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 155
    nop

    .line 157
    :goto_ce
    goto :goto_f4

    :cond_cf
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_99

    .line 154
    :catch_d8
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v4, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_df
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 152
    :catch_e6
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 147
    :cond_ed
    if-eqz p1, :cond_f2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f4

    :cond_f2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_f4
    goto :goto_121

    .line 150
    :catch_f5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    :cond_fc
    if-eqz p1, :cond_101

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_121

    :cond_101
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_121

    .line 149
    :catch_104
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    :cond_10b
    if-eqz p1, :cond_110

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_121

    :cond_110
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_121

    .line 148
    :catch_113
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    :cond_11a
    if-eqz p1, :cond_11f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_121

    :cond_11f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_121
    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 137
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v5, :cond_134

    .line 10000
    nop

    .line 160
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_252

    .line 181
    :cond_134
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_136
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_138
    .catch Ljava/lang/ClassCastException; {:try_start_136 .. :try_end_138} :catch_25a

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v5, 0x3

    if-le p1, v5, :cond_141

    const/4 p1, 0x1

    goto :goto_142

    :cond_141
    const/4 p1, 0x0

    :goto_142
    const-string v5, "substring"

    if-eqz p1, :cond_180

    .line 182
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_14a
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_14c
    .catch Ljava/lang/ClassCastException; {:try_start_14a .. :try_end_14c} :catch_179

    invoke-static {v6, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {p1, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    .line 181
    if-eqz p1, :cond_176

    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_15e
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_160
    .catch Ljava/lang/ClassCastException; {:try_start_15e .. :try_end_160} :catch_16f

    invoke-static {v6, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {p1, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_1f4

    goto :goto_182

    .line 183
    :catch_16f
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 181
    :cond_176
    if-eqz p1, :cond_1f4

    goto :goto_182

    .line 182
    :catch_179
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 181
    :cond_180
    if-eqz p1, :cond_1f4

    .line 185
    :goto_182
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_184
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_186
    .catch Ljava/lang/ClassCastException; {:try_start_184 .. :try_end_186} :catch_1ed

    iget-object v4, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_188
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_18a
    .catch Ljava/lang/ClassCastException; {:try_start_188 .. :try_end_18a} :catch_1e6

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-static {p1, v2, p2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    .line 186
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_19f

    goto :goto_1af

    :cond_19f
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-static {p1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v2}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object p1

    :goto_1af
    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .line 192
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    :try_start_1b3
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_1b5
    .catch Ljava/lang/ClassCastException; {:try_start_1b3 .. :try_end_1b5} :catch_1dd

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_1c6

    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d3

    goto :goto_1ca

    :cond_1c6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_1d3

    .line 194
    :goto_1ca
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1db

    .line 201
    :cond_1d3
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_1db
    goto/16 :goto_252

    .line 192
    :catch_1dd
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "option-required-arg?"

    invoke-direct {v0, p2, v1, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 185
    :catch_1e6
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1ed
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 209
    :cond_1f4
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_1f6
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_1f8
    .catch Ljava/lang/ClassCastException; {:try_start_1f6 .. :try_end_1f8} :catch_253

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, p2, :cond_200

    const/4 p1, 0x1

    goto :goto_201

    :cond_200
    const/4 p1, 0x0

    :goto_201
    if-eqz p1, :cond_21f

    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_207
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_209
    .catch Ljava/lang/ClassCastException; {:try_start_207 .. :try_end_209} :catch_218

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {p1, v2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_24a

    goto :goto_221

    .line 210
    :catch_218
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 209
    :cond_21f
    if-eqz p1, :cond_24a

    .line 212
    :goto_221
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_223
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_225
    .catch Ljava/lang/ClassCastException; {:try_start_223 .. :try_end_225} :catch_243

    iget-object v2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_227
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_229
    .catch Ljava/lang/ClassCastException; {:try_start_227 .. :try_end_229} :catch_23c

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 213
    sget-object p2, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    iget-object v0, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0, v1}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_252

    .line 212
    :catch_23c
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_243
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 215
    :cond_24a
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_252
    return-object p1

    .line 209
    :catch_253
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 181
    :catch_25a
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 147
    :catch_261
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_269

    :goto_268
    throw v2

    :goto_269
    goto :goto_268
.end method

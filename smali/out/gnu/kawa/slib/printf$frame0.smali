.class public Lgnu/kawa/slib/printf$frame0;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame;->lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n111#1,15:111\n*E\n"
.end annotation


# instance fields
.field digs:Ljava/lang/Object;

.field ex:Ljava/lang/Object;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field num:Ljava/lang/Object;

.field sgn:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x4004

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:111"

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x3

    const/16 v4, 0x3003

    invoke-direct {v0, p0, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:123"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 123
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/printf$frame0;->lambda7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 111
    invoke-virtual {p0, p2, p3, p4, p5}, Lgnu/kawa/slib/printf$frame0;->lambda6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "j"    # Ljava/lang/Object;
    .param p2, "im$Mnsgn"    # Ljava/lang/Object;
    .param p3, "im$Mndigs"    # Ljava/lang/Object;
    .param p4, "im$Mnex"    # Ljava/lang/Object;

    const-string v0, "string-ref"

    .line 111
    nop

    .line 112
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget v2, v2, Lgnu/kawa/slib/printf$frame;->n:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_13
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1a} :catch_78

    const/4 v2, 0x0

    move v4, v2

    .local v1, "x":Z
    const/4 v4, 0x2

    if-eqz v1, :cond_4b

    sget-object v5, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_25
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_44

    :try_start_27
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_2e} :catch_3d

    invoke-static {v6, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-static {v5, v0}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_4d

    .line 113
    .end local v1    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame0;
    .end local p1    # "j":Ljava/lang/Object;
    .end local p2    # "im$Mnsgn":Ljava/lang/Object;
    .end local p3    # "im$Mndigs":Ljava/lang/Object;
    .end local p4    # "im$Mnex":Ljava/lang/Object;
    :catch_3d
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_44
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 112
    .restart local v1    # "x":Z
    .restart local p1    # "j":Ljava/lang/Object;
    .restart local p2    # "im$Mnsgn":Ljava/lang/Object;
    .restart local p3    # "im$Mndigs":Ljava/lang/Object;
    .restart local p4    # "im$Mnex":Ljava/lang/Object;
    :cond_4b
    if-eqz v1, :cond_73

    .line 114
    .end local v1    # "x":Z
    :goto_4d
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    aput-object v5, v1, v2

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    aput-object v2, v1, v3

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const/4 v2, 0x6

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_77

    .line 115
    :cond_73
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v0

    :goto_77
    return-object v0

    .line 112
    .end local p1    # "j":Ljava/lang/Object;
    .end local p2    # "im$Mnsgn":Ljava/lang/Object;
    .end local p3    # "im$Mndigs":Ljava/lang/Object;
    .end local p4    # "im$Mnex":Ljava/lang/Object;
    :catch_78
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, -0x2

    const-string p4, "x"

    invoke-direct {p2, p1, p4, p3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method lambda7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "sgn"    # Ljava/lang/Object;
    .param p2, "digs"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Object;

    .line 123
    new-instance v0, Lgnu/kawa/slib/printf$frame1;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame1;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/printf$frame1;->staticLink:Lgnu/kawa/slib/printf$frame0;

    iput-object p1, v0, Lgnu/kawa/slib/printf$frame1;->sgn:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/printf$frame1;->digs:Ljava/lang/Object;

    iput-object p3, v0, Lgnu/kawa/slib/printf$frame1;->ex:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    :try_start_f
    check-cast v1, Lgnu/math/Complex;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_11} :catch_20

    invoke-static {v1}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 125
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame0;
    .end local p1    # "sgn":Ljava/lang/Object;
    .end local p2    # "digs":Ljava/lang/Object;
    .end local p3    # "ex":Ljava/lang/Object;
    :catch_20
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v0, "imag-part"

    invoke-direct {p2, p1, v0, p3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 123
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 111
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_14
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

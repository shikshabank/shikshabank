.class public Lgnu/kawa/slib/printf$frame4;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame3;->lambda11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame4"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n62#1,31:62\n*E\n"
.end annotation


# instance fields
.field idigs:Ljava/lang/Object;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame3;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:90"

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame4;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x8

    const/16 v4, 0x1001

    invoke-direct {v0, p0, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:87"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame4;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 87
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame4;->lambda12(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 90
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/printf$frame4;->lambda13(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda12(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # Ljava/lang/Object;

    .line 87
    nop

    .line 88
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame4;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/slib/printf$frame;->lambda3digits(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda13(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "fdigs"    # Ljava/lang/Object;

    const-string v0, "string-ref"

    .line 90
    new-instance v1, Lgnu/kawa/slib/printf$frame5;

    invoke-direct {v1}, Lgnu/kawa/slib/printf$frame5;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iput-object p2, v1, Lgnu/kawa/slib/printf$frame5;->fdigs:Ljava/lang/Object;

    .line 91
    nop

    .line 92
    iget-object v1, v1, Lgnu/kawa/slib/printf$frame5;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    .line 62
    const/4 v2, 0x0

    .local v2, "closureEnv":Lgnu/kawa/slib/printf$frame;
    move-object v3, p1

    .local v1, "cont":Ljava/lang/Object;
    .local v3, "i":Ljava/lang/Object;
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v2, v4, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    new-instance v4, Lgnu/kawa/slib/printf$frame6;

    invoke-direct {v4}, Lgnu/kawa/slib/printf$frame6;-><init>()V

    iput-object v2, v4, Lgnu/kawa/slib/printf$frame6;->staticLink:Lgnu/kawa/slib/printf$frame;

    iput-object v1, v4, Lgnu/kawa/slib/printf$frame6;->cont:Ljava/lang/Object;

    .line 63
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget v6, v6, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_40

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame6;->cont:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, v4, v3, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_82

    :cond_40
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_48
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_4a
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_4a} :catch_8b

    :try_start_4a
    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_51} :catch_83

    invoke-static {v5, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sget-object v5, Lgnu/kawa/slib/printf;->Lit10:Lgnu/lists/PairWithPosition;

    invoke-static {v0, v5}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v5, :cond_78

    .line 66
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v5, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame6;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0, v5, v4}, Lgnu/kawa/slib/printf$frame;->lambda2sign(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_82

    .line 74
    :cond_78
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame6;->cont:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, v4, v3, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "cont":Ljava/lang/Object;
    .end local v2    # "closureEnv":Lgnu/kawa/slib/printf$frame;
    .end local v3    # "i":Ljava/lang/Object;
    :goto_82
    return-object v0

    .line 64
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame4;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "fdigs":Ljava/lang/Object;
    :catch_83
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_8b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 87
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    .line 90
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

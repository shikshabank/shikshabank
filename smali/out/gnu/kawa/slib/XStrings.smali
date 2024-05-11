.class public Lgnu/kawa/slib/XStrings;
.super Lgnu/expr/ModuleBody;
.source "XStrings.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXStrings.scm\nScheme\n*S Scheme\n*F\n+ 1 XStrings.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/XStrings.scm\n*L\n1#1,18:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/XStrings;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "substring"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const v2, 0x7fffffff

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    new-instance v2, Lgnu/kawa/slib/XStrings;

    invoke-direct {v2}, Lgnu/kawa/slib/XStrings;-><init>()V

    sput-object v2, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x1

    const/16 v5, 0x3002

    invoke-direct {v3, v2, v4, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/XStrings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x3

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v3, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XStrings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "string"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_8

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_13

    .line 18
    :cond_8
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    nop

    .line 2
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    if-eqz v0, :cond_21

    :goto_e
    goto :goto_1e

    .line 3
    :cond_f
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_14

    const/4 v1, 0x1

    .line 2
    :cond_14
    if-eqz v1, :cond_19

    if-eqz v1, :cond_21

    goto :goto_e

    :cond_19
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v0, :cond_21

    goto :goto_e

    :goto_1e
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_45

    .line 6
    :cond_21
    const/4 v0, -0x2

    :try_start_22
    check-cast p0, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_24} :catch_58

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    nop

    .line 8
    :try_start_29
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_30} :catch_4f

    .line 6
    nop

    .line 9
    sub-int/2addr p1, v2

    .line 6
    nop

    .line 10
    :try_start_33
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_3a} :catch_46

    .line 6
    nop

    .line 11
    sub-int/2addr v1, p1

    .line 6
    nop

    .line 12
    if-le p2, v1, :cond_40

    move p2, v1

    .line 13
    :cond_40
    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_45
    return-object p0

    .line 10
    :catch_46
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v1, "len"

    invoke-direct {p1, p0, v1, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 8
    :catch_4f
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "sindex"

    invoke-direct {p2, p0, v1, v0, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 6
    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "s"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_62

    :goto_61
    throw p2

    :goto_62
    goto :goto_61
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 15
    invoke-static {p2}, Lgnu/kawa/slib/XStrings;->stringLength(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1
    invoke-static {p2, p3}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 15
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

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1
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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_12
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

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

    .line 15
    return-void
.end method

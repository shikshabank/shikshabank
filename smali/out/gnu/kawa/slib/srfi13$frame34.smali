.class public Lgnu/kawa/slib/srfi13$frame34;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame33;->lambda75(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame34"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n761#1,7:761\n*E\n"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn76:Lgnu/expr/ModuleMethod;

.field final lambda$Fn77:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame33;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x44

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame34;->lambda$Fn76:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x45

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame34;->lambda$Fn77:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda78(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 767
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame34;->lambda76()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x45

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame34;->lambda77(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda76()Ljava/lang/Object;
    .registers 4

    .line 761
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Ls$Gr:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame34;->staticLink:Lgnu/kawa/slib/srfi13$frame33;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame33;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame34;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda77(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 763
    const-string v0, "x"

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame34;->end1:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame34;->start1:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v3, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    :try_start_19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1b} :catch_79

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    add-int/2addr v1, v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_2e

    if-eqz v1, :cond_2b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_78

    :cond_2b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_78

    .line 764
    :cond_2e
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame34;->staticLink:Lgnu/kawa/slib/srfi13$frame33;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame33;->s1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame34;->staticLink:Lgnu/kawa/slib/srfi13$frame33;

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame33;->s2:Ljava/lang/Object;

    if-ne v1, v3, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_53

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame34;->start1:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_47} :catch_4c

    if-eq v1, v0, :cond_4a

    const/4 v4, 0x1

    :cond_4a
    move v1, v4

    goto :goto_53

    :catch_4c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_53
    :goto_53
    add-int/2addr v1, v5

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_71

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame34;->staticLink:Lgnu/kawa/slib/srfi13$frame33;

    iget-object v1, v0, Lgnu/kawa/slib/srfi13$frame33;->s1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame34;->start1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame34;->end1:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame34;->staticLink:Lgnu/kawa/slib/srfi13$frame33;

    iget-object v4, v0, Lgnu/kawa/slib/srfi13$frame33;->s2:Ljava/lang/Object;

    sget-object v7, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->lambda$Fn78:Lgnu/expr/ModuleMethod;

    sget-object v9, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Lgnu/kawa/slib/srfi13;->$PcStringCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_78

    :cond_71
    if-eqz v0, :cond_76

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_78

    :cond_76
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_78
    return-object p1

    .line 763
    :catch_79
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_c

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x45

    if-ne v0, v1, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.class public Lgnu/kawa/slib/srfi13$frame32;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame31;->lambda69(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame32"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n751#1,8:751\n*E\n"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn70:Lgnu/expr/ModuleMethod;

.field final lambda$Fn71:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame31;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame32;->lambda$Fn70:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x41

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame32;->lambda$Fn71:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda72(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 756
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda73(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 758
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame32;->lambda70()Ljava/lang/Object;

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

    const/16 v1, 0x41

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame32;->lambda71(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda70()Ljava/lang/Object;
    .registers 4

    .line 751
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Eq:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame32;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda71(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 753
    const-string v0, "x"

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame32;->end1:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v3, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    :try_start_19
    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_20} :catch_73

    if-eqz v1, :cond_6b

    .line 754
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame31;->s1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v3, v3, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    if-ne v1, v3, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_48

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_39
    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_48

    :catch_41
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_48
    :goto_48
    if-eqz v1, :cond_52

    if-eqz v1, :cond_4f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_72

    :cond_4f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_72

    :cond_52
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v1, v0, Lgnu/kawa/slib/srfi13$frame31;->s1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame32;->start1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame32;->end1:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame32;->staticLink:Lgnu/kawa/slib/srfi13$frame31;

    iget-object v4, v0, Lgnu/kawa/slib/srfi13$frame31;->s2:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->lambda$Fn72:Lgnu/expr/ModuleMethod;

    sget-object v8, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    sget-object v9, Lgnu/kawa/slib/srfi13;->lambda$Fn73:Lgnu/expr/ModuleMethod;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Lgnu/kawa/slib/srfi13;->$PcStringCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_72

    .line 753
    :cond_6b
    if-eqz v1, :cond_70

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_72

    :cond_70
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_72
    return-object p1

    :catch_73
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x40

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

    const/16 v1, 0x41

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

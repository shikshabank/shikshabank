.class public Lgnu/kawa/slib/srfi13$frame50;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame49;->lambda119(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame50"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n846#1,8:846\n*E\n"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn120:Lgnu/expr/ModuleMethod;

.field final lambda$Fn121:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame49;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame50;->lambda$Fn120:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x65

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame50;->lambda$Fn121:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda122(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 852
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method static lambda123(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "i"    # Ljava/lang/Object;

    .line 853
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame50;->lambda120()Ljava/lang/Object;

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

    const/16 v1, 0x65

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame50;->lambda121(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda120()Ljava/lang/Object;
    .registers 4

    .line 846
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnci$Gr:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame50;->staticLink:Lgnu/kawa/slib/srfi13$frame49;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame49;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame50;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda121(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "start2"    # Ljava/lang/Object;
    .param p2, "end2"    # Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame50;->staticLink:Lgnu/kawa/slib/srfi13$frame49;

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame49;->s1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame50;->staticLink:Lgnu/kawa/slib/srfi13$frame49;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame49;->s2:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    move v1, v2

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    .local v1, "x":Z
    :goto_10
    move v0, v2

    .end local v1    # "x":Z
    .local v0, "x":Z
    if-eqz v0, :cond_20

    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame50;->start1:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2b

    goto :goto_22

    :cond_20
    if-eqz v0, :cond_2b

    .line 849
    .end local v0    # "x":Z
    :goto_22
    sget-object v0, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame50;->end1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_43

    .line 851
    :cond_2b
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame50;->staticLink:Lgnu/kawa/slib/srfi13$frame49;

    iget-object v1, v0, Lgnu/kawa/slib/srfi13$frame49;->s1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame50;->start1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame50;->end1:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame50;->staticLink:Lgnu/kawa/slib/srfi13$frame49;

    iget-object v4, v0, Lgnu/kawa/slib/srfi13$frame49;->s2:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/srfi13;->lambda$Fn122:Lgnu/expr/ModuleMethod;

    sget-object v8, Lgnu/kawa/slib/srfi13;->lambda$Fn123:Lgnu/expr/ModuleMethod;

    sget-object v9, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Lgnu/kawa/slib/srfi13;->$PcStringCompareCi(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_43
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x64

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

    const/16 v1, 0x65

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

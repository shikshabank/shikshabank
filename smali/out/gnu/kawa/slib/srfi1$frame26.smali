.class public Lgnu/kawa/slib/srfi1$frame26;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->any$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame26"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n1350#1,9:1350\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn22:Lgnu/expr/ModuleMethod;

.field final lambda$Fn23:Lgnu/expr/ModuleMethod;

.field lis1:Ljava/lang/Object;

.field lists:Lgnu/lists/LList;

.field pred:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame26;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1350"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame26;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame26;->lambda37()Ljava/lang/Object;

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

    const/16 v1, 0x17

    if-ne v0, v1, :cond_b

    .line 1350
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame26;->lambda38(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda37()Ljava/lang/Object;
    .registers 3

    .line 1350
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame26;->lis1:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame26;->lists:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda38(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "heads"    # Ljava/lang/Object;
    .param p2, "tails"    # Ljava/lang/Object;

    .line 1350
    nop

    .line 1351
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_44

    .line 1352
    nop

    .line 1351
    nop

    .line 1352
    move-object v1, p1

    .local v1, "heads":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "tails":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 1353
    :goto_10
    invoke-static {v2}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$SlPair(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v3, "split":Ljava/lang/Object;
    move-object v3, v7

    .line 1354
    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v4, "next$Mnheads":Ljava/lang/Object;
    move-object v4, v7

    .line 1353
    nop

    .line 1355
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v5, "next$Mntails":Ljava/lang/Object;
    move-object v5, v7

    .line 1356
    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1357
    sget-object v7, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v8, p0, Lgnu/kawa/slib/srfi1$frame26;->pred:Lgnu/mapping/Procedure;

    invoke-virtual {v7, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v6, "x":Ljava/lang/Object;
    move-object v6, v7

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_38

    goto :goto_43

    .end local v6    # "x":Ljava/lang/Object;
    :cond_38
    move-object v2, v5

    move-object v1, v4

    goto :goto_10

    .line 1358
    :cond_3b
    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v7, p0, Lgnu/kawa/slib/srfi1$frame26;->pred:Lgnu/mapping/Procedure;

    invoke-virtual {v6, v7, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v1    # "heads":Ljava/lang/Object;
    .end local v2    # "tails":Ljava/lang/Object;
    .end local v3    # "split":Ljava/lang/Object;
    .end local v4    # "next$Mnheads":Ljava/lang/Object;
    .end local v5    # "next$Mntails":Ljava/lang/Object;
    :goto_43
    goto :goto_4b

    .line 1351
    :cond_44
    if-eqz v0, :cond_49

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4b

    :cond_49
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v0    # "x":Z
    :goto_4b
    return-object v6
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

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

    const/16 v1, 0x17

    if-ne v0, v1, :cond_11

    .line 1350
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

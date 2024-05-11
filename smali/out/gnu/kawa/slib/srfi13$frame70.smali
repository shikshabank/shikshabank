.class public Lgnu/kawa/slib/srfi13$frame70;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTrimBoth$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame70"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n+ 2 std_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/std_syntax.scm\n*L\n30#1,1012:30\n30#2:10000\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn159:Lgnu/expr/ModuleMethod;

.field final lambda$Fn160:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x88

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame70;->lambda$Fn159:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x89

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame70;->lambda$Fn160:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x88

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame70;->lambda159()Ljava/lang/Object;

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

    const/16 v1, 0x89

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame70;->lambda160(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda159()Ljava/lang/Object;
    .registers 5

    .line 1037
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mntrim$Mnboth:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_a} :catch_f

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    :catch_f
    move-exception v0

    const/16 v1, 0x40d

    const/16 v2, 0x3a

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {v0, v3, v1, v2}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda160(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    const-string v1, "%substring/shared"

    .line 1038
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$criterion:Lgnu/mapping/Location;

    :try_start_8
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_8 .. :try_end_c} :catch_71

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v7, 0x1

    aput-object p2, v5, v7

    invoke-static {v2, v3, v5}, Lgnu/kawa/slib/srfi13;->stringSkip$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .local v2, "temp":Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_6e

    .line 10000
    nop

    .line 1040
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    :try_start_21
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_23} :catch_67

    :try_start_23
    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_2a} :catch_60

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame70;->s:Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/srfi13;->loc$criterion:Lgnu/mapping/Location;

    :try_start_32
    invoke-virtual {v11}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_36
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_32 .. :try_end_36} :catch_57

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v2, v11, v6

    aput-object p2, v11, v7

    invoke-static {v10, v0, v11}, Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_44
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_4b} :catch_50

    invoke-static {v3, v5, v0}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_70

    .end local v2    # "temp":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame70;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_50
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 30
    :catch_57
    move-exception p1

    const/16 p2, 0x410

    const/16 v1, 0x3a

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    :catch_60
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1040
    :catch_67
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1041
    .restart local v2    # "temp":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_6e
    const-string v0, ""

    .end local v2    # "temp":Ljava/lang/Object;
    :goto_70
    return-object v0

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_71
    move-exception p1

    const/16 p2, 0x40e

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x88

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

    const/16 v1, 0x89

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

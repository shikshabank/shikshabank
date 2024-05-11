.class public Lgnu/kawa/slib/srfi13$frame72;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringPad$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame72"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1058#1,9:1058\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn164:Lgnu/expr/ModuleMethod;

.field final lambda$Fn165:Lgnu/expr/ModuleMethod;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame72;->lambda$Fn164:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8d

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame72;->lambda$Fn165:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda166(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "n"    # Ljava/lang/Object;

    .line 1059
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_1f

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    .local v1, "x":Z
    move v1, v2

    if-eqz v1, :cond_1e

    sget-object v2, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v1, v2

    .end local v1    # "x":Z
    :cond_1e
    move v0, v1

    .end local v0    # "x":Z
    :cond_1f
    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame72;->lambda164()Ljava/lang/Object;

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

    const/16 v1, 0x8d

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame72;->lambda165(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda164()Ljava/lang/Object;
    .registers 5

    .line 1058
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnpad:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame72;->s:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_a} :catch_f

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame72;
    :catch_f
    move-exception v0

    const/16 v1, 0x422

    const/16 v2, 0x34

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {v0, v3, v1, v2}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda165(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "%substring/shared"

    const-string v1, "%string-copy!"

    .line 1059
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_8
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_8 .. :try_end_c} :catch_bc

    sget-object v4, Lgnu/kawa/slib/srfi13;->lambda$Fn166:Lgnu/expr/ModuleMethod;

    .line 1060
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame72;->n:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/srfi13;->string$Mnpad:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1062
    .local v2, "len":Ljava/lang/Object;
    sget-object v4, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame72;->n:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_60

    .line 1063
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame72;->s:Ljava/lang/Object;

    :try_start_2d
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2f} :catch_58

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame72;->n:Ljava/lang/Object;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_37
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_3e
    .catch Ljava/lang/ClassCastException; {:try_start_37 .. :try_end_3e} :catch_51

    :try_start_3e
    move-object v4, p2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_3e .. :try_end_45} :catch_4a

    invoke-static {v1, v3, v0}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_94

    .end local v2    # "len":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame72;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_4a
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_51
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1064
    .restart local v2    # "len":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_60
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame72;->n:Ljava/lang/Object;

    :try_start_62
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_69
    .catch Ljava/lang/ClassCastException; {:try_start_62 .. :try_end_69} :catch_b3

    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-static {v0, v4}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1065
    .local v0, "ans":Ljava/lang/CharSequence;
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame72;->n:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_77
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_7e
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_7e} :catch_ac

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame72;->s:Ljava/lang/Object;

    :try_start_80
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_82
    .catch Ljava/lang/ClassCastException; {:try_start_80 .. :try_end_82} :catch_a5

    :try_start_82
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_89
    .catch Ljava/lang/ClassCastException; {:try_start_82 .. :try_end_89} :catch_9d

    :try_start_89
    move-object v6, p2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_90
    .catch Ljava/lang/ClassCastException; {:try_start_89 .. :try_end_90} :catch_95

    invoke-static {v0, v3, v4, v5, v1}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1066
    nop

    .end local v0    # "ans":Ljava/lang/CharSequence;
    .end local v2    # "len":Ljava/lang/Object;
    :goto_94
    return-object v0

    .line 1065
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_95
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_9d
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_a5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_ac
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1064
    :catch_b3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "make-string"

    invoke-direct {p2, p1, v1, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1066
    :catch_bc
    move-exception p1

    const/16 p2, 0x423

    const/4 v0, 0x7

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8c

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

    const/16 v1, 0x8d

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

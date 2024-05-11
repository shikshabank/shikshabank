.class public Lgnu/kawa/slib/srfi13$frame9;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringEvery$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n482#1,22:482\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn23:Lgnu/expr/ModuleMethod;

.field final lambda$Fn24:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame9;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame9;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame9;->lambda23()Ljava/lang/Object;

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

    const/16 v1, 0x15

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame9;->lambda24(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda23()Ljava/lang/Object;
    .registers 4

    .line 482
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnevery:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame9;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame9;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda24(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 483
    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "x"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "string-ref"

    if-eqz v1, :cond_76

    .line 484
    nop

    .line 485
    :goto_12
    sget-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_18
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1f} :catch_6f

    if-eqz v0, :cond_29

    if-eqz v0, :cond_26

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_56

    :cond_26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_56

    .line 486
    :cond_29
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    :try_start_2b
    check-cast v0, Lgnu/text/Char;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_66

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame9;->s:Ljava/lang/Object;

    :try_start_2f
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_5f

    :try_start_31
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_38} :catch_58

    invoke-static {v1, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 487
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 486
    :cond_4f
    if-eqz v0, :cond_54

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_56

    :cond_54
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_56
    goto/16 :goto_178

    :catch_58
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_66
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "char=?"

    invoke-direct {p2, p1, v1, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 485
    :catch_6f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 486
    :cond_76
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 489
    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_7a
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v7
    :try_end_7e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_7a .. :try_end_7e} :catch_179

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v7, :cond_ef

    .line 490
    nop

    .line 491
    :goto_89
    sget-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_8f
    move-object v7, v1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_8f .. :try_end_96} :catch_e8

    if-eqz v1, :cond_a0

    if-eqz v1, :cond_9d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_cf

    :cond_9d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_cf

    .line 492
    :cond_a0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_a4
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v7
    :try_end_a8
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_a4 .. :try_end_a8} :catch_df

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame9;->s:Ljava/lang/Object;

    :try_start_ac
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_ae
    .catch Ljava/lang/ClassCastException; {:try_start_ac .. :try_end_ae} :catch_d8

    :try_start_ae
    move-object v10, p1

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_b5
    .catch Ljava/lang/ClassCastException; {:try_start_ae .. :try_end_b5} :catch_d1

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v9}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v7, :cond_ce

    .line 493
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_89

    .line 492
    :cond_ce
    move-object p1, v1

    :goto_cf
    goto/16 :goto_178

    :catch_d1
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_d8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 491
    :catch_df
    move-exception p1

    const/16 p2, 0x1ec

    const/16 v1, 0x9

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    :catch_e8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 492
    :cond_ef
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 496
    sget-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_fd
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_104
    .catch Ljava/lang/ClassCastException; {:try_start_fd .. :try_end_104} :catch_160

    if-eqz v0, :cond_10e

    if-eqz v0, :cond_10b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_151

    :cond_10b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_151

    .line 497
    :cond_10e
    nop

    .line 496
    nop

    .line 497
    nop

    .line 498
    :goto_111
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame9;->s:Ljava/lang/Object;

    :try_start_113
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_115
    .catch Ljava/lang/ClassCastException; {:try_start_113 .. :try_end_115} :catch_159

    :try_start_115
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_11c
    .catch Ljava/lang/ClassCastException; {:try_start_115 .. :try_end_11c} :catch_152

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    .line 499
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 500
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_13f

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_151

    .line 501
    :cond_13f
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_150

    goto :goto_111

    :cond_150
    move-object p1, v0

    :goto_151
    goto :goto_178

    .line 498
    :catch_152
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_159
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 496
    :catch_160
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 503
    :cond_167
    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnevery:Lgnu/expr/ModuleMethod;

    aput-object v0, p1, p2

    iget-object p2, p0, Lgnu/kawa/slib/srfi13$frame9;->criterion:Ljava/lang/Object;

    aput-object p2, p1, v5

    const-string p2, "Second param is neither char-set, char, or predicate procedure."

    invoke-static {p2, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_178
    return-object p1

    .line 486
    :catch_179
    move-exception p1

    const/16 p2, 0x1e9

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_182

    :goto_181
    throw p1

    :goto_182
    goto :goto_181
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x14

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

    const/16 v1, 0x15

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

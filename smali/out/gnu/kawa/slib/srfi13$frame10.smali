.class public Lgnu/kawa/slib/srfi13$frame10;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringAny$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n508#1,22:508\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn25:Lgnu/expr/ModuleMethod;

.field final lambda$Fn26:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->lambda$Fn25:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->lambda$Fn26:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame10;->lambda25()Ljava/lang/Object;

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

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame10;->lambda26(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda25()Ljava/lang/Object;
    .registers 4

    .line 508
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnany:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame10;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda26(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 509
    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "x"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "string-ref"

    if-eqz v1, :cond_76

    .line 510
    nop

    .line 511
    :goto_12
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_18
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1f} :catch_6f

    if-eqz v0, :cond_66

    .line 512
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    :try_start_23
    check-cast v0, Lgnu/text/Char;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_25} :catch_5d

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_27
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_29} :catch_56

    :try_start_29
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_30} :catch_4f

    invoke-static {v1, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-eqz v0, :cond_43

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_45

    :cond_43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 513
    :goto_45
    goto :goto_6d

    :cond_46
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 512
    :catch_4f
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_56
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "char=?"

    invoke-direct {p2, p1, v1, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 511
    :cond_66
    if-eqz v0, :cond_6b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6d

    :cond_6b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6d
    goto/16 :goto_177

    :catch_6f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_76
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 515
    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_7a
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v7
    :try_end_7e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_7a .. :try_end_7e} :catch_178

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v7, :cond_ef

    .line 516
    nop

    .line 517
    :goto_89
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_8f
    move-object v7, v1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_8f .. :try_end_96} :catch_e8

    if-eqz v1, :cond_df

    .line 518
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v7, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_9c
    invoke-virtual {v7}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v7
    :try_end_a0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_9c .. :try_end_a0} :catch_d6

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_a4
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_a6
    .catch Ljava/lang/ClassCastException; {:try_start_a4 .. :try_end_a6} :catch_cf

    :try_start_a6
    move-object v10, p1

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_ad
    .catch Ljava/lang/ClassCastException; {:try_start_a6 .. :try_end_ad} :catch_c8

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v9}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v7, :cond_bf

    .line 519
    move-object p1, v1

    goto :goto_e6

    :cond_bf
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_89

    .line 518
    :catch_c8
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_cf
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 517
    :catch_d6
    move-exception p1

    const/16 p2, 0x206

    const/16 v1, 0x9

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    :cond_df
    if-eqz v1, :cond_e4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e6

    :cond_e4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_e6
    goto/16 :goto_177

    :catch_e8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_ef
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 522
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_fd
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_104
    .catch Ljava/lang/ClassCastException; {:try_start_fd .. :try_end_104} :catch_15f

    if-eqz v0, :cond_157

    .line 523
    nop

    .line 522
    nop

    .line 523
    nop

    .line 524
    :cond_109
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame10;->s:Ljava/lang/Object;

    :try_start_10b
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_10d
    .catch Ljava/lang/ClassCastException; {:try_start_10b .. :try_end_10d} :catch_150

    :try_start_10d
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_114
    .catch Ljava/lang/ClassCastException; {:try_start_10d .. :try_end_114} :catch_149

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    .line 525
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 526
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_137

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_148

    .line 527
    :cond_137
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_109

    move-object p1, v0

    :goto_148
    goto :goto_15e

    .line 524
    :catch_149
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v6, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_150
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 522
    :cond_157
    if-eqz v0, :cond_15c

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_15e

    :cond_15c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_15e
    goto :goto_177

    :catch_15f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 529
    :cond_166
    new-array p1, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnany:Lgnu/expr/ModuleMethod;

    aput-object v0, p1, p2

    iget-object p2, p0, Lgnu/kawa/slib/srfi13$frame10;->criterion:Ljava/lang/Object;

    aput-object p2, p1, v5

    const-string p2, "Second param is neither char-set, char, or predicate procedure."

    invoke-static {p2, p1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_177
    return-object p1

    .line 512
    :catch_178
    move-exception p1

    const/16 p2, 0x203

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_181

    :goto_180
    throw p1

    :goto_181
    goto :goto_180
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

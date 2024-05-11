.class public Lgnu/kawa/slib/srfi13$frame94;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->xsubstring$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame94"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1738#1,31:1738\n*E\n"
.end annotation


# instance fields
.field from:Ljava/lang/Object;

.field final lambda$Fn211:Lgnu/expr/ModuleMethod;

.field final lambda$Fn212:Lgnu/expr/ModuleMethod;

.field final lambda$Fn213:Lgnu/expr/ModuleMethod;

.field final lambda$Fn214:Lgnu/expr/ModuleMethod;

.field final lambda$Fn215:Lgnu/expr/ModuleMethod;

.field maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xba

    const/16 v4, 0x1001

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1744"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xbb

    const/16 v5, 0x2002

    invoke-direct {v0, p0, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xbc

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn211:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xbd

    const/16 v4, 0x3003

    invoke-direct {v0, p0, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1740"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn215:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda210(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "val"    # Ljava/lang/Object;

    .line 1738
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_c

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x":Z
    :cond_c
    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_14

    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame94;->lambda211()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_f
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame94;->lambda212()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_14
    .sparse-switch
        0xb9 -> :sswitch_f
        0xbc -> :sswitch_a
    .end sparse-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_12

    .line 1744
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi13$frame94;->lambda214(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_11
    return-object p1

    :cond_12
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame94;->lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_b

    .line 1740
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/srfi13$frame94;->lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda211()Ljava/lang/Object;
    .registers 8

    .line 1741
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1742
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn212:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn213:Lgnu/expr/ModuleMethod;

    invoke-static {v0, v1}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4d

    .line 1749
    :cond_11
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_15
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_19
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_15 .. :try_end_19} :catch_57

    sget-object v2, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_24
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_26} :catch_4e

    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 1750
    .local v0, "slen":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "slen":I
    :goto_4d
    return-object v0

    .line 1749
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    :catch_4e
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 1750
    :catch_57
    move-exception v0

    const/16 v1, 0x6d5

    const/16 v2, 0x24

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {v0, v3, v1, v2}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda212()Ljava/lang/Object;
    .registers 5

    .line 1742
    sget-object v0, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda213(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1743
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame94;->maybe$Mnto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1744
    .local v0, "to":Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_d
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_11
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_d .. :try_end_11} :catch_29

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->lambda$Fn214:Lgnu/expr/ModuleMethod;

    .line 1747
    sget-object v4, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "to":Ljava/lang/Object;
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_29
    move-exception p1

    const/16 p2, 0x6d0

    const/4 v0, 0x6

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method lambda214(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "val"    # Ljava/lang/Object;

    .line 1744
    invoke-static {p1}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_1f

    .line 1745
    invoke-static {p1}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    .local v1, "x":Z
    move v1, v2

    .line 1744
    if-eqz v1, :cond_1e

    sget-object v2, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 1746
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v1, v2

    .line 1744
    .end local v1    # "x":Z
    :cond_1e
    move v0, v1

    .end local v0    # "x":Z
    :cond_1f
    return v0
.end method

.method lambda215(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .param p1, "to"    # Ljava/lang/Object;
    .param p2, "start"    # Ljava/lang/Object;
    .param p3, "end"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v2, "string-ref"

    const-string v3, "floor"

    const-string v4, "zero?"

    const-string v5, "substring"

    .line 1740
    nop

    .line 1751
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v6, v10, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1752
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v8, v1, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    move-object v11, v8

    .local v8, "anslen":Ljava/lang/Object;
    .local v11, "slen":Ljava/lang/Object;
    move-object v12, v7

    .end local v8    # "anslen":Ljava/lang/Object;
    .local v12, "anslen":Ljava/lang/Object;
    move-object v11, v6

    .line 1753
    const/4 v6, 0x1

    :try_start_24
    move-object v7, v12

    check-cast v7, Ljava/lang/Number;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_27} :catch_14d

    invoke-static {v7}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v7

    if-eqz v7, :cond_31

    const-string v2, ""

    goto/16 :goto_12d

    :cond_31
    :try_start_31
    move-object v7, v11

    check-cast v7, Ljava/lang/Number;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_34} :catch_145

    invoke-static {v7}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v4, :cond_5c

    .line 1754
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lgnu/kawa/slib/srfi13;->xsubstring:Lgnu/expr/ModuleMethod;

    aput-object v4, v2, v3

    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    aput-object v3, v2, v6

    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    aput-object v3, v2, v8

    aput-object v0, v2, v7

    const/4 v3, 0x4

    aput-object v9, v2, v3

    const/4 v3, 0x5

    aput-object v10, v2, v3

    const-string v3, "Cannot replicate empty (sub)string"

    invoke-static {v3, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_12d

    :cond_5c
    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1757
    sget-object v13, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v4, v13, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v14, "make-string"

    if-eq v4, v13, :cond_a0

    .line 1758
    :try_start_6a
    move-object v3, v12

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_71} :catch_99

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    :try_start_73
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_75
    .catch Ljava/lang/ClassCastException; {:try_start_73 .. :try_end_75} :catch_91

    :try_start_75
    move-object v5, v9

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_7c
    .catch Ljava/lang/ClassCastException; {:try_start_75 .. :try_end_7c} :catch_8a

    invoke-static {v4, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v3, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_12d

    .end local v11    # "slen":Ljava/lang/Object;
    .end local v12    # "anslen":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame94;
    .end local p1    # "to":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_8a
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_91
    move-exception v0

    move-object v3, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v3, v2, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_99
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v14, v6, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .restart local v11    # "slen":Ljava/lang/Object;
    .restart local v12    # "anslen":Ljava/lang/Object;
    .restart local p1    # "to":Ljava/lang/Object;
    .restart local p2    # "start":Ljava/lang/Object;
    .restart local p3    # "end":Ljava/lang/Object;
    :cond_a0
    sget-object v2, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1761
    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v2, v4, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_a8
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_ac
    .catch Ljava/lang/ClassCastException; {:try_start_a8 .. :try_end_ac} :catch_13d

    invoke-static {v2}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    sget-object v2, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v2, v0, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_ba
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v3
    :try_end_be
    .catch Ljava/lang/ClassCastException; {:try_start_ba .. :try_end_be} :catch_135

    invoke-static {v3}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v13, v15, v3

    if-nez v13, :cond_111

    .line 1762
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    :try_start_cc
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_ce
    .catch Ljava/lang/ClassCastException; {:try_start_cc .. :try_end_ce} :catch_109

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    iget-object v6, v1, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    invoke-virtual {v4, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_dc
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_e3
    .catch Ljava/lang/ClassCastException; {:try_start_dc .. :try_end_e3} :catch_102

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1763
    sget-object v6, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v6, v0, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_ef
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_f6
    .catch Ljava/lang/ClassCastException; {:try_start_ef .. :try_end_f6} :catch_fb

    invoke-static {v2, v3, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_12d

    .end local v11    # "slen":Ljava/lang/Object;
    .end local v12    # "anslen":Ljava/lang/Object;
    .end local p1    # "to":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_fb
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v5, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1762
    :catch_102
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v5, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_109
    move-exception v0

    move-object v3, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v3, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1766
    .restart local v11    # "slen":Ljava/lang/Object;
    .restart local v12    # "anslen":Ljava/lang/Object;
    .restart local p1    # "to":Ljava/lang/Object;
    .restart local p2    # "start":Ljava/lang/Object;
    .restart local p3    # "end":Ljava/lang/Object;
    :cond_111
    :try_start_111
    move-object v3, v12

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_118
    .catch Ljava/lang/ClassCastException; {:try_start_111 .. :try_end_118} :catch_12e

    invoke-static {v3}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v3

    .local v2, "ans":Ljava/lang/CharSequence;
    move-object v2, v3

    .line 1767
    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame94;->s:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/kawa/slib/srfi13$frame94;->from:Ljava/lang/Object;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    nop

    .end local v2    # "ans":Ljava/lang/CharSequence;
    .end local v11    # "slen":Ljava/lang/Object;
    .end local v12    # "anslen":Ljava/lang/Object;
    :goto_12d
    return-object v2

    .line 1766
    .end local p1    # "to":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_12e
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v14, v6, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1761
    :catch_135
    move-exception v0

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v3, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_13d
    move-exception v0

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v3, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1754
    :catch_145
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v4, v6, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1753
    :catch_14d
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v4, v6, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_10

    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :sswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_10
    .sparse-switch
        0xb9 -> :sswitch_b
        0xbc -> :sswitch_b
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xba

    if-ne v0, v1, :cond_f

    .line 1744
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

    const/16 v1, 0xbb

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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_13

    .line 1740
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_13
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

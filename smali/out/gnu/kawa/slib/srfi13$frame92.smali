.class public Lgnu/kawa/slib/srfi13$frame92;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringReplace$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame92"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1676#1,9:1676\n*E\n"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn206:Lgnu/expr/ModuleMethod;

.field final lambda$Fn207:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;

.field start1:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn206:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb6

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn207:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame92;->lambda206()Ljava/lang/Object;

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

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame92;->lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda206()Ljava/lang/Object;
    .registers 4

    .line 1676
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnreplace:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame92;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 16
    .param p1, "start2"    # Ljava/lang/Object;
    .param p2, "end2"    # Ljava/lang/Object;

    const-string v0, "%string-copy!"

    .line 1677
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_5
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_8} :catch_d9

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 1678
    .local v3, "slen1":I
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v5, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v1, "sublen2":Ljava/lang/Object;
    move-object v1, v5

    .line 1677
    nop

    .line 1679
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 1677
    .local v5, "alen":Ljava/lang/Object;
    nop

    .line 1680
    :try_start_33
    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_3a} :catch_d0

    invoke-static {v7}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v7

    .local v6, "ans":Ljava/lang/CharSequence;
    move-object v6, v7

    .line 1681
    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    const/4 v8, 0x2

    :try_start_42
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_44} :catch_c9

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    const/4 v10, 0x4

    :try_start_47
    move-object v11, v9

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_4e} :catch_c2

    invoke-static {v6, v4, v7, v4, v9}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1682
    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    :try_start_53
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_5a} :catch_bb

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    :try_start_5c
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_5e
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_5e} :catch_b4

    const/4 v9, 0x3

    :try_start_5f
    move-object v11, p1

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_66} :catch_ad

    :try_start_66
    move-object v12, p2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_66 .. :try_end_6d} :catch_a6

    invoke-static {v6, v4, v7, v11, v10}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1683
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v4, v7, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_78
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_7f
    .catch Ljava/lang/ClassCastException; {:try_start_78 .. :try_end_7f} :catch_9f

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    :try_start_81
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_83
    .catch Ljava/lang/ClassCastException; {:try_start_81 .. :try_end_83} :catch_98

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    :try_start_85
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_8c
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_8c} :catch_91

    invoke-static {v6, v2, v4, v0, v3}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1684
    nop

    .end local v1    # "sublen2":Ljava/lang/Object;
    .end local v3    # "slen1":I
    .end local v5    # "alen":Ljava/lang/Object;
    .end local v6    # "ans":Ljava/lang/CharSequence;
    return-object v6

    .line 1683
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame92;
    .end local p1    # "start2":Ljava/lang/Object;
    .end local p2    # "end2":Ljava/lang/Object;
    :catch_91
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v9, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_98
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_9f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1682
    :catch_a6
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v10, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_ad
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_b4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v8, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_bb
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1681
    :catch_c2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v10, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_c9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v8, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1680
    :catch_d0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p2, p1, v0, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1677
    :catch_d9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "string-length"

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

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

    const/16 v1, 0xb6

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

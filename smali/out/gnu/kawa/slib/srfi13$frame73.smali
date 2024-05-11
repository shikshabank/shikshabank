.class public Lgnu/kawa/slib/srfi13$frame73;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringDelete$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame73"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1085#1,25:1085\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn167:Lgnu/expr/ModuleMethod;

.field final lambda$Fn168:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x91

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame73;->lambda$Fn167:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x92

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame73;->lambda$Fn168:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x91

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame73;->lambda167()Ljava/lang/Object;

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

    const/16 v1, 0x92

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame73;->lambda168(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda167()Ljava/lang/Object;
    .registers 4

    .line 1085
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mndelete:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame73;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda168(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    new-instance v1, Lgnu/kawa/slib/srfi13$frame74;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi13$frame74;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/srfi13$frame74;->staticLink:Lgnu/kawa/slib/srfi13$frame73;

    .line 1086
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "make-string"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_69

    .line 1087
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v0, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v7

    .line 1088
    .local v0, "slen":Ljava/lang/Object;
    :try_start_1e
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_25} :catch_62

    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    .line 1087
    nop

    .line 1089
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn169:Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v2, v3, v7, v4}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v0

    .line 1094
    .local v2, "ans$Mnlen":Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    if-eq v3, v4, :cond_4b

    goto/16 :goto_dd

    :cond_4b
    :try_start_4b
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_52
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_52} :catch_58

    invoke-static {v1, v5, v3}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_dd

    .end local v0    # "slen":Ljava/lang/Object;
    .end local v2    # "ans$Mnlen":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame73;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, 0x3

    const-string v1, "substring"

    invoke-direct {p2, p1, v1, v0, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1088
    :catch_62
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1096
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_69
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_6d
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8
    :try_end_71
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6d .. :try_end_71} :catch_e5

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v8, :cond_7e

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    goto :goto_aa

    :cond_7e
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1097
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset:Lgnu/mapping/Location;

    :try_start_8a
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_8e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_8a .. :try_end_8e} :catch_95

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_aa

    .line 1094
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_95
    move-exception p1

    const/16 p2, 0x449

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .line 1098
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_9e
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v2, "string-delete criterion not predicate, char or char-set"

    invoke-static {v2, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_aa
    iput-object v0, v1, Lgnu/kawa/slib/srfi13$frame74;->cset:Ljava/lang/Object;

    .line 1096
    nop

    .line 1099
    iget-object v0, v1, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn170:Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p1, v9, v5

    aput-object p2, v9, v6

    invoke-static {v0, v2, v8, v9}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v7

    .line 1096
    .local v0, "len":Ljava/lang/Object;
    nop

    .line 1103
    :try_start_bf
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_c6
    .catch Ljava/lang/ClassCastException; {:try_start_bf .. :try_end_c6} :catch_de

    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/srfi13$frame74;->ans:Ljava/lang/CharSequence;

    .line 1104
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn171:Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame73;->s:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v2, v3, v7, v4}, Lgnu/kawa/slib/srfi13;->stringFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame74;->ans:Ljava/lang/CharSequence;

    .end local v0    # "len":Ljava/lang/Object;
    :goto_dd
    return-object v1

    .line 1103
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_de
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1094
    :catch_e5
    move-exception p1

    const/16 p2, 0x448

    const/16 v1, 0x16

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x91

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

    const/16 v1, 0x92

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

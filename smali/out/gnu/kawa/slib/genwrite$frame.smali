.class public Lgnu/kawa/slib/genwrite$frame;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngenwrite.scm\nScheme\n*S Scheme\n*F\n+ 1 genwrite.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/genwrite.scm\n*L\n8#1,43:8\n*E\n"
.end annotation


# instance fields
.field display$Qu:Ljava/lang/Object;

.field output:Ljava/lang/Object;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 8
    nop

    .line 9
    nop

    .line 10
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_6f

    :goto_1e
    goto :goto_4e

    :cond_1f
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_30

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_6f

    goto :goto_1e

    :cond_30
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_41

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_6f

    goto :goto_1e

    :cond_41
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_6f

    goto :goto_1e

    .line 12
    :goto_4e
    nop

    .line 9
    invoke-static {p0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_64
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_67
    if-eqz v0, :cond_6c

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_6c
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_6f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_71
    return-object p0
.end method

.method public static lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "l"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    sget-object v0, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "l"    # Ljava/lang/Object;

    .line 18
    nop

    .line 19
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 20
    .local v0, "head":Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1c

    .line 21
    const-string v1, "\'"

    goto :goto_4b

    :cond_1c
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2b

    .line 22
    const-string v1, "`"

    goto :goto_4b

    :cond_2b
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3a

    .line 23
    const-string v1, ","

    goto :goto_4b

    :cond_3a
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_49

    .line 24
    const-string v1, ",@"

    goto :goto_4b

    :cond_49
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local v0    # "head":Ljava/lang/Object;
    :goto_4b
    return-object v1
.end method


# virtual methods
.method public lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "str"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;

    .line 26
    nop

    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2f

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame;->output:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .local v0, "x":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_30

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    :try_start_14
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_17} :catch_25

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_30

    .end local v0    # "x":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/genwrite$frame;
    .end local p1    # "str":Ljava/lang/Object;
    .end local p2    # "col":Ljava/lang/Object;
    :catch_25
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "string-length"

    invoke-direct {v0, p2, v2, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p1    # "str":Ljava/lang/Object;
    .restart local p2    # "col":Ljava/lang/Object;
    :cond_2f
    move-object v0, p2

    :cond_30
    :goto_30
    return-object v0
.end method

.method public lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;

    .line 29
    nop

    .line 31
    nop

    .line 36
    nop

    .line 31
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 47
    nop

    .line 31
    move-object v0, p1

    .local v0, "expr":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "col":Ljava/lang/Object;
    move-object v3, v1

    .local v3, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object v3, p0

    .line 32
    invoke-static {v0}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_29

    .line 33
    invoke-static {v0}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_c3

    .line 34
    :cond_29
    nop

    .line 36
    move-object v4, v0

    .local v1, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .local v4, "l":Ljava/lang/Object;
    move-object v5, v2

    .local v5, "col":Ljava/lang/Object;
    goto :goto_58

    .line 45
    .end local v0    # "expr":Ljava/lang/Object;
    .end local v1    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v2    # "col":Ljava/lang/Object;
    .end local v3    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v4    # "l":Ljava/lang/Object;
    .end local v5    # "col":Ljava/lang/Object;
    :cond_2d
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 48
    move-object v4, p1

    .restart local v4    # "l":Ljava/lang/Object;
    move-object v2, v1

    .restart local v2    # "col":Ljava/lang/Object;
    move-object v0, v1

    .local v0, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object v3, v1

    .local v3, "expr":Ljava/lang/Object;
    move-object v5, p2

    .restart local v5    # "col":Ljava/lang/Object;
    move-object v10, v1

    move-object v0, v3

    move-object v3, v10

    .restart local v1    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    goto :goto_58

    .end local v0    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v1    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v2    # "col":Ljava/lang/Object;
    .end local v3    # "expr":Ljava/lang/Object;
    .end local v4    # "l":Ljava/lang/Object;
    .end local v5    # "col":Ljava/lang/Object;
    :cond_3c
    invoke-static {p1}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_cd

    .line 49
    :try_start_43
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_46} :catch_c4

    invoke-static {v0}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v4

    .restart local v4    # "l":Ljava/lang/Object;
    const-string v0, "#"

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    .restart local v2    # "col":Ljava/lang/Object;
    move-object v3, v1

    .local v3, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object v5, p1

    .local v0, "col":Ljava/lang/Object;
    .local v5, "expr":Ljava/lang/Object;
    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    move-object v11, v3

    move-object v1, v11

    .line 36
    .local v0, "expr":Ljava/lang/Object;
    .restart local v1    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .local v5, "col":Ljava/lang/Object;
    :goto_58
    move-object v1, p0

    .line 37
    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 38
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 39
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v7, :cond_7a

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {p0, v8, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_7b

    :cond_7a
    move-object v7, v5

    .line 40
    .local v6, "l":Ljava/lang/Object;
    .local v7, "col":Ljava/lang/Object;
    :goto_7b
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_81

    move-object v8, v7

    goto :goto_ba

    :cond_81
    invoke-static {v6}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 42
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v6    # "l":Ljava/lang/Object;
    .local v8, "l":Ljava/lang/Object;
    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {p0, v9, v7}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v8

    goto :goto_7b

    .end local v8    # "l":Ljava/lang/Object;
    .restart local v6    # "l":Ljava/lang/Object;
    :cond_9f
    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ")"

    if-eqz v8, :cond_ac

    .line 43
    invoke-virtual {p0, v9, v7}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_ba

    .line 44
    :cond_ac
    const-string v8, " . "

    invoke-virtual {p0, v8, v7}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v9, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v6    # "l":Ljava/lang/Object;
    .end local v7    # "col":Ljava/lang/Object;
    :goto_ba
    move-object v1, v8

    goto :goto_c3

    .line 45
    :cond_bc
    const-string v6, "()"

    invoke-virtual {p0, v6, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .end local v0    # "expr":Ljava/lang/Object;
    .end local v1    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v2    # "col":Ljava/lang/Object;
    .end local v3    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .end local v4    # "l":Ljava/lang/Object;
    .end local v5    # "col":Ljava/lang/Object;
    :goto_c3
    goto :goto_e8

    .line 49
    .end local p0    # "this":Lgnu/kawa/slib/genwrite$frame;
    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "col":Ljava/lang/Object;
    :catch_c4
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "vector->list"

    invoke-direct {v0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 50
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "col":Ljava/lang/Object;
    :cond_cd
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_d9

    const-string v1, "~a"

    goto :goto_db

    :cond_d9
    const-string v1, "~s"

    :goto_db
    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_e8
    return-object v1
.end method

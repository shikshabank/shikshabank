.class public Lgnu/kawa/slib/srfi13$frame80;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringSkipRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame80"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1215#1,19:1215\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn183:Lgnu/expr/ModuleMethod;

.field final lambda$Fn184:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame80;->lambda$Fn183:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9f

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame80;->lambda$Fn184:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame80;->lambda183()Ljava/lang/Object;

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

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame80;->lambda184(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda183()Ljava/lang/Object;
    .registers 4

    .line 1215
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnskip$Mnright:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame80;->str:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame80;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda184(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    .line 1216
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string v4, "x"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "string-ref"

    if-eqz v1, :cond_79

    .line 1217
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1218
    .local v0, "i":Ljava/lang/Object;
    :goto_1a
    sget-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_20
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_27} :catch_72

    .local v2, "x":Z
    move v2, v1

    if-eqz v2, :cond_68

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    :try_start_2c
    check-cast v1, Lgnu/text/Char;
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_2e} :catch_5f

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame80;->str:Ljava/lang/Object;

    :try_start_30
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_58

    :try_start_32
    move-object v9, v0

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_39} :catch_51

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v1, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1220
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    .line 1219
    :cond_50
    goto :goto_70

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame80;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_51
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "char=?"

    invoke-direct {p2, p1, v0, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1218
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_68
    if-eqz v2, :cond_6d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6f

    :cond_6d
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6f
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_70
    goto/16 :goto_170

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_72
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_79
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1222
    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_7d
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8
    :try_end_81
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_7d .. :try_end_81} :catch_171

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_fa

    .line 1223
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p2, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1224
    .local v1, "i":Ljava/lang/Object;
    :goto_93
    sget-object v8, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v8, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_99
    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_a0
    .catch Ljava/lang/ClassCastException; {:try_start_99 .. :try_end_a0} :catch_f3

    .restart local v2    # "x":Z
    move v2, v8

    if-eqz v2, :cond_ea

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1225
    sget-object v9, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_a7
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v9
    :try_end_ab
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_a7 .. :try_end_ab} :catch_e1

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/srfi13$frame80;->str:Ljava/lang/Object;

    :try_start_af
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_b1
    .catch Ljava/lang/ClassCastException; {:try_start_af .. :try_end_b1} :catch_da

    :try_start_b1
    move-object v12, v1

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12
    :try_end_b8
    .catch Ljava/lang/ClassCastException; {:try_start_b1 .. :try_end_b8} :catch_d3

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_d1

    .line 1226
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, v1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_93

    .line 1225
    :cond_d1
    move-object v0, v1

    goto :goto_f1

    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_d3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_da
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1224
    :catch_e1
    move-exception p1

    const/16 p2, 0x4c9

    const/16 v1, 0x9

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .restart local v1    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_ea
    if-eqz v2, :cond_ef

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f1

    :cond_ef
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_f1
    goto/16 :goto_170

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_f3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_fa
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 1229
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1230
    .restart local v0    # "i":Ljava/lang/Object;
    :goto_10a
    sget-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_110
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_117
    .catch Ljava/lang/ClassCastException; {:try_start_110 .. :try_end_117} :catch_159

    .restart local v2    # "x":Z
    move v2, v1

    if-eqz v2, :cond_150

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1231
    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame80;->str:Ljava/lang/Object;

    :try_start_120
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_122
    .catch Ljava/lang/ClassCastException; {:try_start_120 .. :try_end_122} :catch_149

    :try_start_122
    move-object v10, v0

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_129
    .catch Ljava/lang/ClassCastException; {:try_start_122 .. :try_end_129} :catch_142

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_158

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10a

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_142
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_149
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1230
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_150
    if-eqz v2, :cond_155

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_157

    :cond_155
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_157
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :cond_158
    goto :goto_170

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_159
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1233
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_160
    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnskip$Mnright:Lgnu/expr/ModuleMethod;

    aput-object v1, v0, v2

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame80;->criterion:Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "CRITERION param is neither char-set or char."

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_170
    return-object v0

    .line 1219
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_171
    move-exception p1

    const/16 p2, 0x4c6

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_17a

    :goto_179
    throw p1

    :goto_17a
    goto :goto_179
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9e

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

    const/16 v1, 0x9f

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

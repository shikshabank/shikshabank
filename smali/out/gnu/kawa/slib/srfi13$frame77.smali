.class public Lgnu/kawa/slib/srfi13$frame77;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringIndex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame77"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1153#1,17:1153\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn177:Lgnu/expr/ModuleMethod;

.field final lambda$Fn178:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x98

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->lambda$Fn177:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x99

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->lambda$Fn178:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame77;->lambda177()Ljava/lang/Object;

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

    const/16 v1, 0x99

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame77;->lambda178(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda177()Ljava/lang/Object;
    .registers 4

    .line 1153
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnindex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame77;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda178(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    .line 1154
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string v4, "x"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "string-ref"

    if-eqz v1, :cond_73

    .line 1155
    move-object v0, p1

    .line 1156
    .local v0, "i":Ljava/lang/Object;
    :goto_13
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_19
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_20} :catch_6c

    .local v2, "x":Z
    move v2, v1

    if-eqz v2, :cond_62

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    :try_start_25
    check-cast v1, Lgnu/text/Char;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_59

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_29
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_2b} :catch_52

    :try_start_2b
    move-object v9, v0

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_32} :catch_4b

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v1, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1157
    nop

    .line 1158
    goto :goto_6a

    :cond_42
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    .line 1157
    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame77;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_4b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_52
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_59
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "char=?"

    invoke-direct {p2, p1, v0, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1156
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_62
    if-eqz v2, :cond_67

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_69

    :cond_67
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_69
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_6a
    goto/16 :goto_15d

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_6c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_73
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1159
    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_77
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8
    :try_end_7b
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_77 .. :try_end_7b} :catch_15e

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_ed

    .line 1160
    move-object v1, p1

    .line 1161
    .local v1, "i":Ljava/lang/Object;
    :goto_86
    sget-object v8, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v8, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_8c
    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_93
    .catch Ljava/lang/ClassCastException; {:try_start_8c .. :try_end_93} :catch_e6

    .restart local v2    # "x":Z
    move v2, v8

    if-eqz v2, :cond_dd

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1162
    sget-object v9, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_9a
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v9
    :try_end_9e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_9a .. :try_end_9e} :catch_d4

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_a2
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_a4
    .catch Ljava/lang/ClassCastException; {:try_start_a2 .. :try_end_a4} :catch_cd

    :try_start_a4
    move-object v12, v1

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12
    :try_end_ab
    .catch Ljava/lang/ClassCastException; {:try_start_a4 .. :try_end_ab} :catch_c6

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_bd

    .line 1163
    move-object v0, v1

    goto :goto_e4

    :cond_bd
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, v1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_86

    .line 1162
    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_c6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_cd
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1161
    :catch_d4
    move-exception p1

    const/16 p2, 0x48a

    const/16 v1, 0x9

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .restart local v1    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_dd
    if-eqz v2, :cond_e2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e4

    :cond_e2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_e4
    goto/16 :goto_15d

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_e6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_ed
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 1165
    move-object v0, p1

    .line 1166
    .restart local v0    # "i":Ljava/lang/Object;
    :goto_f6
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_fc
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_103
    .catch Ljava/lang/ClassCastException; {:try_start_fc .. :try_end_103} :catch_146

    .restart local v2    # "x":Z
    move v2, v1

    if-eqz v2, :cond_13d

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1167
    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_10c
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_10e
    .catch Ljava/lang/ClassCastException; {:try_start_10c .. :try_end_10e} :catch_136

    :try_start_10e
    move-object v10, v0

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_115
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_115} :catch_12f

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_126

    .line 1168
    goto :goto_145

    :cond_126
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f6

    .line 1167
    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_12f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_136
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v6, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1166
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_13d
    if-eqz v2, :cond_142

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_144

    :cond_142
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_144
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_145
    goto :goto_15d

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_146
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1169
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_14d
    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/srfi13;->string$Mnindex:Lgnu/expr/ModuleMethod;

    aput-object v1, v0, v2

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "Second param is neither char-set, char, or predicate procedure."

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15d
    return-object v0

    .line 1157
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_15e
    move-exception p1

    const/16 p2, 0x487

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_167

    :goto_166
    throw p1

    :goto_167
    goto :goto_166
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x98

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

    const/16 v1, 0x99

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

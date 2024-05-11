.class public Lgnu/kawa/slib/printf$frame13;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame13"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n564#1,19:564\n*E\n"
.end annotation


# instance fields
.field cnt:Ljava/lang/Object;

.field end:Ljava/lang/Object;

.field final lambda$Fn19:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:564"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_12

    .line 564
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame13;->lambda33(Ljava/lang/Object;)Z

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

.method lambda33(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "x"    # Ljava/lang/Object;

    const-string v0, "string-ref"

    const-string v1, "substring"

    .line 564
    nop

    .line 565
    invoke-static {p1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "string-length"

    const-string v5, "string-set!"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_108

    .line 566
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v9, :cond_83

    sget-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v10, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :try_start_25
    move-object v10, p1

    check-cast v10, Ljava/lang/CharSequence;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_28} :catch_7c

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v9, :cond_39

    goto :goto_83

    .line 572
    :cond_39
    nop

    .line 573
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_3e
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_3e .. :try_end_40} :catch_75

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_42
    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_49} :catch_6e

    invoke-static {v2, v7, v1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v7

    aput-object p1, v0, v8

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 574
    :try_start_57
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_59
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_59} :catch_67

    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 575
    iput-object v0, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    goto/16 :goto_ff

    .line 574
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame13;
    .end local p1    # "x":Ljava/lang/Object;
    :catch_67
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v4, v8, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 573
    :catch_6e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v1, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_75
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v1, v8, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 566
    :catch_7c
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v4, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 567
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_83
    :goto_83
    new-array v1, v6, [Ljava/lang/Object;

    :try_start_85
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_88
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_88} :catch_101

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "lend":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .local v2, "i":Ljava/lang/Object;
    :goto_a4
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 569
    invoke-virtual {v3, v2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_fe

    .line 570
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_b0
    check-cast v3, Lgnu/lists/CharSeq;
    :try_end_b2
    .catch Ljava/lang/ClassCastException; {:try_start_b0 .. :try_end_b2} :catch_f7

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_b4
    move-object v9, v4

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_bb
    .catch Ljava/lang/ClassCastException; {:try_start_b4 .. :try_end_bb} :catch_f0

    :try_start_bb
    move-object v9, p1

    check-cast v9, Ljava/lang/CharSequence;
    :try_end_be
    .catch Ljava/lang/ClassCastException; {:try_start_bb .. :try_end_be} :catch_e9

    :try_start_be
    move-object v10, v2

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_c5
    .catch Ljava/lang/ClassCastException; {:try_start_be .. :try_end_c5} :catch_e2

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v3, v4, v9}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 571
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 570
    nop

    .line 568
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a4

    .line 570
    .end local v1    # "lend":Ljava/lang/Object;
    .end local v2    # "i":Ljava/lang/Object;
    .end local p1    # "x":Ljava/lang/Object;
    :catch_e2
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_e9
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_f0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v5, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_f7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v5, v8, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 568
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_fe
    nop

    .line 575
    :goto_ff
    goto/16 :goto_19d

    .line 567
    .end local p1    # "x":Ljava/lang/Object;
    :catch_101
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v4, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 576
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_108
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11a

    sget-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11c

    :cond_11a
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    :goto_11c
    move-object v1, v2

    .line 565
    .local v0, "x":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_123

    goto/16 :goto_19d

    .line 577
    :cond_123
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    :try_start_125
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_127
    .catch Ljava/lang/ClassCastException; {:try_start_125 .. :try_end_127} :catch_1cc

    if-eq v1, v2, :cond_12b

    const/4 v1, 0x1

    goto :goto_12c

    :cond_12b
    const/4 v1, 0x0

    :goto_12c
    add-int/2addr v1, v8

    and-int/2addr v1, v8

    move v2, v7

    .local v1, "x":Z
    if-eqz v1, :cond_140

    sget-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v9, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v10, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v2, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v9, :cond_16a

    goto :goto_142

    :cond_140
    if-eqz v1, :cond_16a

    .line 578
    .end local v1    # "x":Z
    :goto_142
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    aput-object v2, v1, v7

    const/16 v2, 0x64

    invoke-static {v2}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 579
    :try_start_156
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_158
    .catch Ljava/lang/ClassCastException; {:try_start_156 .. :try_end_158} :catch_163

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    goto :goto_16a

    .end local v0    # "x":Ljava/lang/Object;
    .end local p1    # "x":Ljava/lang/Object;
    :catch_163
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 580
    .restart local v0    # "x":Ljava/lang/Object;
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_16a
    :goto_16a
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_16c
    check-cast v1, Lgnu/lists/CharSeq;
    :try_end_16e
    .catch Ljava/lang/ClassCastException; {:try_start_16c .. :try_end_16e} :catch_1c5

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_170
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_177
    .catch Ljava/lang/ClassCastException; {:try_start_170 .. :try_end_177} :catch_1be

    invoke-static {p1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    :try_start_17d
    move-object v4, p1

    check-cast v4, Lgnu/text/Char;

    invoke-virtual {v4}, Lgnu/text/Char;->charValue()C

    move-result v3
    :try_end_184
    .catch Ljava/lang/ClassCastException; {:try_start_17d .. :try_end_184} :catch_185

    goto :goto_18e

    .end local v0    # "x":Ljava/lang/Object;
    .end local p1    # "x":Ljava/lang/Object;
    :catch_185
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .restart local v0    # "x":Ljava/lang/Object;
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_18c
    const/16 v3, 0x3f

    :goto_18e
    invoke-static {v1, v2, v3}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 581
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 582
    .end local v0    # "x":Ljava/lang/Object;
    :goto_19d
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1b3

    sget-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1ba

    const/4 v7, 0x1

    goto :goto_1ba

    :cond_1b3
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1ba

    const/4 v7, 0x1

    :cond_1ba
    :goto_1ba
    add-int/2addr v7, v8

    and-int/lit8 v0, v7, 0x1

    return v0

    .line 580
    .end local p1    # "x":Ljava/lang/Object;
    :catch_1be
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v5, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1c5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v5, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 577
    :catch_1cc
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "x"

    invoke-direct {v0, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1d7

    :goto_1d6
    throw v0

    :goto_1d7
    goto :goto_1d6
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_f

    .line 564
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

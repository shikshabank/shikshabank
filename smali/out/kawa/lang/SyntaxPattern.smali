.class public Lkawa/lang/SyntaxPattern;
.super Lkawa/lang/Pattern;
.source "SyntaxPattern.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final MATCH_ANY:I = 0x3

.field static final MATCH_ANY_CAR:I = 0x7

.field static final MATCH_EQUALS:I = 0x2

.field static final MATCH_IGNORE:I = 0x18

.field static final MATCH_LENGTH:I = 0x6

.field static final MATCH_LREPEAT:I = 0x5

.field static final MATCH_MISC:I = 0x0

.field static final MATCH_NIL:I = 0x8

.field static final MATCH_PAIR:I = 0x4

.field static final MATCH_VECTOR:I = 0x10

.field static final MATCH_WIDE:I = 0x1


# instance fields
.field literals:[Ljava/lang/Object;

.field program:Ljava/lang/String;

.field varCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .registers 10
    .param p1, "pattern"    # Ljava/lang/Object;
    .param p2, "literal_identifiers"    # [Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .registers 4
    .param p1, "program"    # Ljava/lang/String;
    .param p2, "literals"    # [Ljava/lang/Object;
    .param p3, "varCount"    # I

    .line 105
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 106
    iput-object p1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 108
    iput p3, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .registers 16
    .param p1, "programbuf"    # Ljava/lang/StringBuffer;
    .param p2, "pattern"    # Ljava/lang/Object;
    .param p3, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p4, "literal_identifiers"    # [Ljava/lang/Object;
    .param p5, "tr"    # Lkawa/lang/Translator;

    .line 121
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 122
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 123
    .local v0, "literalsbuf":Ljava/util/Vector;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v6, v0

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    iget-object v1, p5, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v1, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 154
    return-void
.end method

.method private static addInt(Ljava/lang/StringBuffer;I)V
    .registers 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "val"    # I

    .line 408
    const v0, 0xffff

    if-le p1, v0, :cond_c

    .line 409
    shl-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 410
    :cond_c
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    return-void
.end method

.method public static allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p0, "varCount"    # I
    .param p1, "outer"    # [Ljava/lang/Object;

    .line 632
    new-array v0, p0, [Ljava/lang/Object;

    .line 633
    .local v0, "vars":[Ljava/lang/Object;
    if-eqz p1, :cond_9

    .line 634
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_9
    return-object v0
.end method

.method public static getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .registers 13
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 670
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    .local v0, "savePos":Ljava/lang/Object;
    invoke-static {p0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    .line 672
    .local v1, "count":I
    const/16 v2, 0x65

    if-gez v1, :cond_12

    .line 674
    const-string v3, "missing or malformed literals list"

    invoke-virtual {p2, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    .line 677
    :cond_12
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 678
    .local v3, "literals":[Ljava/lang/Object;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_17
    if-gt v4, v1, :cond_66

    .line 680
    :goto_19
    instance-of v5, p0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_25

    .line 682
    move-object p1, p0

    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 683
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_19

    .line 685
    :cond_25
    move-object v5, p0

    check-cast v5, Lgnu/lists/Pair;

    .line 686
    .local v5, "pair":Lgnu/lists/Pair;
    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 689
    .local v6, "literal":Ljava/lang/Object;
    instance-of v7, v6, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_3c

    .line 691
    move-object v7, v6

    .line 692
    .local v7, "wrapped":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lkawa/lang/SyntaxForm;

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    goto :goto_3d

    .line 695
    .end local v7    # "wrapped":Ljava/lang/Object;
    :cond_3c
    move-object v7, v6

    .line 696
    .restart local v7    # "wrapped":Ljava/lang/Object;
    :goto_3d
    instance-of v8, v6, Lgnu/mapping/Symbol;

    if-nez v8, :cond_5d

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "non-symbol \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in literals list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v2, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 698
    :cond_5d
    aput-object v7, v3, v4

    .line 699
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 678
    .end local v5    # "pair":Lgnu/lists/Pair;
    .end local v6    # "literal":Ljava/lang/Object;
    .end local v7    # "wrapped":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 701
    .end local v4    # "i":I
    :cond_66
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 702
    return-object v3
.end method

.method private static insertInt(ILjava/lang/StringBuffer;I)I
    .registers 4
    .param p0, "offset"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "val"    # I

    .line 415
    const v0, 0xffff

    if-le p2, v0, :cond_e

    .line 416
    shl-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v0

    add-int/2addr p0, v0

    .line 417
    :cond_e
    int-to-char v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z
    .registers 9
    .param p0, "id1"    # Ljava/lang/Object;
    .param p1, "sc1"    # Lgnu/expr/ScopeExp;
    .param p2, "id2"    # Ljava/lang/Object;
    .param p3, "sc2"    # Lgnu/expr/ScopeExp;

    .line 641
    const/4 v0, 0x0

    if-eq p0, p2, :cond_e

    if-eqz p0, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 642
    :cond_d
    return v0

    .line 643
    :cond_e
    const/4 v1, 0x1

    if-ne p1, p3, :cond_12

    .line 644
    return v1

    .line 645
    :cond_12
    const/4 v2, 0x0

    .local v2, "d1":Lgnu/expr/Declaration;
    const/4 v3, 0x0

    .line 649
    .local v3, "d2":Lgnu/expr/Declaration;
    :goto_14
    if-eqz p1, :cond_24

    instance-of v4, p1, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_24

    .line 651
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_21

    .line 653
    goto :goto_24

    .line 654
    :cond_21
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_14

    .line 656
    :cond_24
    :goto_24
    if-eqz p3, :cond_34

    instance-of v4, p3, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_34

    .line 658
    invoke-virtual {p3, p2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 659
    if-eqz v3, :cond_31

    .line 660
    goto :goto_34

    .line 661
    :cond_31
    iget-object p3, p3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_24

    .line 663
    :cond_34
    :goto_34
    if-ne v2, v3, :cond_37

    const/4 v0, 0x1

    :cond_37
    return v0
.end method


# virtual methods
.method public disassemble()V
    .registers 5

    .line 158
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    iget-object v2, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 160
    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;)V
    .registers 5
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 164
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 165
    return-void
.end method

.method disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V
    .registers 15
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "tr"    # Lkawa/lang/Translator;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "pattern_names":Ljava/util/Vector;
    if-eqz p2, :cond_b

    iget-object v1, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v1, :cond_b

    .line 171
    iget-object v1, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 172
    :cond_b
    const/4 v1, 0x0

    .line 173
    .local v1, "value":I
    move v2, p3

    .local v2, "i":I
    :goto_d
    if-ge v2, p4, :cond_1e0

    .line 175
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 176
    .local v3, "ch":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    and-int/lit8 v4, v3, 0x7

    .line 179
    .local v4, "opcode":I
    shl-int/lit8 v6, v1, 0xd

    shr-int/lit8 v7, v3, 0x3

    or-int v1, v6, v7

    .line 180
    const/4 v6, 0x3

    const-string v7, "]"

    packed-switch v4, :pswitch_data_1e2

    goto/16 :goto_1bd

    .line 211
    :pswitch_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - LENGTH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pairs. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_65

    const-string v6, "pure list"

    goto :goto_67

    :cond_65
    const-string v6, "impure list"

    :goto_67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    goto/16 :goto_1dd

    .line 204
    :pswitch_74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - LREPEAT["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int v7, v2, v1

    invoke-virtual {p0, p1, p2, v2, v7}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 206
    add-int/2addr v2, v1

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": - repeat first var:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "i":I
    .local v9, "i":I
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/2addr v2, v6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": - repeast nested vars:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "i":I
    .local v7, "i":I
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shr-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    move v2, v7

    goto/16 :goto_1dd

    .line 201
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :pswitch_e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - PAIR["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    goto/16 :goto_1dd

    .line 193
    :pswitch_101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v6, :cond_10b

    const-string v6, " - ANY["

    goto :goto_10d

    :cond_10b
    const-string v6, " - ANY_CAR["

    :goto_10d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    if-eqz v0, :cond_131

    if-ltz v1, :cond_131

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_131

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 198
    :cond_131
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 199
    goto/16 :goto_1dd

    .line 186
    :pswitch_136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - EQUALS["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    if-eqz v5, :cond_15e

    if-ltz v1, :cond_15e

    array-length v6, v5

    if-ge v1, v6, :cond_15e

    .line 188
    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    :cond_15e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 190
    goto/16 :goto_1dd

    .line 183
    :pswitch_163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - WIDE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    goto/16 :goto_d

    .line 215
    :pswitch_17b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[misc ch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " n:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    if-ne v3, v6, :cond_1a9

    .line 218
    const-string v5, " - NIL"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    goto :goto_1dd

    .line 221
    :cond_1a9
    const/16 v5, 0x10

    if-ne v3, v5, :cond_1b3

    .line 223
    const-string v5, " - VECTOR"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    goto :goto_1dd

    .line 226
    :cond_1b3
    const/16 v5, 0x18

    if-ne v3, v5, :cond_1bd

    .line 228
    const-string v5, " - IGNORE"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    goto :goto_1dd

    .line 232
    :cond_1bd
    :goto_1bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    :goto_1dd
    const/4 v1, 0x0

    .line 236
    .end local v3    # "ch":C
    .end local v4    # "opcode":I
    goto/16 :goto_d

    .line 237
    .end local v2    # "i":I
    :cond_1e0
    return-void

    nop

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_17b
        :pswitch_163
        :pswitch_136
        :pswitch_101
        :pswitch_e5
        :pswitch_74
        :pswitch_47
        :pswitch_101
    .end packed-switch
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 79
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    .line 101
    .local v0, "r":Z
    return v0
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .registers 27

    .line 446
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    .line 450
    :goto_a
    instance-of v3, v0, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_16

    .line 452
    move-object v8, v0

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 453
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 455
    :cond_16
    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 456
    and-int/lit8 v4, v1, 0x7

    .line 457
    shl-int/lit8 v2, v2, 0xd

    shr-int/lit8 v5, v1, 0x3

    or-int v10, v2, v5

    .line 458
    const/16 v2, 0x8

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_22c

    .line 608
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/SyntaxPattern;->disassemble()V

    .line 609
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized pattern opcode @pc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :pswitch_48
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_4d

    const/4 v7, 0x1

    :cond_4d
    return v7

    .line 479
    :pswitch_4e
    shr-int/lit8 v1, v10, 0x1

    .line 480
    nop

    .line 481
    move-object v2, v0

    const/4 v3, 0x0

    .line 483
    :goto_53
    instance-of v4, v2, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_5e

    .line 484
    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_53

    .line 485
    :cond_5e
    if-ne v3, v1, :cond_72

    .line 487
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_69

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v1, :cond_6e

    goto :goto_6d

    :cond_69
    instance-of v1, v2, Lgnu/lists/Pair;

    if-eqz v1, :cond_6e

    .line 488
    :goto_6d
    return v7

    .line 496
    :cond_6e
    nop

    .line 497
    move v1, v9

    const/4 v2, 0x0

    goto :goto_a

    .line 491
    :cond_72
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_7f

    .line 492
    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 494
    :cond_7f
    return v7

    .line 509
    :pswitch_80
    nop

    .line 510
    add-int/2addr v10, v9

    .line 511
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v4, v1, 0x3

    .line 512
    :goto_8c
    and-int/lit8 v5, v1, 0x7

    if-ne v5, v11, :cond_a0

    .line 513
    shl-int/lit8 v1, v4, 0xd

    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v4, v3, 0x3

    or-int/2addr v4, v1

    move v1, v3

    move v3, v5

    goto :goto_8c

    .line 514
    :cond_a0
    add-int v10, v4, p3

    .line 515
    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    move v12, v3

    .line 516
    :goto_ad
    and-int/lit8 v1, v1, 0x7

    if-ne v1, v11, :cond_c2

    .line 517
    shl-int/lit8 v1, v12, 0xd

    iget-object v3, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v5, v3, 0x3

    or-int v12, v1, v5

    move v1, v3

    move v5, v4

    goto :goto_ad

    .line 519
    :cond_c2
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 520
    nop

    .line 522
    if-ne v1, v2, :cond_d1

    .line 524
    move v14, v3

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto :goto_f7

    .line 528
    :cond_d1
    shr-int/lit8 v2, v1, 0x3

    .line 529
    :goto_d3
    and-int/lit8 v1, v1, 0x7

    if-ne v1, v11, :cond_eb

    .line 530
    shl-int/lit8 v1, v2, 0xd

    iget-object v2, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v3, v2, 0x3

    or-int/2addr v1, v3

    move v3, v4

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_d3

    .line 531
    :cond_eb
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_f1

    .line 532
    const/4 v1, 0x0

    goto :goto_f2

    .line 531
    :cond_f1
    const/4 v1, 0x1

    .line 533
    :goto_f2
    shr-int/lit8 v2, v2, 0x1

    move v13, v1

    move v15, v2

    move v14, v3

    .line 535
    :goto_f7
    invoke-static {v0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    .line 538
    if-ltz v1, :cond_ff

    .line 539
    const/4 v2, 0x1

    goto :goto_103

    .line 542
    :cond_ff
    nop

    .line 543
    rsub-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 545
    :goto_103
    if-lt v1, v15, :cond_174

    if-eqz v13, :cond_10b

    if-nez v2, :cond_10b

    goto/16 :goto_174

    .line 547
    :cond_10b
    sub-int v5, v1, v15

    .line 548
    new-array v4, v12, [[Ljava/lang/Object;

    .line 550
    const/4 v1, 0x0

    :goto_110
    if-ge v1, v12, :cond_119

    .line 551
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    .line 552
    :cond_119
    const/4 v3, 0x0

    :goto_11a
    if-ge v3, v5, :cond_15c

    .line 554
    :goto_11c
    instance-of v1, v0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_128

    .line 556
    move-object v8, v0

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 557
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_11c

    .line 559
    :cond_128
    move-object/from16 v16, v0

    check-cast v16, Lgnu/lists/Pair;

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move/from16 v17, v3

    move/from16 v3, p3

    move-object/from16 v18, v4

    move v4, v9

    move/from16 v19, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    if-nez v0, :cond_143

    .line 561
    return v7

    .line 562
    :cond_143
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 563
    const/4 v1, 0x0

    :goto_148
    if-ge v1, v12, :cond_155

    .line 564
    aget-object v2, v18, v1

    add-int v3, v10, v1

    aget-object v3, p2, v3

    aput-object v3, v2, v17

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    .line 552
    :cond_155
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto :goto_11a

    .line 566
    :cond_15c
    move-object/from16 v18, v4

    const/4 v1, 0x0

    :goto_15f
    if-ge v1, v12, :cond_16a

    .line 567
    add-int v2, v10, v1

    aget-object v3, v18, v1

    aput-object v3, p2, v2

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_15f

    .line 568
    :cond_16a
    nop

    .line 569
    if-nez v15, :cond_170

    if-eqz v13, :cond_170

    .line 570
    return v11

    .line 450
    :cond_170
    move v1, v14

    const/4 v2, 0x0

    goto/16 :goto_a

    .line 546
    :cond_174
    :goto_174
    return v7

    .line 499
    :pswitch_175
    instance-of v1, v0, Lgnu/lists/Pair;

    if-nez v1, :cond_17a

    .line 500
    return v7

    .line 501
    :cond_17a
    move-object v11, v0

    check-cast v11, Lgnu/lists/Pair;

    .line 502
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 503
    return v7

    .line 504
    :cond_18d
    add-int v1, v9, v10

    .line 505
    nop

    .line 506
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 507
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 602
    :pswitch_197
    if-eqz v8, :cond_19d

    .line 603
    invoke-static {v0, v8}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    :cond_19d
    add-int v1, p3, v10

    aput-object v0, p2, v1

    .line 605
    return v11

    .line 573
    :pswitch_1a2
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    aget-object v1, v1, v10

    .line 576
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    check-cast v2, Lkawa/lang/Translator;

    .line 577
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_1c0

    .line 579
    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 580
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 581
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    .line 582
    move-object/from16 v20, v4

    move-object v4, v1

    move-object/from16 v1, v20

    goto :goto_1d1

    .line 585
    :cond_1c0
    nop

    .line 586
    invoke-virtual {v2}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v4

    .line 587
    instance-of v5, v4, Lkawa/lang/Macro;

    if-eqz v5, :cond_1d0

    check-cast v4, Lkawa/lang/Macro;

    invoke-virtual {v4}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    goto :goto_1d1

    :cond_1d0
    const/4 v4, 0x0

    .line 589
    :goto_1d1
    if-eqz v3, :cond_1e3

    .line 591
    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 592
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    .line 593
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    .line 594
    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v0, v20

    goto :goto_1ef

    .line 597
    :cond_1e3
    nop

    .line 598
    if-nez v8, :cond_1eb

    invoke-virtual {v2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    goto :goto_1ef

    :cond_1eb
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    .line 600
    :goto_1ef
    invoke-static {v1, v4, v0, v2}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v0

    return v0

    .line 461
    :pswitch_1f4
    move v1, v9

    move v2, v10

    goto/16 :goto_a

    .line 463
    :pswitch_1f8
    if-ne v1, v2, :cond_200

    .line 464
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_1ff

    const/4 v7, 0x1

    :cond_1ff
    return v7

    .line 465
    :cond_200
    const/16 v2, 0x10

    if-ne v1, v2, :cond_21c

    .line 467
    instance-of v1, v0, Lgnu/lists/FVector;

    if-nez v1, :cond_209

    .line 468
    return v7

    .line 469
    :cond_209
    check-cast v0, Lgnu/lists/FVector;

    invoke-static {v0}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    return v0

    .line 472
    :cond_21c
    const/16 v0, 0x18

    if-ne v1, v0, :cond_221

    .line 473
    return v11

    .line 475
    :cond_221
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unknwon pattern opcode"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_22a

    :goto_229
    throw v0

    :goto_22a
    goto :goto_229

    nop

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1f8
        :pswitch_1f4
        :pswitch_1a2
        :pswitch_197
        :pswitch_175
        :pswitch_80
        :pswitch_4e
        :pswitch_2c
        :pswitch_48
    .end packed-switch
.end method

.method match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .registers 14
    .param p1, "p"    # Lgnu/lists/Pair;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I
    .param p4, "pc"    # I
    .param p5, "syntax"    # Lkawa/lang/SyntaxForm;

    .line 428
    move v4, p4

    .line 430
    .local v4, "pc_start":I
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v1, p4, 0x1

    .end local p4    # "pc":I
    .local v1, "pc":I
    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    move v0, p4

    .local v0, "ch":C
    shr-int/lit8 p4, p4, 0x3

    move v6, v0

    move v7, v1

    .line 431
    .end local v0    # "ch":C
    .end local v1    # "pc":I
    .local v6, "ch":C
    .local v7, "pc":I
    .local p4, "value":I
    :goto_e
    and-int/lit8 v0, v6, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 432
    shl-int/lit8 v0, p4, 0xd

    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pc":I
    .local v2, "pc":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v6, v1

    shr-int/lit8 v1, v1, 0x3

    or-int p4, v0, v1

    move v7, v2

    goto :goto_e

    .line 433
    .end local v2    # "pc":I
    .restart local v7    # "pc":I
    :cond_24
    and-int/lit8 v0, v6, 0x7

    const/4 v2, 0x7

    if-ne v0, v2, :cond_48

    .line 435
    if-eqz p5, :cond_43

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    if-nez v0, :cond_43

    .line 436
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p5}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 437
    :cond_43
    add-int v0, p3, p4

    aput-object p1, p2, v0

    .line 438
    return v1

    .line 440
    :cond_48
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 707
    const-string v0, "#<syntax-pattern>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 624
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 625
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 626
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 627
    return-void
.end method

.method translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V
    .registers 36
    .param p1, "pattern"    # Ljava/lang/Object;
    .param p2, "program"    # Ljava/lang/StringBuffer;
    .param p3, "literal_identifiers"    # [Ljava/lang/Object;
    .param p4, "nesting"    # I
    .param p5, "literals"    # Ljava/util/Vector;
    .param p6, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p7, "context"    # C
    .param p8, "tr"    # Lkawa/lang/Translator;

    .line 250
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    iget-object v14, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 251
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    iget-object v15, v14, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v9, p1

    move-object/from16 v1, p6

    move/from16 v2, p7

    .line 254
    .end local p1    # "pattern":Ljava/lang/Object;
    .end local p6    # "syntax":Lkawa/lang/SyntaxForm;
    .end local p7    # "context":C
    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    .local v2, "context":C
    .local v9, "pattern":Ljava/lang/Object;
    .local v15, "patternNames":Ljava/util/Vector;
    :goto_12
    instance-of v0, v9, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_1e

    .line 256
    move-object v1, v9

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 257
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_12

    .line 259
    :cond_1e
    instance-of v0, v9, Lgnu/lists/Pair;

    const/16 v16, 0x3

    const/16 v17, 0x1

    if-eqz v0, :cond_168

    .line 261
    invoke-virtual {v13, v9}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 264
    .local v6, "savePos":Ljava/lang/Object;
    :try_start_2a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 265
    .local v0, "start_pc":I
    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    move-object v7, v9

    check-cast v7, Lgnu/lists/Pair;

    move-object/from16 v18, v7

    .line 267
    .local v18, "pair":Lgnu/lists/Pair;
    move-object v7, v1

    .line 268
    .local v7, "car_syntax":Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    .line 269
    .local v3, "next":Ljava/lang/Object;
    :goto_3e
    instance-of v5, v3, Lkawa/lang/SyntaxForm;
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_15e

    if-eqz v5, :cond_55

    .line 271
    :try_start_42
    move-object v5, v3

    check-cast v5, Lkawa/lang/SyntaxForm;

    move-object v1, v5

    .line 272
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4d

    move-object v3, v5

    const/4 v5, 0x4

    goto :goto_3e

    .line 332
    .end local v0    # "start_pc":I
    .end local v3    # "next":Ljava/lang/Object;
    .end local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "pair":Lgnu/lists/Pair;
    :catchall_4d
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    goto/16 :goto_164

    .line 274
    .restart local v0    # "start_pc":I
    .restart local v3    # "next":Ljava/lang/Object;
    .restart local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "pair":Lgnu/lists/Pair;
    :cond_55
    const/4 v5, 0x0

    .line 275
    .local v5, "repeat":Z
    :try_start_56
    instance-of v8, v3, Lgnu/lists/Pair;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_15e

    if-eqz v8, :cond_87

    :try_start_5a
    move-object v8, v3

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    const-string v4, "..."

    invoke-virtual {v13, v8, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 278
    const/4 v5, 0x1

    .line 279
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 280
    :goto_72
    nop

    instance-of v4, v3, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_81

    .line 282
    move-object v4, v3

    check-cast v4, Lkawa/lang/SyntaxForm;

    move-object v1, v4

    .line 283
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_4d

    move-object v3, v4

    goto :goto_72

    .line 280
    :cond_81
    move-object/from16 v20, v1

    move-object v8, v3

    move/from16 v21, v5

    goto :goto_8c

    .line 287
    :cond_87
    move-object/from16 v20, v1

    move-object v8, v3

    move/from16 v21, v5

    .end local v1    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v3    # "next":Ljava/lang/Object;
    .end local v5    # "repeat":Z
    .local v8, "next":Ljava/lang/Object;
    .local v20, "syntax":Lkawa/lang/SyntaxForm;
    .local v21, "repeat":Z
    :goto_8c
    :try_start_8c
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_155

    move/from16 v22, v1

    .line 288
    .local v22, "subvar0":I
    const/16 v1, 0x50

    if-ne v2, v1, :cond_99

    .line 289
    const/4 v1, 0x0

    move v5, v1

    .end local v2    # "context":C
    .local v1, "context":C
    goto :goto_9a

    .line 288
    .end local v1    # "context":C
    .restart local v2    # "context":C
    :cond_99
    move v5, v2

    .line 290
    .end local v2    # "context":C
    .local v5, "context":C
    :goto_9a
    :try_start_9a
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_148

    if-eqz v21, :cond_a5

    add-int/lit8 v1, p4, 0x1

    move/from16 v23, v1

    goto :goto_a7

    :cond_a5
    move/from16 v23, p4

    :goto_a7
    const/16 v1, 0x56

    if-ne v5, v1, :cond_ae

    const/16 v19, 0x0

    goto :goto_b0

    :cond_ae
    const/16 v19, 0x50

    :goto_b0
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v25, v5

    const/16 v24, 0x4

    .end local v5    # "context":C
    .local v25, "context":C
    move/from16 v5, v23

    move-object/from16 v23, v14

    move-object v14, v6

    .end local v6    # "savePos":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .local v23, "patternScope":Lkawa/lang/PatternScope;
    move-object/from16 v6, p5

    move-object/from16 p1, v8

    const/16 v12, 0x8

    .end local v8    # "next":Ljava/lang/Object;
    .local p1, "next":Ljava/lang/Object;
    move/from16 v8, v19

    move-object/from16 v26, v9

    .end local v9    # "pattern":Ljava/lang/Object;
    .local v26, "pattern":Ljava/lang/Object;
    move-object/from16 v9, p8

    :try_start_cb
    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 294
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v1, v1, v22

    .line 295
    .local v1, "subvarN":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x3

    if-eqz v21, :cond_e1

    const/4 v5, 0x5

    goto :goto_e2

    :cond_e1
    const/4 v5, 0x4

    :goto_e2
    or-int/2addr v2, v5

    .line 297
    .local v2, "width":I
    const v3, 0xffff

    if-le v2, v3, :cond_f1

    .line 298
    shr-int/lit8 v3, v2, 0xd

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v10, v3}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 300
    :cond_f1
    int-to-char v3, v2

    invoke-virtual {v10, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 302
    invoke-static/range {p1 .. p1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v3

    .line 303
    .local v3, "restLength":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_106

    .line 305
    const-string v4, "cyclic pattern list"

    invoke-virtual {v13, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_102
    .catchall {:try_start_cb .. :try_end_102} :catchall_142

    .line 332
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    .line 309
    :cond_106
    if-eqz v21, :cond_132

    .line 311
    shl-int/lit8 v4, v22, 0x3

    :try_start_10a
    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 312
    shl-int/lit8 v4, v1, 0x3

    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 313
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v5, p1

    .end local p1    # "next":Ljava/lang/Object;
    .local v5, "next":Ljava/lang/Object;
    if-ne v5, v4, :cond_11f

    .line 315
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_11b
    .catchall {:try_start_10a .. :try_end_11b} :catchall_142

    .line 332
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    .line 321
    :cond_11f
    if-ltz v3, :cond_124

    shl-int/lit8 v4, v3, 0x1

    goto :goto_129

    :cond_124
    neg-int v4, v3

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_129
    move v3, v4

    .line 323
    shl-int/lit8 v4, v3, 0x3

    or-int/lit8 v4, v4, 0x6

    :try_start_12e
    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_142

    goto :goto_134

    .line 309
    .end local v5    # "next":Ljava/lang/Object;
    .restart local p1    # "next":Ljava/lang/Object;
    :cond_132
    move-object/from16 v5, p1

    .line 327
    .end local p1    # "next":Ljava/lang/Object;
    .restart local v5    # "next":Ljava/lang/Object;
    :goto_134
    move-object v9, v5

    .line 332
    .end local v26    # "pattern":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v12, p5

    move-object/from16 v1, v20

    move-object/from16 v14, v23

    move/from16 v2, v25

    goto/16 :goto_12

    .end local v0    # "start_pc":I
    .end local v1    # "subvarN":I
    .end local v2    # "width":I
    .end local v3    # "restLength":I
    .end local v5    # "next":Ljava/lang/Object;
    .end local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v9    # "pattern":Ljava/lang/Object;
    .end local v18    # "pair":Lgnu/lists/Pair;
    .end local v21    # "repeat":Z
    .end local v22    # "subvar0":I
    .restart local v26    # "pattern":Ljava/lang/Object;
    :catchall_142
    move-exception v0

    move-object/from16 v1, v20

    move/from16 v2, v25

    goto :goto_164

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v25    # "context":C
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v5, "context":C
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_148
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v1, v20

    move/from16 v2, v25

    .end local v5    # "context":C
    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v25    # "context":C
    .restart local v26    # "pattern":Ljava/lang/Object;
    goto :goto_164

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v25    # "context":C
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v2, "context":C
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_155
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v1, v20

    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v26    # "pattern":Ljava/lang/Object;
    goto :goto_164

    .end local v20    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_15e
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v26    # "pattern":Ljava/lang/Object;
    :goto_164
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0

    .line 335
    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v26    # "pattern":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :cond_168
    move-object/from16 v26, v9

    move-object/from16 v23, v14

    const/16 v12, 0x8

    .end local v14    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    instance-of v0, v9, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_214

    .line 337
    array-length v0, v11

    .local v0, "j":I
    :goto_173
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c1

    .line 339
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    .line 340
    .local v3, "current":Lgnu/expr/ScopeExp;
    if-nez v1, :cond_17f

    move-object v4, v3

    goto :goto_183

    :cond_17f
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    .line 342
    .local v4, "scope1":Lgnu/expr/ScopeExp;
    :goto_183
    aget-object v5, v11, v0

    .line 343
    .local v5, "literal":Ljava/lang/Object;
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_195

    .line 345
    move-object v6, v5

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 347
    .local v6, "syntax2":Lkawa/lang/SyntaxForm;
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v6

    .line 349
    .local v6, "scope2":Lgnu/expr/ScopeExp;
    goto :goto_1a1

    .line 350
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    :cond_195
    iget-object v6, v13, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    if-eqz v6, :cond_1a0

    .line 351
    iget-object v6, v13, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    invoke-virtual {v6}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v6

    .restart local v6    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_1a1

    .line 353
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    :cond_1a0
    move-object v6, v3

    .line 354
    .restart local v6    # "scope2":Lgnu/expr/ScopeExp;
    :goto_1a1
    invoke-static {v9, v4, v5, v6}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v7

    if-eqz v7, :cond_1be

    .line 357
    move-object/from16 v7, p5

    invoke-static {v7, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v8

    .line 358
    .local v8, "i":I
    if-gez v8, :cond_1b6

    .line 360
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v8

    .line 361
    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    :cond_1b6
    shl-int/lit8 v12, v8, 0x3

    or-int/lit8 v12, v12, 0x2

    invoke-static {v10, v12}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 364
    return-void

    .line 354
    .end local v8    # "i":I
    :cond_1be
    move-object/from16 v7, p5

    .line 366
    .end local v3    # "current":Lgnu/expr/ScopeExp;
    .end local v4    # "scope1":Lgnu/expr/ScopeExp;
    .end local v5    # "literal":Ljava/lang/Object;
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_173

    .line 337
    :cond_1c1
    move-object/from16 v7, p5

    .line 367
    .end local v0    # "j":I
    invoke-virtual {v15, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicated pattern variable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 369
    :cond_1df
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v0

    .line 370
    .local v0, "i":I
    invoke-virtual {v15, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    const/16 v3, 0x50

    if-ne v2, v3, :cond_1ec

    const/4 v3, 0x1

    goto :goto_1ed

    :cond_1ec
    const/4 v3, 0x0

    .line 372
    .local v3, "matchCar":Z
    :goto_1ed
    shl-int/lit8 v4, p4, 0x1

    if-eqz v3, :cond_1f2

    goto :goto_1f4

    :cond_1f2
    const/16 v17, 0x0

    :goto_1f4
    add-int v4, v4, v17

    .line 373
    .local v4, "n":I
    move-object/from16 v5, v23

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .local v5, "patternScope":Lkawa/lang/PatternScope;
    iget-object v6, v5, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    int-to-char v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v5, v9}, Lkawa/lang/PatternScope;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 375
    .local v6, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v6, v13}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 376
    invoke-virtual {v13, v6}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 377
    shl-int/lit8 v8, v0, 0x3

    if-eqz v3, :cond_20e

    const/16 v16, 0x7

    :cond_20e
    or-int v8, v8, v16

    invoke-static {v10, v8}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 378
    return-void

    .line 380
    .end local v0    # "i":I
    .end local v3    # "matchCar":Z
    .end local v4    # "n":I
    .end local v5    # "patternScope":Lkawa/lang/PatternScope;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    :cond_214
    move-object/from16 v7, p5

    move-object/from16 v5, v23

    const/16 v0, 0x8

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v5    # "patternScope":Lkawa/lang/PatternScope;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v3, :cond_222

    .line 382
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    return-void

    .line 385
    :cond_222
    instance-of v0, v9, Lgnu/lists/FVector;

    if-eqz v0, :cond_238

    .line 387
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    move-object v0, v9

    check-cast v0, Lgnu/lists/FVector;

    invoke-static {v0}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v9

    .line 389
    const/16 v2, 0x56

    .line 390
    move-object v14, v5

    move-object v12, v7

    goto/16 :goto_12

    .line 394
    :cond_238
    invoke-static {v7, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v0

    .line 395
    .restart local v0    # "i":I
    if-gez v0, :cond_245

    .line 397
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 398
    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_245
    shl-int/lit8 v3, v0, 0x3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v10, v3}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 401
    return-void
.end method

.method public varCount()I
    .registers 2

    .line 75
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 619
    return-void
.end method

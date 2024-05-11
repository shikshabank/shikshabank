.class public Lgnu/kawa/lispexpr/ReaderParens;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderParens.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderParens;


# instance fields
.field close:C

.field command:Ljava/lang/Object;

.field kind:I

.field open:C


# direct methods
.method public constructor <init>(CCILjava/lang/Object;)V
    .registers 5
    .param p1, "open"    # C
    .param p2, "close"    # C
    .param p3, "kind"    # I
    .param p4, "command"    # Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 51
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderParens;->open:C

    .line 52
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    .line 53
    iput p3, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    .line 54
    iput-object p4, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getInstance(CC)Lgnu/kawa/lispexpr/ReaderParens;
    .registers 3
    .param p0, "open"    # C
    .param p1, "close"    # C

    .line 24
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;
    .registers 5
    .param p0, "open"    # C
    .param p1, "close"    # C
    .param p2, "kind"    # I

    .line 29
    const/4 v0, 0x0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_1a

    const/16 v1, 0x29

    if-ne p1, v1, :cond_1a

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1a

    .line 31
    sget-object v1, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    if-nez v1, :cond_17

    .line 32
    new-instance v1, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v1, p0, p1, p2, v0}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    sput-object v1, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    .line 33
    :cond_17
    sget-object v0, Lgnu/kawa/lispexpr/ReaderParens;->instance:Lgnu/kawa/lispexpr/ReaderParens;

    return-object v0

    .line 37
    :cond_1a
    new-instance v1, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v1, p0, p1, p2, v0}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance(CCILjava/lang/Object;)Lgnu/kawa/lispexpr/ReaderParens;
    .registers 5
    .param p0, "open"    # C
    .param p1, "close"    # C
    .param p2, "kind"    # I
    .param p3, "command"    # Ljava/lang/Object;

    .line 43
    if-nez p3, :cond_7

    .line 44
    invoke-static {p0, p1, p2}, Lgnu/kawa/lispexpr/ReaderParens;->getInstance(CCI)Lgnu/kawa/lispexpr/ReaderParens;

    move-result-object v0

    return-object v0

    .line 46
    :cond_7
    new-instance v0, Lgnu/kawa/lispexpr/ReaderParens;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderParens;-><init>(CCILjava/lang/Object;)V

    return-object v0
.end method

.method public static readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;
    .registers 22
    .param p0, "lexer"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "ch"    # I
    .param p2, "count"    # I
    .param p3, "close"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 80
    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v3

    .line 81
    .local v3, "port":Lgnu/text/LineBufferedReader;
    const/16 v0, 0x5d

    if-ne v2, v0, :cond_f

    const/16 v0, 0x5b

    goto :goto_11

    :cond_f
    const/16 v0, 0x28

    :goto_11
    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v4

    .line 82
    .local v4, "saveReadState":C
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v5

    .line 83
    .local v5, "startLine":I
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    .line 86
    .local v6, "startColumn":I
    const/4 v0, 0x0

    .line 87
    .local v0, "last":Ljava/lang/Object;
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v7

    .line 88
    .local v7, "list":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 89
    .local v8, "sawDot":Z
    const/4 v9, 0x0

    .line 90
    .local v9, "sawDotCdr":Z
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v10
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_10c

    move v11, v9

    move v9, v8

    move-object v8, v7

    move/from16 v7, p1

    .line 93
    .end local p1    # "ch":I
    .local v7, "ch":I
    .local v8, "list":Ljava/lang/Object;
    .local v9, "sawDot":Z
    .local v10, "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .local v11, "sawDotCdr":Z
    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v12

    .line 94
    .local v12, "line":I
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v13

    .line 95
    .local v13, "column":I
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v14
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_10a

    move v7, v14

    .line 96
    if-ne v7, v2, :cond_41

    .line 97
    move-object/from16 v16, v0

    move/from16 v17, v11

    goto :goto_9d

    .line 98
    :cond_41
    const-string v14, "unexpected EOF in list starting here"

    if-gez v7, :cond_4a

    .line 99
    add-int/lit8 v15, v5, 0x1

    :try_start_47
    invoke-virtual {v1, v14, v15, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 102
    :cond_4a
    const/16 v15, 0x2e

    if-ne v7, v15, :cond_c1

    .line 104
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v15

    move v7, v15

    .line 105
    invoke-virtual {v10, v7}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v15

    .line 106
    .local v15, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {v15}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v16

    move/from16 p1, v16

    .line 107
    .local p1, "kind":I
    move-object/from16 v16, v0

    .end local v0    # "last":Ljava/lang/Object;
    .local v16, "last":Ljava/lang/Object;
    const/4 v0, 0x1

    move/from16 v17, v11

    move/from16 v11, p1

    .end local p1    # "kind":I
    .local v11, "kind":I
    .local v17, "sawDotCdr":Z
    if-eq v11, v0, :cond_78

    const/4 v0, 0x5

    if-eq v11, v0, :cond_78

    if-nez v11, :cond_6c

    goto :goto_78

    .line 134
    :cond_6c
    const/16 v7, 0x2e

    .line 135
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTableEntry;->getConstituentInstance()Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v0, v16

    move/from16 v11, v17

    goto :goto_c0

    .line 111
    :cond_78
    :goto_78
    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip()V

    .line 112
    add-int/lit8 v13, v13, 0x1

    .line 113
    if-ne v7, v2, :cond_a2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unexpected \'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v14, v2

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "\' after \'.\'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_47 .. :try_end_9c} :catchall_10a

    .line 117
    nop

    .line 177
    .end local v11    # "kind":I
    .end local v12    # "line":I
    .end local v13    # "column":I
    .end local v15    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :goto_9d
    nop

    .line 181
    invoke-virtual {v1, v4}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    return-object v8

    .line 119
    .restart local v11    # "kind":I
    .restart local v12    # "line":I
    .restart local v13    # "column":I
    .restart local v15    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_a2
    if-gez v7, :cond_a9

    .line 120
    add-int/lit8 v0, v5, 0x1

    :try_start_a6
    invoke-virtual {v1, v14, v0, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 122
    :cond_a9
    if-eqz v9, :cond_bb

    .line 124
    const-string v0, "multiple \'.\' in list"

    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    .end local v17    # "sawDotCdr":Z
    .local v0, "sawDotCdr":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    .line 127
    const/4 v14, 0x0

    move/from16 v17, v0

    move-object v0, v14

    .end local v16    # "last":Ljava/lang/Object;
    .local v14, "last":Ljava/lang/Object;
    goto :goto_bd

    .line 122
    .end local v0    # "sawDotCdr":Z
    .end local v14    # "last":Ljava/lang/Object;
    .restart local v16    # "last":Ljava/lang/Object;
    .restart local v17    # "sawDotCdr":Z
    :cond_bb
    move-object/from16 v0, v16

    .line 129
    .end local v16    # "last":Ljava/lang/Object;
    .local v0, "last":Ljava/lang/Object;
    :goto_bd
    const/4 v9, 0x1

    move/from16 v11, v17

    .line 137
    .end local v17    # "sawDotCdr":Z
    .local v11, "sawDotCdr":Z
    :goto_c0
    goto :goto_ce

    .line 139
    .end local v15    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_c1
    move-object/from16 v16, v0

    move/from16 v17, v11

    .end local v0    # "last":Ljava/lang/Object;
    .end local v11    # "sawDotCdr":Z
    .restart local v16    # "last":Ljava/lang/Object;
    .restart local v17    # "sawDotCdr":Z
    invoke-virtual {v10, v7}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v0, v16

    move/from16 v11, v17

    .line 140
    .end local v16    # "last":Ljava/lang/Object;
    .end local v17    # "sawDotCdr":Z
    .restart local v0    # "last":Ljava/lang/Object;
    .restart local v11    # "sawDotCdr":Z
    .restart local v15    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :goto_ce
    invoke-virtual {v1, v7, v15, v10}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v14

    .line 141
    .local v14, "value":Ljava/lang/Object;
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v14, v2, :cond_da

    .line 142
    move/from16 v2, p3

    goto/16 :goto_2d

    .line 143
    :cond_da
    invoke-virtual {v1, v14, v10, v12, v13}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .end local v14    # "value":Ljava/lang/Object;
    .local v2, "value":Ljava/lang/Object;
    if-eqz v11, :cond_f0

    .line 152
    const-string v14, "multiple values after \'.\'"

    invoke-virtual {v1, v14}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    .line 155
    const/4 v11, 0x0

    .line 156
    move/from16 v2, p3

    goto/16 :goto_2d

    .line 158
    :cond_f0
    if-eqz v9, :cond_f4

    .line 160
    const/4 v11, 0x1

    goto :goto_fe

    .line 164
    :cond_f4
    if-nez v0, :cond_f9

    .line 166
    move v12, v5

    .line 167
    add-int/lit8 v13, v6, -0x1

    .line 169
    :cond_f9
    invoke-virtual {v1, v2, v12, v13}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v14

    move-object v2, v14

    .line 171
    :goto_fe
    if-nez v0, :cond_102

    .line 172
    move-object v8, v2

    goto :goto_105

    .line 174
    :cond_102
    invoke-virtual {v1, v0, v2}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_105
    .catchall {:try_start_a6 .. :try_end_105} :catchall_10a

    .line 175
    :goto_105
    move-object v0, v2

    .line 176
    .end local v2    # "value":Ljava/lang/Object;
    .end local v12    # "line":I
    .end local v13    # "column":I
    .end local v15    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move/from16 v2, p3

    goto/16 :goto_2d

    .line 181
    .end local v0    # "last":Ljava/lang/Object;
    .end local v8    # "list":Ljava/lang/Object;
    .end local v9    # "sawDot":Z
    .end local v10    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v11    # "sawDotCdr":Z
    :catchall_10a
    move-exception v0

    goto :goto_10f

    .end local v7    # "ch":I
    .local p1, "ch":I
    :catchall_10c
    move-exception v0

    move/from16 v7, p1

    .end local p1    # "ch":I
    .restart local v7    # "ch":I
    :goto_10f
    invoke-virtual {v1, v4}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    goto :goto_114

    :goto_113
    throw v0

    :goto_114
    goto :goto_113
.end method


# virtual methods
.method public getKind()I
    .registers 2

    .line 17
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderParens;->kind:I

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 10
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 63
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    iget-char v1, p0, Lgnu/kawa/lispexpr/ReaderParens;->close:C

    invoke-static {v0, p2, p3, v1}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "r":Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    if-eqz v1, :cond_29

    .line 66
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    .line 67
    .local v1, "port":Lgnu/text/LineBufferedReader;
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v2

    .line 68
    .local v2, "startLine":I
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v3

    .line 69
    .local v3, "startColumn":I
    move-object v4, p1

    check-cast v4, Lgnu/kawa/lispexpr/LispReader;

    iget-object v5, p0, Lgnu/kawa/lispexpr/ReaderParens;->command:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v4

    .line 70
    .local v4, "p":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v5, v4, v0}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    move-object v0, v4

    .line 73
    .end local v1    # "port":Lgnu/text/LineBufferedReader;
    .end local v2    # "startLine":I
    .end local v3    # "startColumn":I
    .end local v4    # "p":Ljava/lang/Object;
    :cond_29
    return-object v0
.end method

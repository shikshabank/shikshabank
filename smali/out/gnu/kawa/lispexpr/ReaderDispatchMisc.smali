.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "code"    # I

    .line 32
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 33
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 34
    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .registers 1

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method

.method public static readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;
    .registers 11
    .param p0, "in"    # Lgnu/text/Lexer;
    .param p1, "ch"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 213
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 214
    .local v0, "startPos":I
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    .line 215
    .local v1, "port":Lgnu/text/LineBufferedReader;
    const/4 v2, 0x0

    .line 216
    .local v2, "saveReadState":C
    const/4 v3, 0x0

    .line 217
    .local v3, "flags":I
    instance-of v4, v1, Lgnu/mapping/InPort;

    if-eqz v4, :cond_18

    .line 219
    move-object v4, v1

    check-cast v4, Lgnu/mapping/InPort;

    iget-char v2, v4, Lgnu/mapping/InPort;->readState:C

    .line 220
    move-object v4, v1

    check-cast v4, Lgnu/mapping/InPort;

    const/16 v5, 0x2f

    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    .line 228
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_c8

    .line 229
    .local v4, "c":I
    const-string v5, "unexpected EOF in regex literal"

    if-gez v4, :cond_23

    .line 230
    :try_start_20
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 231
    :cond_23
    if-ne v4, p1, :cond_8f

    .line 232
    nop

    .line 250
    .end local v4    # "c":I
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v6, v0

    invoke-direct {v4, v5, v0, v6}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .local v4, "pattern":Ljava/lang/String;
    :goto_30
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v5

    .line 255
    .local v5, "c":I
    const/16 v6, 0x69

    if-eq v5, v6, :cond_89

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3d

    goto :goto_89

    .line 257
    :cond_3d
    const/16 v6, 0x73

    if-eq v5, v6, :cond_86

    const/16 v6, 0x53

    if-ne v5, v6, :cond_46

    goto :goto_86

    .line 259
    :cond_46
    const/16 v6, 0x6d

    if-eq v5, v6, :cond_83

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_4f

    goto :goto_83

    .line 270
    :cond_4f
    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unrecognized regex option \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_8b

    .line 278
    .end local v5    # "c":I
    :cond_73
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5
    :try_end_77
    .catchall {:try_start_20 .. :try_end_77} :catchall_c8

    .line 282
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v6, v1, Lgnu/mapping/InPort;

    if-eqz v6, :cond_82

    .line 284
    move-object v6, v1

    check-cast v6, Lgnu/mapping/InPort;

    iput-char v2, v6, Lgnu/mapping/InPort;->readState:C

    :cond_82
    return-object v5

    .line 260
    .restart local v5    # "c":I
    :cond_83
    :goto_83
    or-int/lit8 v3, v3, 0x8

    goto :goto_8b

    .line 258
    :cond_86
    :goto_86
    or-int/lit8 v3, v3, 0x20

    goto :goto_8b

    .line 256
    :cond_89
    :goto_89
    or-int/lit8 v3, v3, 0x42

    .line 276
    :goto_8b
    :try_start_8b
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V

    .line 277
    .end local v5    # "c":I
    goto :goto_30

    .line 233
    .local v4, "c":I
    :cond_8f
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_c3

    .line 235
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    move v4, v7

    .line 236
    const/16 v7, 0x20

    if-eq v4, v7, :cond_a8

    const/16 v7, 0x9

    if-eq v4, v7, :cond_a8

    const/16 v7, 0xd

    if-eq v4, v7, :cond_a8

    const/16 v7, 0xa

    if-ne v4, v7, :cond_b9

    :cond_a8
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_b9

    .line 239
    move-object v7, p0

    check-cast v7, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v7, v4}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v7

    move v4, v7

    .line 240
    const/4 v7, -0x2

    if-ne v4, v7, :cond_b9

    .line 241
    goto/16 :goto_18

    .line 243
    :cond_b9
    if-gez v4, :cond_be

    .line 244
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 245
    :cond_be
    if-eq v4, p1, :cond_c3

    .line 246
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 248
    :cond_c3
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_c6
    .catchall {:try_start_8b .. :try_end_c6} :catchall_c8

    .line 249
    .end local v4    # "c":I
    goto/16 :goto_18

    .line 282
    :catchall_c8
    move-exception v4

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v5, v1, Lgnu/mapping/InPort;

    if-eqz v5, :cond_d4

    .line 284
    move-object v5, v1

    check-cast v5, Lgnu/mapping/InPort;

    iput-char v2, v5, Lgnu/mapping/InPort;->readState:C

    :cond_d4
    goto :goto_d6

    :goto_d5
    throw v4

    :goto_d6
    goto :goto_d5
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 39
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    .line 40
    nop

    .line 44
    iget v1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    if-ltz v1, :cond_9

    .line 45
    move p2, v1

    .line 46
    :cond_9
    const/16 v1, 0x23

    const/4 v2, 0x2

    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_1ea

    .line 204
    const-string p2, "An invalid #-construct was read."

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 96
    :sswitch_18
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    .line 97
    instance-of p2, p1, Lgnu/mapping/InPort;

    const/16 p3, 0x7c

    if-eqz p2, :cond_29

    .line 99
    move-object v2, p1

    check-cast v2, Lgnu/mapping/InPort;

    iget-char v3, v2, Lgnu/mapping/InPort;->readState:C

    .line 100
    iput-char p3, v2, Lgnu/mapping/InPort;->readState:C

    .line 104
    :cond_29
    :try_start_29
    invoke-virtual {v0, v1, p3}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    .line 108
    if-eqz p2, :cond_32

    .line 109
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    .line 111
    :cond_32
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 108
    :catchall_35
    move-exception p3

    if-eqz p2, :cond_3c

    .line 109
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    :cond_3c
    throw p3

    .line 58
    :sswitch_3d
    invoke-static {v0}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_42
    const/16 p1, 0x10

    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :sswitch_49
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 70
    :sswitch_4c
    int-to-char p1, p2

    invoke-static {v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object p1

    return-object p1

    .line 72
    :sswitch_52
    const/16 p2, 0x24

    if-le p3, p2, :cond_74

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the radix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " is too big (max is 36)"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 75
    const/16 p3, 0x24

    .line 77
    :cond_74
    invoke-static {v3, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :sswitch_79
    const/16 p1, 0x8

    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_80
    invoke-virtual {p1}, Lgnu/text/Lexer;->peek()I

    move-result p1

    .line 65
    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 66
    const/16 p1, 0x46

    invoke-static {v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object p1

    return-object p1

    .line 67
    :cond_92
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 88
    :sswitch_95
    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 89
    invoke-virtual {v0, p2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 90
    invoke-static {v2, v0, v3}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 81
    :sswitch_a0
    const/16 p1, 0xa

    invoke-static {v3, v0, p1}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :sswitch_a7
    invoke-static {v3, v0, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 175
    :sswitch_ac
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p2

    .line 176
    instance-of p1, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz p1, :cond_c7

    .line 178
    nop

    .line 179
    iget-object p1, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 180
    if-nez p1, :cond_c0

    .line 182
    new-instance p1, Lgnu/kawa/util/GeneralHashTable;

    invoke-direct {p1}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 183
    iput-object p1, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 185
    :cond_c0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_c7
    return-object p2

    .line 113
    :sswitch_c8
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    .line 114
    instance-of p2, p1, Lgnu/mapping/InPort;

    if-eqz p2, :cond_d9

    .line 116
    move-object p3, p1

    check-cast p3, Lgnu/mapping/InPort;

    iget-char v3, p3, Lgnu/mapping/InPort;->readState:C

    .line 117
    const/16 v1, 0x3b

    iput-char v1, p3, Lgnu/mapping/InPort;->readState:C

    .line 121
    :cond_d9
    :try_start_d9
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_e5

    .line 125
    if-eqz p2, :cond_e2

    .line 126
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    .line 128
    :cond_e2
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 125
    :catchall_e5
    move-exception p3

    if-eqz p2, :cond_ec

    .line 126
    check-cast p1, Lgnu/mapping/InPort;

    iput-char v3, p1, Lgnu/mapping/InPort;->readState:C

    :cond_ec
    throw p3

    .line 51
    :sswitch_ed
    iget p1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 52
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p2

    const/16 p3, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 53
    iget p2, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr p2, p1

    .line 54
    new-instance p3, Ljava/lang/String;

    iget-object v1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {p3, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 55
    iput p1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_111
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 130
    :sswitch_116
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result p2

    const/16 p3, 0x28

    if-ne p2, p3, :cond_1c1

    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result p3

    if-lez p3, :cond_1c1

    check-cast p2, Lgnu/lists/Pair;

    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1c1

    .line 138
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    if-nez v1, :cond_15f

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown reader constructor "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1c0

    .line 142
    :cond_15f
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-nez v2, :cond_16d

    instance-of v2, v1, Lgnu/bytecode/Type;

    if-nez v2, :cond_16d

    .line 143
    const-string p2, "reader constructor must be procedure or type name"

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_1c0

    .line 146
    :cond_16d
    add-int/lit8 p3, p3, -0x1

    .line 147
    instance-of v2, v1, Lgnu/bytecode/Type;

    .line 148
    add-int v4, v2, p3

    new-array v4, v4, [Ljava/lang/Object;

    .line 149
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 150
    const/4 v5, 0x0

    :goto_17a
    if-ge v5, p3, :cond_18d

    .line 152
    check-cast p2, Lgnu/lists/Pair;

    .line 153
    add-int v6, v2, v5

    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    .line 154
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_17a

    .line 158
    :cond_18d
    if-lez v2, :cond_198

    .line 160
    :try_start_18f
    aput-object v1, v4, v3

    .line 161
    sget-object p2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {p2, v4}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :cond_198
    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19e
    .catchall {:try_start_18f .. :try_end_19e} :catchall_19f

    return-object p1

    .line 165
    :catchall_19f
    move-exception p2

    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caught "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " applying reader constructor "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 170
    :goto_1c0
    goto :goto_1c6

    .line 172
    :cond_1c1
    const-string p2, "a non-empty list starting with a symbol must follow #,"

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 173
    :goto_1c6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 189
    :sswitch_1c9
    instance-of p2, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz p2, :cond_1dd

    .line 191
    nop

    .line 192
    iget-object p2, v0, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 193
    if-eqz p2, :cond_1dd

    .line 195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 196
    invoke-virtual {p2, p3, p1}, Lgnu/kawa/util/GeneralHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 197
    if-eq p2, p1, :cond_1dd

    .line 198
    return-object p2

    .line 201
    :cond_1dd
    const-string p2, "an unrecognized #n# back-reference was read"

    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 202
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 60
    :sswitch_1e5
    invoke-static {v0}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_1ea
    .sparse-switch
        0x21 -> :sswitch_1e5
        0x23 -> :sswitch_1c9
        0x2c -> :sswitch_116
        0x2f -> :sswitch_111
        0x3a -> :sswitch_ed
        0x3b -> :sswitch_c8
        0x3d -> :sswitch_ac
        0x42 -> :sswitch_a7
        0x44 -> :sswitch_a0
        0x45 -> :sswitch_95
        0x46 -> :sswitch_80
        0x49 -> :sswitch_95
        0x4f -> :sswitch_79
        0x52 -> :sswitch_52
        0x53 -> :sswitch_4c
        0x54 -> :sswitch_49
        0x55 -> :sswitch_4c
        0x58 -> :sswitch_42
        0x5c -> :sswitch_3d
        0x7c -> :sswitch_18
    .end sparse-switch
.end method

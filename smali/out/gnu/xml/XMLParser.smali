.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .registers 13
    .param p0, "strm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgnu/text/LineInputStreamReader;

    invoke-direct {v0, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v0, "in":Lgnu/text/LineInputStreamReader;
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    .line 69
    .local v1, "b1":I
    const/4 v2, -0x1

    if-gez v1, :cond_e

    const/4 v3, -0x1

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    .line 70
    .local v3, "b2":I
    :goto_12
    if-gez v3, :cond_16

    const/4 v4, -0x1

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v4

    .line 71
    .local v4, "b3":I
    :goto_1a
    const/16 v5, 0xef

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    if-ne v1, v5, :cond_32

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_32

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_32

    .line 73
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 76
    :cond_32
    const/4 v5, 0x2

    const/16 v8, 0xfe

    const/16 v9, 0xff

    if-ne v1, v9, :cond_47

    if-ne v3, v8, :cond_47

    if-eqz v4, :cond_47

    .line 78
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 81
    :cond_47
    if-ne v1, v8, :cond_57

    if-ne v3, v9, :cond_57

    if-eqz v4, :cond_57

    .line 83
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    const-string v2, "UTF-16BE"

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_d6

    .line 88
    :cond_57
    if-gez v4, :cond_5a

    goto :goto_5e

    :cond_5a
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    .line 89
    .local v2, "b4":I
    :goto_5e
    const/16 v5, 0x4c

    if-ne v1, v5, :cond_77

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_77

    const/16 v5, 0xa7

    if-ne v4, v5, :cond_77

    const/16 v5, 0x94

    if-eq v2, v5, :cond_6f

    goto :goto_77

    .line 90
    :cond_6f
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_77
    :goto_77
    invoke-virtual {v0, v7}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 92
    const/16 v5, 0x3c

    const/16 v8, 0x3f

    if-ne v1, v5, :cond_90

    if-ne v3, v8, :cond_8a

    const/16 v9, 0x78

    if-ne v4, v9, :cond_8a

    const/16 v9, 0x6d

    if-eq v2, v9, :cond_98

    :cond_8a
    if-nez v3, :cond_90

    if-ne v4, v8, :cond_90

    if-eqz v2, :cond_98

    :cond_90
    if-nez v1, :cond_d3

    if-ne v3, v5, :cond_d3

    if-nez v4, :cond_d3

    if-ne v2, v8, :cond_d3

    .line 96
    :cond_98
    iget-object v5, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 97
    .local v5, "buffer":[C
    if-nez v5, :cond_a3

    .line 98
    const/16 v6, 0x2000

    new-array v6, v6, [C

    move-object v5, v6

    iput-object v6, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 99
    :cond_a3
    const/4 v6, 0x0

    .line 100
    .local v6, "pos":I
    const/4 v8, 0x0

    .line 103
    .local v8, "quote":I
    :goto_a5
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v9

    .line 104
    .local v9, "b":I
    if-nez v9, :cond_ac

    .line 105
    goto :goto_a5

    .line 106
    :cond_ac
    if-gez v9, :cond_af

    .line 107
    goto :goto_bd

    .line 108
    :cond_af
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pos":I
    .local v10, "pos":I
    and-int/lit16 v11, v9, 0xff

    int-to-char v11, v11

    aput-char v11, v5, v6

    .line 109
    if-nez v8, :cond_cd

    .line 111
    const/16 v6, 0x3e

    if-ne v9, v6, :cond_c2

    .line 112
    move v6, v10

    .line 119
    .end local v9    # "b":I
    .end local v10    # "pos":I
    .restart local v6    # "pos":I
    :goto_bd
    iput v7, v0, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    iput v6, v0, Lgnu/text/LineInputStreamReader;->limit:I

    .line 121
    .end local v5    # "buffer":[C
    .end local v6    # "pos":I
    .end local v8    # "quote":I
    goto :goto_d6

    .line 113
    .restart local v5    # "buffer":[C
    .restart local v8    # "quote":I
    .restart local v9    # "b":I
    .restart local v10    # "pos":I
    :cond_c2
    const/16 v6, 0x27

    if-eq v9, v6, :cond_ca

    const/16 v6, 0x22

    if-ne v9, v6, :cond_d1

    .line 114
    :cond_ca
    move v6, v9

    move v8, v6

    .end local v8    # "quote":I
    .local v6, "quote":I
    goto :goto_d1

    .line 116
    .end local v6    # "quote":I
    .restart local v8    # "quote":I
    :cond_cd
    if-ne v9, v8, :cond_d1

    .line 117
    const/4 v6, 0x0

    move v8, v6

    .line 118
    .end local v9    # "b":I
    :cond_d1
    :goto_d1
    move v6, v10

    goto :goto_a5

    .line 123
    .end local v5    # "buffer":[C
    .end local v8    # "quote":I
    .end local v10    # "pos":I
    :cond_d3
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    .end local v2    # "b4":I
    :goto_d6
    invoke-virtual {v0, v7}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    .line 126
    return-object v0
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    .local v0, "filter":Lgnu/xml/XMLFilter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v1

    .line 148
    .local v1, "uri":Ljava/lang/Object;
    if-eqz v1, :cond_17

    .line 149
    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_17
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 152
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .registers 4
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "filter"    # Lgnu/xml/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 161
    .local v0, "uri":Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 162
    invoke-virtual {p2, v0}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_12
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    .line 166
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .registers 27
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "out"    # Lgnu/xml/XMLFilter;

    .line 171
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 172
    .local v0, "buffer":[C
    iget v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 173
    .local v2, "pos":I
    iget v3, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 189
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 194
    .local v4, "state":I
    const/16 v5, 0x3c

    .line 195
    .local v5, "terminator":C
    const/16 v6, 0xe

    .line 196
    .local v6, "continue_state":I
    const/16 v7, 0x20

    .line 197
    .local v7, "ch":C
    const/4 v9, 0x0

    .line 198
    .local v9, "length":I
    const/4 v10, -0x1

    .line 199
    .local v10, "dstart":I
    const/4 v11, 0x0

    .line 201
    .local v11, "message":Ljava/lang/String;
    move v12, v3

    move v13, v9

    move-object v14, v11

    move v15, v12

    move-object v9, v0

    move v0, v4

    move v11, v5

    move v12, v6

    move/from16 v24, v10

    move v10, v3

    move/from16 v3, v24

    .line 206
    .end local v4    # "state":I
    .end local v5    # "terminator":C
    .end local v6    # "continue_state":I
    .local v0, "state":I
    .local v3, "dstart":I
    .local v9, "buffer":[C
    .local v10, "limit":I
    .local v11, "terminator":C
    .local v12, "continue_state":I
    .local v13, "length":I
    .local v14, "message":Ljava/lang/String;
    .local v15, "start":I
    :goto_21
    const/16 v6, 0x65

    const/16 v5, 0x3e

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_936

    :pswitch_29
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .local v22, "message":Ljava/lang/String;
    .local v23, "continue_state":I
    goto/16 :goto_8cd

    .line 253
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_2f
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 254
    const/16 v4, 0x66

    const-string v5, "unexpected end-of-file"

    invoke-virtual {v8, v4, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 255
    return-void

    .line 233
    :pswitch_39
    move v2, v3

    .line 234
    const-string v14, "invalid xml version specifier"

    .line 238
    :pswitch_3c
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    invoke-virtual {v8, v6, v14}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 242
    :goto_41
    if-lt v2, v10, :cond_45

    .line 243
    nop

    .line 989
    return-void

    .line 244
    :cond_45
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    aget-char v7, v9, v2

    .line 245
    if-ne v7, v5, :cond_52

    .line 247
    const/4 v0, 0x1

    .line 248
    move v2, v0

    move-object/from16 v22, v14

    move v14, v6

    goto/16 :goto_8d1

    .line 245
    :cond_52
    move v2, v6

    goto :goto_41

    .line 223
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :pswitch_54
    const/16 v5, 0x3f

    if-ne v7, v5, :cond_62

    .line 225
    move v5, v2

    .line 226
    .end local v15    # "start":I
    .local v5, "start":I
    const/16 v0, 0x21

    .line 227
    move v15, v5

    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 229
    .end local v5    # "start":I
    .restart local v15    # "start":I
    :cond_62
    const/16 v0, 0xe

    .line 230
    goto :goto_21

    .line 214
    :pswitch_65
    const/16 v5, 0x3c

    if-ne v7, v5, :cond_71

    .line 216
    const/16 v0, 0x22

    .line 217
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 219
    :cond_71
    const/4 v0, 0x1

    .line 220
    goto :goto_21

    .line 349
    :pswitch_73
    const/4 v0, 0x1

    .line 350
    const/16 v5, 0xa

    if-ne v7, v5, :cond_7a

    const/4 v5, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v5, 0x0

    :goto_7b
    const/16 v6, 0x85

    if-ne v7, v6, :cond_81

    const/4 v6, 0x1

    goto :goto_82

    :cond_81
    const/4 v6, 0x0

    :goto_82
    or-int/2addr v5, v6

    if-eqz v5, :cond_8e

    .line 352
    invoke-virtual {v1, v4, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 353
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 357
    :cond_8e
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v4, v5}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 358
    goto :goto_21

    .line 937
    :pswitch_94
    if-eq v7, v5, :cond_9b

    .line 939
    const-string v14, "missing \'>\'"

    .line 940
    const/16 v0, 0x24

    .line 941
    goto :goto_21

    .line 943
    :cond_9b
    const/4 v0, 0x1

    .line 944
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 444
    :goto_a2
    :pswitch_a2
    const/16 v5, 0x3b

    if-ne v7, v5, :cond_b5

    .line 446
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 447
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v15

    invoke-virtual {v8, v13, v9, v15, v5}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    .line 449
    const/4 v0, 0x1

    .line 450
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 452
    :cond_b5
    const/16 v5, 0x78

    if-ne v7, v5, :cond_be

    if-nez v3, :cond_be

    .line 453
    const/16 v3, 0x10

    goto :goto_e4

    .line 454
    :cond_be
    const/high16 v5, 0x8000000

    if-lt v13, v5, :cond_c3

    .line 455
    goto :goto_d0

    .line 458
    :cond_c3
    if-nez v3, :cond_c8

    const/16 v5, 0xa

    goto :goto_c9

    :cond_c8
    move v5, v3

    .line 459
    .local v5, "base":I
    :goto_c9
    invoke-static {v7, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 460
    .local v16, "digit":I
    if-gez v16, :cond_de

    .line 461
    nop

    .line 469
    .end local v5    # "base":I
    .end local v16    # "digit":I
    :goto_d0
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    const-string v5, "invalid character reference"

    invoke-virtual {v8, v6, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 471
    const/4 v0, 0x1

    .line 472
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 462
    .restart local v5    # "base":I
    .restart local v16    # "digit":I
    :cond_de
    mul-int v17, v13, v5

    add-int v17, v17, v16

    move/from16 v13, v17

    .line 464
    .end local v5    # "base":I
    .end local v16    # "digit":I
    :goto_e4
    if-ge v2, v10, :cond_ec

    .line 465
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aget-char v7, v9, v2

    move v2, v5

    goto :goto_a2

    .line 464
    .end local v5    # "pos":I
    .restart local v2    # "pos":I
    :cond_ec
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 475
    :pswitch_f2
    const/16 v5, 0x23

    if-ne v7, v5, :cond_103

    .line 477
    const/16 v0, 0x1a

    .line 478
    move v5, v2

    .line 479
    .end local v15    # "start":I
    .local v5, "start":I
    const/4 v6, 0x0

    .line 480
    .end local v13    # "length":I
    .local v6, "length":I
    const/4 v3, 0x0

    .line 481
    move v15, v5

    move v13, v6

    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 483
    .end local v5    # "start":I
    .end local v6    # "length":I
    .restart local v13    # "length":I
    .restart local v15    # "start":I
    :cond_103
    add-int/lit8 v15, v2, -0x1

    .line 484
    const/4 v0, 0x7

    .line 485
    goto/16 :goto_21

    .line 527
    :pswitch_108
    if-gez v3, :cond_112

    .line 528
    add-int/lit8 v3, v2, -0x1

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto :goto_117

    .line 527
    :cond_112
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    .line 532
    .local v2, "ch":C
    .local v7, "pos":I
    :goto_117
    if-ne v2, v5, :cond_478

    add-int/lit8 v16, v7, -0x2

    move/from16 v17, v16

    .local v17, "end":I
    aget-char v4, v9, v16

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_46c

    move/from16 v5, v17

    .end local v17    # "end":I
    .local v5, "end":I
    if-lt v5, v3, :cond_460

    .line 536
    iput v7, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 537
    const/4 v4, 0x3

    if-ne v13, v4, :cond_43b

    aget-char v4, v9, v15

    const/16 v6, 0x78

    if-ne v4, v6, :cond_43b

    add-int/lit8 v4, v15, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x6d

    if-ne v4, v6, :cond_43b

    add-int/lit8 v4, v15, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x6c

    if-ne v4, v6, :cond_43b

    .line 542
    const/16 v4, 0x1e

    if-ne v0, v4, :cond_430

    .line 544
    add-int/lit8 v4, v3, 0x7

    if-le v5, v4, :cond_427

    aget-char v4, v9, v3

    const/16 v6, 0x76

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x65

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x72

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x3

    aget-char v4, v9, v4

    const/16 v6, 0x73

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x4

    aget-char v4, v9, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x5

    aget-char v4, v9, v4

    const/16 v6, 0x6f

    if-ne v4, v6, :cond_427

    add-int/lit8 v4, v3, 0x6

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-eq v4, v6, :cond_182

    goto/16 :goto_427

    .line 558
    :cond_182
    add-int/lit8 v3, v3, 0x7

    .line 559
    aget-char v2, v9, v3

    .line 561
    :goto_186
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_193

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_193

    .line 562
    aget-char v2, v9, v3

    goto :goto_186

    .line 563
    :cond_193
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_1a0

    .line 565
    const/16 v0, 0x23

    .line 566
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_21

    .line 568
    :cond_1a0
    add-int/lit8 v3, v3, 0x1

    aget-char v2, v9, v3

    .line 570
    :goto_1a4
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1b1

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_1b1

    .line 571
    aget-char v2, v9, v3

    goto :goto_1a4

    .line 572
    :cond_1b1
    const/16 v4, 0x27

    if-eq v2, v4, :cond_1c2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1c2

    .line 574
    const/16 v0, 0x23

    .line 575
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_21

    .line 577
    :cond_1c2
    move v4, v2

    .line 578
    .local v4, "quote":C
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "dstart":I
    .local v17, "dstart":I
    move/from16 v3, v17

    .line 581
    .local v3, "i":I
    :goto_1c7
    if-ne v3, v5, :cond_1d4

    .line 583
    const/16 v0, 0x23

    .line 584
    move/from16 v3, v17

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_21

    .line 586
    :cond_1d4
    aget-char v2, v9, v3

    .line 587
    if-ne v2, v4, :cond_417

    .line 588
    nop

    .line 590
    add-int/lit8 v6, v17, 0x3

    if-ne v3, v6, :cond_1fc

    aget-char v6, v9, v17

    move/from16 v19, v2

    .end local v2    # "ch":C
    .local v19, "ch":C
    const/16 v2, 0x31

    if-ne v6, v2, :cond_1f9

    add-int/lit8 v2, v17, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_1f9

    add-int/lit8 v2, v17, 0x2

    aget-char v2, v9, v2

    move v6, v2

    move/from16 v20, v4

    .end local v4    # "quote":C
    .end local v19    # "ch":C
    .local v6, "ch":C
    .local v20, "quote":C
    const/16 v4, 0x30

    if-eq v2, v4, :cond_206

    goto :goto_202

    .end local v6    # "ch":C
    .end local v20    # "quote":C
    .restart local v4    # "quote":C
    .restart local v19    # "ch":C
    :cond_1f9
    move/from16 v20, v4

    .end local v4    # "quote":C
    .restart local v20    # "quote":C
    goto :goto_200

    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .restart local v2    # "ch":C
    .restart local v4    # "quote":C
    :cond_1fc
    move/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "ch":C
    .end local v4    # "quote":C
    .restart local v19    # "ch":C
    .restart local v20    # "quote":C
    :goto_200
    move/from16 v6, v19

    .end local v19    # "ch":C
    .restart local v6    # "ch":C
    :goto_202
    const/16 v2, 0x31

    if-ne v6, v2, :cond_40f

    .line 601
    :cond_206
    add-int/lit8 v2, v3, 0x1

    .line 603
    .end local v17    # "dstart":I
    .local v2, "dstart":I
    :goto_208
    if-ge v2, v5, :cond_215

    aget-char v4, v9, v2

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_215

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_208

    .line 605
    :cond_215
    add-int/lit8 v4, v2, 0x7

    if-le v5, v4, :cond_2dd

    aget-char v4, v9, v2

    move/from16 v19, v6

    const/16 v6, 0x65

    .end local v6    # "ch":C
    .restart local v19    # "ch":C
    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x63

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x3

    aget-char v4, v9, v4

    const/16 v6, 0x6f

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x4

    aget-char v4, v9, v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x5

    aget-char v4, v9, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x6

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-ne v4, v6, :cond_2df

    add-int/lit8 v4, v2, 0x7

    aget-char v4, v9, v4

    const/16 v6, 0x67

    if-ne v4, v6, :cond_2df

    .line 615
    add-int/lit8 v2, v2, 0x8

    .line 616
    aget-char v4, v9, v2

    .line 618
    .end local v19    # "ch":C
    .local v4, "ch":C
    :goto_25d
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_26a

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_26a

    .line 619
    aget-char v4, v9, v2

    goto :goto_25d

    .line 620
    :cond_26a
    const/16 v6, 0x3d

    if-eq v4, v6, :cond_277

    .line 622
    const-string v14, "bad \'encoding\' declaration"

    .line 623
    const/16 v0, 0x24

    .line 624
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_21

    .line 626
    :cond_277
    add-int/lit8 v2, v2, 0x1

    aget-char v4, v9, v2

    .line 628
    :goto_27b
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_288

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_288

    .line 629
    aget-char v4, v9, v2

    goto :goto_27b

    .line 630
    :cond_288
    const/16 v6, 0x27

    if-eq v4, v6, :cond_299

    const/16 v6, 0x22

    if-eq v4, v6, :cond_299

    .line 632
    const-string v14, "bad \'encoding\' declaration"

    .line 633
    const/16 v0, 0x24

    .line 634
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_21

    .line 636
    :cond_299
    move v6, v4

    .line 637
    .end local v20    # "quote":C
    .local v6, "quote":C
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 640
    :goto_29d
    if-ne v3, v5, :cond_2a8

    .line 642
    const-string v14, "bad \'encoding\' declaration"

    .line 643
    const/16 v0, 0x24

    .line 644
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_21

    .line 646
    :cond_2a8
    aget-char v4, v9, v3

    .line 647
    if-ne v4, v6, :cond_2d6

    .line 648
    nop

    .line 650
    move/from16 v17, v4

    .end local v4    # "ch":C
    .local v17, "ch":C
    new-instance v4, Ljava/lang/String;

    move/from16 v21, v6

    .end local v6    # "quote":C
    .local v21, "quote":C
    sub-int v6, v3, v2

    invoke-direct {v4, v9, v2, v6}, Ljava/lang/String;-><init>([CII)V

    .line 651
    .local v4, "encoding":Ljava/lang/String;
    instance-of v6, v1, Lgnu/text/LineInputStreamReader;

    if-eqz v6, :cond_2c2

    .line 652
    move-object v6, v1

    check-cast v6, Lgnu/text/LineInputStreamReader;

    invoke-virtual {v6, v4}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 653
    :cond_2c2
    add-int/lit8 v2, v3, 0x1

    .line 655
    :goto_2c4
    if-ge v2, v5, :cond_2d1

    aget-char v6, v9, v2

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2d1

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c4

    .line 658
    .end local v4    # "encoding":Ljava/lang/String;
    :cond_2d1
    move/from16 v6, v17

    move/from16 v4, v21

    goto :goto_2e3

    .line 638
    .end local v17    # "ch":C
    .end local v21    # "quote":C
    .local v4, "ch":C
    .restart local v6    # "quote":C
    :cond_2d6
    move/from16 v17, v4

    move/from16 v21, v6

    .end local v4    # "ch":C
    .end local v6    # "quote":C
    .restart local v17    # "ch":C
    .restart local v21    # "quote":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_29d

    .line 605
    .end local v17    # "ch":C
    .end local v21    # "quote":C
    .local v6, "ch":C
    .restart local v20    # "quote":C
    :cond_2dd
    move/from16 v19, v6

    .line 658
    .end local v6    # "ch":C
    .restart local v19    # "ch":C
    :cond_2df
    move/from16 v6, v19

    move/from16 v4, v20

    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .local v4, "quote":C
    .restart local v6    # "ch":C
    :goto_2e3
    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    add-int/lit8 v3, v2, 0x9

    if-le v5, v3, :cond_3f9

    aget-char v3, v9, v2

    move/from16 v19, v4

    .end local v4    # "quote":C
    .local v19, "quote":C
    const/16 v4, 0x73

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v9, v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v9, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x3

    aget-char v3, v9, v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x4

    aget-char v3, v9, v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x5

    aget-char v3, v9, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x6

    aget-char v3, v9, v3

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x7

    aget-char v3, v9, v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x8

    aget-char v3, v9, v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_3fb

    add-int/lit8 v3, v2, 0x9

    aget-char v3, v9, v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_3fb

    .line 670
    add-int/lit8 v2, v2, 0xa

    .line 671
    aget-char v3, v9, v2

    .line 673
    .end local v6    # "ch":C
    .local v3, "ch":C
    :goto_33d
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_34a

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_34a

    .line 674
    aget-char v3, v9, v2

    goto :goto_33d

    .line 675
    :cond_34a
    const/16 v4, 0x3d

    if-eq v3, v4, :cond_35a

    .line 677
    const-string v14, "bad \'standalone\' declaration"

    .line 678
    const/16 v0, 0x24

    .line 679
    move/from16 v24, v3

    move v3, v2

    move v2, v7

    move/from16 v7, v24

    goto/16 :goto_21

    .line 681
    :cond_35a
    add-int/lit8 v2, v2, 0x1

    aget-char v3, v9, v2

    .line 683
    :goto_35e
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_36b

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_36b

    .line 684
    aget-char v3, v9, v2

    goto :goto_35e

    .line 685
    :cond_36b
    const/16 v4, 0x27

    if-eq v3, v4, :cond_37f

    const/16 v4, 0x22

    if-eq v3, v4, :cond_37f

    .line 687
    const-string v14, "bad \'standalone\' declaration"

    .line 688
    const/16 v0, 0x24

    .line 689
    move/from16 v24, v3

    move v3, v2

    move v2, v7

    move/from16 v7, v24

    goto/16 :goto_21

    .line 691
    :cond_37f
    move v4, v3

    .line 692
    .end local v19    # "quote":C
    .restart local v4    # "quote":C
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "dstart":I
    .local v20, "dstart":I
    move/from16 v2, v20

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 695
    .end local v17    # "i":I
    .local v2, "ch":C
    .local v3, "i":I
    :goto_389
    if-ne v3, v5, :cond_398

    .line 697
    const-string v14, "bad \'standalone\' declaration"

    .line 698
    const/16 v0, 0x24

    .line 699
    move/from16 v3, v20

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_21

    .line 701
    :cond_398
    aget-char v2, v9, v3

    .line 702
    if-ne v2, v4, :cond_3ee

    .line 703
    nop

    .line 705
    add-int/lit8 v6, v20, 0x3

    if-ne v3, v6, :cond_3ba

    aget-char v6, v9, v20

    move/from16 v17, v2

    .end local v2    # "ch":C
    .local v17, "ch":C
    const/16 v2, 0x79

    if-ne v6, v2, :cond_3bc

    add-int/lit8 v2, v20, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x65

    if-ne v2, v6, :cond_3bc

    add-int/lit8 v2, v20, 0x2

    aget-char v2, v9, v2

    const/16 v6, 0x73

    if-ne v2, v6, :cond_3bc

    goto :goto_3ce

    .end local v17    # "ch":C
    .restart local v2    # "ch":C
    :cond_3ba
    move/from16 v17, v2

    .line 711
    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    :cond_3bc
    add-int/lit8 v2, v20, 0x2

    if-ne v3, v2, :cond_3e3

    aget-char v2, v9, v20

    const/16 v6, 0x6e

    if-ne v2, v6, :cond_3e3

    add-int/lit8 v2, v20, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x6f

    if-ne v2, v6, :cond_3e3

    .line 722
    :goto_3ce
    add-int/lit8 v2, v3, 0x1

    .line 724
    .end local v20    # "dstart":I
    .local v2, "dstart":I
    :goto_3d0
    if-ge v2, v5, :cond_3dd

    aget-char v6, v9, v2

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3dd

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d0

    .line 727
    :cond_3dd
    move/from16 v6, v17

    move/from16 v17, v3

    move v3, v2

    goto :goto_3fe

    .line 718
    .end local v2    # "dstart":I
    .restart local v20    # "dstart":I
    :cond_3e3
    const-string v14, "bad \'standalone\' declaration"

    .line 719
    const/16 v0, 0x24

    .line 720
    move v2, v7

    move/from16 v7, v17

    move/from16 v3, v20

    goto/16 :goto_21

    .line 693
    .end local v17    # "ch":C
    .local v2, "ch":C
    :cond_3ee
    move/from16 v17, v2

    const/16 v6, 0x65

    const/16 v16, 0x6f

    const/16 v18, 0x6e

    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_389

    .line 658
    .end local v3    # "i":I
    .end local v20    # "dstart":I
    .local v2, "dstart":I
    .restart local v6    # "ch":C
    .local v17, "i":I
    :cond_3f9
    move/from16 v19, v4

    .line 727
    .end local v4    # "quote":C
    .restart local v19    # "quote":C
    :cond_3fb
    move v3, v2

    move/from16 v4, v19

    .end local v2    # "dstart":I
    .end local v19    # "quote":C
    .local v3, "dstart":I
    .restart local v4    # "quote":C
    :goto_3fe
    if-eq v5, v3, :cond_408

    .line 729
    const-string v14, "junk at end of xml declaration"

    .line 730
    move v2, v3

    .line 731
    .end local v7    # "pos":I
    .local v2, "pos":I
    const/16 v0, 0x24

    .line 732
    move v7, v6

    goto/16 :goto_21

    .line 734
    .end local v2    # "pos":I
    .end local v4    # "quote":C
    .end local v17    # "i":I
    .restart local v7    # "pos":I
    :cond_408
    move/from16 v19, v5

    move v2, v6

    move-object/from16 v22, v14

    move v14, v7

    goto :goto_458

    .line 598
    .local v3, "i":I
    .local v17, "dstart":I
    .local v20, "quote":C
    :cond_40f
    const/16 v0, 0x23

    .line 599
    move v2, v7

    move/from16 v3, v17

    move v7, v6

    goto/16 :goto_21

    .line 579
    .end local v6    # "ch":C
    .end local v20    # "quote":C
    .local v2, "ch":C
    .restart local v4    # "quote":C
    :cond_417
    move/from16 v19, v2

    move/from16 v20, v4

    const/16 v16, 0x6f

    const/16 v18, 0x6e

    const/16 v21, 0x65

    .end local v2    # "ch":C
    .end local v4    # "quote":C
    .local v19, "ch":C
    .restart local v20    # "quote":C
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x6e

    goto/16 :goto_1c7

    .line 553
    .end local v17    # "dstart":I
    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .restart local v2    # "ch":C
    .local v3, "dstart":I
    :cond_427
    :goto_427
    move v4, v3

    .line 554
    .end local v7    # "pos":I
    .local v4, "pos":I
    const-string v14, "xml declaration without version"

    .line 555
    const/16 v0, 0x24

    .line 556
    move v7, v2

    move v2, v4

    goto/16 :goto_21

    .line 737
    .end local v4    # "pos":I
    .restart local v7    # "pos":I
    :cond_430
    const-string v14, "<?xml must be at start of file"

    .line 738
    const/16 v0, 0x24

    .line 739
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_21

    .line 743
    :cond_43b
    sub-int v16, v5, v3

    move/from16 v17, v2

    .end local v2    # "ch":C
    .local v17, "ch":C
    move-object/from16 v2, p1

    move/from16 v18, v3

    .end local v3    # "dstart":I
    .local v18, "dstart":I
    move-object v3, v9

    const/4 v6, 0x1

    move v4, v15

    move/from16 v19, v5

    .end local v5    # "end":I
    .local v19, "end":I
    move v5, v13

    move-object/from16 v22, v14

    const/4 v14, 0x1

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    move/from16 v6, v18

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    move/from16 v2, v17

    move/from16 v3, v18

    .line 745
    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    :goto_458
    move v4, v10

    .line 746
    .end local v15    # "start":I
    .local v4, "start":I
    const/4 v3, -0x1

    .line 747
    const/4 v0, 0x1

    .line 748
    move v7, v2

    move v15, v4

    move v2, v0

    goto/16 :goto_8d1

    .line 532
    .end local v4    # "start":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v5    # "end":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    .restart local v15    # "start":I
    :cond_460
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v22, v14

    const/16 v21, 0x65

    move v14, v7

    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v5    # "end":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "ch":C
    .restart local v18    # "dstart":I
    .restart local v19    # "end":I
    .restart local v22    # "message":Ljava/lang/String;
    goto :goto_481

    .end local v18    # "dstart":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    .local v17, "end":I
    :cond_46c
    move/from16 v18, v3

    move-object/from16 v22, v14

    move/from16 v19, v17

    const/16 v21, 0x65

    move/from16 v17, v2

    move v14, v7

    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .local v17, "ch":C
    .restart local v18    # "dstart":I
    .restart local v19    # "end":I
    .restart local v22    # "message":Ljava/lang/String;
    goto :goto_481

    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    :cond_478
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v22, v14

    const/16 v21, 0x65

    move v14, v7

    .line 750
    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "ch":C
    .restart local v18    # "dstart":I
    .restart local v22    # "message":Ljava/lang/String;
    :goto_481
    if-ge v14, v10, :cond_492

    .line 751
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "pos":I
    .restart local v7    # "pos":I
    aget-char v2, v9, v14

    move/from16 v3, v18

    move-object/from16 v14, v22

    const/4 v4, 0x1

    const/16 v5, 0x3e

    const/16 v6, 0x65

    .end local v17    # "ch":C
    .restart local v2    # "ch":C
    goto/16 :goto_117

    .line 750
    .end local v2    # "ch":C
    .end local v7    # "pos":I
    .restart local v14    # "pos":I
    .restart local v17    # "ch":C
    :cond_492
    move v2, v0

    move/from16 v7, v17

    move/from16 v3, v18

    goto/16 :goto_8d1

    .line 206
    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .end local v22    # "message":Ljava/lang/String;
    .local v2, "pos":I
    .restart local v3    # "dstart":I
    .local v7, "ch":C
    .local v14, "message":Ljava/lang/String;
    :pswitch_499
    move-object/from16 v22, v14

    .line 760
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :goto_49b
    const/16 v4, 0x3e

    if-ne v7, v4, :cond_525

    .line 762
    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v15

    .line 763
    .end local v13    # "length":I
    .local v4, "length":I
    const/4 v5, 0x4

    if-lt v4, v5, :cond_4c7

    aget-char v5, v9, v15

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4c7

    add-int/lit8 v5, v15, 0x1

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_4c7

    .line 767
    add-int/lit8 v5, v2, -0x2

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_51b

    add-int/lit8 v5, v2, -0x3

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_51b

    .line 770
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 771
    add-int/lit8 v5, v15, 0x2

    add-int/lit8 v6, v4, -0x4

    invoke-virtual {v8, v9, v5, v6}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 772
    goto :goto_51d

    .line 775
    :cond_4c7
    const/4 v5, 0x6

    if-lt v4, v5, :cond_51d

    aget-char v5, v9, v15

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x1

    aget-char v5, v9, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x2

    aget-char v5, v9, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x3

    aget-char v5, v9, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x4

    aget-char v5, v9, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x5

    aget-char v5, v9, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_51d

    add-int/lit8 v5, v15, 0x6

    aget-char v5, v9, v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_51d

    .line 784
    add-int/lit8 v5, v2, -0x2

    aget-char v5, v9, v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_51b

    add-int/lit8 v5, v2, -0x3

    aget-char v5, v9, v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_51b

    .line 787
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 788
    add-int/lit8 v5, v15, 0x7

    add-int/lit8 v6, v2, -0xa

    sub-int/2addr v6, v15

    invoke-virtual {v8, v9, v5, v6}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 789
    goto :goto_51d

    .line 811
    :cond_51b
    move v13, v4

    goto :goto_563

    .line 816
    :cond_51d
    :goto_51d
    move v5, v10

    .line 817
    .end local v15    # "start":I
    .local v5, "start":I
    const/4 v0, 0x1

    .line 818
    move v14, v2

    move v13, v4

    move v15, v5

    move v2, v0

    goto/16 :goto_8d1

    .line 798
    .end local v4    # "length":I
    .end local v5    # "start":I
    .restart local v13    # "length":I
    .restart local v15    # "start":I
    :cond_525
    add-int/lit8 v4, v15, 0x7

    if-ne v2, v4, :cond_563

    aget-char v4, v9, v15

    const/16 v5, 0x44

    if-ne v4, v5, :cond_563

    add-int/lit8 v4, v15, 0x1

    aget-char v4, v9, v4

    const/16 v5, 0x4f

    if-ne v4, v5, :cond_563

    add-int/lit8 v4, v15, 0x2

    aget-char v4, v9, v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_563

    add-int/lit8 v4, v15, 0x3

    aget-char v4, v9, v4

    const/16 v5, 0x54

    if-ne v4, v5, :cond_563

    add-int/lit8 v4, v15, 0x4

    aget-char v4, v9, v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_563

    add-int/lit8 v4, v15, 0x5

    aget-char v4, v9, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_563

    const/16 v4, 0x45

    if-ne v7, v4, :cond_563

    .line 807
    move v4, v10

    .line 808
    .end local v15    # "start":I
    .local v4, "start":I
    const/16 v0, 0xf

    .line 809
    move v14, v2

    move v15, v4

    move v2, v0

    goto/16 :goto_8d1

    .line 811
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_563
    :goto_563
    if-ge v2, v10, :cond_56c

    .line 812
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "pos":I
    .local v4, "pos":I
    aget-char v7, v9, v2

    move v2, v4

    goto/16 :goto_49b

    .line 811
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_56c
    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 924
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_570
    move-object/from16 v22, v14

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    add-int/lit8 v15, v2, -0x1

    .line 925
    const/4 v0, 0x5

    .line 926
    goto/16 :goto_21

    .line 826
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_577
    move-object/from16 v22, v14

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    if-gez v3, :cond_585

    .line 829
    add-int/lit8 v3, v2, -0x1

    .line 830
    sub-int/2addr v3, v15

    .line 831
    const/4 v4, 0x1

    shl-int/2addr v3, v4

    .line 832
    const/4 v11, 0x0

    move v14, v7

    move v7, v11

    move v11, v2

    goto :goto_588

    .line 826
    :cond_585
    move v14, v7

    move v7, v11

    move v11, v2

    .line 836
    .end local v2    # "pos":I
    .local v7, "terminator":C
    .local v11, "pos":I
    .local v14, "ch":C
    :goto_588
    const/16 v2, 0x27

    if-eq v14, v2, :cond_5e5

    const/16 v2, 0x22

    if-ne v14, v2, :cond_595

    move/from16 v23, v12

    move v12, v7

    goto/16 :goto_5e8

    .line 843
    :cond_595
    if-nez v7, :cond_5e1

    .line 846
    const/16 v2, 0x5b

    if-ne v14, v2, :cond_5a2

    .line 847
    or-int/lit8 v2, v3, 0x1

    move v3, v2

    move/from16 v23, v12

    .end local v3    # "dstart":I
    .local v2, "dstart":I
    goto/16 :goto_5f3

    .line 848
    .end local v2    # "dstart":I
    .restart local v3    # "dstart":I
    :cond_5a2
    const/16 v2, 0x5d

    if-ne v14, v2, :cond_5ad

    .line 849
    and-int/lit8 v2, v3, -0x2

    move v3, v2

    move/from16 v23, v12

    .end local v3    # "dstart":I
    .restart local v2    # "dstart":I
    goto/16 :goto_5f3

    .line 850
    .end local v2    # "dstart":I
    .restart local v3    # "dstart":I
    :cond_5ad
    const/16 v2, 0x3e

    if-ne v14, v2, :cond_5dd

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_5dd

    .line 852
    iput v11, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 853
    shr-int/lit8 v2, v3, 0x1

    .line 854
    .end local v3    # "dstart":I
    .restart local v2    # "dstart":I
    add-int v16, v2, v15

    .line 855
    .end local v2    # "dstart":I
    .local v16, "dstart":I
    add-int/lit8 v2, v11, -0x1

    sub-int v17, v2, v16

    move-object/from16 v2, p1

    move-object v3, v9

    move v4, v15

    move v5, v13

    move/from16 v6, v16

    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    .line 857
    const/16 v2, 0x3c

    .line 858
    .end local v12    # "terminator":C
    .local v2, "terminator":C
    move v3, v10

    .line 859
    .end local v15    # "start":I
    .local v3, "start":I
    const/4 v4, -0x1

    .line 860
    .end local v16    # "dstart":I
    .local v4, "dstart":I
    const/4 v0, 0x1

    .line 861
    move v15, v3

    move v3, v4

    move v7, v14

    move/from16 v12, v23

    move v14, v11

    move v11, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 850
    .end local v2    # "terminator":C
    .end local v4    # "dstart":I
    .end local v23    # "continue_state":I
    .local v3, "dstart":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    .restart local v15    # "start":I
    :cond_5dd
    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    goto :goto_5f2

    .line 843
    .end local v23    # "continue_state":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    :cond_5e1
    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    goto :goto_5f2

    .line 836
    .end local v23    # "continue_state":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    :cond_5e5
    move/from16 v23, v12

    move v12, v7

    .line 838
    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    :goto_5e8
    if-nez v12, :cond_5ed

    .line 839
    move v2, v14

    move v7, v2

    .end local v12    # "terminator":C
    .restart local v2    # "terminator":C
    goto :goto_5f3

    .line 840
    .end local v2    # "terminator":C
    .restart local v12    # "terminator":C
    :cond_5ed
    if-ne v12, v14, :cond_5f2

    .line 841
    const/4 v2, 0x0

    move v7, v2

    .end local v12    # "terminator":C
    .restart local v2    # "terminator":C
    goto :goto_5f3

    .line 864
    .end local v2    # "terminator":C
    .restart local v12    # "terminator":C
    :cond_5f2
    :goto_5f2
    move v7, v12

    .end local v12    # "terminator":C
    .restart local v7    # "terminator":C
    :goto_5f3
    if-ge v11, v10, :cond_5fd

    .line 865
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "pos":I
    .local v2, "pos":I
    aget-char v14, v9, v11

    move v11, v2

    move/from16 v12, v23

    goto :goto_588

    .line 864
    .end local v2    # "pos":I
    .restart local v11    # "pos":I
    :cond_5fd
    move v2, v0

    move/from16 v12, v23

    move/from16 v24, v11

    move v11, v7

    move v7, v14

    move/from16 v14, v24

    goto/16 :goto_8d1

    .line 497
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v2    # "pos":I
    .local v7, "ch":C
    .local v11, "terminator":C
    .local v12, "continue_state":I
    .local v14, "message":Ljava/lang/String;
    :pswitch_608
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_618

    .line 499
    const/16 v0, 0x13

    .line 500
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 502
    :cond_618
    const/16 v4, 0x3f

    if-ne v7, v4, :cond_626

    .line 504
    move v4, v2

    .line 505
    .end local v15    # "start":I
    .local v4, "start":I
    const/16 v0, 0x18

    .line 506
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 508
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_626
    const/16 v4, 0x21

    if-ne v7, v4, :cond_634

    .line 510
    const/16 v0, 0x14

    .line 511
    move v4, v2

    .line 512
    .end local v15    # "start":I
    .restart local v4    # "start":I
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 515
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_634
    add-int/lit8 v15, v2, -0x1

    .line 516
    const/4 v0, 0x3

    .line 517
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_21

    .line 821
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_63d
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v0, 0x11

    .line 822
    add-int/lit8 v15, v2, -0x1

    .line 823
    goto/16 :goto_21

    .line 367
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_647
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x20

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x9

    if-ne v7, v4, :cond_655

    .line 368
    goto/16 :goto_8cd

    .line 369
    :cond_655
    const/16 v4, 0xa

    if-eq v7, v4, :cond_66e

    const/16 v4, 0xd

    if-eq v7, v4, :cond_66e

    const/16 v4, 0x85

    if-eq v7, v4, :cond_66e

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_666

    goto :goto_66e

    .line 376
    :cond_666
    add-int/lit8 v0, v0, -0x2

    .line 377
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_21

    .line 372
    :cond_66e
    :goto_66e
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 373
    goto/16 :goto_8cd

    .line 908
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_674
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x27

    if-eq v7, v4, :cond_6a3

    const/16 v4, 0x22

    if-ne v7, v4, :cond_681

    goto :goto_6a3

    .line 915
    :cond_681
    const/16 v4, 0x20

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x9

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0xd

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0xa

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x85

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_69b

    .line 917
    goto/16 :goto_8cd

    .line 918
    :cond_69b
    const-string v14, "missing or unquoted attribute value"

    .line 919
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    const/16 v0, 0x24

    .line 920
    move/from16 v12, v23

    goto/16 :goto_21

    .line 910
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_6a3
    :goto_6a3
    move v4, v7

    .line 911
    .end local v11    # "terminator":C
    .local v4, "terminator":C
    const/16 v5, 0xc

    .line 912
    .end local v23    # "continue_state":I
    .local v5, "continue_state":I
    const/4 v0, 0x1

    .line 913
    move v14, v2

    move v11, v4

    move v12, v5

    move v2, v0

    goto/16 :goto_8d1

    .line 871
    .end local v4    # "terminator":C
    .end local v5    # "continue_state":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v11    # "terminator":C
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_6ad
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v11, 0x3c

    .line 872
    const/16 v12, 0xe

    .line 873
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_6c9

    .line 875
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 877
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5, v5}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 878
    const/16 v0, 0x1b

    .line 879
    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 881
    :cond_6c9
    const/16 v4, 0x3e

    if-ne v7, v4, :cond_6d7

    .line 883
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 885
    const/4 v0, 0x1

    .line 886
    move v14, v2

    move v2, v0

    goto/16 :goto_8d1

    .line 888
    :cond_6d7
    add-int/lit8 v15, v2, -0x1

    .line 889
    const/16 v0, 0x9

    .line 890
    move-object/from16 v14, v22

    goto/16 :goto_21

    .line 892
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_6df
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x20

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x9

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0xd

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0xa

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x85

    if-eq v7, v4, :cond_8cd

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_6fd

    .line 894
    goto/16 :goto_8cd

    .line 895
    :cond_6fd
    sub-int v4, v2, v13

    iput v4, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    .line 897
    move v15, v10

    .line 898
    const/16 v4, 0x3d

    if-ne v7, v4, :cond_711

    .line 900
    const/16 v0, 0xb

    .line 901
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 903
    :cond_711
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 904
    const-string v14, "missing or misplaced \'=\' after attribute name"

    .line 905
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    const/16 v0, 0x24

    .line 906
    move/from16 v12, v23

    goto/16 :goto_21

    .line 488
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    :pswitch_71c
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 489
    const/16 v4, 0x3b

    if-eq v7, v4, :cond_72d

    .line 490
    const/16 v4, 0x77

    const-string v5, "missing \';\'"

    invoke-virtual {v8, v4, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_72d
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    .line 492
    move v4, v10

    .line 493
    .end local v15    # "start":I
    .local v4, "start":I
    const/4 v0, 0x1

    .line 494
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 929
    .end local v4    # "start":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    .restart local v15    # "start":I
    :pswitch_739
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 931
    move v15, v10

    .line 933
    const/16 v0, 0x1d

    .line 934
    goto/16 :goto_21

    .line 386
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_747
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    add-int/lit8 v4, v15, 0x1

    .line 399
    .end local v13    # "length":I
    .local v4, "length":I
    :goto_74d
    const/16 v5, 0x61

    if-lt v7, v5, :cond_75b

    const/16 v5, 0x7a

    if-le v7, v5, :cond_756

    goto :goto_75b

    :cond_756
    const/16 v5, 0x2d

    :goto_758
    const/4 v6, 0x4

    goto/16 :goto_7fc

    :cond_75b
    :goto_75b
    const/16 v5, 0x41

    if-lt v7, v5, :cond_763

    const/16 v5, 0x5a

    if-le v7, v5, :cond_756

    :cond_763
    const/16 v5, 0x5f

    if-eq v7, v5, :cond_7f9

    const/16 v5, 0x3a

    if-eq v7, v5, :cond_7f9

    const/16 v5, 0xc0

    if-lt v7, v5, :cond_7aa

    const/16 v5, 0x2ff

    if-le v7, v5, :cond_756

    const/16 v5, 0x370

    if-lt v7, v5, :cond_7aa

    const/16 v5, 0x1fff

    if-gt v7, v5, :cond_77f

    const/16 v5, 0x37e

    if-ne v7, v5, :cond_756

    :cond_77f
    const/16 v5, 0x200c

    if-lt v7, v5, :cond_7aa

    const/16 v5, 0x200d

    if-le v7, v5, :cond_756

    const/16 v5, 0x2070

    if-lt v7, v5, :cond_78f

    const/16 v5, 0x218f

    if-le v7, v5, :cond_756

    :cond_78f
    const/16 v5, 0x2c00

    if-lt v7, v5, :cond_797

    const/16 v5, 0x2fef

    if-le v7, v5, :cond_756

    :cond_797
    const/16 v5, 0x3001

    if-lt v7, v5, :cond_7a0

    const v5, 0xd7ff

    if-le v7, v5, :cond_756

    :cond_7a0
    const v5, 0xf900

    if-lt v7, v5, :cond_7aa

    const v5, 0xfffd

    if-le v7, v5, :cond_756

    :cond_7aa
    if-le v2, v4, :cond_7b4

    const/16 v5, 0x30

    if-lt v7, v5, :cond_7b4

    const/16 v5, 0x39

    if-le v7, v5, :cond_756

    :cond_7b4
    const/16 v5, 0x2e

    if-eq v7, v5, :cond_7f9

    const/16 v5, 0x2d

    if-eq v7, v5, :cond_7fb

    const/16 v6, 0xb7

    if-eq v7, v6, :cond_7fb

    const/16 v6, 0x300

    if-le v7, v6, :cond_7d1

    const/16 v6, 0x36f

    if-le v7, v6, :cond_7d0

    const/16 v6, 0x203f

    if-lt v7, v6, :cond_7d1

    const/16 v6, 0x2040

    if-gt v7, v6, :cond_7d1

    :cond_7d0
    goto :goto_758

    .line 421
    :cond_7d1
    add-int/lit8 v0, v0, -0x1

    .line 422
    sub-int v13, v2, v4

    .line 423
    .end local v4    # "length":I
    .restart local v13    # "length":I
    if-nez v13, :cond_7f3

    .line 425
    const/16 v4, 0x8

    if-ne v0, v4, :cond_7df

    .line 426
    const-string v4, "missing or invalid attribute name"

    move-object v14, v4

    .end local v22    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    goto :goto_7ed

    .line 427
    .end local v4    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_7df
    const/4 v4, 0x2

    if-eq v0, v4, :cond_7ea

    const/4 v6, 0x4

    if-ne v0, v6, :cond_7e6

    goto :goto_7ea

    .line 431
    :cond_7e6
    const-string v4, "missing or invalid name"

    move-object v14, v4

    .end local v22    # "message":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    goto :goto_7ed

    .line 429
    .end local v4    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_7ea
    :goto_7ea
    const-string v4, "missing or invalid element name"

    move-object v14, v4

    .line 432
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :goto_7ed
    const/16 v0, 0x24

    move/from16 v12, v23

    goto/16 :goto_21

    .line 423
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_7f3
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_21

    .line 399
    .end local v13    # "length":I
    .local v4, "length":I
    :cond_7f9
    const/16 v5, 0x2d

    :cond_7fb
    const/4 v6, 0x4

    .line 436
    :goto_7fc
    if-ge v2, v10, :cond_805

    .line 437
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "pos":I
    .local v12, "pos":I
    aget-char v7, v9, v2

    move v2, v12

    goto/16 :goto_74d

    .line 436
    .end local v12    # "pos":I
    .restart local v2    # "pos":I
    :cond_805
    move v14, v2

    move v13, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 519
    .end local v4    # "length":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .local v12, "continue_state":I
    .restart local v13    # "length":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_80c
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    sub-int v4, v2, v13

    iput v4, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    .line 521
    const/16 v0, 0xc

    .line 522
    move v15, v10

    .line 523
    goto/16 :goto_21

    .line 261
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_81c
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    add-int/lit8 v4, v2, -0x1

    .line 263
    .end local v15    # "start":I
    .local v4, "start":I
    move v5, v2

    .line 266
    .end local v13    # "length":I
    .local v5, "length":I
    :goto_823
    if-ne v7, v11, :cond_829

    .line 268
    move/from16 v0, v23

    .line 269
    goto/16 :goto_8ab

    .line 271
    :cond_829
    const/16 v6, 0x26

    if-ne v7, v6, :cond_831

    .line 273
    const/16 v0, 0x19

    .line 274
    goto/16 :goto_8ab

    .line 276
    :cond_831
    const/16 v6, 0xd

    if-ne v7, v6, :cond_879

    .line 278
    sub-int v5, v2, v5

    .line 279
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 280
    if-lez v5, :cond_83e

    .line 281
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 282
    :cond_83e
    if-ge v2, v10, :cond_86c

    .line 284
    aget-char v7, v9, v2

    .line 285
    const/16 v12, 0xa

    if-ne v7, v12, :cond_84b

    .line 287
    move v4, v2

    .line 288
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    goto :goto_858

    .line 292
    :cond_84b
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 293
    const/16 v12, 0x85

    if-ne v7, v12, :cond_863

    .line 295
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "pos":I
    .local v12, "pos":I
    move v4, v2

    .line 296
    add-int/lit8 v5, v12, 0x1

    move v2, v12

    .line 306
    .end local v12    # "pos":I
    .restart local v2    # "pos":I
    :goto_858
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    const/16 v12, 0x85

    const/16 v13, 0xa

    const/16 v14, 0x2028

    goto :goto_8a6

    .line 300
    :cond_863
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 301
    move v4, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 303
    goto :goto_823

    .line 310
    :cond_86c
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 311
    const/16 v0, 0x1c

    .line 312
    move v14, v2

    move v15, v4

    move v13, v5

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_8d1

    .line 315
    :cond_879
    const/16 v12, 0x85

    if-eq v7, v12, :cond_88d

    const/16 v14, 0x2028

    if-ne v7, v14, :cond_884

    const/16 v13, 0xa

    goto :goto_891

    .line 326
    :cond_884
    const/16 v13, 0xa

    if-ne v7, v13, :cond_8a6

    .line 328
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_8a6

    .line 315
    :cond_88d
    const/16 v13, 0xa

    const/16 v14, 0x2028

    .line 317
    :goto_891
    sub-int v5, v2, v5

    .line 318
    add-int/lit8 v15, v2, -0x1

    iput v15, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 319
    if-lez v5, :cond_89c

    .line 320
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_89c
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 323
    add-int/lit8 v5, v2, 0x1

    .line 324
    move v4, v2

    .line 330
    :cond_8a6
    :goto_8a6
    if-ne v2, v10, :cond_8bc

    .line 332
    add-int/lit8 v5, v5, -0x1

    .line 333
    nop

    .line 337
    :goto_8ab
    sub-int v5, v2, v5

    .line 338
    if-lez v5, :cond_8b4

    .line 340
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_8b4
    array-length v4, v9

    .line 344
    move v14, v2

    move v15, v4

    move v13, v5

    move/from16 v12, v23

    move v2, v0

    goto :goto_8d1

    .line 335
    :cond_8bc
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "pos":I
    .local v15, "pos":I
    aget-char v7, v9, v2

    move v2, v15

    goto/16 :goto_823

    .line 209
    .end local v4    # "start":I
    .end local v5    # "length":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v2    # "pos":I
    .local v12, "continue_state":I
    .restart local v13    # "length":I
    .restart local v14    # "message":Ljava/lang/String;
    .local v15, "start":I
    :pswitch_8c3
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/4 v0, 0x1

    .line 210
    const/16 v0, 0x1f

    .line 211
    move v14, v2

    move v2, v0

    goto :goto_8d1

    .line 948
    :cond_8cd
    :goto_8cd
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    .end local v0    # "state":I
    .end local v23    # "continue_state":I
    .local v2, "state":I
    .restart local v12    # "continue_state":I
    .local v14, "pos":I
    :goto_8d1
    if-ge v14, v10, :cond_8e0

    .line 949
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "pos":I
    .local v0, "pos":I
    aget-char v7, v9, v14

    move-object/from16 v14, v22

    move/from16 v24, v2

    move v2, v0

    move/from16 v0, v24

    goto/16 :goto_21

    .line 952
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :cond_8e0
    sub-int v4, v14, v15

    .line 955
    .local v4, "saved":I
    if-lez v4, :cond_8eb

    .line 957
    :try_start_8e4
    iput v15, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 958
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_8eb
    iput v14, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 962
    .local v0, "x":I
    if-gez v0, :cond_904

    .line 964
    const/4 v5, 0x1

    if-eq v2, v5, :cond_903

    const/16 v5, 0x1c

    if-ne v2, v5, :cond_8fb

    goto :goto_903

    .line 966
    :cond_8fb
    const/16 v2, 0x25

    .line 967
    move v0, v2

    move v2, v14

    move-object/from16 v14, v22

    goto/16 :goto_21

    .line 965
    :cond_903
    :goto_903
    return-void

    .line 969
    :cond_904
    if-lez v4, :cond_90d

    .line 971
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    invoke-virtual {v1, v4}, Lgnu/text/LineBufferedReader;->skip(I)I

    goto :goto_910

    .line 975
    :cond_90d
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_910
    .catch Ljava/io/IOException; {:try_start_8e4 .. :try_end_910} :catch_928

    .line 980
    .end local v0    # "x":I
    :goto_910
    nop

    .line 981
    iget v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 982
    .end local v14    # "pos":I
    .local v0, "pos":I
    iget-object v9, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 984
    iget v10, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 985
    if-lez v4, :cond_91c

    sub-int v5, v0, v4

    goto :goto_91d

    :cond_91c
    move v5, v10

    :goto_91d
    move v15, v5

    .line 986
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    aget-char v7, v9, v0

    .line 987
    .end local v4    # "saved":I
    move v0, v2

    move v2, v5

    move-object/from16 v14, v22

    goto/16 :goto_21

    .line 977
    .end local v5    # "pos":I
    .restart local v4    # "saved":I
    .restart local v14    # "pos":I
    :catch_928
    move-exception v0

    .line 979
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_934

    :goto_933
    throw v5

    :goto_934
    goto :goto_933

    nop

    :pswitch_data_936
    .packed-switch 0x0
        :pswitch_8c3
        :pswitch_81c
        :pswitch_80c
        :pswitch_747
        :pswitch_739
        :pswitch_747
        :pswitch_71c
        :pswitch_747
        :pswitch_6df
        :pswitch_747
        :pswitch_6ad
        :pswitch_674
        :pswitch_647
        :pswitch_63d
        :pswitch_608
        :pswitch_647
        :pswitch_577
        :pswitch_747
        :pswitch_29
        :pswitch_570
        :pswitch_499
        :pswitch_108
        :pswitch_29
        :pswitch_647
        :pswitch_747
        :pswitch_f2
        :pswitch_a2
        :pswitch_94
        :pswitch_73
        :pswitch_647
        :pswitch_108
        :pswitch_65
        :pswitch_647
        :pswitch_747
        :pswitch_54
        :pswitch_39
        :pswitch_3c
        :pswitch_2f
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "strm"    # Ljava/io/InputStream;
    .param p1, "uri"    # Ljava/lang/Object;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 134
    .local v0, "in":Lgnu/text/LineInputStreamReader;
    if-eqz p1, :cond_9

    .line 135
    invoke-virtual {v0, p1}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_9
    invoke-static {v0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->close()V

    .line 138
    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 4
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method

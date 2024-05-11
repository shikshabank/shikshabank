.class public Lgnu/kawa/lispexpr/ReaderString;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderString.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static readString(Lgnu/text/Lexer;II)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 25
    iget p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 26
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 27
    nop

    .line 28
    nop

    .line 30
    instance-of v1, v0, Lgnu/mapping/InPort;

    const/16 v2, 0xa

    if-eqz v1, :cond_18

    .line 32
    move-object v3, v0

    check-cast v3, Lgnu/mapping/InPort;

    iget-char v4, v3, Lgnu/mapping/InPort;->readState:C

    .line 33
    int-to-char v5, p1

    iput-char v5, v3, Lgnu/mapping/InPort;->readState:C

    move v3, p1

    goto :goto_1a

    .line 30
    :cond_18
    const/4 v4, 0x0

    move v3, p1

    .line 39
    :goto_1a
    nop

    .line 42
    const/16 v5, 0xd

    if-ne v3, v5, :cond_26

    .line 44
    :try_start_1f
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 45
    if-ne v3, v2, :cond_3d

    .line 46
    goto :goto_1a

    .line 48
    :cond_26
    iget v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    iget v7, v0, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v6, v7, :cond_39

    if-eq v3, v2, :cond_39

    .line 49
    iget-object v3, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v6, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v3, v3, v6

    goto :goto_3d

    .line 51
    :cond_39
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 52
    :cond_3d
    :goto_3d
    if-ne v3, p1, :cond_57

    .line 54
    nop

    .line 89
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v3, p2

    invoke-direct {p1, v2, p2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_8d

    .line 98
    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    if-eqz v1, :cond_56

    .line 100
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v4, v0, Lgnu/mapping/InPort;->readState:C

    :cond_56
    return-object p1

    .line 56
    :cond_57
    sparse-switch v3, :sswitch_data_9a

    goto :goto_82

    .line 71
    :sswitch_5b
    :try_start_5b
    instance-of v3, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v3, :cond_67

    .line 72
    move-object v3, p0

    check-cast v3, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v3

    goto :goto_6b

    .line 74
    :cond_67
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 75
    :goto_6b
    const/4 v5, -0x2

    if-ne v3, v5, :cond_82

    .line 77
    nop

    .line 78
    const/16 v3, 0xa

    goto :goto_1a

    .line 60
    :sswitch_72
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getConvertCR()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 61
    const/16 v5, 0xa

    goto :goto_7e

    .line 64
    :cond_7b
    nop

    .line 66
    const/16 v3, 0x20

    .line 68
    :goto_7e
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 69
    goto :goto_1a

    .line 82
    :cond_82
    :goto_82
    if-gez v3, :cond_89

    .line 83
    const-string v5, "unexpected EOF in string literal"

    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_89
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_8c
    .catchall {:try_start_5b .. :try_end_8c} :catchall_8d

    .line 85
    goto :goto_1a

    .line 98
    :catchall_8d
    move-exception p1

    iput p2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 99
    if-eqz v1, :cond_96

    .line 100
    check-cast v0, Lgnu/mapping/InPort;

    iput-char v4, v0, Lgnu/mapping/InPort;->readState:C

    :cond_96
    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97

    nop

    :sswitch_data_9a
    .sparse-switch
        0xd -> :sswitch_72
        0x5c -> :sswitch_5b
    .end sparse-switch
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 5
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 13
    invoke-static {p1, p2, p3}, Lgnu/kawa/lispexpr/ReaderString;->readString(Lgnu/text/Lexer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

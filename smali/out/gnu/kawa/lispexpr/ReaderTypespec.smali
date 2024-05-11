.class public Lgnu/kawa/lispexpr/ReaderTypespec;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderTypespec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .registers 2

    .line 17
    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 14
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 23
    iget v0, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 24
    .local v0, "startPos":I
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    .line 25
    .local v1, "port":Lgnu/text/LineBufferedReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    .line 26
    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    const/4 v3, 0x0

    .line 27
    .local v3, "saveReadState":C
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 28
    move v4, p2

    .line 30
    .local v4, "c":I
    instance-of v5, v1, Lgnu/mapping/InPort;

    if-eqz v5, :cond_1e

    .line 32
    move-object v5, v1

    check-cast v5, Lgnu/mapping/InPort;

    iget-char v3, v5, Lgnu/mapping/InPort;->readState:C

    .line 33
    move-object v5, v1

    check-cast v5, Lgnu/mapping/InPort;

    int-to-char v6, p2

    iput-char v6, v5, Lgnu/mapping/InPort;->readState:C

    .line 37
    :cond_1e
    const/4 v5, 0x0

    .line 42
    .local v5, "got_open_square":Z
    :goto_1f
    move v6, v4

    .line 44
    .local v6, "prev":I
    :try_start_20
    iget v7, v1, Lgnu/text/LineBufferedReader;->pos:I

    iget v8, v1, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v7, v8, :cond_36

    const/16 v7, 0xa

    if-eq v6, v7, :cond_36

    .line 45
    iget-object v7, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v8, v1, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v7, v7, v8

    move v4, v7

    goto :goto_3b

    .line 47
    :cond_36
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    move v4, v7

    .line 48
    :goto_3b
    const/16 v7, 0x5c

    if-ne v4, v7, :cond_52

    .line 50
    instance-of v7, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_4c

    .line 51
    move-object v7, p1

    check-cast v7, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v7

    move v4, v7

    goto :goto_1f

    .line 53
    :cond_4c
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v7

    move v4, v7

    goto :goto_1f

    .line 57
    :cond_52
    if-nez v5, :cond_5b

    const/16 v7, 0x5b

    if-ne v4, v7, :cond_5b

    const/4 v7, 0x1

    :goto_59
    move v5, v7

    goto :goto_6e

    :cond_5b
    if-eqz v5, :cond_63

    const/16 v7, 0x5d

    if-ne v4, v7, :cond_63

    const/4 v7, 0x0

    goto :goto_59

    :cond_63
    invoke-virtual {v2, v4}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_72

    .line 63
    :goto_6e
    invoke-virtual {p1, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 64
    goto :goto_1f

    .line 68
    :cond_72
    invoke-virtual {p1, v4}, Lgnu/text/Lexer;->unread(I)V

    .line 69
    nop

    .line 73
    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v9, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v9, v0

    invoke-direct {v7, v8, v0, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7
    :try_end_84
    .catchall {:try_start_20 .. :try_end_84} :catchall_90

    .line 78
    iput v0, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    instance-of v8, v1, Lgnu/mapping/InPort;

    if-eqz v8, :cond_8f

    .line 80
    move-object v8, v1

    check-cast v8, Lgnu/mapping/InPort;

    iput-char v3, v8, Lgnu/mapping/InPort;->readState:C

    :cond_8f
    return-object v7

    .line 78
    .end local v5    # "got_open_square":Z
    :catchall_90
    move-exception v5

    iput v0, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 79
    instance-of v7, v1, Lgnu/mapping/InPort;

    if-eqz v7, :cond_9c

    .line 80
    move-object v7, v1

    check-cast v7, Lgnu/mapping/InPort;

    iput-char v3, v7, Lgnu/mapping/InPort;->readState:C

    :cond_9c
    goto :goto_9e

    :goto_9d
    throw v5

    :goto_9e
    goto :goto_9d
.end method

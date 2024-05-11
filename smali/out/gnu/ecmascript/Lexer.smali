.class public Lgnu/ecmascript/Lexer;
.super Lgnu/text/Lexer;
.source "Lexer.java"


# static fields
.field public static final colonToken:Lgnu/text/Char;

.field public static final commaToken:Lgnu/text/Char;

.field public static final condToken:Lgnu/text/Char;

.field public static final dotToken:Lgnu/text/Char;

.field public static final elseToken:Lgnu/ecmascript/Reserved;

.field public static final eofToken:Ljava/lang/Object;

.field public static final eolToken:Ljava/lang/Object;

.field public static final equalToken:Lgnu/text/Char;

.field public static final lbraceToken:Lgnu/text/Char;

.field public static final lbracketToken:Lgnu/text/Char;

.field public static final lparenToken:Lgnu/text/Char;

.field public static final newToken:Lgnu/ecmascript/Reserved;

.field public static final notToken:Lgnu/text/Char;

.field public static final rbraceToken:Lgnu/text/Char;

.field public static final rbracketToken:Lgnu/text/Char;

.field static reserved:Ljava/util/Hashtable;

.field public static final rparenToken:Lgnu/text/Char;

.field public static final semicolonToken:Lgnu/text/Char;

.field public static final tildeToken:Lgnu/text/Char;


# instance fields
.field private prevWasCR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    const/16 v0, 0x28

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    .line 21
    const/16 v0, 0x29

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    .line 22
    const/16 v0, 0x7b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    .line 23
    const/16 v0, 0x7d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    .line 24
    const/16 v0, 0x5b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    .line 25
    const/16 v0, 0x5d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    .line 26
    const/16 v0, 0x2e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    .line 27
    const/16 v0, 0x3f

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    .line 28
    const/16 v0, 0x2c

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    .line 29
    const/16 v0, 0x3a

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    .line 30
    const/16 v0, 0x3d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    .line 31
    const/16 v0, 0x7e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    .line 32
    const/16 v0, 0x21

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    .line 33
    const/16 v0, 0x3b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 36
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "else"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    .line 38
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "new"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .registers 3
    .param p1, "port"    # Lgnu/mapping/InPort;

    .line 17
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 18
    return-void
.end method

.method public static checkReserved(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 69
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lgnu/ecmascript/Lexer;->initReserved()V

    .line 71
    :cond_7
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .registers 2
    .param p0, "inp"    # Lgnu/mapping/InPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 459
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized initReserved()V
    .registers 6

    const-class v0, Lgnu/ecmascript/Lexer;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v1, :cond_e9

    .line 46
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    .line 47
    const-string v2, "null"

    new-instance v3, Lgnu/expr/QuoteExp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "true"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "false"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "var"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "var"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "if"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "if"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "while"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "while"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "for"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "for"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "continue"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "continue"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "break"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "break"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "return"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "return"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "with"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "with"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "function"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "function"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "this"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "this"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "else"

    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "new"

    sget-object v3, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e9
    .catchall {:try_start_3 .. :try_end_e9} :catchall_eb

    .line 66
    :cond_e9
    monitor-exit v0

    return-void

    .line 43
    :catchall_eb
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 464
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v0

    .line 465
    .local v0, "inp":Lgnu/mapping/InPort;
    new-instance v1, Lgnu/ecmascript/Lexer;

    invoke-direct {v1, v0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    .line 470
    .local v1, "reader":Lgnu/ecmascript/Lexer;
    :goto_9
    :try_start_9
    invoke-virtual {v1}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v2

    .line 471
    .local v2, "token":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    .line 472
    .local v3, "out":Lgnu/mapping/OutPort;
    const-string v4, "token:"

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 475
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_40

    if-ne v2, v4, :cond_3f

    .line 476
    nop

    .line 484
    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "out":Lgnu/mapping/OutPort;
    return-void

    .line 482
    :cond_3f
    goto :goto_9

    .line 478
    :catch_40
    move-exception v2

    .line 480
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    return-void
.end method


# virtual methods
.method public getIdentifier(I)Ljava/lang/String;
    .registers 8
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 263
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    .line 264
    .local v1, "start":I
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v2, v2, Lgnu/text/LineBufferedReader;->limit:I

    .line 265
    .local v2, "limit":I
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 266
    .local v3, "buffer":[C
    :goto_e
    if-ge v0, v2, :cond_1b

    aget-char v4, v3, v0

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 268
    :cond_1b
    iget-object v4, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v0, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 269
    if-ge v0, v2, :cond_29

    .line 270
    new-instance v4, Ljava/lang/String;

    sub-int v5, v0, v1

    invoke-direct {v4, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 271
    :cond_29
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    sub-int v5, v0, v1

    invoke-virtual {v4, v3, v1, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 275
    :goto_33
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 276
    if-gez p1, :cond_3c

    .line 277
    goto :goto_4e

    .line 278
    :cond_3c
    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 279
    int-to-char v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 282
    :cond_48
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 283
    nop

    .line 286
    :goto_4e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumericLiteral(I)Ljava/lang/Double;
    .registers 16
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/16 v0, 0xa

    .line 78
    .local v0, "radix":I
    const/16 v1, 0x65

    const/16 v2, 0x2e

    const/16 v3, 0x30

    if-ne p1, v3, :cond_29

    .line 80
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 81
    const/16 v3, 0x78

    if-eq p1, v3, :cond_23

    const/16 v3, 0x58

    if-ne p1, v3, :cond_17

    goto :goto_23

    .line 86
    :cond_17
    if-eq p1, v2, :cond_29

    if-eq p1, v1, :cond_29

    const/16 v3, 0x45

    if-ne p1, v3, :cond_20

    goto :goto_29

    .line 88
    :cond_20
    const/16 v0, 0x8

    goto :goto_29

    .line 83
    :cond_23
    :goto_23
    const/16 v0, 0x10

    .line 84
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 90
    :cond_29
    :goto_29
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v3, v3, Lgnu/text/LineBufferedReader;->pos:I

    .line 91
    .local v3, "i":I
    if-ltz p1, :cond_31

    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 93
    :cond_31
    iget-object v4, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v3, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 94
    iget-object v4, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-static {v4, v0}, Lgnu/ecmascript/Lexer;->readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J

    move-result-wide v4

    .line 95
    .local v4, "ival":J
    iget-object v6, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v6, v6, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v7, 0x0

    if-le v6, v3, :cond_44

    const/4 v6, 0x1

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    .line 96
    .local v6, "digit_seen":Z
    :goto_45
    if-eqz v6, :cond_83

    iget-object v8, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v8, v8, Lgnu/text/LineBufferedReader;->pos:I

    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v9, v9, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v8, v9, :cond_83

    .line 98
    iget-object v8, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v8, v8, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v9, v9, Lgnu/text/LineBufferedReader;->pos:I

    aget-char p1, v8, v9

    .line 99
    int-to-char v8, p1

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_83

    if-eq p1, v2, :cond_83

    .line 102
    const-wide/16 v1, 0x0

    cmp-long v8, v4, v1

    if-ltz v8, :cond_6c

    .line 103
    long-to-double v1, v4

    .local v1, "dval":D
    goto :goto_7d

    .line 105
    .end local v1    # "dval":D
    :cond_6c
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v1, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v2, v2, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v2, v0, v7}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v1

    .line 107
    .restart local v1    # "dval":D
    :goto_7d
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v7

    .line 110
    .end local v1    # "dval":D
    :cond_83
    const/16 v7, 0xa

    if-eq v0, v7, :cond_8c

    .line 111
    const-string v8, "invalid character in non-decimal number"

    invoke-virtual {p0, v8}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 112
    :cond_8c
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v8, "str":Ljava/lang/StringBuffer;
    if-eqz v6, :cond_a1

    .line 114
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v9, v9, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v10, v10, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v10, v3

    invoke-virtual {v8, v9, v3, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 117
    :cond_a1
    const/4 v9, -0x1

    .line 118
    .local v9, "point_loc":I
    const/4 v10, 0x0

    .line 119
    .local v10, "exp":I
    const/4 v11, 0x0

    .line 122
    .local v11, "exp_seen":Z
    :goto_a4
    iget-object v12, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v12}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 123
    int-to-char v12, p1

    invoke-static {v12, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_b7

    .line 125
    const/4 v6, 0x1

    .line 126
    int-to-char v12, p1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    goto :goto_a4

    .line 129
    :cond_b7
    sparse-switch p1, :sswitch_data_110

    goto :goto_f5

    .line 142
    :sswitch_bb
    if-ne v0, v7, :cond_f5

    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v2

    move v12, v2

    .local v12, "next":I
    const/16 v13, 0x2b

    if-eq v2, v13, :cond_d4

    const/16 v2, 0x2d

    if-eq v12, v2, :cond_d4

    int-to-char v2, v12

    invoke-static {v2, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_d4

    .line 144
    goto :goto_f5

    .line 145
    :cond_d4
    if-nez v6, :cond_db

    .line 146
    const-string v2, "mantissa with no digits"

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 147
    :cond_db
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->readOptionalExponent()I

    move-result v10

    .line 148
    const/4 v11, 0x1

    .line 149
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    goto :goto_f5

    .line 132
    .end local v12    # "next":I
    :sswitch_e5
    if-ltz v9, :cond_ed

    .line 133
    const-string v12, "duplicate \'.\' in number"

    invoke-virtual {p0, v12}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    goto :goto_a4

    .line 136
    :cond_ed
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 137
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    goto :goto_a4

    .line 152
    :cond_f5
    :goto_f5
    nop

    .line 155
    if-ltz p1, :cond_fd

    .line 156
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->unread()V

    .line 158
    :cond_fd
    if-eqz v10, :cond_105

    .line 160
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    :cond_105
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_110
    .sparse-switch
        0x2e -> :sswitch_e5
        0x45 -> :sswitch_bb
        0x65 -> :sswitch_bb
    .end sparse-switch
.end method

.method public getStringLiteral(C)Ljava/lang/String;
    .registers 16
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 170
    .local v0, "i":I
    move v1, v0

    .line 171
    .local v1, "start":I
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v2, v2, Lgnu/text/LineBufferedReader;->limit:I

    .line 172
    .local v2, "limit":I
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v3, v3, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 174
    .local v3, "buffer":[C
    :goto_d
    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5c

    if-ge v0, v2, :cond_31

    .line 176
    aget-char v7, v3, v0

    .line 177
    .local v7, "c":C
    if-ne v7, p1, :cond_27

    .line 179
    iget-object v4, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    add-int/lit8 v5, v0, 0x1

    iput v5, v4, Lgnu/text/LineBufferedReader;->pos:I

    .line 180
    new-instance v4, Ljava/lang/String;

    sub-int v5, v0, v1

    invoke-direct {v4, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 182
    :cond_27
    if-eq v7, v6, :cond_31

    if-eq v7, v5, :cond_31

    if-ne v7, v4, :cond_2e

    .line 183
    goto :goto_31

    .line 174
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 185
    .end local v7    # "c":C
    :cond_31
    :goto_31
    iget-object v7, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v0, v7, Lgnu/text/LineBufferedReader;->pos:I

    .line 186
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v7, "sbuf":Ljava/lang/StringBuffer;
    sub-int v8, v0, v1

    invoke-virtual {v7, v3, v1, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    .line 190
    :goto_40
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v9

    .line 191
    .local v9, "ch":I
    if-ne v9, p1, :cond_4d

    .line 192
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 193
    :cond_4d
    if-gez v9, :cond_54

    .line 194
    const-string v10, "unterminated string literal"

    invoke-virtual {p0, v10}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 195
    :cond_54
    if-eq v9, v5, :cond_58

    if-ne v9, v4, :cond_5d

    .line 196
    :cond_58
    const-string v10, "string literal not terminated before end of line"

    invoke-virtual {p0, v10}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 197
    :cond_5d
    if-ne v9, v6, :cond_114

    .line 199
    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v9

    .line 201
    sparse-switch v9, :sswitch_data_11a

    .line 234
    .local v8, "val":I
    const/16 v10, 0x30

    if-lt v9, v10, :cond_114

    const/16 v10, 0x37

    if-le v9, v10, :cond_ec

    .line 235
    goto/16 :goto_114

    .line 215
    .end local v8    # "val":I
    :sswitch_72
    const/4 v8, 0x0

    .line 216
    .restart local v8    # "val":I
    const/16 v10, 0x78

    if-ne v9, v10, :cond_79

    const/4 v10, 0x2

    goto :goto_7a

    :cond_79
    const/4 v10, 0x4

    :goto_7a
    move v0, v10

    :goto_7b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d0

    .line 218
    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    .line 219
    .local v10, "d":I
    const-string v11, "\' in string"

    if-gez v10, :cond_a4

    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "eof following \'\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 222
    :cond_a4
    int-to-char v12, v10

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 223
    if-gez v10, :cond_cb

    .line 225
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid char following \'\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    int-to-char v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 227
    const/16 v8, 0x3f

    .line 228
    goto :goto_d0

    .line 229
    :cond_cb
    mul-int/lit8 v11, v8, 0x10

    add-int v8, v11, v10

    .line 230
    .end local v10    # "d":I
    goto :goto_7b

    .line 231
    :cond_d0
    :goto_d0
    move v9, v8

    .line 232
    goto :goto_114

    .line 210
    .end local v8    # "val":I
    :sswitch_d2
    const/16 v9, 0x9

    goto :goto_114

    .line 213
    :sswitch_d5
    const/16 v9, 0xd

    goto :goto_114

    .line 211
    :sswitch_d8
    const/16 v9, 0xa

    goto :goto_114

    .line 212
    :sswitch_db
    const/16 v9, 0xc

    goto :goto_114

    .line 209
    :sswitch_de
    const/16 v9, 0x8

    goto :goto_114

    .line 204
    :sswitch_e1
    const-string v10, "eof following \'\\\' in string"

    invoke-virtual {p0, v10}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 206
    :sswitch_e6
    const-string v10, "line terminator following \'\\\' in string"

    invoke-virtual {p0, v10}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 208
    :sswitch_eb
    goto :goto_114

    .line 236
    .restart local v8    # "val":I
    :cond_ec
    const/4 v8, 0x0

    .line 237
    const/4 v0, 0x3

    :goto_ee
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_113

    .line 239
    iget-object v10, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    .line 240
    .restart local v10    # "d":I
    if-gez v10, :cond_ff

    .line 241
    const-string v11, "eof in octal escape in string literal"

    invoke-virtual {p0, v11}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 242
    :cond_ff
    int-to-char v11, v10

    const/16 v12, 0x8

    invoke-static {v11, v12}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    .line 243
    if-gez v10, :cond_10e

    .line 245
    iget-object v11, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v11}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 246
    goto :goto_113

    .line 248
    :cond_10e
    mul-int/lit8 v11, v8, 0x8

    add-int v8, v11, v10

    .line 249
    .end local v10    # "d":I
    goto :goto_ee

    .line 250
    :cond_113
    :goto_113
    move v9, v8

    .line 255
    .end local v8    # "val":I
    :cond_114
    :goto_114
    int-to-char v10, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    .end local v9    # "ch":I
    goto/16 :goto_40

    :sswitch_data_11a
    .sparse-switch
        -0x1 -> :sswitch_e1
        0xa -> :sswitch_e6
        0xd -> :sswitch_e6
        0x22 -> :sswitch_eb
        0x27 -> :sswitch_eb
        0x5c -> :sswitch_eb
        0x62 -> :sswitch_de
        0x66 -> :sswitch_db
        0x6e -> :sswitch_d8
        0x72 -> :sswitch_d5
        0x74 -> :sswitch_d2
        0x75 -> :sswitch_72
        0x78 -> :sswitch_72
    .end sparse-switch
.end method

.method public getToken()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 328
    .local v0, "ch":I
    :goto_4
    if-gez v0, :cond_9

    .line 329
    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    return-object v1

    .line 330
    :cond_9
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_192

    .line 331
    nop

    .line 343
    const/16 v1, 0x3d

    sparse-switch v0, :sswitch_data_1b0

    .line 445
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 447
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getIdentifier(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "word":Ljava/lang/String;
    invoke-static {v1}, Lgnu/ecmascript/Lexer;->checkReserved(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 449
    .local v2, "token":Ljava/lang/Object;
    if-eqz v2, :cond_18b

    .line 450
    return-object v2

    .line 380
    .end local v1    # "word":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/Object;
    :sswitch_2c
    sget-object v1, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    return-object v1

    .line 360
    :sswitch_2f
    sget-object v1, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    return-object v1

    .line 407
    :sswitch_32
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_48

    .line 409
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 410
    sget-object v1, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 412
    :cond_48
    sget-object v1, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 359
    :sswitch_4f
    sget-object v1, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    return-object v1

    .line 383
    :sswitch_52
    sget-object v1, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 358
    :sswitch_59
    sget-object v1, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    return-object v1

    .line 357
    :sswitch_5c
    sget-object v1, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    return-object v1

    .line 361
    :sswitch_5f
    sget-object v1, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    return-object v1

    .line 414
    :sswitch_62
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 415
    packed-switch v0, :pswitch_data_242

    .line 429
    sget-object v1, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 418
    :pswitch_6e
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 419
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_89

    .line 421
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 422
    sget-object v1, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 424
    :cond_89
    sget-object v1, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 426
    :pswitch_90
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 427
    sget-object v1, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 366
    :sswitch_98
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v2

    if-ne v2, v1, :cond_a8

    .line 368
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 369
    sget-object v1, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 371
    :cond_a8
    sget-object v1, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    return-object v1

    .line 432
    :sswitch_ab
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_24a

    .line 442
    sget-object v1, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 439
    :pswitch_b7
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 440
    sget-object v1, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 436
    :pswitch_bf
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 437
    sget-object v1, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 363
    :sswitch_cb
    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    return-object v1

    .line 362
    :sswitch_ce
    sget-object v1, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    return-object v1

    .line 352
    :sswitch_d1
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 382
    :sswitch_db
    sget-object v1, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 346
    :sswitch_e2
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 347
    const/16 v1, 0x30

    if-lt v0, v1, :cond_fc

    const/16 v1, 0x39

    if-gt v0, v1, :cond_fc

    .line 348
    new-instance v1, Lgnu/expr/QuoteExp;

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 349
    :cond_fc
    sget-object v1, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    return-object v1

    .line 393
    :sswitch_ff
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_115

    .line 395
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 396
    sget-object v1, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 398
    :cond_115
    sget-object v1, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 364
    :sswitch_11c
    sget-object v1, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    return-object v1

    .line 386
    :sswitch_11f
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_135

    .line 388
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 389
    sget-object v1, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 391
    :cond_135
    sget-object v1, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 381
    :sswitch_13c
    sget-object v1, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 356
    :sswitch_143
    sget-object v1, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    return-object v1

    .line 355
    :sswitch_146
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    return-object v1

    .line 400
    :sswitch_149
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_15f

    .line 402
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 403
    sget-object v1, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 405
    :cond_15f
    sget-object v1, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 384
    :sswitch_166
    sget-object v1, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 354
    :sswitch_16d
    new-instance v1, Lgnu/expr/QuoteExp;

    int-to-char v2, v0

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Lexer;->getStringLiteral(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 373
    :sswitch_178
    iget-object v2, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v2

    if-ne v2, v1, :cond_188

    .line 375
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 376
    sget-object v1, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    return-object v1

    .line 378
    :cond_188
    sget-object v1, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    return-object v1

    .line 451
    .restart local v1    # "word":Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/Object;
    :cond_18b
    return-object v1

    .line 453
    .end local v1    # "word":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/Object;
    :cond_18c
    int-to-char v1, v0

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    return-object v1

    .line 332
    :cond_192
    const/16 v1, 0xd

    if-ne v0, v1, :cond_19c

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 335
    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    return-object v1

    .line 337
    :cond_19c
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a7

    iget-boolean v1, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    if-nez v1, :cond_1a7

    .line 338
    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    return-object v1

    .line 339
    :cond_1a7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 340
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    goto/16 :goto_4

    :sswitch_data_1b0
    .sparse-switch
        0x21 -> :sswitch_178
        0x22 -> :sswitch_16d
        0x25 -> :sswitch_166
        0x26 -> :sswitch_149
        0x27 -> :sswitch_16d
        0x28 -> :sswitch_146
        0x29 -> :sswitch_143
        0x2a -> :sswitch_13c
        0x2b -> :sswitch_11f
        0x2c -> :sswitch_11c
        0x2d -> :sswitch_ff
        0x2e -> :sswitch_e2
        0x2f -> :sswitch_db
        0x30 -> :sswitch_d1
        0x31 -> :sswitch_d1
        0x32 -> :sswitch_d1
        0x33 -> :sswitch_d1
        0x34 -> :sswitch_d1
        0x35 -> :sswitch_d1
        0x36 -> :sswitch_d1
        0x37 -> :sswitch_d1
        0x38 -> :sswitch_d1
        0x39 -> :sswitch_d1
        0x3a -> :sswitch_ce
        0x3b -> :sswitch_cb
        0x3c -> :sswitch_ab
        0x3d -> :sswitch_98
        0x3e -> :sswitch_62
        0x3f -> :sswitch_5f
        0x5b -> :sswitch_5c
        0x5d -> :sswitch_59
        0x5e -> :sswitch_52
        0x7b -> :sswitch_4f
        0x7c -> :sswitch_32
        0x7d -> :sswitch_2f
        0x7e -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_242
    .packed-switch 0x3d
        :pswitch_90
        :pswitch_6e
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x3c
        :pswitch_bf
        :pswitch_b7
    .end packed-switch
.end method

.method public maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 294
    .local v0, "ch":I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_d

    .line 296
    const-string v1, "assignment operation not implemented"

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 299
    :cond_d
    if-ltz v0, :cond_14

    .line 300
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 301
    :cond_14
    return-object p1
.end method

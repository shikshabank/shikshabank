.class public Lkawa/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "TelnetRepl.java"


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .registers 3
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 15
    iput-object p1, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    .line 16
    iput-object p2, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    .line 17
    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    .registers 9
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "client"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 47
    .local v0, "conn":Lkawa/Telnet;
    invoke-virtual {v0}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v1

    .line 48
    .local v1, "sout":Ljava/io/OutputStream;
    invoke-virtual {v0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v2

    .line 49
    .local v2, "sin":Ljava/io/InputStream;
    new-instance v3, Lgnu/mapping/OutPort;

    const-string v4, "/dev/stdout"

    invoke-static {v4}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 50
    .local v3, "out":Lgnu/mapping/OutPort;
    new-instance v4, Lgnu/mapping/TtyInPort;

    const-string v5, "/dev/stdin"

    invoke-static {v5}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v5

    invoke-direct {v4, v2, v5, v3}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 58
    .local v4, "in":Lgnu/mapping/TtyInPort;
    new-instance v5, Lgnu/mapping/Future;

    new-instance v6, Lkawa/TelnetRepl;

    invoke-direct {v6, p0, p1}, Lkawa/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    invoke-direct {v5, v6, v4, v3, v3}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    .line 60
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .registers 3

    .line 23
    :try_start_0
    iget-object v0, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 24
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_13

    .line 30
    :try_start_b
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    .line 34
    goto :goto_12

    .line 32
    :catch_11
    move-exception v1

    .line 34
    :goto_12
    return-object v0

    .line 28
    :catchall_13
    move-exception v0

    .line 30
    :try_start_14
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 34
    goto :goto_1b

    .line 32
    :catch_1a
    move-exception v1

    .line 34
    :goto_1b
    throw v0
.end method

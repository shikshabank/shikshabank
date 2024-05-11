.class public Lgnu/xquery/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static traceFilename:Ljava/lang/String;

.field public static tracePort:Lgnu/mapping/OutPort;

.field public static tracePrefix:Ljava/lang/String;

.field public static traceShouldAppend:Z

.field public static traceShouldFlush:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const-string v0, "XQuery-trace: "

    sput-object v0, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 9
    const-string v0, "XQuery-trace.log"

    sput-object v0, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized trace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/Object;

    const-class v0, Lgnu/xquery/util/Debug;

    monitor-enter v0

    .line 15
    :try_start_3
    sget-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5c

    .line 16
    .local v1, "out":Lgnu/mapping/OutPort;
    if-nez v1, :cond_3a

    .line 20
    :try_start_7
    new-instance v2, Lgnu/mapping/OutPort;

    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    sget-boolean v5, Lgnu/xquery/util/Debug;->traceShouldAppend:Z

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    move-object v1, v2

    .line 27
    goto :goto_38

    .line 23
    :catchall_17
    move-exception v2

    .line 25
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_18
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lgnu/xquery/util/Debug;->traceFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for fn:trace output"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_38
    sput-object v1, Lgnu/xquery/util/Debug;->tracePort:Lgnu/mapping/OutPort;

    .line 30
    :cond_3a
    sget-object v2, Lgnu/xquery/util/Debug;->tracePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 32
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 33
    new-instance v2, Lgnu/xml/XMLPrinter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 34
    .local v2, "xout":Lgnu/xml/XMLPrinter;
    invoke-virtual {v2, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->println()V

    .line 36
    sget-boolean v3, Lgnu/xquery/util/Debug;->traceShouldFlush:Z

    if-eqz v3, :cond_5a

    .line 37
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->flush()V
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_5c

    .line 38
    :cond_5a
    monitor-exit v0

    return-object p0

    .line 14
    .end local v1    # "out":Lgnu/mapping/OutPort;
    .end local v2    # "xout":Lgnu/xml/XMLPrinter;
    .end local p0    # "value":Ljava/lang/Object;
    .end local p1    # "message":Ljava/lang/Object;
    :catchall_5c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

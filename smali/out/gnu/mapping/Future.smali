.class public Lgnu/mapping/Future;
.super Ljava/lang/Thread;
.source "Future.java"


# instance fields
.field public closure:Lgnu/mapping/RunnableClosure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .registers 3
    .param p1, "action"    # Lgnu/mapping/Procedure;

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "action"    # Lgnu/mapping/Procedure;
    .param p2, "parentContext"    # Lgnu/mapping/CallContext;

    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 11
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .registers 6
    .param p1, "action"    # Lgnu/mapping/Procedure;
    .param p2, "in"    # Lgnu/mapping/InPort;
    .param p3, "out"    # Lgnu/mapping/OutPort;
    .param p4, "err"    # Lgnu/mapping/OutPort;

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p1, p2, p3, p4}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    iput-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    .line 17
    return-void
.end method

.method public static make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;
    .registers 7
    .param p0, "action"    # Lgnu/mapping/Procedure;
    .param p1, "penvironment"    # Lgnu/mapping/Environment;
    .param p2, "in"    # Lgnu/mapping/InPort;
    .param p3, "out"    # Lgnu/mapping/OutPort;
    .param p4, "err"    # Lgnu/mapping/OutPort;

    .line 27
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    .line 30
    .local v0, "saveEnv":Lgnu/mapping/Environment;
    :try_start_4
    new-instance v1, Lgnu/mapping/Future;

    invoke-direct {v1, p0, p2, p3, p4}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 34
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v1
.end method


# virtual methods
.method public final getCallContext()Lgnu/mapping/CallContext;
    .registers 2

    .line 40
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->getCallContext()Lgnu/mapping/CallContext;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 2

    .line 44
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    invoke-virtual {v0}, Lgnu/mapping/RunnableClosure;->run()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "#<future "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lgnu/mapping/Future;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public waitForResult()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/Future;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_10

    .line 56
    nop

    .line 57
    iget-object v0, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v0, v0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 58
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    .line 60
    iget-object v1, p0, Lgnu/mapping/Future;->closure:Lgnu/mapping/RunnableClosure;

    iget-object v1, v1, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v1

    .line 59
    :cond_f
    throw v0

    .line 53
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "thread join [force] was interrupted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

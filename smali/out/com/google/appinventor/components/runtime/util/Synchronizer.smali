.class public Lcom/google/appinventor/components/runtime/util/Synchronizer;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private errorMessage:Ljava/lang/String;

.field private volatile finished:Z

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->finished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized caught(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    monitor-enter p0

    .line 59
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->finished:Z

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->error:Ljava/lang/Throwable;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 62
    monitor-exit p0

    return-void

    .line 58
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    .end local p1    # "error":Ljava/lang/Throwable;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized error(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    monitor-enter p0

    .line 48
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->finished:Z

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->errorMessage:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 51
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    .end local p1    # "error":Ljava/lang/String;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 69
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 73
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 78
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->result:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->error:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->errorMessage:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synchronizer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized waitfor()V
    .registers 2

    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    monitor-enter p0

    .line 22
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->finished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 24
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 27
    goto :goto_1

    .line 25
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    :catch_9
    move-exception v0

    .line 27
    goto :goto_1

    .line 29
    :cond_b
    monitor-exit p0

    return-void

    .line 21
    :catchall_d
    move-exception v0

    monitor-exit p0

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method public declared-synchronized wakeup(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 37
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->finished:Z

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/Synchronizer;->result:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 40
    monitor-exit p0

    return-void

    .line 36
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    .end local p1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

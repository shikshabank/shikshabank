.class public Lgnu/mapping/RunnableClosure;
.super Ljava/lang/Object;
.source "RunnableClosure.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static nrunnables:I


# instance fields
.field action:Lgnu/mapping/Procedure;

.field context:Lgnu/mapping/CallContext;

.field private err:Lgnu/mapping/OutPort;

.field exception:Ljava/lang/Throwable;

.field private in:Lgnu/mapping/InPort;

.field name:Ljava/lang/String;

.field private out:Lgnu/mapping/OutPort;

.field result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput v0, Lgnu/mapping/RunnableClosure;->nrunnables:I

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .registers 3
    .param p1, "action"    # Lgnu/mapping/Procedure;

    .line 52
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p1, "action"    # Lgnu/mapping/Procedure;
    .param p2, "parentContext"    # Lgnu/mapping/CallContext;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lgnu/mapping/RunnableClosure;->nrunnables:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lgnu/mapping/RunnableClosure;->nrunnables:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/RunnableClosure;->setName(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V
    .registers 6
    .param p1, "action"    # Lgnu/mapping/Procedure;
    .param p2, "in"    # Lgnu/mapping/InPort;
    .param p3, "out"    # Lgnu/mapping/OutPort;
    .param p4, "err"    # Lgnu/mapping/OutPort;

    .line 44
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 45
    iput-object p2, p0, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    .line 46
    iput-object p3, p0, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    .line 47
    iput-object p4, p0, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    .line 48
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lgnu/mapping/RunnableClosure;->run()V

    .line 101
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 102
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_1d

    .line 104
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_19

    .line 106
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_13

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 109
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :cond_19
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    throw v1

    .line 111
    :cond_1d
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public final getCallContext()Lgnu/mapping/CallContext;
    .registers 2

    .line 56
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 92
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    .line 94
    iget-object v1, p0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;

    return-object v1

    .line 93
    :cond_7
    throw v0
.end method

.method public run()V
    .registers 4

    .line 62
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 63
    .local v0, "env":Lgnu/mapping/Environment;
    invoke-virtual {p0}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lgnu/mapping/Environment;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    if-eqz v1, :cond_15

    .line 66
    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->setName(Ljava/lang/String;)V

    .line 68
    :cond_15
    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    if-nez v2, :cond_20

    .line 69
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v2

    iput-object v2, p0, Lgnu/mapping/RunnableClosure;->context:Lgnu/mapping/CallContext;

    goto :goto_23

    .line 71
    :cond_20
    invoke-static {v2}, Lgnu/mapping/CallContext;->setInstance(Lgnu/mapping/CallContext;)V

    .line 72
    :goto_23
    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->in:Lgnu/mapping/InPort;

    if-eqz v2, :cond_2a

    .line 73
    invoke-static {v2}, Lgnu/mapping/InPort;->setInDefault(Lgnu/mapping/InPort;)V

    .line 74
    :cond_2a
    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->out:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_31

    .line 75
    invoke-static {v2}, Lgnu/mapping/OutPort;->setOutDefault(Lgnu/mapping/OutPort;)V

    .line 76
    :cond_31
    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->err:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_38

    .line 77
    invoke-static {v2}, Lgnu/mapping/OutPort;->setErrDefault(Lgnu/mapping/OutPort;)V

    .line 78
    :cond_38
    iget-object v2, p0, Lgnu/mapping/RunnableClosure;->action:Lgnu/mapping/Procedure;

    invoke-virtual {v2}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lgnu/mapping/RunnableClosure;->result:Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    .line 83
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_44

    .line 80
    :catchall_41
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Throwable;
    iput-object v0, p0, Lgnu/mapping/RunnableClosure;->exception:Ljava/lang/Throwable;

    .line 84
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lgnu/mapping/RunnableClosure;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "#<runnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p0}, Lgnu/mapping/RunnableClosure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

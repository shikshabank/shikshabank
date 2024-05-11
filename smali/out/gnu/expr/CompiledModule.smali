.class public Lgnu/expr/CompiledModule;
.super Ljava/lang/Object;
.source "CompiledModule.java"


# instance fields
.field cookie:Ljava/lang/Object;

.field language:Lgnu/expr/Language;

.field mexp:Lgnu/expr/ModuleExp;


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V
    .registers 4
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "language"    # Lgnu/expr/Language;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    .line 23
    iput-object p2, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    .line 25
    return-void
.end method

.method public static make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .registers 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "language"    # Lgnu/expr/Language;

    .line 29
    new-instance v0, Lgnu/expr/CompiledModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v0
.end method


# virtual methods
.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .registers 8
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v0

    .line 38
    .local v0, "saveLang":Lgnu/expr/Language;
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v1

    .line 41
    .local v1, "saveEnv":Lgnu/mapping/Environment;
    :try_start_a
    iget-object v2, p0, Lgnu/expr/CompiledModule;->language:Lgnu/expr/Language;

    iget-object v3, p0, Lgnu/expr/CompiledModule;->mexp:Lgnu/expr/ModuleExp;

    iget-object v4, p0, Lgnu/expr/CompiledModule;->cookie:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v3, v4}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1b

    .line 45
    invoke-static {v0}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 47
    nop

    .line 48
    return-void

    .line 45
    :catchall_1b
    move-exception v2

    invoke-static {v0}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 46
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v2
.end method

.method public evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    .registers 9
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "out"    # Lgnu/mapping/OutPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 54
    .local v0, "ctx":Lgnu/mapping/CallContext;
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 55
    .local v1, "saveConsumer":Lgnu/lists/Consumer;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v2

    .line 56
    .local v2, "print":Z
    iget-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 57
    .local v3, "saveFormat":Lgnu/lists/AbstractFormat;
    if-eqz v2, :cond_13

    invoke-static {p2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v4

    goto :goto_18

    :cond_13
    new-instance v4, Lgnu/lists/VoidConsumer;

    invoke-direct {v4}, Lgnu/lists/VoidConsumer;-><init>()V

    :goto_18
    iput-object v4, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    :try_start_1a
    invoke-virtual {p0, p1, v0}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_30

    .line 64
    iget-object v4, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v4, v4, Ljava/io/Writer;

    if-eqz v4, :cond_2a

    .line 65
    iget-object v4, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v4, Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_2a
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 69
    nop

    .line 70
    return-void

    .line 64
    :catchall_30
    move-exception v4

    iget-object v5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    instance-of v5, v5, Ljava/io/Writer;

    if-eqz v5, :cond_3e

    .line 65
    iget-object v5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v5, Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 67
    :cond_3e
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    iput-object v3, p2, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v4
.end method

.method public evalToResultValue(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .registers 5
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v0

    .line 80
    .local v0, "oldIndex":I
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 81
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    return-object v1

    .line 83
    :catchall_c
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 86
    throw v1
.end method

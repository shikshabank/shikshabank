.class public Lkawa/lang/Eval;
.super Lgnu/mapping/Procedure1or2;
.source "Eval.java"


# static fields
.field public static final eval:Lkawa/lang/Eval;

.field static final evalFunctionName:Ljava/lang/String; = "atEvalLevel$"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lkawa/lang/Eval;

    invoke-direct {v0}, Lkawa/lang/Eval;-><init>()V

    sput-object v0, Lkawa/lang/Eval;->eval:Lkawa/lang/Eval;

    .line 15
    const-string v1, "eval"

    invoke-virtual {v0, v1}, Lkawa/lang/Eval;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1or2;-><init>()V

    return-void
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .registers 5
    .param p0, "sexpr"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 56
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 59
    .local v1, "oldIndex":I
    :try_start_8
    invoke-static {p0, p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 60
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v2

    .line 62
    :catchall_10
    move-exception v2

    .line 64
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 65
    throw v2
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p0, "sexpr"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_f

    .line 24
    new-instance v0, Lgnu/lists/PairWithPosition;

    move-object v1, p0

    check-cast v1, Lgnu/lists/PairWithPosition;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, v1, p0, v2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .local v0, "body":Lgnu/lists/PairWithPosition;
    goto :goto_1b

    .line 28
    .end local v0    # "body":Lgnu/lists/PairWithPosition;
    :cond_f
    new-instance v0, Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p0, v1}, Lgnu/lists/PairWithPosition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .restart local v0    # "body":Lgnu/lists/PairWithPosition;
    const-string v1, "<eval>"

    invoke-virtual {v0, v1}, Lgnu/lists/PairWithPosition;->setFile(Ljava/lang/String;)V

    .line 31
    :goto_1b
    new-instance v1, Lgnu/text/SourceMessages;

    invoke-direct {v1}, Lgnu/text/SourceMessages;-><init>()V

    invoke-static {v0, p1, v1, p2}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 32
    return-void
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    .registers 6
    .param p0, "body"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 42
    .local v1, "oldIndex":I
    :try_start_8
    invoke-static {p0, p1, p2, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V

    .line 43
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v2

    .line 45
    :catchall_10
    move-exception v2

    .line 47
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 48
    throw v2
.end method

.method public static evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;Lgnu/mapping/CallContext;)V
    .registers 13
    .param p0, "body"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 74
    .local v0, "language":Lgnu/expr/Language;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 77
    .local v1, "saveGlobalEnv":Lgnu/mapping/Environment;
    if-eq p1, v1, :cond_d

    .line 78
    :try_start_a
    invoke-static {p1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 79
    :cond_d
    new-instance v2, Lkawa/lang/Translator;

    invoke-static {p1, v0}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 81
    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lkawa/lang/Translator;->immediate:Z

    .line 84
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lkawa/lang/Translator;->setState(I)V

    .line 85
    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->setSharedModuleDefs(Z)V

    .line 86
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v5

    .line 87
    .local v5, "mod":Lgnu/expr/ModuleExp;
    invoke-static {v2}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v6
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_9b

    .line 90
    .local v6, "saveComp":Lgnu/expr/Compilation;
    :try_start_2c
    iget-object v7, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    .line 91
    .local v7, "first":I
    const/4 v8, 0x0

    invoke-virtual {v2, p0, v5, v8}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    .line 92
    iput v7, v2, Lkawa/lang/Translator;->firstForm:I

    .line 93
    invoke-virtual {v2, v5}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_96

    .line 97
    .end local v7    # "first":I
    :try_start_3b
    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 98
    nop

    .line 100
    instance-of v7, p0, Lgnu/lists/PairWithPosition;

    if-eqz v7, :cond_4d

    .line 101
    move-object v7, p0

    check-cast v7, Lgnu/lists/PairWithPosition;

    invoke-virtual {v7}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 102
    :cond_4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "atEvalLevel$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lgnu/expr/ModuleExp;->interactiveCounter:I

    add-int/2addr v8, v3

    sput v8, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p3, v2, v4, v4}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 104
    invoke-virtual {p2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_9b

    if-nez v3, :cond_77

    .line 110
    .end local v2    # "tr":Lkawa/lang/Translator;
    .end local v5    # "mod":Lgnu/expr/ModuleExp;
    .end local v6    # "saveComp":Lgnu/expr/Compilation;
    if-eq p1, v1, :cond_76

    .line 111
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 113
    :cond_76
    return-void

    .line 105
    .restart local v2    # "tr":Lkawa/lang/Translator;
    .restart local v5    # "mod":Lgnu/expr/ModuleExp;
    .restart local v6    # "saveComp":Lgnu/expr/Compilation;
    :cond_77
    :try_start_77
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid syntax in eval form:\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x14

    invoke-virtual {p2, v7}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "language":Lgnu/expr/Language;
    .end local v1    # "saveGlobalEnv":Lgnu/mapping/Environment;
    .end local p0    # "body":Ljava/lang/Object;
    .end local p1    # "env":Lgnu/mapping/Environment;
    .end local p2    # "messages":Lgnu/text/SourceMessages;
    .end local p3    # "ctx":Lgnu/mapping/CallContext;
    throw v3

    .line 97
    .restart local v0    # "language":Lgnu/expr/Language;
    .restart local v1    # "saveGlobalEnv":Lgnu/mapping/Environment;
    .restart local p0    # "body":Ljava/lang/Object;
    .restart local p1    # "env":Lgnu/mapping/Environment;
    .restart local p2    # "messages":Lgnu/text/SourceMessages;
    .restart local p3    # "ctx":Lgnu/mapping/CallContext;
    :catchall_96
    move-exception v3

    invoke-static {v6}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .end local v0    # "language":Lgnu/expr/Language;
    .end local v1    # "saveGlobalEnv":Lgnu/mapping/Environment;
    .end local p0    # "body":Ljava/lang/Object;
    .end local p1    # "env":Lgnu/mapping/Environment;
    .end local p2    # "messages":Lgnu/text/SourceMessages;
    .end local p3    # "ctx":Lgnu/mapping/CallContext;
    throw v3
    :try_end_9b
    .catchall {:try_start_77 .. :try_end_9b} :catchall_9b

    .line 110
    .end local v2    # "tr":Lkawa/lang/Translator;
    .end local v5    # "mod":Lgnu/expr/ModuleExp;
    .end local v6    # "saveComp":Lgnu/expr/Compilation;
    .restart local v0    # "language":Lgnu/expr/Language;
    .restart local v1    # "saveGlobalEnv":Lgnu/mapping/Environment;
    .restart local p0    # "body":Ljava/lang/Object;
    .restart local p1    # "env":Lgnu/mapping/Environment;
    .restart local p2    # "messages":Lgnu/text/SourceMessages;
    .restart local p3    # "ctx":Lgnu/mapping/CallContext;
    :catchall_9b
    move-exception v2

    if-eq p1, v1, :cond_a1

    .line 111
    invoke-static {v1}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_a1
    throw v2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    invoke-static {p0, v0}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 131
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "exp":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    .line 134
    .local v1, "env":Lgnu/mapping/Environment;
    if-nez v1, :cond_16

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v1

    .line 136
    :cond_16
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 137
    invoke-static {v0, v1, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/mapping/CallContext;)V

    .line 138
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Environment;

    invoke-static {p1, v0}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

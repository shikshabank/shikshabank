.class public Lcom/google/youngandroid/runtime$frame9;
.super Lgnu/expr/ModuleBody;
.source "runtime1462831921990722459.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->inUi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime1462831921990722459.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n3566#1,25:3566\n*E\n"
.end annotation


# instance fields
.field blockid:Ljava/lang/Object;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field promise:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime1462831921990722459.scm:3566"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame9;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_b

    .line 3566
    invoke-virtual {p0}, Lcom/google/youngandroid/runtime$frame9;->lambda20()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda20()Ljava/lang/Object;
    .registers 8

    const-string v0, "OK"

    const-string v1, "NOK"

    .line 3566
    nop

    .line 3567
    iget-object v2, p0, Lcom/google/youngandroid/runtime$frame9;->blockid:Ljava/lang/Object;

    .line 3569
    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/google/youngandroid/runtime$frame9;->promise:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_8 .. :try_end_16} :catch_4b
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_8 .. :try_end_16} :catch_2d
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_8 .. :try_end_16} :catch_1a
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    move-object v1, v3

    .local v1, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    goto :goto_53

    .line 3580
    .end local v1    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    :catchall_18
    move-exception v0

    .local v3, "exception":Ljava/lang/Throwable;
    goto :goto_55

    .line 3575
    .end local v3    # "exception":Ljava/lang/Throwable;
    :catch_1a
    move-exception v0

    move-object v4, v3

    .line 3580
    .local v0, "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :try_start_1c
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v0, v1

    goto :goto_53

    .line 3569
    .end local v0    # "exception":Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    :catch_2d
    move-exception v0

    move-object v4, v3

    .line 3575
    .local v0, "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Failed due to missing permission: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    invoke-static {v1, v4}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v0, v1

    goto :goto_53

    .line 3569
    .end local v0    # "exception":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_4b
    move-exception v4

    move-object v5, v3

    .local v4, "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_18

    .line 3580
    .end local v4    # "exception":Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;
    :goto_53
    move-object v1, v0

    .local v1, "exception":Ljava/lang/Throwable;
    goto :goto_71

    .line 3584
    .end local v1    # "exception":Ljava/lang/Throwable;
    .local v0, "exception":Ljava/lang/Throwable;
    :goto_55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 3585
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_68

    .line 3589
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    .line 3590
    :cond_68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_6c
    invoke-static {v1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_71
    invoke-static {v2, v0}, Lcom/google/youngandroid/runtime;->sendToBlock(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 3566
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.class Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "async"    # Z

    .line 318
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected needsExternalStorage()Z
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneedsExternalStorage(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v0

    return v0
.end method

.method protected needsPermission()Z
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected performOperation()V
    .registers 8

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetaskPermission(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 329
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "perm":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 334
    .end local v2    # "perm":Ljava/lang/String;
    :cond_36
    goto :goto_1f

    .line 336
    :cond_37
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->needsPermission()Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_86

    .line 337
    :cond_3e
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " need permissions: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/String;

    .line 339
    invoke-interface {v6, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 346
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v1

    .line 351
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetscopedFiles(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 352
    .local v0, "filesArray":[Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetcommands(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    .line 354
    .local v2, "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :try_start_ae
    invoke-interface {v2, v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;->call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b3

    .line 357
    nop

    .line 358
    .end local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    goto :goto_a2

    .line 355
    .restart local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :catch_b3
    move-exception v1

    .line 356
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :cond_ba
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/DataCollection$10;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$list:Ljava/util/concurrent/Future;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 671
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$10;, "Lcom/google/appinventor/components/runtime/DataCollection$10;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$list:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 678
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$10;, "Lcom/google/appinventor/components/runtime/DataCollection$10;"
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$list:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 681
    .local v0, "listValue":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->val$tag:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$mupdateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 685
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$10;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1d} :catch_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 690
    goto :goto_40

    .line 688
    .end local v0    # "listValue":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_1e
    move-exception v0

    .line 689
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 686
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2f
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 691
    :goto_40
    return-void
.end method

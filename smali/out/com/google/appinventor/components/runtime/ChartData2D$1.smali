.class Lcom/google/appinventor/components/runtime/ChartData2D$1;
.super Ljava/lang/Object;
.source "ChartData2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;->AddEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

.field final synthetic val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$x:Ljava/lang/String;

.field final synthetic val$y:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartData2D;

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 74
    .local v0, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v2, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 77
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_36

    .line 79
    .end local v0    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v0

    .line 80
    :try_start_26
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v0

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_33

    throw v1

    .line 79
    :catchall_36
    move-exception v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v2

    .line 80
    :try_start_3a
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_46

    .line 83
    throw v0

    .line 82
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

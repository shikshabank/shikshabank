.class Lcom/google/appinventor/components/runtime/CloudDB$3$1;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/CloudDB$3;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB$3;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/CloudDB$3;

    .line 800
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3$1;->this$1:Lcom/google/appinventor/components/runtime/CloudDB$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$3$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 805
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$3$1;->this$1:Lcom/google/appinventor/components/runtime/CloudDB$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3$1;->this$1:Lcom/google/appinventor/components/runtime/CloudDB$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$3$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    return-void
.end method

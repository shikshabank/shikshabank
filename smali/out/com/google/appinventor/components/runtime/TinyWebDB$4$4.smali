.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    .line 320
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->WebServiceError(Ljava/lang/String;)V

    .line 323
    return-void
.end method

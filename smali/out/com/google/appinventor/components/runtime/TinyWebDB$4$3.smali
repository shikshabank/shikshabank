.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    .line 306
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Web server returned a garbled value for the tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->WebServiceError(Ljava/lang/String;)V

    .line 310
    return-void
.end method

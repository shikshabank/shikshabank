.class Lcom/google/appinventor/components/runtime/GameClient$15;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postGetInstanceLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 629
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "GetInstanceLists"

    const-string v2, "Failed to get up to date instance lists."

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 629
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$15;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->-$$Nest$mprocessInstanceLists(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V

    .line 632
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$15;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "GetInstanceLists"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/GameClient$19;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postInvite(Ljava/lang/String;)V
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

    .line 782
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "Invite"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 782
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$19;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 785
    :try_start_0
    const-string v0, "inv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "invitedPlayer":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 788
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was already invited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    goto :goto_45

    .line 790
    :cond_27
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully invited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_45} :catch_46

    .line 795
    .end local v0    # "invitedPlayer":Ljava/lang/String;
    :goto_45
    goto :goto_53

    .line 792
    :catch_46
    move-exception v0

    .line 793
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v2, "Failed to parse invite player response."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 796
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$19;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "Invite"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 797
    return-void
.end method

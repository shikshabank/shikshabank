.class Lcom/google/appinventor/components/runtime/GameClient$27;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
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

.field final synthetic val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 984
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 997
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->val$arguments:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->ServerCommandFailure(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 998
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "ServerCommand"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 984
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$27;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->val$command:Ljava/lang/String;

    const-string v2, "contents"

    .line 988
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x1

    .line 987
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    .line 992
    goto :goto_20

    .line 989
    :catch_13
    move-exception v0

    .line 990
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v2, "Server command response failed to parse."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 993
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$27;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "ServerCommand"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 994
    return-void
.end method

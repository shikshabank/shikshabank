.class Lcom/google/appinventor/components/runtime/GameClient$17;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->postGetMessages(Ljava/lang/String;I)V
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

.field final synthetic val$requestedType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 713
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "GetMessages"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 713
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$17;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 12
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 716
    :try_start_0
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, "count":I
    const-string v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 718
    .local v1, "messages":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_56

    .line 719
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 720
    .local v3, "message":Lorg/json/JSONObject;
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "type":Ljava/lang/String;
    const-string v5, "msender"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 722
    .local v5, "sender":Ljava/lang/String;
    const-string v6, "mtime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "time":Ljava/lang/String;
    const-string v7, "contents"

    .line 724
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 723
    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v7

    .line 727
    .local v7, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 728
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/GameClient;->-$$Nest$fgetinstance(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/google/appinventor/components/runtime/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_45
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/GameClient;->-$$Nest$fgetinstance(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lcom/google/appinventor/components/runtime/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    invoke-virtual {v8, v4, v5, v7}, Lcom/google/appinventor/components/runtime/GameClient;->GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_53} :catch_57

    .line 718
    .end local v3    # "message":Lorg/json/JSONObject;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "sender":Ljava/lang/String;
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 736
    .end local v0    # "count":I
    .end local v1    # "messages":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_56
    goto :goto_64

    .line 733
    :catch_57
    move-exception v0

    .line 734
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v2, "Failed to parse messages response."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 737
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$17;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    const-string v1, "GetMessages"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;
.super Landroid/os/AsyncTask;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSendMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1177
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "args"    # [Ljava/lang/String;

    .line 1188
    const-string v0, "="

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 1189
    .local v2, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    .line 1190
    .local v3, "message":Ljava/lang/String;
    const-string v4, ""

    .line 1191
    .local v4, "response":Ljava/lang/String;
    const-string v5, ""

    .line 1193
    .local v5, "smsData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Async sending phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " message = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Texting Component"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :try_start_30
    const-string v6, "phoneNumber"

    .line 1199
    invoke-static {v6, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text"

    .line 1200
    invoke-static {v9, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "&"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fgetgvHelper(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    if-nez v0, :cond_82

    .line 1203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fgetauthToken(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fputgvHelper(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)V

    .line 1205
    :cond_82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fgetgvHelper(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fgetgvHelper(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->-$$Nest$msendGvSms(Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent SMS, response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    goto :goto_b7

    .line 1209
    :cond_b0
    const-string v0, "IO Error: unable to create GvHelper"
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_b2} :catch_b3

    return-object v0

    .line 1211
    :catch_b3
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b7
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1177
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/String;

    .line 1219
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1222
    const/4 v0, 0x0

    .line 1223
    .local v0, "ok":Z
    const/4 v1, 0x0

    .line 1225
    .local v1, "code":I
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1226
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ok"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 1227
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1f

    move v1, v3

    .line 1231
    goto :goto_23

    .line 1228
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_1f
    move-exception v2

    .line 1230
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1232
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_23
    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 1233
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Message sent"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_59

    .line 1234
    :cond_34
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_46

    .line 1235
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Errcode 58: SMS limit reached"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_59

    .line 1236
    :cond_46
    const-string v3, "IO Error"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1237
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1238
    :cond_59
    :goto_59
    return-void
.end method

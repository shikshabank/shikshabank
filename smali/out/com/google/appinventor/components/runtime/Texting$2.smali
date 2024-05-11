.class Lcom/google/appinventor/components/runtime/Texting$2;
.super Landroid/content/BroadcastReceiver;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    monitor-enter p0

    .line 1107
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting$2;->getResultCode()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting$2;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fgetmessage(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$mhandleSentMessage(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 1108
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    .line 1114
    goto :goto_44

    .line 1106
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Texting$2;
    .end local p1    # "arg0":Landroid/content/Context;
    .end local p2    # "arg1":Landroid/content/Intent;
    :catchall_19
    move-exception p1

    goto :goto_46

    .line 1109
    .restart local p1    # "arg0":Landroid/content/Context;
    .restart local p2    # "arg1":Landroid/content/Intent;
    :catch_1b
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v1, "BroadcastReceiver"

    .line 1111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in onReceive for msgId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v1, "BroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_19

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    monitor-exit p0

    return-void

    .line 1106
    .end local p1    # "arg0":Landroid/content/Context;
    .end local p2    # "arg1":Landroid/content/Intent;
    :goto_46
    monitor-exit p0

    throw p1
.end method

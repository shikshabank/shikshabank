.class Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;
.super Landroid/app/Dialog;
.source "FullScreenVideoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "themeResId"    # I

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 4

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "values":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->-$$Nest$fgetmFullScreenVideoView(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 111
    const-string v2, "PositionKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->-$$Nest$fgetmFullScreenVideoView(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    .line 113
    const-string v2, "PlayingKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->-$$Nest$fgetmFullScreenVideoBundle(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;

    move-result-object v1

    .line 116
    const-string v2, "SourceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->-$$Nest$fgetmFullScreenPlayer(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 119
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 122
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;->this$0:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->startDialog()V

    .line 125
    return-void
.end method

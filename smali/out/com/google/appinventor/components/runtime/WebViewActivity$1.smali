.class Lcom/google/appinventor/components/runtime/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewActivity$1;->this$0:Lcom/google/appinventor/components/runtime/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "appinventor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 47
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewActivity$1;->this$0:Lcom/google/appinventor/components/runtime/WebViewActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/google/appinventor/components/runtime/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/WebViewActivity$1;->this$0:Lcom/google/appinventor/components/runtime/WebViewActivity;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/WebViewActivity;->finish()V

    .line 51
    .end local v2    # "resultIntent":Landroid/content/Intent;
    goto :goto_3f

    .line 52
    :cond_3c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    :goto_3f
    const/4 v2, 0x1

    return v2
.end method

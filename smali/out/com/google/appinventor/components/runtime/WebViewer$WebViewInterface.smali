.class public Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;
.super Ljava/lang/Object;
.source "WebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;

.field webViewString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .line 633
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    const-string v0, " "

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    .line 635
    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .registers 4
    .param p1, "newString"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 652
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public setWebViewStringFromBlocks(Ljava/lang/String;)V
    .registers 2
    .param p1, "newString"    # Ljava/lang/String;

    .line 662
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->webViewString:Ljava/lang/String;

    .line 663
    return-void
.end method

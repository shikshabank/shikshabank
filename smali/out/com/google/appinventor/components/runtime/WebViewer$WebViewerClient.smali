.class Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->PageLoaded(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->BeforePageLoad(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->-$$Nest$fgetfollowLinks(Lcom/google/appinventor/components/runtime/WebViewer;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

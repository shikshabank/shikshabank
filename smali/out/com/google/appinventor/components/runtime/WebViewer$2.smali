.class Lcom/google/appinventor/components/runtime/WebViewer$2;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .line 608
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 611
    if-eqz p2, :cond_14

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/WebViewer;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/WebViewer;Z)V

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->-$$Nest$fgetwebview(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_25

    .line 615
    :cond_14
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->val$caller:Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_25
    return-void
.end method

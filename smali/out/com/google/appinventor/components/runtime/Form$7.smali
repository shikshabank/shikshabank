.class Lcom/google/appinventor/components/runtime/Form$7;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 1275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_42

    .line 1278
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$sfgetsCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_35

    .line 1281
    :cond_2e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 1283
    :goto_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ReplayFormOrientation()V

    .line 1285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_49

    .line 1288
    :cond_42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$7;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1290
    :goto_49
    return-void
.end method

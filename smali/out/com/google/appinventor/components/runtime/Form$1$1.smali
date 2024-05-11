.class Lcom/google/appinventor/components/runtime/Form$1$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$1;

.field final synthetic val$savedLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;Landroid/widget/FrameLayout;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Form$1;

    .line 474
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$savedLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$savedLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 477
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 479
    :cond_7
    return-void
.end method

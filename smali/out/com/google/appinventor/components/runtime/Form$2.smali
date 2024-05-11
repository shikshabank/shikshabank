.class Lcom/google/appinventor/components/runtime/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
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

    .line 880
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 882
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 883
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initialize"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 884
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$sfgetsCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 885
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_3f

    .line 887
    :cond_38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 889
    :goto_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fputscreenInitialized(Lcom/google/appinventor/components/runtime/Form;Z)V

    .line 892
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetonInitializeListeners(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 893
    .local v1, "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    .line 894
    .end local v1    # "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    goto :goto_4f

    .line 895
    :cond_5f
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_74

    .line 896
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->HandleReturnValues()V

    goto :goto_74

    .line 900
    :cond_6d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 902
    :cond_74
    :goto_74
    return-void
.end method

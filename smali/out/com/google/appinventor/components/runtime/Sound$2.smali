.class Lcom/google/appinventor/components/runtime/Sound$2;
.super Ljava/lang/Object;
.source "Sound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Sound;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Sound;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Sound;

    .line 297
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fgetloadComplete(Lcom/google/appinventor/components/runtime/Sound;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$mplayAndCheckResult(Lcom/google/appinventor/components/runtime/Sound;)V

    goto :goto_43

    .line 302
    :cond_e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fgetdelayRetries(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_27

    .line 303
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fgetdelayRetries(Lcom/google/appinventor/components/runtime/Sound;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fputdelayRetries(Lcom/google/appinventor/components/runtime/Sound;I)V

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$mplayWhenLoadComplete(Lcom/google/appinventor/components/runtime/Sound;)V

    goto :goto_43

    .line 306
    :cond_27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fgetthisComponent(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v2

    const/16 v3, 0x2c6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound$2;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Sound;->-$$Nest$fgetsourcePath(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "Play"

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 309
    :goto_43
    return-void
.end method

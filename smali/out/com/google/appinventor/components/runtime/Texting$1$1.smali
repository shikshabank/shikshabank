.class Lcom/google/appinventor/components/runtime/Texting$1$1;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Texting$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Texting$1;

    .line 1079
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 1082
    if-eqz p2, :cond_16

    .line 1083
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Texting;Z)V

    .line 1084
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting$1;->val$caller:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$msendViaSms(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    goto :goto_27

    .line 1086
    :cond_16
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$1$1;->this$1:Lcom/google/appinventor/components/runtime/Texting$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Texting$1;->val$caller:Ljava/lang/String;

    const-string v3, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :goto_27
    return-void
.end method

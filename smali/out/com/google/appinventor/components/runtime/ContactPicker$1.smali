.class Lcom/google/appinventor/components/runtime/ContactPicker$1;
.super Ljava/lang/Object;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ContactPicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ContactPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ContactPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ContactPicker;

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 138
    if-eqz p2, :cond_e

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/ContactPicker;Z)V

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->click()V

    goto :goto_1f

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker$1;->this$0:Lcom/google/appinventor/components/runtime/ContactPicker;

    const-string v2, "Click"

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_1f
    return-void
.end method

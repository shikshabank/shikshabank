.class Lcom/google/appinventor/components/runtime/EmailPicker$1;
.super Ljava/lang/Object;
.source "EmailPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/EmailPicker;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/EmailPicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/EmailPicker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/EmailPicker;

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->this$0:Lcom/google/appinventor/components/runtime/EmailPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 77
    if-eqz p2, :cond_12

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->this$0:Lcom/google/appinventor/components/runtime/EmailPicker;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/EmailPicker;->view:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->this$0:Lcom/google/appinventor/components/runtime/EmailPicker;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EmailPicker;->-$$Nest$fgetaddressAdapter(Lcom/google/appinventor/components/runtime/EmailPicker;)Lcom/google/appinventor/components/runtime/EmailAddressAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_21

    .line 80
    :cond_12
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->this$0:Lcom/google/appinventor/components/runtime/EmailPicker;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/EmailPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EmailPicker$1;->this$0:Lcom/google/appinventor/components/runtime/EmailPicker;

    const-string v2, "Initialize"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_21
    return-void
.end method

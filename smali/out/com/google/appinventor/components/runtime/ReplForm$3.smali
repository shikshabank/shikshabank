.class Lcom/google/appinventor/components/runtime/ReplForm$3;
.super Ljava/lang/Object;
.source "ReplForm.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->addSettingsButton(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ReplForm;

    .line 250
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$3;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 253
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->doSettings()V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

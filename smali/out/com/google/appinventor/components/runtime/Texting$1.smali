.class Lcom/google/appinventor/components/runtime/Texting$1;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1075
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$me:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1078
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$1$1;-><init>(Lcom/google/appinventor/components/runtime/Texting$1;)V

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1090
    return-void
.end method

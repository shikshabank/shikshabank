.class Lcom/google/appinventor/components/runtime/Camcorder$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Camcorder;->RecordVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Camcorder;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/Camcorder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Camcorder;Lcom/google/appinventor/components/runtime/Camcorder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Camcorder;

    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1;->this$0:Lcom/google/appinventor/components/runtime/Camcorder;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder$1;->this$0:Lcom/google/appinventor/components/runtime/Camcorder;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Camcorder$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Camcorder$1$1;-><init>(Lcom/google/appinventor/components/runtime/Camcorder$1;)V

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 113
    return-void
.end method

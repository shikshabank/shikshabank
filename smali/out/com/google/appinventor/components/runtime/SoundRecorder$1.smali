.class Lcom/google/appinventor/components/runtime/SoundRecorder$1;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/SoundRecorder;

.field final synthetic val$neededPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/SoundRecorder;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/SoundRecorder;

    .line 187
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$me:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$neededPermissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$me:Lcom/google/appinventor/components/runtime/SoundRecorder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$neededPermissions:[Ljava/lang/String;

    const-string v4, "Start"

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 197
    return-void
.end method

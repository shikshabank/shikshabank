.class Lcom/google/appinventor/components/runtime/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Player;

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Player;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Player;

    .line 183
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Player$1;->val$tempPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 186
    if-eqz p2, :cond_a

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player$1;->val$tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Player;->Source(Ljava/lang/String;)V

    goto :goto_15

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player$1;->this$0:Lcom/google/appinventor/components/runtime/Player;

    const-string v2, "Source"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_15
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/Canvas$1;
.super Ljava/lang/Object;
.source "Canvas.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .line 1678
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 1681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Canvas;Z)V

    .line 1682
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/ImageBot$10;
.super Ljava/lang/Object;
.source "ImageBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageBot;->doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageBot;

.field final synthetic val$e:Lcom/google/appinventor/components/runtime/ImageBot$ImageException;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageBot;Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageBot;

    .line 533
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$10;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageBot$10;->val$e:Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$10;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot$10;->val$e:Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->-$$Nest$mgetResponseCode(Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot$10;->val$e:Lcom/google/appinventor/components/runtime/ImageBot$ImageException;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->-$$Nest$mgetResponseMessage(Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ImageBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 537
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/ImageBot$2;
.super Ljava/lang/Object;
.source "ImageBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageBot;->EditImage(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageBot;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageBot;

    .line 321
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageBot$2;->val$description:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/ImageBot;->-$$Nest$mdoEditImage(Lcom/google/appinventor/components/runtime/ImageBot;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 325
    return-void
.end method

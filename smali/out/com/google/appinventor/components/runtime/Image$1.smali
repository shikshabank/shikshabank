.class Lcom/google/appinventor/components/runtime/Image$1;
.super Landroid/widget/ImageView;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Image;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$1;->this$0:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/google/appinventor/components/runtime/Image$2;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->Clickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Image;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Image;

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$2;->this$0:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Image$2;->this$0:Lcom/google/appinventor/components/runtime/Image;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Image;->Click()V

    .line 117
    return-void
.end method

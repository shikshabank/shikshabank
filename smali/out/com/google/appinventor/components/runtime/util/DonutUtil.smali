.class public Lcom/google/appinventor/components/runtime/util/DonutUtil;
.super Ljava/lang/Object;
.source "DonutUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static buildDrawingCache(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "autoScale"    # Z

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 31
    return-void
.end method

.method public static getDrawingCache(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "autoScale"    # Z

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

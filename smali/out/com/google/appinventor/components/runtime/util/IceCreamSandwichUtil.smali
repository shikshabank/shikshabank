.class public final Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;
.super Ljava/lang/Object;
.source "IceCreamSandwichUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static setAllCaps(Landroid/widget/TextView;Z)V
    .registers 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "allCaps"    # Z

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 31
    :cond_9
    return-void
.end method

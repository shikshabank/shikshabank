.class public Lcom/google/appinventor/components/runtime/util/CustomMediaController;
.super Landroid/widget/MediaController;
.source "CustomMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mShowTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->mShowTime:I

    .line 39
    return-void
.end method


# virtual methods
.method public addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, "mParent":Ljava/lang/Object;
    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/4 v1, 0x1

    return v1

    .line 82
    :cond_15
    const-string v1, "CustomMediaController.addTo"

    const-string v2, "MediaController not available in fullscreen."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    return v1
.end method

.method public hide()V
    .registers 2

    .line 105
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 106
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->mAnchorView:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 117
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->mShowTime:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->show(I)V

    .line 119
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchorView"    # Landroid/view/View;

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->mAnchorView:Landroid/view/View;

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public show()V
    .registers 2

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 60
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 61
    return-void
.end method

.method public show(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/MediaController;->show(I)V

    .line 51
    return-void
.end method

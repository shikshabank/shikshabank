.class Lcom/google/appinventor/components/runtime/LinearLayout$1;
.super Landroid/widget/LinearLayout;
.source "LinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LinearLayout;

.field final synthetic val$preferredEmptyHeight:Ljava/lang/Integer;

.field final synthetic val$preferredEmptyWidth:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/LinearLayout;
    .param p2, "context"    # Landroid/content/Context;

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->this$0:Lcom/google/appinventor/components/runtime/LinearLayout;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSize(II)I
    .registers 7
    .param p1, "measureSpec"    # I
    .param p2, "preferredSize"    # I

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 79
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 81
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_e

    .line 83
    move v2, v1

    .local v2, "result":I
    goto :goto_17

    .line 86
    .end local v2    # "result":I
    :cond_e
    move v2, p2

    .line 87
    .restart local v2    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_17

    .line 89
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    :cond_17
    :goto_17
    return v2
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    if-nez v0, :cond_9

    goto :goto_2b

    .line 67
    :cond_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_13

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    return-void

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LinearLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->getSize(II)I

    move-result v1

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout$1;->setMeasuredDimension(II)V

    .line 74
    return-void

    .line 62
    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    return-void
.end method

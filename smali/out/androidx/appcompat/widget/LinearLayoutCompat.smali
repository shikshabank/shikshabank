.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 155
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 158
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 159
    .local v4, "index":I
    if-ltz v4, :cond_22

    .line 160
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 163
    :cond_22
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 164
    if-ltz v4, :cond_2d

    .line 165
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 168
    :cond_2d
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 169
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_38

    .line 170
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 173
    :cond_38
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 175
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 178
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 180
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 182
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 184
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 185
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1317
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1319
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 1320
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1321
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 1322
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1324
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 1327
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1328
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1331
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1319
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1336
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 895
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 897
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 898
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 899
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 900
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 902
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 905
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 906
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 909
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 910
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 897
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 914
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1645
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1751
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 323
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 324
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 325
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 328
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 331
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_2f

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 334
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 336
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 324
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 341
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 342
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 344
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_61

    .line 345
    if-eqz v1, :cond_54

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7d

    .line 348
    .end local v3    # "position":I
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7d

    .line 351
    .end local v3    # "position":I
    :cond_61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 352
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_75

    .line 353
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7d

    .line 355
    .end local v4    # "position":I
    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 358
    .local v3, "position":I
    :goto_7d
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_80
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 295
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 296
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 297
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 300
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 302
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 303
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 296
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 308
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 309
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 311
    .local v2, "bottom":I
    if-nez v1, :cond_4d

    .line 312
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5c

    .line 314
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 315
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 317
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5c
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5f
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1734
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1735
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1736
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1737
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1739
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1721
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1744
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    .line 423
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 427
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_73

    .line 432
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 435
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 436
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    .line 438
    return v2

    .line 442
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 454
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    .line 455
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 456
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_68

    .line 457
    sparse-switch v3, :sswitch_data_7c

    goto :goto_68

    .line 459
    :sswitch_3c
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 460
    goto :goto_68

    .line 463
    :sswitch_4f
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 470
    .end local v3    # "majorGravity":I
    :cond_68
    :goto_68
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 471
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 428
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x10 -> :sswitch_4f
        0x50 -> :sswitch_3c
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 480
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 268
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 278
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1700
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1667
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 212
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 505
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 518
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 529
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 567
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 568
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 569
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 570
    :cond_19
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_36

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_35

    .line 573
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_32

    .line 574
    const/4 v0, 0x1

    .line 575
    goto :goto_35

    .line 572
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 578
    .end local v1    # "i":I
    :cond_35
    :goto_35
    return v0

    .line 580
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_36
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 38
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1521
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 1522
    .local v7, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 1528
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1529
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v10, v9, v0

    .line 1532
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 1534
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1536
    .local v12, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1537
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1539
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1541
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1542
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1544
    .local v4, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1545
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    sparse-switch v0, :sswitch_data_166

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .local v0, "childLeft":I
    goto :goto_58

    .line 1548
    .end local v0    # "childLeft":I
    :sswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1549
    .restart local v0    # "childLeft":I
    goto :goto_58

    .line 1553
    .end local v0    # "childLeft":I
    :sswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int v1, p3, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1554
    .restart local v0    # "childLeft":I
    nop

    .line 1562
    :goto_58
    const/4 v1, 0x0

    .line 1563
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1565
    .local v2, "dir":I
    if-eqz v7, :cond_64

    .line 1566
    add-int/lit8 v1, v12, -0x1

    .line 1567
    const/4 v2, -0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_68

    .line 1565
    :cond_64
    move/from16 v17, v1

    move/from16 v18, v2

    .line 1570
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_68
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_6a
    if-ge v2, v12, :cond_164

    .line 1571
    mul-int v1, v18, v2

    add-int v1, v17, v1

    .line 1572
    .local v1, "childIndex":I
    move/from16 v19, v7

    .end local v7    # "isLayoutRtl":Z
    .local v19, "isLayoutRtl":Z
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1574
    .local v7, "child":Landroid/view/View;
    const/16 v20, 0x1

    if-nez v7, :cond_8e

    .line 1575
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v10

    goto/16 :goto_152

    .line 1576
    :cond_8e
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_145

    .line 1577
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1578
    .local v23, "childWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1579
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1581
    .local v2, "childBaseline":I
    nop

    .line 1582
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1584
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_ba

    move/from16 v26, v9

    .end local v9    # "height":I
    .local v26, "height":I
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v9, v2, :cond_bc

    .line 1585
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    goto :goto_be

    .line 1584
    .end local v26    # "height":I
    .local v9, "height":I
    .restart local v25    # "childBaseline":I
    :cond_ba
    move/from16 v26, v9

    .line 1588
    .end local v9    # "height":I
    .restart local v26    # "height":I
    :cond_bc
    move/from16 v9, v25

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    :goto_be
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1589
    .local v2, "gravity":I
    if-gez v2, :cond_c6

    .line 1590
    move v2, v14

    move/from16 v27, v2

    goto :goto_c8

    .line 1589
    :cond_c6
    move/from16 v27, v2

    .line 1593
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_c8
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_170

    .line 1625
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .local v28, "childBottom":I
    move v2, v8

    move v10, v2

    .local v2, "childTop":I
    goto :goto_109

    .line 1618
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_d2
    sub-int v2, v10, v24

    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1619
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_e9

    .line 1620
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v9

    .line 1621
    .local v10, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v10

    sub-int v2, v2, v25

    .line 1622
    .end local v10    # "descent":I
    move v10, v2

    goto :goto_109

    .line 1619
    :cond_e9
    move v10, v2

    goto :goto_109

    .line 1595
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .local v10, "childBottom":I
    :sswitch_eb
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1596
    .restart local v2    # "childTop":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_f9

    .line 1597
    aget v10, v5, v20

    sub-int/2addr v10, v9

    add-int/2addr v2, v10

    move v10, v2

    goto :goto_109

    .line 1596
    :cond_f9
    move v10, v2

    goto :goto_109

    .line 1613
    .end local v2    # "childTop":I
    .end local v28    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_fb
    move/from16 v28, v10

    .end local v10    # "childBottom":I
    .restart local v28    # "childBottom":I
    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v10

    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v10

    .line 1615
    .restart local v2    # "childTop":I
    move v10, v2

    .line 1629
    .end local v2    # "childTop":I
    .local v10, "childTop":I
    :goto_109
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 1630
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1633
    :cond_112
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1634
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    .end local v1    # "childIndex":I
    .local v8, "childIndex":I
    .local v29, "paddingTop":I
    move-object v1, v7

    move/from16 v30, v9

    move-object v9, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "childBaseline":I
    move v3, v10

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1636
    iget v0, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1637
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1639
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v21, v0

    move/from16 v0, v25

    .end local v21    # "i":I
    .local v2, "i":I
    goto :goto_152

    .line 1576
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "height":I
    .end local v27    # "gravity":I
    .end local v28    # "childBottom":I
    .end local v29    # "paddingTop":I
    .end local v30    # "childBaseline":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v8, "paddingTop":I
    .local v9, "height":I
    .local v10, "childBottom":I
    .restart local v21    # "i":I
    :cond_145
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v10

    move v8, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v9    # "height":I
    .end local v10    # "childBottom":I
    .local v8, "childIndex":I
    .restart local v26    # "height":I
    .restart local v28    # "childBottom":I
    .restart local v29    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v21

    .line 1570
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    .end local v21    # "i":I
    .restart local v2    # "i":I
    :goto_152
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v19

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_6a

    .line 1642
    .end local v2    # "i":I
    .end local v19    # "isLayoutRtl":Z
    .end local v22    # "layoutDirection":I
    .end local v26    # "height":I
    .end local v28    # "childBottom":I
    .end local v29    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .restart local v9    # "height":I
    .restart local v10    # "childBottom":I
    :cond_164
    return-void

    nop

    :sswitch_data_166
    .sparse-switch
        0x1 -> :sswitch_4b
        0x5 -> :sswitch_3f
    .end sparse-switch

    :sswitch_data_170
    .sparse-switch
        0x10 -> :sswitch_fb
        0x30 -> :sswitch_eb
        0x50 -> :sswitch_d2
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .registers 29
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1426
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1432
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1433
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 1436
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1438
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1440
    .local v11, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1441
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1443
    .local v13, "minorGravity":I
    sparse-switch v12, :sswitch_data_e4

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_44

    .line 1446
    .end local v0    # "childTop":I
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1447
    .restart local v0    # "childTop":I
    goto :goto_44

    .line 1451
    .end local v0    # "childTop":I
    :sswitch_37
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1452
    .restart local v0    # "childTop":I
    nop

    .line 1460
    :goto_44
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_46
    if-ge v14, v11, :cond_e2

    .line 1461
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1462
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_57

    .line 1463
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v23, v7

    goto/16 :goto_dc

    .line 1464
    :cond_57
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_da

    .line 1465
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1466
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1468
    .local v17, "childHeight":I
    nop

    .line 1469
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1471
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1472
    .local v1, "gravity":I
    if-gez v1, :cond_76

    .line 1473
    move v1, v13

    move v4, v1

    goto :goto_77

    .line 1472
    :cond_76
    move v4, v1

    .line 1475
    .end local v1    # "gravity":I
    .local v4, "gravity":I
    :goto_77
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1476
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1478
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    sparse-switch v1, :sswitch_data_ee

    .line 1490
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v19, v1

    .local v1, "childLeft":I
    goto :goto_9f

    .line 1485
    .end local v1    # "childLeft":I
    :sswitch_8a
    sub-int v1, v9, v16

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1486
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    goto :goto_9f

    .line 1480
    .end local v1    # "childLeft":I
    :sswitch_92
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1482
    .restart local v1    # "childLeft":I
    move/from16 v19, v1

    .line 1494
    .end local v1    # "childLeft":I
    .local v19, "childLeft":I
    :goto_9f
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1495
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1498
    :cond_a8
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v20, v0, v1

    .line 1499
    .end local v0    # "childTop":I
    .local v20, "childTop":I
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v21, v20, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v19

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v3, v21

    move/from16 v21, v4

    .end local v4    # "gravity":I
    .local v21, "gravity":I
    move/from16 v4, v16

    move/from16 v23, v7

    move-object v7, v5

    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v23, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1501
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1503
    invoke-virtual {v6, v15, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v20

    goto :goto_dc

    .line 1464
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v19    # "childLeft":I
    .end local v20    # "childTop":I
    .end local v21    # "gravity":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_da
    move/from16 v23, v7

    .line 1460
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v23    # "paddingLeft":I
    :goto_dc
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    goto/16 :goto_46

    .line 1506
    .end local v14    # "i":I
    .end local v23    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_e2
    return-void

    nop

    :sswitch_data_e4
    .sparse-switch
        0x10 -> :sswitch_37
        0x50 -> :sswitch_2b
    .end sparse-switch

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_92
        0x5 -> :sswitch_8a
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method measureHorizontal(II)V
    .registers 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 928
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 931
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 932
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 933
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 934
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 936
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 938
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 939
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 941
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 942
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 944
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 945
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 946
    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 949
    :cond_2e
    iget-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 952
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 953
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 955
    iget-boolean v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 956
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 958
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    const/16 v23, 0x1

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 960
    .local v23, "isExactly":Z
    :goto_5c
    const/16 v24, 0x0

    .line 963
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    move/from16 v9, v25

    move/from16 v45, v5

    move v5, v0

    move/from16 v0, v45

    move/from16 v46, v4

    move v4, v1

    move/from16 v1, v24

    move/from16 v24, v22

    move/from16 v22, v18

    move/from16 v18, v46

    move/from16 v47, v3

    move v3, v2

    move/from16 v2, v47

    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v9, "i":I
    .local v18, "allFillParent":Z
    .local v22, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_77
    const/16 v28, 0x0

    if-ge v9, v11, :cond_25e

    .line 964
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 966
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_97

    .line 967
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .local v30, "largestChildWidth":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v26

    add-int v1, v1, v26

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 968
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v1, v30

    move/from16 v30, v12

    goto/16 :goto_252

    .line 971
    .end local v30    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_97
    move/from16 v30, v1

    .end local v1    # "largestChildWidth":I
    .restart local v30    # "largestChildWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v31, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    if-ne v1, v2, :cond_b4

    .line 972
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    .line 973
    move/from16 v21, v6

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v31, v11

    move/from16 v30, v12

    goto/16 :goto_252

    .line 976
    :cond_b4
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 977
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 980
    :cond_c1
    nop

    .line 981
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 983
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v0, v1

    .line 985
    .end local v0    # "totalWeight":F
    .local v29, "totalWeight":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_12c

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_12c

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v28

    if-lez v0, :cond_12c

    .line 989
    if-eqz v23, :cond_ea

    .line 990
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_fa

    .line 992
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_ea
    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 993
    .local v0, "totalLength":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1002
    .end local v0    # "totalLength":I
    :goto_fa
    if-eqz v6, :cond_117

    .line 1003
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1004
    .local v1, "freeSpec":I
    invoke-virtual {v8, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1005
    .end local v1    # "freeSpec":I
    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b5

    .line 1006
    :cond_117
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v40, v4

    move/from16 v21, v6

    move/from16 v3, v30

    move/from16 v36, v31

    move/from16 v38, v32

    move/from16 v31, v11

    move/from16 v30, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b5

    .line 985
    .end local v32    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_12c
    move/from16 v32, v3

    .line 1009
    .end local v3    # "alternativeMaxHeight":I
    .restart local v32    # "alternativeMaxHeight":I
    const/high16 v0, -0x80000000

    .line 1011
    .local v0, "oldWidth":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_140

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v28

    if-lez v1, :cond_140

    .line 1016
    const/4 v0, 0x0

    .line 1017
    const/4 v1, -0x2

    iput v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v3, v0

    goto :goto_141

    .line 1024
    :cond_140
    move v3, v0

    .end local v0    # "oldWidth":I
    .local v3, "oldWidth":I
    :goto_141
    cmpl-float v0, v29, v28

    if-nez v0, :cond_14a

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v33, v0

    goto :goto_14c

    :cond_14a
    const/16 v33, 0x0

    :goto_14c
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v35, v30

    .end local v30    # "largestChildWidth":I
    .local v35, "largestChildWidth":I
    move-object v1, v8

    move-object/from16 v37, v2

    move/from16 v36, v31

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "weightedMaxHeight":I
    .local v36, "weightedMaxHeight":I
    .local v37, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move v2, v9

    move/from16 v39, v3

    move/from16 v38, v32

    .end local v3    # "oldWidth":I
    .end local v32    # "alternativeMaxHeight":I
    .local v38, "alternativeMaxHeight":I
    .local v39, "oldWidth":I
    move/from16 v3, p1

    move/from16 v40, v4

    .end local v4    # "childState":I
    .local v40, "childState":I
    move/from16 v4, v33

    move/from16 v30, v12

    move v12, v5

    .end local v5    # "maxHeight":I
    .local v12, "maxHeight":I
    .local v30, "widthMode":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v31, v11

    const/4 v11, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v11    # "count":I
    .local v21, "baselineAligned":Z
    .local v31, "count":I
    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1028
    move/from16 v0, v39

    const/high16 v1, -0x80000000

    .end local v39    # "oldWidth":I
    .restart local v0    # "oldWidth":I
    if-eq v0, v1, :cond_17c

    .line 1029
    move-object/from16 v1, v37

    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_17e

    .line 1028
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_17c
    move-object/from16 v1, v37

    .line 1032
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_17e
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1033
    .local v2, "childWidth":I
    if-eqz v23, :cond_195

    .line 1034
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1035
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1aa

    .line 1037
    :cond_195
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1038
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1039
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1038
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    .end local v3    # "totalLength":I
    :goto_1aa
    if-eqz v14, :cond_1b3

    .line 1043
    move/from16 v3, v35

    .end local v35    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1b5

    .line 1042
    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    :cond_1b3
    move/from16 v3, v35

    .line 1047
    .end local v0    # "oldWidth":I
    .end local v2    # "childWidth":I
    .end local v35    # "largestChildWidth":I
    .restart local v3    # "largestChildWidth":I
    :goto_1b5
    const/4 v0, 0x0

    .line 1048
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1c1

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v11, :cond_1c1

    .line 1052
    const/16 v22, 0x1

    .line 1053
    const/4 v0, 0x1

    .line 1056
    :cond_1c1
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1057
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1058
    .local v4, "childHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v40

    .end local v40    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1060
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_20c

    .line 1061
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1062
    .local v6, "childBaseline":I
    if-eq v6, v11, :cond_207

    .line 1065
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v11, :cond_1e4

    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1e6

    :cond_1e4
    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1e6
    and-int/lit8 v11, v11, 0x70

    .line 1067
    .local v11, "gravity":I
    shr-int/lit8 v26, v11, 0x4

    const/16 v27, -0x2

    and-int/lit8 v26, v26, -0x2

    shr-int/lit8 v26, v26, 0x1

    .line 1070
    .local v26, "index":I
    move/from16 v27, v2

    .end local v2    # "margin":I
    .local v27, "margin":I
    aget v2, v10, v26

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v26

    .line 1071
    aget v2, v15, v26

    move/from16 v33, v3

    .end local v3    # "largestChildWidth":I
    .local v33, "largestChildWidth":I
    sub-int v3, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v26

    goto :goto_210

    .line 1062
    .end local v11    # "gravity":I
    .end local v26    # "index":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_207
    move/from16 v27, v2

    move/from16 v33, v3

    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    goto :goto_210

    .line 1060
    .end local v6    # "childBaseline":I
    .end local v27    # "margin":I
    .end local v33    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_20c
    move/from16 v27, v2

    move/from16 v33, v3

    .line 1075
    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v27    # "margin":I
    .restart local v33    # "largestChildWidth":I
    :goto_210
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1077
    .end local v12    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_21d

    iget v3, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_21d

    const/4 v3, 0x1

    goto :goto_21e

    :cond_21d
    const/4 v3, 0x0

    .line 1078
    .end local v18    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_21e
    iget v6, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_231

    .line 1083
    if-eqz v0, :cond_229

    move/from16 v6, v27

    goto :goto_22a

    :cond_229
    move v6, v4

    :goto_22a
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v11    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_242

    .line 1086
    .end local v6    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    :cond_231
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .restart local v11    # "weightedMaxHeight":I
    if-eqz v0, :cond_238

    move/from16 v6, v27

    goto :goto_239

    :cond_238
    move v6, v4

    :goto_239
    move/from16 v12, v38

    .end local v38    # "alternativeMaxHeight":I
    .local v12, "alternativeMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v38, v6

    move v6, v11

    .line 1090
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "alternativeMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    .restart local v38    # "alternativeMaxHeight":I
    :goto_242
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v3

    move v4, v5

    move/from16 v0, v29

    move/from16 v1, v33

    move/from16 v3, v38

    move v5, v2

    move v2, v6

    .line 963
    .end local v6    # "weightedMaxHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v27    # "margin":I
    .end local v29    # "totalWeight":F
    .end local v33    # "largestChildWidth":I
    .end local v38    # "alternativeMaxHeight":I
    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .restart local v18    # "allFillParent":Z
    :goto_252
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v30

    move/from16 v11, v31

    goto/16 :goto_77

    .end local v21    # "baselineAligned":Z
    .end local v30    # "widthMode":I
    .end local v31    # "count":I
    .local v6, "baselineAligned":Z
    .local v11, "count":I
    .local v12, "widthMode":I
    :cond_25e
    move/from16 v21, v6

    move/from16 v31, v11

    move/from16 v30, v12

    move v11, v2

    move v2, v3

    move v6, v4

    move v12, v5

    move v3, v1

    .line 1093
    .end local v1    # "largestChildWidth":I
    .end local v4    # "childState":I
    .end local v5    # "maxHeight":I
    .end local v9    # "i":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "largestChildWidth":I
    .local v6, "childState":I
    .local v11, "weightedMaxHeight":I
    .local v12, "maxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "count":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_27d

    move/from16 v1, v31

    .end local v31    # "count":I
    .local v1, "count":I
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 1094
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_27f

    .line 1093
    .end local v1    # "count":I
    .restart local v31    # "count":I
    :cond_27d
    move/from16 v1, v31

    .line 1099
    .end local v31    # "count":I
    .restart local v1    # "count":I
    :cond_27f
    :goto_27f
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_296

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_296

    aget v4, v10, v19

    if-ne v4, v5, :cond_296

    aget v4, v10, v17

    if-eq v4, v5, :cond_292

    goto :goto_296

    :cond_292
    move/from16 v40, v6

    move v5, v12

    goto :goto_2c9

    .line 1103
    :cond_296
    :goto_296
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1105
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1104
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1103
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v40, v6

    .end local v6    # "childState":I
    .restart local v40    # "childState":I
    aget v6, v15, v19

    .line 1108
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1107
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1106
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1109
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 1112
    .end local v4    # "ascent":I
    .end local v12    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_2c9
    if-eqz v14, :cond_345

    move/from16 v4, v30

    const/high16 v6, -0x80000000

    .end local v30    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v6, :cond_2d8

    if-nez v4, :cond_2d4

    goto :goto_2d8

    :cond_2d4
    move/from16 v26, v5

    goto/16 :goto_349

    .line 1114
    :cond_2d8
    :goto_2d8
    const/4 v6, 0x0

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2dc
    if-ge v6, v1, :cond_340

    .line 1117
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1119
    .restart local v8    # "child":Landroid/view/View;
    if-nez v8, :cond_2f2

    .line 1120
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1121
    move/from16 v26, v5

    move/from16 v30, v6

    goto :goto_339

    .line 1124
    :cond_2f2
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_302

    .line 1125
    invoke-virtual {v7, v8, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v6, v9

    .line 1126
    move/from16 v26, v5

    goto :goto_33b

    .line 1129
    :cond_302
    nop

    .line 1130
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1131
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_320

    .line 1132
    iget v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v5

    .end local v5    # "maxHeight":I
    .local v26, "maxHeight":I
    iget v5, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    move/from16 v30, v6

    .end local v6    # "i":I
    .local v30, "i":I
    iget v6, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1133
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v12, v5

    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_339

    .line 1135
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .restart local v5    # "maxHeight":I
    .restart local v6    # "i":I
    :cond_320
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1136
    .local v5, "totalLength":I
    add-int v6, v5, v3

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v12

    iget v12, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v12

    .line 1137
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v6, v12

    .line 1136
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1116
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "maxHeight":I
    .end local v30    # "i":I
    .local v5, "maxHeight":I
    .restart local v6    # "i":I
    :goto_339
    move/from16 v6, v30

    .end local v5    # "maxHeight":I
    .restart local v26    # "maxHeight":I
    :goto_33b
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v26

    goto :goto_2dc

    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    :cond_340
    move/from16 v26, v5

    move/from16 v30, v6

    .end local v5    # "maxHeight":I
    .end local v6    # "i":I
    .restart local v26    # "maxHeight":I
    .restart local v30    # "i":I
    goto :goto_349

    .line 1112
    .end local v4    # "widthMode":I
    .end local v26    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    .local v30, "widthMode":I
    :cond_345
    move/from16 v26, v5

    move/from16 v4, v30

    .line 1143
    .end local v5    # "maxHeight":I
    .end local v30    # "widthMode":I
    .restart local v4    # "widthMode":I
    .restart local v26    # "maxHeight":I
    :goto_349
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1148
    .local v5, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1151
    move/from16 v6, p1

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 1152
    .local v9, "widthSizeAndState":I
    const v8, 0xffffff

    and-int v5, v9, v8

    .line 1157
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v8, v5, v8

    .line 1158
    .local v8, "delta":I
    if-nez v24, :cond_417

    if-eqz v8, :cond_384

    cmpl-float v30, v0, v28

    if-lez v30, :cond_384

    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    goto/16 :goto_420

    .line 1269
    :cond_384
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1273
    if-eqz v14, :cond_3f7

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v4, v12, :cond_3f7

    .line 1274
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_38f
    if-ge v12, v1, :cond_3ec

    .line 1275
    move/from16 v31, v0

    .end local v0    # "totalWeight":F
    .local v31, "totalWeight":F
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3d9

    move/from16 v16, v2

    .end local v2    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v33, v5

    const/16 v5, 0x8

    .end local v5    # "widthSize":I
    .local v33, "widthSize":I
    if-ne v2, v5, :cond_3aa

    .line 1278
    move/from16 v35, v3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3e1

    .line 1281
    :cond_3aa
    nop

    .line 1282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1284
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1285
    .local v5, "childExtra":F
    cmpl-float v17, v5, v28

    if-lez v17, :cond_3d0

    .line 1286
    nop

    .line 1287
    move-object/from16 v17, v2

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1288
    move/from16 v35, v3

    .end local v3    # "largestChildWidth":I
    .restart local v35    # "largestChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1286
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3e1

    .line 1285
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v35    # "largestChildWidth":I
    .restart local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "childExtra":F
    :cond_3d0
    move-object/from16 v17, v2

    move/from16 v35, v3

    move/from16 v19, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v3    # "largestChildWidth":I
    .end local v5    # "childExtra":F
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v35    # "largestChildWidth":I
    goto :goto_3e1

    .line 1277
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v2, "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .local v5, "widthSize":I
    :cond_3d9
    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1274
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_3e1
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v0, v31

    move/from16 v5, v33

    move/from16 v3, v35

    goto :goto_38f

    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_3ec
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    goto :goto_401

    .line 1273
    .end local v12    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_3f7
    move/from16 v31, v0

    move/from16 v16, v2

    move/from16 v35, v3

    move/from16 v33, v5

    const/high16 v2, 0x40000000    # 2.0f

    .line 1295
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .end local v5    # "widthSize":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_401
    move/from16 v12, p2

    move/from16 v34, v1

    move/from16 v25, v9

    move/from16 v36, v11

    move/from16 v2, v16

    move/from16 v5, v26

    move/from16 v26, v14

    move/from16 v45, v40

    move/from16 v40, v4

    move/from16 v4, v45

    goto/16 :goto_60d

    .line 1158
    .end local v16    # "alternativeMaxHeight":I
    .end local v31    # "totalWeight":F
    .end local v33    # "widthSize":I
    .end local v35    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v2    # "alternativeMaxHeight":I
    .restart local v3    # "largestChildWidth":I
    .restart local v5    # "widthSize":I
    :cond_417
    move/from16 v31, v0

    move/from16 v35, v3

    move/from16 v33, v5

    move v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 1159
    .end local v0    # "totalWeight":F
    .end local v2    # "alternativeMaxHeight":I
    .end local v5    # "widthSize":I
    .local v3, "alternativeMaxHeight":I
    .restart local v31    # "totalWeight":F
    .restart local v33    # "widthSize":I
    .restart local v35    # "largestChildWidth":I
    :goto_420
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v5, v0, v28

    if-lez v5, :cond_427

    goto :goto_429

    :cond_427
    move/from16 v0, v31

    .line 1161
    .local v0, "weightSum":F
    :goto_429
    const/4 v5, -0x1

    aput v5, v10, v17

    aput v5, v10, v19

    aput v5, v10, v20

    const/4 v12, 0x0

    aput v5, v10, v12

    .line 1162
    aput v5, v15, v17

    aput v5, v15, v19

    aput v5, v15, v20

    aput v5, v15, v12

    .line 1163
    const/4 v5, -0x1

    .line 1165
    .end local v26    # "maxHeight":I
    .local v5, "maxHeight":I
    iput v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1167
    const/4 v12, 0x0

    move v2, v12

    move v12, v8

    move v8, v5

    move/from16 v5, v40

    .end local v40    # "childState":I
    .local v2, "i":I
    .local v5, "childState":I
    .local v8, "maxHeight":I
    .local v12, "delta":I
    :goto_444
    if-ge v2, v1, :cond_5aa

    .line 1168
    move/from16 v36, v11

    .end local v11    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1170
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_58c

    move/from16 v26, v14

    .end local v14    # "useLargestChild":Z
    .local v26, "useLargestChild":Z
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 v34, v1

    const/16 v1, 0x8

    .end local v1    # "count":I
    .local v34, "count":I
    if-ne v14, v1, :cond_465

    .line 1171
    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/16 v27, -0x2

    move/from16 v12, p2

    goto/16 :goto_599

    .line 1174
    :cond_465
    nop

    .line 1175
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1177
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1178
    .local v1, "childExtra":F
    cmpl-float v37, v1, v28

    if-lez v37, :cond_4d8

    .line 1180
    int-to-float v6, v12

    mul-float v6, v6, v1

    div-float/2addr v6, v0

    float-to-int v6, v6

    .line 1181
    .local v6, "share":I
    sub-float/2addr v0, v1

    .line 1182
    sub-int/2addr v12, v6

    .line 1184
    nop

    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v38, v0

    .end local v0    # "weightSum":F
    .local v38, "weightSum":F
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v37, v37, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v37, v0

    move/from16 v37, v1

    .end local v1    # "childExtra":F
    .local v37, "childExtra":F
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1184
    move/from16 v25, v9

    move/from16 v39, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v25, "widthSizeAndState":I
    .local v39, "delta":I
    invoke-static {v12, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1191
    .local v0, "childHeightMeasureSpec":I
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_4b4

    if-eq v4, v9, :cond_4a5

    goto :goto_4b4

    .line 1204
    :cond_4a5
    if-lez v6, :cond_4a9

    move v1, v6

    goto :goto_4aa

    :cond_4a9
    const/4 v1, 0x0

    :goto_4aa
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    move/from16 v40, v4

    goto :goto_4c7

    .line 1194
    :cond_4b4
    :goto_4b4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1195
    .local v1, "childWidth":I
    if-gez v1, :cond_4bc

    .line 1196
    const/4 v1, 0x0

    .line 1199
    :cond_4bc
    nop

    .line 1200
    move/from16 v40, v4

    .end local v4    # "widthMode":I
    .local v40, "widthMode":I
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1199
    invoke-virtual {v11, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1202
    .end local v1    # "childWidth":I
    nop

    .line 1210
    :goto_4c7
    nop

    .line 1211
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    .line 1210
    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v38

    move/from16 v1, v39

    goto :goto_4e3

    .line 1178
    .end local v6    # "share":I
    .end local v25    # "widthSizeAndState":I
    .end local v37    # "childExtra":F
    .end local v38    # "weightSum":F
    .end local v39    # "delta":I
    .end local v40    # "widthMode":I
    .local v0, "weightSum":F
    .local v1, "childExtra":F
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .restart local v12    # "delta":I
    :cond_4d8
    move/from16 v37, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    const/high16 v9, 0x40000000    # 2.0f

    move/from16 v12, p2

    .line 1214
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v12    # "delta":I
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v37    # "childExtra":F
    .restart local v40    # "widthMode":I
    :goto_4e3
    if-eqz v23, :cond_4fa

    .line 1215
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1216
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v4, v6

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_512

    .line 1218
    :cond_4fa
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1219
    .local v4, "totalLength":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    .line 1220
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    .line 1219
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    .end local v4    # "totalLength":I
    :goto_512
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v13, v4, :cond_51d

    iget v4, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_51d

    const/4 v4, 0x1

    goto :goto_51e

    :cond_51d
    const/4 v4, 0x0

    .line 1226
    .local v4, "matchHeightLocally":Z
    :goto_51e
    iget v6, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    .line 1227
    .local v6, "margin":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 1228
    .local v9, "childHeight":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1229
    move/from16 v39, v0

    if-eqz v4, :cond_532

    move v0, v6

    goto :goto_533

    :cond_532
    move v0, v9

    .end local v0    # "weightSum":F
    .local v39, "weightSum":F
    :goto_533
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1232
    .end local v3    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_542

    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v41, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v3, v0, :cond_544

    const/4 v0, 0x1

    goto :goto_545

    .end local v41    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_542
    move/from16 v41, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_544
    const/4 v0, 0x0

    .line 1234
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_545
    if-eqz v21, :cond_57f

    .line 1235
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 1236
    .local v3, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v3, v0, :cond_57a

    .line 1238
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_557

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_559

    :cond_557
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_559
    and-int/lit8 v0, v0, 0x70

    .line 1240
    .local v0, "gravity":I
    shr-int/lit8 v42, v0, 0x4

    const/16 v27, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1243
    .local v42, "index":I
    move/from16 v43, v0

    .end local v0    # "gravity":I
    .local v43, "gravity":I
    aget v0, v10, v42

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v42

    .line 1244
    aget v0, v15, v42

    move/from16 v44, v1

    .end local v1    # "delta":I
    .local v44, "delta":I
    sub-int v1, v9, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v42

    goto :goto_585

    .line 1236
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "delta":I
    .restart local v1    # "delta":I
    :cond_57a
    move/from16 v44, v1

    const/16 v27, -0x2

    .end local v1    # "delta":I
    .restart local v44    # "delta":I
    goto :goto_585

    .line 1234
    .end local v3    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v44    # "delta":I
    .local v0, "allFillParent":Z
    .restart local v1    # "delta":I
    :cond_57f
    move/from16 v18, v0

    move/from16 v44, v1

    const/16 v27, -0x2

    .line 1167
    .end local v0    # "allFillParent":Z
    .end local v1    # "delta":I
    .end local v4    # "matchHeightLocally":Z
    .end local v6    # "margin":I
    .end local v9    # "childHeight":I
    .end local v11    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v37    # "childExtra":F
    .restart local v18    # "allFillParent":Z
    .restart local v44    # "delta":I
    :goto_585
    move/from16 v0, v39

    move/from16 v3, v41

    move/from16 v1, v44

    goto :goto_599

    .line 1170
    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v39    # "weightSum":F
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .end local v44    # "delta":I
    .local v0, "weightSum":F
    .local v1, "count":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "widthMode":I
    .local v9, "widthSizeAndState":I
    .restart local v11    # "child":Landroid/view/View;
    .restart local v12    # "delta":I
    .local v14, "useLargestChild":Z
    :cond_58c
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move v1, v12

    move/from16 v26, v14

    const/16 v27, -0x2

    move/from16 v12, p2

    .line 1167
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v40    # "widthMode":I
    :goto_599
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, p1

    move v12, v1

    move/from16 v9, v25

    move/from16 v14, v26

    move/from16 v1, v34

    move/from16 v11, v36

    move/from16 v4, v40

    goto/16 :goto_444

    .end local v25    # "widthSizeAndState":I
    .end local v26    # "useLargestChild":Z
    .end local v34    # "count":I
    .end local v36    # "weightedMaxHeight":I
    .end local v40    # "widthMode":I
    .local v1, "count":I
    .restart local v4    # "widthMode":I
    .restart local v9    # "widthSizeAndState":I
    .local v11, "weightedMaxHeight":I
    .restart local v12    # "delta":I
    .restart local v14    # "useLargestChild":Z
    :cond_5aa
    move/from16 v34, v1

    move/from16 v40, v4

    move/from16 v25, v9

    move/from16 v36, v11

    move v1, v12

    move/from16 v26, v14

    move/from16 v12, p2

    .line 1251
    .end local v2    # "i":I
    .end local v4    # "widthMode":I
    .end local v9    # "widthSizeAndState":I
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "delta":I
    .end local v14    # "useLargestChild":Z
    .local v1, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v26    # "useLargestChild":Z
    .restart local v34    # "count":I
    .restart local v36    # "weightedMaxHeight":I
    .restart local v40    # "widthMode":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1256
    aget v2, v10, v20

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5da

    const/4 v2, 0x0

    aget v6, v10, v2

    if-ne v6, v4, :cond_5da

    aget v2, v10, v19

    if-ne v2, v4, :cond_5da

    aget v2, v10, v17

    if-eq v2, v4, :cond_5d8

    goto :goto_5da

    :cond_5d8
    move v6, v8

    goto :goto_609

    .line 1260
    :cond_5da
    :goto_5da
    aget v2, v10, v17

    const/4 v4, 0x0

    aget v6, v10, v4

    aget v9, v10, v20

    aget v11, v10, v19

    .line 1262
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1261
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1260
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1263
    .local v2, "ascent":I
    aget v6, v15, v17

    aget v4, v15, v4

    aget v9, v15, v20

    aget v11, v15, v19

    .line 1265
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1264
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1263
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1266
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1268
    .end local v0    # "weightSum":F
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    .end local v8    # "maxHeight":I
    .local v6, "maxHeight":I
    :goto_609
    move v8, v1

    move v2, v3

    move v4, v5

    move v5, v6

    .line 1295
    .end local v1    # "delta":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v6    # "maxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v4, "childState":I
    .local v5, "maxHeight":I
    .local v8, "delta":I
    :goto_60d
    if-nez v18, :cond_614

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_614

    .line 1296
    move v5, v2

    .line 1299
    :cond_614
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1304
    .end local v5    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v4

    or-int v1, v25, v1

    shl-int/lit8 v3, v4, 0x10

    .line 1305
    invoke-static {v0, v12, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1304
    invoke-virtual {v7, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v22, :cond_63e

    .line 1309
    move/from16 v1, p1

    move/from16 v3, v34

    .end local v34    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_642

    .line 1308
    .end local v3    # "count":I
    .restart local v34    # "count":I
    :cond_63e
    move/from16 v1, p1

    move/from16 v3, v34

    .line 1311
    .end local v34    # "count":I
    .restart local v3    # "count":I
    :goto_642
    return-void
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 595
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 598
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 599
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 600
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 601
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 603
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 605
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 606
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 608
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 609
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 611
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 612
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 614
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 617
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    move/from16 v19, v14

    move v14, v0

    move v0, v5

    move v5, v2

    move/from16 v2, v18

    move/from16 v18, v6

    move v6, v1

    move/from16 v37, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v37

    .end local v1    # "childState":I
    .local v0, "totalWeight":F
    .local v2, "i":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    .local v19, "skippedMeasure":Z
    :goto_36
    move/from16 v20, v4

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    const/16 v1, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v2, v11, :cond_1be

    .line 618
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 620
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_54

    .line 621
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v1, v1, v21

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 622
    move/from16 v4, v20

    goto/16 :goto_1b8

    .line 625
    :cond_54
    move/from16 v26, v3

    .end local v3    # "largestChildHeight":I
    .local v26, "largestChildHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_67

    .line 626
    invoke-virtual {v7, v4, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 627
    move/from16 v4, v20

    move/from16 v3, v26

    goto/16 :goto_1b8

    .line 630
    :cond_67
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 631
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v3

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 634
    :cond_74
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 636
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v27, v0, v1

    .line 638
    .end local v0    # "totalWeight":F
    .local v27, "totalWeight":F
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_ad

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_ad

    iget v0, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_ad

    .line 642
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 643
    .local v0, "totalLength":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v28, v2

    .end local v2    # "i":I
    .local v28, "i":I
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    const/16 v19, 0x1

    .line 645
    .end local v0    # "totalLength":I
    move-object v1, v3

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v34, v20

    move/from16 v3, v26

    move/from16 v25, v28

    move-object v5, v4

    goto/16 :goto_126

    .line 638
    .end local v28    # "i":I
    .restart local v2    # "i":I
    :cond_ad
    move/from16 v28, v2

    .line 646
    .end local v2    # "i":I
    .restart local v28    # "i":I
    const/high16 v0, -0x80000000

    .line 648
    .local v0, "oldHeight":I
    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_c1

    iget v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_c1

    .line 653
    const/4 v0, 0x0

    .line 654
    const/4 v1, -0x2

    iput v1, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v2, v0

    goto :goto_c2

    .line 661
    :cond_c1
    move v2, v0

    .end local v0    # "oldHeight":I
    .local v2, "oldHeight":I
    :goto_c2
    const/16 v29, 0x0

    cmpl-float v0, v27, v23

    if-nez v0, :cond_cd

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_cf

    :cond_cd
    const/16 v30, 0x0

    :goto_cf
    move-object/from16 v0, p0

    const/high16 v8, -0x80000000

    const/high16 v21, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v25, v28

    .end local v2    # "oldHeight":I
    .end local v28    # "i":I
    .local v25, "i":I
    .local v31, "oldHeight":I
    move/from16 v2, v25

    move-object/from16 v33, v3

    move/from16 v32, v26

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "largestChildHeight":I
    .local v32, "largestChildHeight":I
    .local v33, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v3, p1

    move/from16 v34, v20

    move-object/from16 v20, v4

    .end local v4    # "child":Landroid/view/View;
    .local v20, "child":Landroid/view/View;
    .local v34, "weightedMaxWidth":I
    move/from16 v4, v29

    move/from16 v35, v5

    .end local v5    # "alternativeMaxWidth":I
    .local v35, "alternativeMaxWidth":I
    move/from16 v5, p2

    move/from16 v36, v6

    .end local v6    # "childState":I
    .local v36, "childState":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 665
    move/from16 v0, v31

    .end local v31    # "oldHeight":I
    .restart local v0    # "oldHeight":I
    if-eq v0, v8, :cond_fc

    .line 666
    move-object/from16 v1, v33

    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    goto :goto_fe

    .line 665
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_fc
    move-object/from16 v1, v33

    .line 669
    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_fe
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 670
    .local v2, "childHeight":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 671
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 672
    move-object/from16 v5, v20

    .end local v20    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v4, v6

    .line 671
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 674
    if-eqz v10, :cond_123

    .line 675
    move/from16 v4, v32

    .end local v32    # "largestChildHeight":I
    .local v4, "largestChildHeight":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v4

    goto :goto_126

    .line 674
    .end local v4    # "largestChildHeight":I
    .restart local v32    # "largestChildHeight":I
    :cond_123
    move/from16 v4, v32

    .end local v32    # "largestChildHeight":I
    .restart local v4    # "largestChildHeight":I
    move v3, v4

    .line 683
    .end local v0    # "oldHeight":I
    .end local v2    # "childHeight":I
    .end local v4    # "largestChildHeight":I
    .local v3, "largestChildHeight":I
    :goto_126
    if-ltz v15, :cond_133

    move/from16 v2, v25

    .end local v25    # "i":I
    .local v2, "i":I
    add-int/lit8 v0, v2, 0x1

    if-ne v15, v0, :cond_135

    .line 684
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    goto :goto_135

    .line 683
    .end local v2    # "i":I
    .restart local v25    # "i":I
    :cond_133
    move/from16 v2, v25

    .line 690
    .end local v25    # "i":I
    .restart local v2    # "i":I
    :cond_135
    :goto_135
    if-ge v2, v15, :cond_146

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_13e

    goto :goto_146

    .line 691
    :cond_13e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_146
    :goto_146
    const/4 v0, 0x0

    .line 698
    .local v0, "matchWidthLocally":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_154

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_155

    .line 703
    const/16 v18, 0x1

    .line 704
    const/4 v0, 0x1

    goto :goto_155

    .line 698
    :cond_154
    const/4 v6, -0x1

    .line 707
    :cond_155
    :goto_155
    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v8

    .line 708
    .local v4, "margin":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v4

    .line 709
    .local v8, "measuredWidth":I
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 710
    nop

    .line 711
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 710
    move/from16 v20, v8

    move/from16 v8, v36

    .end local v36    # "childState":I
    .local v8, "childState":I
    .local v20, "measuredWidth":I
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 713
    .end local v8    # "childState":I
    .restart local v6    # "childState":I
    if-eqz v17, :cond_17b

    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v21, v3

    const/4 v3, -0x1

    .end local v3    # "largestChildHeight":I
    .local v21, "largestChildHeight":I
    if-ne v8, v3, :cond_17d

    const/4 v3, 0x1

    goto :goto_17e

    .end local v21    # "largestChildHeight":I
    .restart local v3    # "largestChildHeight":I
    :cond_17b
    move/from16 v21, v3

    .end local v3    # "largestChildHeight":I
    .restart local v21    # "largestChildHeight":I
    :cond_17d
    const/4 v3, 0x0

    .line 714
    .end local v17    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_17e
    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v23

    if-lez v8, :cond_197

    .line 719
    if-eqz v0, :cond_188

    move v8, v4

    goto :goto_18a

    :cond_188
    move/from16 v8, v20

    :goto_18a
    move/from16 v24, v6

    move/from16 v6, v34

    .end local v34    # "weightedMaxWidth":I
    .local v6, "weightedMaxWidth":I
    .local v24, "childState":I
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v33, v1

    move/from16 v1, v35

    goto :goto_1a9

    .line 722
    .end local v24    # "childState":I
    .local v6, "childState":I
    .restart local v34    # "weightedMaxWidth":I
    :cond_197
    move/from16 v24, v6

    move/from16 v6, v34

    .end local v34    # "weightedMaxWidth":I
    .local v6, "weightedMaxWidth":I
    .restart local v24    # "childState":I
    if-eqz v0, :cond_19f

    move v8, v4

    goto :goto_1a1

    :cond_19f
    move/from16 v8, v20

    :goto_1a1
    move-object/from16 v33, v1

    move/from16 v1, v35

    .end local v35    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .restart local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 726
    :goto_1a9
    invoke-virtual {v7, v5, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v2, v8

    move v5, v1

    move/from16 v17, v3

    move v4, v6

    move/from16 v3, v21

    move/from16 v6, v24

    move/from16 v0, v27

    .line 617
    .end local v1    # "alternativeMaxWidth":I
    .end local v20    # "measuredWidth":I
    .end local v21    # "largestChildHeight":I
    .end local v24    # "childState":I
    .end local v27    # "totalWeight":F
    .end local v33    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "totalWeight":F
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "alternativeMaxWidth":I
    .local v6, "childState":I
    .restart local v17    # "allFillParent":Z
    :goto_1b8
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p1

    goto/16 :goto_36

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    :cond_1be
    move v4, v3

    move v1, v5

    move v8, v6

    move/from16 v6, v20

    const/high16 v3, -0x80000000

    const/16 v5, 0x8

    .line 729
    .end local v2    # "i":I
    .end local v3    # "largestChildHeight":I
    .end local v5    # "alternativeMaxWidth":I
    .end local v20    # "weightedMaxWidth":I
    .restart local v1    # "alternativeMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v6, "weightedMaxWidth":I
    .restart local v8    # "childState":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_1d8

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 730
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v5

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 733
    :cond_1d8
    if-eqz v10, :cond_23a

    if-eq v13, v3, :cond_1e2

    if-nez v13, :cond_1df

    goto :goto_1e2

    :cond_1df
    move/from16 v36, v8

    goto :goto_23c

    .line 735
    :cond_1e2
    :goto_1e2
    const/4 v2, 0x0

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1e6
    if-ge v2, v11, :cond_235

    .line 738
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 740
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_1fd

    .line 741
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v5, v5, v21

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 742
    move/from16 v24, v2

    move/from16 v36, v8

    goto :goto_22e

    .line 745
    :cond_1fd
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    move/from16 v36, v8

    const/16 v8, 0x8

    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    if-ne v5, v8, :cond_20d

    .line 746
    invoke-virtual {v7, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v2, v5

    .line 747
    goto :goto_230

    .line 750
    :cond_20d
    nop

    .line 751
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 753
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 754
    .local v8, "totalLength":I
    add-int v21, v8, v4

    move/from16 v24, v2

    .end local v2    # "i":I
    .local v24, "i":I
    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v2

    iget v2, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v2

    .line 755
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v21, v2

    .line 754
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 737
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "i":I
    .end local v36    # "childState":I
    .restart local v2    # "i":I
    .local v8, "childState":I
    :goto_22e
    move/from16 v2, v24

    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    :goto_230
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v36

    goto :goto_1e6

    .end local v36    # "childState":I
    .restart local v8    # "childState":I
    :cond_235
    move/from16 v24, v2

    move/from16 v36, v8

    .end local v2    # "i":I
    .end local v8    # "childState":I
    .restart local v24    # "i":I
    .restart local v36    # "childState":I
    goto :goto_23c

    .line 733
    .end local v24    # "i":I
    .end local v36    # "childState":I
    .restart local v8    # "childState":I
    :cond_23a
    move/from16 v36, v8

    .line 760
    .end local v8    # "childState":I
    .restart local v36    # "childState":I
    :goto_23c
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 762
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 765
    .local v2, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 768
    const/4 v3, 0x0

    invoke-static {v2, v9, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 769
    .local v5, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v2, v5, v3

    .line 774
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v3, v2, v3

    .line 775
    .local v3, "delta":I
    if-nez v19, :cond_2fc

    if-eqz v3, :cond_272

    cmpl-float v8, v0, v23

    if-lez v8, :cond_272

    move/from16 v21, v0

    move/from16 v24, v2

    move/from16 v26, v3

    goto/16 :goto_302

    .line 847
    :cond_272
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 853
    if-eqz v10, :cond_2e0

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v13, v8, :cond_2e0

    .line 854
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_280
    if-ge v8, v11, :cond_2d7

    .line 855
    move/from16 v21, v0

    .end local v0    # "totalWeight":F
    .local v21, "totalWeight":F
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2c6

    move/from16 v16, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v24, v2

    const/16 v2, 0x8

    .end local v2    # "heightSize":I
    .local v24, "heightSize":I
    if-ne v1, v2, :cond_299

    .line 858
    move/from16 v26, v3

    goto :goto_2cc

    .line 861
    :cond_299
    nop

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 864
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 865
    .local v2, "childExtra":F
    cmpl-float v22, v2, v23

    if-lez v22, :cond_2bf

    .line 866
    nop

    .line 867
    move-object/from16 v22, v1

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v25, v2

    const/high16 v2, 0x40000000    # 2.0f

    .end local v2    # "childExtra":F
    .local v25, "childExtra":F
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 869
    move/from16 v26, v3

    .end local v3    # "delta":I
    .local v26, "delta":I
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 866
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2cc

    .line 865
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v2    # "childExtra":F
    .restart local v3    # "delta":I
    :cond_2bf
    move-object/from16 v22, v1

    move/from16 v25, v2

    move/from16 v26, v3

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .end local v3    # "delta":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v25    # "childExtra":F
    .restart local v26    # "delta":I
    goto :goto_2cc

    .line 857
    .end local v16    # "alternativeMaxWidth":I
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "heightSize":I
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .local v1, "alternativeMaxWidth":I
    .local v2, "heightSize":I
    .restart local v3    # "delta":I
    :cond_2c6
    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .line 854
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_2cc
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v21

    move/from16 v2, v24

    move/from16 v3, v26

    goto :goto_280

    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_2d7
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    goto :goto_2e8

    .line 853
    .end local v8    # "i":I
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_2e0
    move/from16 v21, v0

    move/from16 v16, v1

    move/from16 v24, v2

    move/from16 v26, v3

    .line 876
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_2e8
    move/from16 v32, v4

    move/from16 v34, v6

    move/from16 v25, v10

    move/from16 v30, v13

    move/from16 v1, v16

    move/from16 v3, v26

    move/from16 v6, v36

    move/from16 v10, p1

    move/from16 v26, v15

    goto/16 :goto_43c

    .line 775
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "totalWeight":F
    .end local v24    # "heightSize":I
    .end local v26    # "delta":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v2    # "heightSize":I
    .restart local v3    # "delta":I
    :cond_2fc
    move/from16 v21, v0

    move/from16 v24, v2

    move/from16 v26, v3

    .line 776
    .end local v0    # "totalWeight":F
    .end local v2    # "heightSize":I
    .end local v3    # "delta":I
    .restart local v21    # "totalWeight":F
    .restart local v24    # "heightSize":I
    .restart local v26    # "delta":I
    :goto_302
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v2, v0, v23

    if-lez v2, :cond_309

    goto :goto_30b

    :cond_309
    move/from16 v0, v21

    .line 778
    .local v0, "weightSum":F
    :goto_30b
    const/4 v2, 0x0

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 780
    const/4 v3, 0x0

    move v8, v1

    move v2, v14

    move/from16 v1, v26

    move/from16 v14, v36

    .end local v26    # "delta":I
    .end local v36    # "childState":I
    .local v1, "delta":I
    .local v2, "maxWidth":I
    .local v3, "i":I
    .local v8, "alternativeMaxWidth":I
    .local v14, "childState":I
    :goto_315
    if-ge v3, v11, :cond_41e

    .line 781
    move/from16 v32, v4

    .end local v4    # "largestChildHeight":I
    .restart local v32    # "largestChildHeight":I
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 783
    .local v4, "child":Landroid/view/View;
    move/from16 v34, v6

    .end local v6    # "weightedMaxWidth":I
    .restart local v34    # "weightedMaxWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v25, v10

    const/16 v10, 0x8

    .end local v10    # "useLargestChild":Z
    .local v25, "useLargestChild":Z
    if-ne v6, v10, :cond_331

    .line 784
    move/from16 v10, p1

    move/from16 v30, v13

    move/from16 v26, v15

    goto/16 :goto_410

    .line 787
    :cond_331
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 789
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 790
    .local v10, "childExtra":F
    cmpl-float v26, v10, v23

    if-lez v26, :cond_3aa

    .line 792
    move/from16 v26, v15

    .end local v15    # "baselineChildIndex":I
    .local v26, "baselineChildIndex":I
    int-to-float v15, v1

    mul-float v15, v15, v10

    div-float/2addr v15, v0

    float-to-int v15, v15

    .line 793
    .local v15, "share":I
    sub-float/2addr v0, v10

    .line 794
    sub-int/2addr v1, v15

    .line 796
    nop

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v28, v0

    .end local v0    # "weightSum":F
    .local v28, "weightSum":F
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v27, v27, v0

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v27, v0

    move/from16 v27, v1

    .end local v1    # "delta":I
    .local v27, "delta":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 796
    move/from16 v29, v10

    move/from16 v10, p1

    .end local v10    # "childExtra":F
    .local v29, "childExtra":F
    invoke-static {v10, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 802
    .local v0, "childWidthMeasureSpec":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_383

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_372

    move/from16 v30, v13

    goto :goto_385

    .line 815
    :cond_372
    move/from16 v30, v13

    if-lez v15, :cond_378

    move v13, v15

    goto :goto_379

    :cond_378
    const/4 v13, 0x0

    .line 816
    .end local v13    # "heightMode":I
    .local v30, "heightMode":I
    :goto_379
    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 815
    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    move/from16 v31, v15

    goto :goto_39a

    .line 802
    .end local v30    # "heightMode":I
    .restart local v13    # "heightMode":I
    :cond_383
    move/from16 v30, v13

    .line 805
    .end local v13    # "heightMode":I
    .restart local v30    # "heightMode":I
    :goto_385
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 806
    .local v1, "childHeight":I
    if-gez v1, :cond_38d

    .line 807
    const/4 v1, 0x0

    .line 810
    :cond_38d
    nop

    .line 811
    move/from16 v31, v15

    const/high16 v13, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v31, "share":I
    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 810
    invoke-virtual {v4, v0, v15}, Landroid/view/View;->measure(II)V

    .line 812
    .end local v1    # "childHeight":I
    nop

    .line 821
    :goto_39a
    nop

    .line 822
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    .line 821
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v1, v27

    move/from16 v0, v28

    goto :goto_3b2

    .line 790
    .end local v26    # "baselineChildIndex":I
    .end local v27    # "delta":I
    .end local v28    # "weightSum":F
    .end local v29    # "childExtra":F
    .end local v30    # "heightMode":I
    .end local v31    # "share":I
    .local v0, "weightSum":F
    .local v1, "delta":I
    .restart local v10    # "childExtra":F
    .restart local v13    # "heightMode":I
    .local v15, "baselineChildIndex":I
    :cond_3aa
    move/from16 v29, v10

    move/from16 v30, v13

    move/from16 v26, v15

    move/from16 v10, p1

    .line 826
    .end local v10    # "childExtra":F
    .end local v13    # "heightMode":I
    .end local v15    # "baselineChildIndex":I
    .restart local v26    # "baselineChildIndex":I
    .restart local v29    # "childExtra":F
    .restart local v30    # "heightMode":I
    :goto_3b2
    iget v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    .line 827
    .local v13, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v13

    .line 828
    .local v15, "measuredWidth":I
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 830
    move/from16 v27, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "weightSum":F
    .local v27, "weightSum":F
    if-eq v12, v0, :cond_3cf

    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v28, v1

    const/4 v1, -0x1

    .end local v1    # "delta":I
    .local v28, "delta":I
    if-ne v0, v1, :cond_3d1

    const/4 v0, 0x1

    goto :goto_3d2

    .end local v28    # "delta":I
    .restart local v1    # "delta":I
    :cond_3cf
    move/from16 v28, v1

    .end local v1    # "delta":I
    .restart local v28    # "delta":I
    :cond_3d1
    const/4 v0, 0x0

    .line 833
    .local v0, "matchWidthLocally":Z
    :goto_3d2
    if-eqz v0, :cond_3d6

    move v1, v13

    goto :goto_3d7

    :cond_3d6
    move v1, v15

    :goto_3d7
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 836
    .end local v8    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    if-eqz v17, :cond_3e6

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v31, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .local v31, "matchWidthLocally":Z
    if-ne v8, v0, :cond_3e9

    const/4 v8, 0x1

    goto :goto_3ea

    .end local v31    # "matchWidthLocally":Z
    .restart local v0    # "matchWidthLocally":Z
    :cond_3e6
    move/from16 v31, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .restart local v31    # "matchWidthLocally":Z
    :cond_3e9
    const/4 v8, 0x0

    .line 838
    .end local v17    # "allFillParent":Z
    .local v8, "allFillParent":Z
    :goto_3ea
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 839
    .local v0, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v33, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v33, "alternativeMaxWidth":I
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v17, v17, v1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v17, v17, v1

    .line 840
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v17, v1

    .line 839
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v17, v8

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v8, v33

    .line 780
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v13    # "margin":I
    .end local v15    # "measuredWidth":I
    .end local v27    # "weightSum":F
    .end local v28    # "delta":I
    .end local v29    # "childExtra":F
    .end local v31    # "matchWidthLocally":Z
    .end local v33    # "alternativeMaxWidth":I
    .local v0, "weightSum":F
    .local v1, "delta":I
    .local v8, "alternativeMaxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_410
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v25

    move/from16 v15, v26

    move/from16 v13, v30

    move/from16 v4, v32

    move/from16 v6, v34

    goto/16 :goto_315

    .end local v25    # "useLargestChild":Z
    .end local v26    # "baselineChildIndex":I
    .end local v30    # "heightMode":I
    .end local v32    # "largestChildHeight":I
    .end local v34    # "weightedMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v6, "weightedMaxWidth":I
    .local v10, "useLargestChild":Z
    .local v13, "heightMode":I
    .local v15, "baselineChildIndex":I
    :cond_41e
    move/from16 v32, v4

    move/from16 v34, v6

    move/from16 v25, v10

    move/from16 v30, v13

    move/from16 v26, v15

    move/from16 v10, p1

    .line 844
    .end local v3    # "i":I
    .end local v4    # "largestChildHeight":I
    .end local v6    # "weightedMaxWidth":I
    .end local v10    # "useLargestChild":Z
    .end local v13    # "heightMode":I
    .end local v15    # "baselineChildIndex":I
    .restart local v25    # "useLargestChild":Z
    .restart local v26    # "baselineChildIndex":I
    .restart local v30    # "heightMode":I
    .restart local v32    # "largestChildHeight":I
    .restart local v34    # "weightedMaxWidth":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 846
    .end local v0    # "weightSum":F
    move v3, v1

    move v1, v8

    move v6, v14

    move v14, v2

    .line 876
    .end local v2    # "maxWidth":I
    .end local v8    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    .local v3, "delta":I
    .local v6, "childState":I
    .local v14, "maxWidth":I
    :goto_43c
    if-nez v17, :cond_443

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_443

    .line 877
    move v14, v1

    .line 880
    :cond_443
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 885
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v10, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 888
    if-eqz v18, :cond_461

    .line 889
    invoke-direct {v7, v11, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 891
    :cond_461
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 283
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 284
    return-void

    .line 287
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 288
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 290
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 292
    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1758
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1762
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1763
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1764
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1406
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1407
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1409
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1411
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 550
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 551
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 553
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 555
    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z

    .line 392
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I

    .line 488
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 492
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 493
    return-void

    .line 489
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 233
    return-void

    .line 235
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 240
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 241
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 243
    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 245
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 257
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 1679
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1680
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1681
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1684
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1685
    or-int/lit8 p1, p1, 0x30

    .line 1688
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1689
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1691
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I

    .line 1704
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1705
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    .line 1706
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1707
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1709
    :cond_14
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 418
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1654
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1655
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1656
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1658
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 195
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 198
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 5
    .param p1, "verticalGravity"    # I

    .line 1712
    and-int/lit8 v0, p1, 0x70

    .line 1713
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    .line 1714
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1715
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1717
    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F

    .line 545
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 203
    const/4 v0, 0x0

    return v0
.end method

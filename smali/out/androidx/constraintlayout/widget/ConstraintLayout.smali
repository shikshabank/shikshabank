.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final CACHE_MEASURED_DIMENSION:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.3"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroidx/constraintlayout/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 571
    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 576
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 577
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 513
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 517
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 520
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 522
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 525
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 526
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 527
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 528
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 529
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 530
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 581
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 582
    return-void
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 4
    .param p1, "id"    # I

    .line 1131
    if-nez p1, :cond_5

    .line 1132
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1134
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1135
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_20

    .line 1136
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_20

    if-eq v0, p0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_20

    .line 1138
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1141
    :cond_20
    if-ne v0, p0, :cond_25

    .line 1142
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1144
    :cond_25
    if-nez v0, :cond_29

    const/4 v1, 0x0

    goto :goto_31

    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_31
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 595
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 598
    if-eqz p1, :cond_8c

    .line 599
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 600
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 601
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v2, :cond_89

    .line 602
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 603
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_35

    .line 604
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_86

    .line 605
    :cond_35
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_42

    .line 606
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_86

    .line 607
    :cond_42
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_4f

    .line 608
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_86

    .line 609
    :cond_4f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_5c

    .line 610
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_86

    .line 611
    :cond_5c
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_69

    .line 612
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_86

    .line 613
    :cond_69
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_86

    .line 614
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 616
    .local v5, "id":I
    :try_start_72
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 617
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_80
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_72 .. :try_end_80} :catch_81

    .line 620
    goto :goto_84

    .line 618
    :catch_81
    move-exception v6

    .line 619
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 621
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_84
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 601
    .end local v4    # "attr":I
    .end local v5    # "id":I
    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 624
    .end local v3    # "i":I
    :cond_89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_8c
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 627
    return-void
.end method

.method private internalMeasureChildren(II)V
    .registers 25
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .line 1161
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1162
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1164
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1165
    .local v5, "widgetsCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    if-ge v6, v5, :cond_101

    .line 1166
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1167
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2d

    .line 1168
    goto/16 :goto_f9

    .line 1170
    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1171
    .local v8, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1172
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v10, :cond_f9

    iget-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v10, :cond_3f

    .line 1173
    goto/16 :goto_f9

    .line 1175
    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1177
    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 1178
    .local v10, "width":I
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 1182
    .local v11, "height":I
    iget-boolean v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-nez v12, :cond_6f

    iget-boolean v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v12, :cond_6f

    iget-boolean v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v12, :cond_5c

    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v12, v14, :cond_6f

    :cond_5c
    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-eq v12, v15, :cond_6f

    iget-boolean v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v12, :cond_6d

    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v12, v14, :cond_6f

    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v12, v15, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v12, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v12, 0x1

    .line 1192
    .local v12, "doMeasure":Z
    :goto_70
    const/16 v16, 0x0

    .line 1193
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1195
    .local v17, "didWrapMeasureHeight":Z
    if-eqz v12, :cond_db

    .line 1199
    const/4 v13, -0x2

    if-nez v10, :cond_82

    .line 1200
    invoke-static {v1, v4, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    .line 1202
    .local v18, "childWidthMeasureSpec":I
    const/16 v16, 0x1

    move/from16 v14, v18

    goto :goto_95

    .line 1203
    .end local v18    # "childWidthMeasureSpec":I
    :cond_82
    if-ne v10, v15, :cond_8b

    .line 1204
    invoke-static {v1, v4, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v14, v18

    .restart local v18    # "childWidthMeasureSpec":I
    goto :goto_95

    .line 1207
    .end local v18    # "childWidthMeasureSpec":I
    :cond_8b
    if-ne v10, v13, :cond_8f

    .line 1208
    const/16 v16, 0x1

    .line 1210
    :cond_8f
    invoke-static {v1, v4, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v14, v18

    .line 1213
    .local v14, "childWidthMeasureSpec":I
    :goto_95
    if-nez v11, :cond_a0

    .line 1214
    invoke-static {v2, v3, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    .line 1216
    .local v19, "childHeightMeasureSpec":I
    const/16 v17, 0x1

    move/from16 v15, v19

    goto :goto_b3

    .line 1217
    .end local v19    # "childHeightMeasureSpec":I
    :cond_a0
    if-ne v11, v15, :cond_a9

    .line 1218
    invoke-static {v2, v3, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v15, v19

    .restart local v19    # "childHeightMeasureSpec":I
    goto :goto_b3

    .line 1221
    .end local v19    # "childHeightMeasureSpec":I
    :cond_a9
    if-ne v11, v13, :cond_ad

    .line 1222
    const/16 v17, 0x1

    .line 1224
    :cond_ad
    invoke-static {v2, v3, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v15, v19

    .line 1227
    .local v15, "childHeightMeasureSpec":I
    :goto_b3
    invoke-virtual {v7, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1228
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_c2

    .line 1229
    iget-wide v0, v13, Landroidx/constraintlayout/solver/Metrics;->measures:J

    const-wide/16 v20, 0x1

    add-long v0, v0, v20

    iput-wide v0, v13, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 1232
    :cond_c2
    const/4 v0, -0x2

    if-ne v10, v0, :cond_c7

    const/4 v1, 0x1

    goto :goto_c8

    :cond_c7
    const/4 v1, 0x0

    :goto_c8
    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1233
    if-ne v11, v0, :cond_cf

    const/4 v13, 0x1

    goto :goto_d0

    :cond_cf
    const/4 v13, 0x0

    :goto_d0
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1235
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1238
    .end local v14    # "childWidthMeasureSpec":I
    .end local v15    # "childHeightMeasureSpec":I
    :cond_db
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1239
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1241
    if-eqz v16, :cond_e6

    .line 1242
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1244
    :cond_e6
    if-eqz v17, :cond_eb

    .line 1245
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1248
    :cond_eb
    iget-boolean v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_f9

    .line 1249
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1250
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f9

    .line 1251
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1165
    .end local v0    # "baseline":I
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "doMeasure":Z
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    :cond_f9
    :goto_f9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_1d

    .line 1255
    .end local v6    # "i":I
    :cond_101
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .registers 31
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .line 1283
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1284
    .local v3, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1286
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1287
    .local v5, "widgetsCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    const/16 v9, 0x8

    const/4 v12, -0x2

    if-ge v6, v5, :cond_e0

    .line 1288
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1289
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v9, :cond_2f

    .line 1290
    move v8, v3

    goto/16 :goto_d9

    .line 1292
    :cond_2f
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1293
    .local v9, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v15, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1294
    .local v15, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_d8

    iget-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_42

    .line 1295
    move v8, v3

    goto/16 :goto_d9

    .line 1297
    :cond_42
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1299
    iget v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 1300
    .local v11, "width":I
    iget v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 1302
    .local v13, "height":I
    if-eqz v11, :cond_c8

    if-nez v13, :cond_54

    move v8, v3

    goto/16 :goto_c9

    .line 1308
    :cond_54
    const/16 v16, 0x0

    .line 1309
    .local v16, "didWrapMeasureWidth":Z
    const/16 v17, 0x0

    .line 1313
    .local v17, "didWrapMeasureHeight":Z
    if-ne v11, v12, :cond_5c

    .line 1314
    const/16 v16, 0x1

    .line 1316
    :cond_5c
    invoke-static {v1, v4, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 1318
    .local v10, "childWidthMeasureSpec":I
    if-ne v13, v12, :cond_64

    .line 1319
    const/16 v17, 0x1

    .line 1321
    :cond_64
    invoke-static {v2, v3, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 1323
    .local v12, "childHeightMeasureSpec":I
    invoke-virtual {v14, v10, v12}, Landroid/view/View;->measure(II)V

    .line 1324
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_79

    .line 1325
    move v8, v3

    .end local v3    # "heightPadding":I
    .local v8, "heightPadding":I
    iget-wide v2, v7, Landroidx/constraintlayout/solver/Metrics;->measures:J

    const-wide/16 v18, 0x1

    add-long v2, v2, v18

    iput-wide v2, v7, Landroidx/constraintlayout/solver/Metrics;->measures:J

    goto :goto_7a

    .line 1324
    .end local v8    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_79
    move v8, v3

    .line 1328
    .end local v3    # "heightPadding":I
    .restart local v8    # "heightPadding":I
    :goto_7a
    const/4 v2, -0x2

    if-ne v11, v2, :cond_7f

    const/4 v3, 0x1

    goto :goto_80

    :cond_7f
    const/4 v3, 0x0

    :goto_80
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1329
    if-ne v13, v2, :cond_87

    const/4 v2, 0x1

    goto :goto_88

    :cond_87
    const/4 v2, 0x0

    :goto_88
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1330
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1331
    .end local v11    # "width":I
    .local v2, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1333
    .end local v13    # "height":I
    .local v3, "height":I
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1334
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1336
    if-eqz v16, :cond_9e

    .line 1337
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1339
    :cond_9e
    if-eqz v17, :cond_a3

    .line 1340
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1343
    :cond_a3
    iget-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v7, :cond_b1

    .line 1344
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v7

    .line 1345
    .local v7, "baseline":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_b1

    .line 1346
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1350
    .end local v7    # "baseline":I
    :cond_b1
    iget-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v7, :cond_d9

    iget-boolean v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v7, :cond_d9

    .line 1351
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1352
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_d9

    .line 1302
    .end local v2    # "width":I
    .end local v8    # "heightPadding":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v12    # "childHeightMeasureSpec":I
    .end local v16    # "didWrapMeasureWidth":Z
    .end local v17    # "didWrapMeasureHeight":Z
    .local v3, "heightPadding":I
    .restart local v11    # "width":I
    .restart local v13    # "height":I
    :cond_c8
    move v8, v3

    .line 1303
    .end local v3    # "heightPadding":I
    .restart local v8    # "heightPadding":I
    :goto_c9
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1304
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1305
    goto :goto_d9

    .line 1294
    .end local v8    # "heightPadding":I
    .end local v11    # "width":I
    .end local v13    # "height":I
    .restart local v3    # "heightPadding":I
    :cond_d8
    move v8, v3

    .line 1287
    .end local v3    # "heightPadding":I
    .end local v9    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "heightPadding":I
    :cond_d9
    :goto_d9
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p2

    move v3, v8

    goto/16 :goto_1d

    .end local v8    # "heightPadding":I
    .restart local v3    # "heightPadding":I
    :cond_e0
    move v8, v3

    .line 1357
    .end local v3    # "heightPadding":I
    .end local v6    # "i":I
    .restart local v8    # "heightPadding":I
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e7
    if-ge v2, v5, :cond_316

    .line 1360
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1361
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v9, :cond_fe

    .line 1362
    move/from16 v22, v2

    move/from16 v25, v4

    move/from16 v17, v5

    const/4 v1, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_30a

    .line 1364
    :cond_fe
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1365
    .local v6, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1366
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v10, :cond_300

    iget-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v10, :cond_119

    .line 1367
    move/from16 v22, v2

    move/from16 v25, v4

    move/from16 v17, v5

    const/4 v1, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_30a

    .line 1369
    :cond_119
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1371
    iget v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 1372
    .local v10, "width":I
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 1374
    .local v11, "height":I
    if-eqz v10, :cond_133

    if-eqz v11, :cond_133

    .line 1375
    move/from16 v22, v2

    move/from16 v25, v4

    move/from16 v17, v5

    const/4 v1, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_30a

    .line 1378
    :cond_133
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v12

    .line 1379
    .local v12, "left":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 1380
    .local v13, "right":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_161

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1381
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_161

    const/4 v14, 0x1

    goto :goto_162

    :cond_161
    const/4 v14, 0x0

    .line 1382
    .local v14, "bothHorizontal":Z
    :goto_162
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v15

    .line 1383
    .local v15, "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 1384
    .local v9, "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move/from16 v17, v5

    .end local v5    # "widgetsCount":I
    .local v17, "widgetsCount":I
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-eqz v5, :cond_192

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1385
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-eqz v5, :cond_192

    const/4 v5, 0x1

    goto :goto_193

    :cond_192
    const/4 v5, 0x0

    .line 1387
    .local v5, "bothVertical":Z
    :goto_193
    if-nez v10, :cond_1a4

    if-nez v11, :cond_1a4

    if-eqz v14, :cond_1a4

    if-eqz v5, :cond_1a4

    .line 1388
    move/from16 v22, v2

    move/from16 v25, v4

    const/4 v1, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_30a

    .line 1391
    :cond_1a4
    const/16 v20, 0x0

    .line 1392
    .local v20, "didWrapMeasureWidth":Z
    const/16 v21, 0x0

    .line 1393
    .local v21, "didWrapMeasureHeight":Z
    move/from16 v22, v2

    .end local v2    # "i":I
    .local v22, "i":I
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    move-object/from16 v23, v6

    .end local v6    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v23, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v6, :cond_1b8

    const/4 v2, 0x1

    goto :goto_1b9

    :cond_1b8
    const/4 v2, 0x0

    .line 1394
    .local v2, "resolveWidth":Z
    :goto_1b9
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v0, :cond_1c5

    const/4 v0, 0x1

    goto :goto_1c6

    :cond_1c5
    const/4 v0, 0x0

    .line 1399
    .local v0, "resolveHeight":Z
    :goto_1c6
    if-nez v2, :cond_1cf

    .line 1400
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1402
    :cond_1cf
    if-nez v0, :cond_1d8

    .line 1403
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1405
    :cond_1d8
    if-nez v10, :cond_212

    .line 1406
    if-eqz v2, :cond_207

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v6

    if-eqz v6, :cond_207

    if-eqz v14, :cond_207

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v6

    if-eqz v6, :cond_207

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v6

    if-eqz v6, :cond_207

    .line 1407
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v6

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v24

    sub-float v6, v6, v24

    float-to-int v10, v6

    .line 1408
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1409
    invoke-static {v1, v4, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .local v6, "childWidthMeasureSpec":I
    goto :goto_225

    .line 1412
    .end local v6    # "childWidthMeasureSpec":I
    :cond_207
    const/4 v6, -0x2

    invoke-static {v1, v4, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    .line 1414
    .local v24, "childWidthMeasureSpec":I
    const/16 v20, 0x1

    .line 1415
    const/4 v2, 0x0

    move/from16 v6, v24

    goto :goto_225

    .line 1417
    .end local v24    # "childWidthMeasureSpec":I
    :cond_212
    const/4 v6, -0x1

    if-ne v10, v6, :cond_21c

    .line 1418
    invoke-static {v1, v4, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    move/from16 v6, v24

    .restart local v24    # "childWidthMeasureSpec":I
    goto :goto_225

    .line 1421
    .end local v24    # "childWidthMeasureSpec":I
    :cond_21c
    const/4 v6, -0x2

    if-ne v10, v6, :cond_221

    .line 1422
    const/16 v20, 0x1

    .line 1424
    :cond_221
    invoke-static {v1, v4, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1427
    .restart local v6    # "childWidthMeasureSpec":I
    :goto_225
    if-nez v11, :cond_26b

    .line 1428
    if-eqz v0, :cond_25a

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v24

    if-eqz v24, :cond_25a

    if-eqz v5, :cond_25a

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v24

    if-eqz v24, :cond_25a

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v24

    if-eqz v24, :cond_25a

    .line 1429
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v24

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v25

    move/from16 v26, v0

    .end local v0    # "resolveHeight":Z
    .local v26, "resolveHeight":Z
    sub-float v0, v24, v25

    float-to-int v11, v0

    .line 1430
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1431
    move/from16 v0, p2

    invoke-static {v0, v8, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    move/from16 v1, v24

    .local v24, "childHeightMeasureSpec":I
    goto :goto_284

    .line 1428
    .end local v24    # "childHeightMeasureSpec":I
    .end local v26    # "resolveHeight":Z
    .restart local v0    # "resolveHeight":Z
    :cond_25a
    move/from16 v26, v0

    move/from16 v0, p2

    .line 1434
    .end local v0    # "resolveHeight":Z
    .restart local v26    # "resolveHeight":Z
    const/4 v1, -0x2

    invoke-static {v0, v8, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    .line 1436
    .restart local v24    # "childHeightMeasureSpec":I
    const/16 v21, 0x1

    .line 1437
    const/4 v1, 0x0

    move/from16 v26, v1

    move/from16 v1, v24

    .end local v26    # "resolveHeight":Z
    .local v1, "resolveHeight":Z
    goto :goto_284

    .line 1439
    .end local v1    # "resolveHeight":Z
    .end local v24    # "childHeightMeasureSpec":I
    .restart local v0    # "resolveHeight":Z
    :cond_26b
    move/from16 v26, v0

    move/from16 v0, p2

    .end local v0    # "resolveHeight":Z
    .restart local v26    # "resolveHeight":Z
    const/4 v1, -0x1

    if-ne v11, v1, :cond_279

    .line 1440
    invoke-static {v0, v8, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    move/from16 v1, v24

    .restart local v24    # "childHeightMeasureSpec":I
    goto :goto_284

    .line 1443
    .end local v24    # "childHeightMeasureSpec":I
    :cond_279
    const/4 v1, -0x2

    if-ne v11, v1, :cond_27e

    .line 1444
    const/16 v21, 0x1

    .line 1446
    :cond_27e
    invoke-static {v0, v8, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v24

    move/from16 v1, v24

    .line 1449
    .local v1, "childHeightMeasureSpec":I
    :goto_284
    invoke-virtual {v3, v6, v1}, Landroid/view/View;->measure(II)V

    .line 1450
    move-object/from16 v0, p0

    move/from16 v24, v1

    .end local v1    # "childHeightMeasureSpec":I
    .restart local v24    # "childHeightMeasureSpec":I
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_29c

    .line 1451
    move/from16 v25, v4

    move/from16 v27, v5

    .end local v4    # "widthPadding":I
    .end local v5    # "bothVertical":Z
    .local v25, "widthPadding":I
    .local v27, "bothVertical":Z
    iget-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->measures:J

    const-wide/16 v18, 0x1

    add-long v4, v4, v18

    iput-wide v4, v1, Landroidx/constraintlayout/solver/Metrics;->measures:J

    goto :goto_2a2

    .line 1450
    .end local v25    # "widthPadding":I
    .end local v27    # "bothVertical":Z
    .restart local v4    # "widthPadding":I
    .restart local v5    # "bothVertical":Z
    :cond_29c
    move/from16 v25, v4

    move/from16 v27, v5

    const-wide/16 v18, 0x1

    .line 1454
    .end local v4    # "widthPadding":I
    .end local v5    # "bothVertical":Z
    .restart local v25    # "widthPadding":I
    .restart local v27    # "bothVertical":Z
    :goto_2a2
    const/4 v1, -0x2

    if-ne v10, v1, :cond_2a7

    const/4 v4, 0x1

    goto :goto_2a8

    :cond_2a7
    const/4 v4, 0x0

    :goto_2a8
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1455
    if-ne v11, v1, :cond_2af

    const/4 v4, 0x1

    goto :goto_2b0

    :cond_2af
    const/4 v4, 0x0

    :goto_2b0
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1456
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1457
    .end local v10    # "width":I
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1459
    .end local v11    # "height":I
    .local v5, "height":I
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1460
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1462
    if-eqz v20, :cond_2c6

    .line 1463
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1465
    :cond_2c6
    if-eqz v21, :cond_2cb

    .line 1466
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1468
    :cond_2cb
    if-eqz v2, :cond_2d5

    .line 1469
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_2dc

    .line 1471
    :cond_2d5
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->remove()V

    .line 1473
    :goto_2dc
    if-eqz v26, :cond_2e6

    .line 1474
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_2ed

    .line 1476
    :cond_2e6
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->remove()V

    .line 1479
    :goto_2ed
    move-object/from16 v10, v23

    .end local v23    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v10, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-boolean v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v11, :cond_2fe

    .line 1480
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v11

    .line 1481
    .local v11, "baseline":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_30a

    .line 1482
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto :goto_30a

    .line 1479
    .end local v11    # "baseline":I
    :cond_2fe
    const/4 v1, -0x1

    goto :goto_30a

    .line 1366
    .end local v9    # "bottom":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v10    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v12    # "left":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v13    # "right":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v14    # "bothHorizontal":Z
    .end local v15    # "top":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v17    # "widgetsCount":I
    .end local v20    # "didWrapMeasureWidth":Z
    .end local v21    # "didWrapMeasureHeight":Z
    .end local v22    # "i":I
    .end local v24    # "childHeightMeasureSpec":I
    .end local v25    # "widthPadding":I
    .end local v26    # "resolveHeight":Z
    .end local v27    # "bothVertical":Z
    .local v2, "i":I
    .local v4, "widthPadding":I
    .local v5, "widgetsCount":I
    .local v6, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_300
    move/from16 v22, v2

    move/from16 v25, v4

    move/from16 v17, v5

    move-object v10, v6

    const/4 v1, -0x1

    const-wide/16 v18, 0x1

    .line 1359
    .end local v2    # "i":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "widthPadding":I
    .end local v5    # "widgetsCount":I
    .end local v6    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "widgetsCount":I
    .restart local v22    # "i":I
    .restart local v25    # "widthPadding":I
    :cond_30a
    :goto_30a
    add-int/lit8 v2, v22, 0x1

    move/from16 v1, p1

    move/from16 v5, v17

    move/from16 v4, v25

    const/16 v9, 0x8

    .end local v22    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_e7

    .line 1486
    .end local v2    # "i":I
    .end local v17    # "widgetsCount":I
    .end local v25    # "widthPadding":I
    .restart local v4    # "widthPadding":I
    .restart local v5    # "widgetsCount":I
    :cond_316
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 30

    .line 808
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 810
    .local v2, "isInEditMode":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    .line 811
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_4c

    .line 815
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_10
    if-ge v6, v3, :cond_4c

    .line 816
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 818
    .local v7, "view":Landroid/view/View;
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "IdAsString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v4, v0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 820
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 821
    .local v8, "slashIndex":I
    if-eq v8, v5, :cond_3c

    .line 822
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 824
    :cond_3c
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_47} :catch_48

    .line 827
    .end local v0    # "IdAsString":Ljava/lang/String;
    .end local v8    # "slashIndex":I
    goto :goto_49

    .line 825
    :catch_48
    move-exception v0

    .line 815
    .end local v7    # "view":Landroid/view/View;
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 832
    .end local v6    # "i":I
    :cond_4c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4d
    if-ge v0, v3, :cond_60

    .line 833
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    .line 835
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v7, :cond_5a

    .line 836
    goto :goto_5d

    .line 838
    :cond_5a
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 832
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 841
    .end local v0    # "i":I
    :cond_60
    iget v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-eq v0, v5, :cond_83

    .line 842
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_65
    if-ge v0, v3, :cond_83

    .line 843
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 844
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v7, v8, :cond_80

    instance-of v7, v6, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v7, :cond_80

    .line 845
    move-object v7, v6

    check-cast v7, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v7

    iput-object v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 842
    .end local v6    # "child":Landroid/view/View;
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 849
    .end local v0    # "i":I
    :cond_83
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v0, :cond_8a

    .line 850
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 853
    :cond_8a
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 855
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 856
    .local v6, "helperCount":I
    if-lez v6, :cond_a8

    .line 857
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_98
    if-ge v0, v6, :cond_a8

    .line 858
    iget-object v7, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 859
    .local v7, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 857
    .end local v7    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 863
    .end local v0    # "i":I
    :cond_a8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a9
    if-ge v0, v3, :cond_bc

    .line 864
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 865
    .local v7, "child":Landroid/view/View;
    instance-of v8, v7, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v8, :cond_b9

    .line 866
    move-object v8, v7

    check-cast v8, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 863
    .end local v7    # "child":Landroid/view/View;
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 870
    .end local v0    # "i":I
    :cond_bc
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_be
    if-ge v7, v3, :cond_494

    .line 871
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 872
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v15

    .line 873
    .local v15, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v15, :cond_d2

    .line 874
    move/from16 v17, v3

    move/from16 v18, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_48a

    .line 876
    :cond_d2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 877
    .local v14, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 878
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v0, :cond_e3

    .line 879
    iput-boolean v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_116

    .line 881
    :cond_e3
    if-eqz v2, :cond_116

    .line 886
    :try_start_e5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "IdAsString":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v4, v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 888
    const-string v9, "id/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 889
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_114
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e5 .. :try_end_114} :catch_115

    .line 892
    .end local v0    # "IdAsString":Ljava/lang/String;
    goto :goto_116

    .line 890
    :catch_115
    move-exception v0

    .line 895
    :cond_116
    :goto_116
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v15, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 896
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v0, :cond_126

    .line 897
    const/16 v0, 0x8

    invoke-virtual {v15, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 899
    :cond_126
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 900
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 902
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v0, :cond_136

    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v0, :cond_13b

    .line 903
    :cond_136
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_13b
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v9, 0x11

    if-eqz v0, :cond_171

    .line 907
    move-object v0, v15

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 908
    .local v0, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 909
    .local v10, "resolvedGuideBegin":I
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 910
    .local v11, "resolvedGuideEnd":I
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 911
    .local v12, "resolvedGuidePercent":F
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v9, :cond_154

    .line 912
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 913
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 914
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 916
    :cond_154
    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v12, v9

    if-eqz v9, :cond_15e

    .line 917
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_169

    .line 918
    :cond_15e
    if-eq v10, v5, :cond_164

    .line 919
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_169

    .line 920
    :cond_164
    if-eq v11, v5, :cond_169

    .line 921
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 923
    .end local v0    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v10    # "resolvedGuideBegin":I
    .end local v11    # "resolvedGuideEnd":I
    .end local v12    # "resolvedGuidePercent":F
    :cond_169
    :goto_169
    move/from16 v17, v3

    move/from16 v18, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_48a

    :cond_171
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-eq v0, v5, :cond_1b9

    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v5, :cond_169

    .line 943
    :cond_1b9
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 944
    .local v0, "resolvedLeftToLeft":I
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 945
    .local v10, "resolvedLeftToRight":I
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 946
    .local v11, "resolvedRightToLeft":I
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 947
    .local v12, "resolvedRightToRight":I
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 948
    .local v13, "resolveGoneLeftMargin":I
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 949
    .local v4, "resolveGoneRightMargin":I
    iget v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 951
    .local v5, "resolvedHorizontalBias":F
    move/from16 v16, v0

    .end local v0    # "resolvedLeftToLeft":I
    .local v16, "resolvedLeftToLeft":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_22f

    .line 954
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 955
    .end local v16    # "resolvedLeftToLeft":I
    .restart local v0    # "resolvedLeftToLeft":I
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 956
    .end local v10    # "resolvedLeftToRight":I
    .local v9, "resolvedLeftToRight":I
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 957
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 958
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 959
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 960
    iget v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 962
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1f4

    if-ne v9, v10, :cond_1f4

    .line 963
    move/from16 v16, v0

    .end local v0    # "resolvedLeftToLeft":I
    .restart local v16    # "resolvedLeftToLeft":I
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v0, v10, :cond_1ea

    .line 964
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move v10, v9

    .end local v16    # "resolvedLeftToLeft":I
    .restart local v0    # "resolvedLeftToLeft":I
    goto :goto_1f9

    .line 965
    .end local v0    # "resolvedLeftToLeft":I
    .restart local v16    # "resolvedLeftToLeft":I
    :cond_1ea
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v0, v10, :cond_1f6

    .line 966
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move v10, v0

    move/from16 v0, v16

    .end local v9    # "resolvedLeftToRight":I
    .local v0, "resolvedLeftToRight":I
    goto :goto_1f9

    .line 962
    .end local v16    # "resolvedLeftToLeft":I
    .local v0, "resolvedLeftToLeft":I
    .restart local v9    # "resolvedLeftToRight":I
    :cond_1f4
    move/from16 v16, v0

    .line 969
    .end local v0    # "resolvedLeftToLeft":I
    .restart local v16    # "resolvedLeftToLeft":I
    :cond_1f6
    move v10, v9

    move/from16 v0, v16

    .end local v9    # "resolvedLeftToRight":I
    .end local v16    # "resolvedLeftToLeft":I
    .restart local v0    # "resolvedLeftToLeft":I
    .restart local v10    # "resolvedLeftToRight":I
    :goto_1f9
    const/4 v9, -0x1

    if-ne v11, v9, :cond_222

    if-ne v12, v9, :cond_222

    .line 970
    move/from16 v16, v0

    .end local v0    # "resolvedLeftToLeft":I
    .restart local v16    # "resolvedLeftToLeft":I
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, v9, :cond_211

    .line 971
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v0, v16

    move/from16 v16, v13

    move v13, v10

    move/from16 v28, v12

    move v12, v11

    move/from16 v11, v28

    goto :goto_239

    .line 972
    :cond_211
    iget v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, v9, :cond_224

    .line 973
    iget v12, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v0, v16

    move/from16 v16, v13

    move v13, v10

    move/from16 v28, v12

    move v12, v11

    move/from16 v11, v28

    goto :goto_239

    .line 969
    .end local v16    # "resolvedLeftToLeft":I
    .restart local v0    # "resolvedLeftToLeft":I
    :cond_222
    move/from16 v16, v0

    .line 979
    .end local v0    # "resolvedLeftToLeft":I
    .restart local v16    # "resolvedLeftToLeft":I
    :cond_224
    move/from16 v0, v16

    move/from16 v16, v13

    move v13, v10

    move/from16 v28, v12

    move v12, v11

    move/from16 v11, v28

    goto :goto_239

    .line 951
    :cond_22f
    move/from16 v0, v16

    move/from16 v16, v13

    move v13, v10

    move/from16 v28, v12

    move v12, v11

    move/from16 v11, v28

    .line 979
    .end local v10    # "resolvedLeftToRight":I
    .restart local v0    # "resolvedLeftToLeft":I
    .local v11, "resolvedRightToRight":I
    .local v12, "resolvedRightToLeft":I
    .local v13, "resolvedLeftToRight":I
    .local v16, "resolveGoneLeftMargin":I
    :goto_239
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_25e

    .line 980
    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 981
    .local v9, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v9, :cond_250

    .line 982
    iget v10, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    move/from16 v17, v3

    .end local v3    # "count":I
    .local v17, "count":I
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v15, v9, v10, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    goto :goto_252

    .line 981
    .end local v17    # "count":I
    .restart local v3    # "count":I
    :cond_250
    move/from16 v17, v3

    .line 984
    .end local v3    # "count":I
    .end local v9    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "count":I
    :goto_252
    move/from16 v20, v0

    move/from16 v18, v6

    move-object/from16 v19, v8

    move v0, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    goto/16 :goto_3d4

    .line 986
    .end local v17    # "count":I
    .restart local v3    # "count":I
    :cond_25e
    move/from16 v17, v3

    .end local v3    # "count":I
    .restart local v17    # "count":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_296

    .line 987
    invoke-direct {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 988
    .local v3, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_289

    .line 989
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v9, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v9

    move-object v9, v15

    move/from16 v20, v0

    move v0, v11

    .end local v11    # "resolvedRightToRight":I
    .local v0, "resolvedRightToRight":I
    .local v20, "resolvedLeftToLeft":I
    move-object v11, v3

    move-object/from16 v21, v3

    move v3, v12

    .end local v12    # "resolvedRightToLeft":I
    .local v3, "resolvedRightToLeft":I
    .local v21, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v12, v18

    move/from16 v18, v6

    move v6, v13

    .end local v13    # "resolvedLeftToRight":I
    .local v6, "resolvedLeftToRight":I
    .local v18, "helperCount":I
    move/from16 v13, v19

    move-object/from16 v19, v8

    move-object v8, v14

    .end local v14    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v8, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v19, "child":Landroid/view/View;
    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2b8

    .line 988
    .end local v18    # "helperCount":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "resolvedLeftToLeft":I
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "resolvedLeftToLeft":I
    .local v3, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToLeft":I
    .restart local v13    # "resolvedLeftToRight":I
    .restart local v14    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_289
    move/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v18, v6

    move-object/from16 v19, v8

    move v0, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .end local v11    # "resolvedRightToRight":I
    .end local v12    # "resolvedRightToLeft":I
    .end local v13    # "resolvedLeftToRight":I
    .end local v14    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v0, "resolvedRightToRight":I
    .local v3, "resolvedRightToLeft":I
    .local v6, "resolvedLeftToRight":I
    .local v8, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .restart local v18    # "helperCount":I
    .restart local v19    # "child":Landroid/view/View;
    .restart local v20    # "resolvedLeftToLeft":I
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_2b8

    .line 993
    .end local v3    # "resolvedRightToLeft":I
    .end local v18    # "helperCount":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "resolvedLeftToLeft":I
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "resolvedLeftToLeft":I
    .local v6, "helperCount":I
    .local v8, "child":Landroid/view/View;
    .restart local v11    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToLeft":I
    .restart local v13    # "resolvedLeftToRight":I
    .restart local v14    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_296
    move/from16 v20, v0

    move/from16 v18, v6

    move-object/from16 v19, v8

    move v0, v11

    move v3, v12

    move v6, v13

    move-object v8, v14

    .end local v11    # "resolvedRightToRight":I
    .end local v12    # "resolvedRightToLeft":I
    .end local v13    # "resolvedLeftToRight":I
    .end local v14    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .local v0, "resolvedRightToRight":I
    .restart local v3    # "resolvedRightToLeft":I
    .local v6, "resolvedLeftToRight":I
    .local v8, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .restart local v18    # "helperCount":I
    .restart local v19    # "child":Landroid/view/View;
    .restart local v20    # "resolvedLeftToLeft":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_2b8

    .line 994
    invoke-direct {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 995
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_2b9

    .line 996
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2b9

    .line 993
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2b8
    :goto_2b8
    nop

    .line 1003
    :cond_2b9
    :goto_2b9
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2d0

    .line 1004
    invoke-direct {v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1005
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_2e7

    .line 1006
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    move v14, v4

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2e7

    .line 1010
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2d0
    const/4 v9, -0x1

    if-eq v0, v9, :cond_2e7

    .line 1011
    invoke-direct {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1012
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_2e8

    .line 1013
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    move v14, v4

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2e8

    .line 1010
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2e7
    :goto_2e7
    nop

    .line 1020
    :cond_2e8
    :goto_2e8
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_304

    .line 1021
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1022
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_320

    .line 1023
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_320

    .line 1027
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_304
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_320

    .line 1028
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1029
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_321

    .line 1030
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_321

    .line 1027
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_320
    :goto_320
    nop

    .line 1037
    :cond_321
    :goto_321
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_33d

    .line 1038
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1039
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_359

    .line 1040
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_359

    .line 1044
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_33d
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_359

    .line 1045
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v1, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v21

    .line 1046
    .restart local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v21, :cond_35a

    .line 1047
    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v9, v15

    move-object/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_35a

    .line 1044
    .end local v21    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_359
    :goto_359
    nop

    .line 1054
    :cond_35a
    :goto_35a
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3b5

    .line 1055
    iget-object v9, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1056
    .local v9, "view":Landroid/view/View;
    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v1, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 1057
    .local v10, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_3b5

    if-eqz v9, :cond_3b5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v11, :cond_3b5

    .line 1058
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1059
    .local v11, "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1060
    iput-boolean v12, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1061
    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v12

    .line 1062
    .local v12, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1063
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1064
    .local v13, "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v23, 0x0

    const/16 v24, -0x1

    sget-object v25, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v27}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1067
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1068
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1072
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v12    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_3b5
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-ltz v11, :cond_3c3

    cmpl-float v11, v5, v9

    if-eqz v11, :cond_3c3

    .line 1073
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1075
    :cond_3c3
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v10, v11, v10

    if-ltz v10, :cond_3d4

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v9, v10, v9

    if-eqz v9, :cond_3d4

    .line 1076
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1080
    :cond_3d4
    :goto_3d4
    if-eqz v2, :cond_3e6

    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3df

    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v9, v10, :cond_3e6

    .line 1082
    :cond_3df
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v15, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1086
    :cond_3e6
    iget-boolean v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v9, :cond_413

    .line 1087
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_409

    .line 1088
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1089
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1090
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_41d

    .line 1092
    :cond_409
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_41d

    .line 1096
    :cond_413
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1097
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1099
    :goto_41d
    iget-boolean v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v9, :cond_44b

    .line 1100
    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_441

    .line 1101
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1102
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1103
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v9, 0x0

    goto :goto_457

    .line 1105
    :cond_441
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1106
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_457

    .line 1109
    :cond_44b
    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1110
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1113
    :goto_457
    iget-object v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v11, :cond_460

    .line 1114
    iget-object v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1116
    :cond_460
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1117
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1118
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1119
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1120
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1123
    iget v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v12, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v15, v11, v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 870
    .end local v0    # "resolvedRightToRight":I
    .end local v3    # "resolvedRightToLeft":I
    .end local v4    # "resolveGoneRightMargin":I
    .end local v5    # "resolvedHorizontalBias":F
    .end local v6    # "resolvedLeftToRight":I
    .end local v8    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v15    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "resolvedLeftToLeft":I
    :goto_48a
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v6, v18

    const/4 v4, 0x0

    const/4 v5, -0x1

    goto/16 :goto_be

    .line 1128
    .end local v7    # "i":I
    .end local v17    # "count":I
    .end local v18    # "helperCount":I
    .local v3, "count":I
    .local v6, "helperCount":I
    :cond_494
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1798
    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1799
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1800
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1801
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1803
    .local v4, "heightSize":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1804
    .local v5, "heightPadding":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    .line 1806
    .local v6, "widthPadding":I
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1807
    .local v7, "widthBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1808
    .local v8, "heightBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v9, 0x0

    .line 1809
    .local v9, "desiredWidth":I
    const/4 v10, 0x0

    .line 1811
    .local v10, "desiredHeight":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1812
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    sparse-switch v1, :sswitch_data_98

    goto :goto_41

    .line 1823
    :sswitch_31
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v9, v12, v6

    goto :goto_41

    .line 1819
    :sswitch_3a
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1821
    goto :goto_41

    .line 1814
    :sswitch_3d
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1815
    move v9, v2

    .line 1817
    nop

    .line 1826
    :goto_41
    sparse-switch v3, :sswitch_data_a6

    goto :goto_55

    .line 1837
    :sswitch_45
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v10, v12, v5

    goto :goto_55

    .line 1833
    :sswitch_4e
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1835
    goto :goto_55

    .line 1828
    :sswitch_51
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1829
    move v10, v4

    .line 1831
    nop

    .line 1841
    :goto_55
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1842
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1843
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1844
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1845
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1846
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1847
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1848
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1849
    return-void

    nop

    :sswitch_data_98
    .sparse-switch
        -0x80000000 -> :sswitch_3d
        0x0 -> :sswitch_3a
        0x40000000 -> :sswitch_31
    .end sparse-switch

    :sswitch_data_a6
    .sparse-switch
        -0x80000000 -> :sswitch_51
        0x0 -> :sswitch_4e
        0x40000000 -> :sswitch_45
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .registers 6

    .line 791
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 793
    .local v0, "count":I
    const/4 v1, 0x0

    .line 794
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    .line 795
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 796
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 797
    const/4 v1, 0x1

    .line 798
    goto :goto_17

    .line 794
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 801
    .end local v2    # "i":I
    :cond_17
    :goto_17
    if-eqz v1, :cond_21

    .line 802
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 803
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    .line 805
    :cond_21
    return-void
.end method

.method private updatePostMeasures()V
    .registers 5

    .line 1258
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1259
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 1260
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1261
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_15

    .line 1262
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1259
    .end local v2    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1266
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1267
    .local v1, "helperCount":I
    if-lez v1, :cond_31

    .line 1268
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_31

    .line 1269
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1270
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1268
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1273
    .end local v2    # "i":I
    :cond_31
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 636
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 638
    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1996
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2023
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 2026
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2027
    .local v1, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 2028
    .local v2, "ch":F
    const/high16 v3, 0x44870000    # 1080.0f

    .line 2029
    .local v3, "ow":F
    const/high16 v4, 0x44f00000    # 1920.0f

    .line 2030
    .local v4, "oh":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v0, :cond_129

    .line 2031
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2032
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_36

    .line 2033
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto/16 :goto_11d

    .line 2035
    :cond_36
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 2036
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_115

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_115

    .line 2037
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 2038
    .local v9, "coordinates":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2039
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x4

    if-ne v11, v12, :cond_10c

    .line 2040
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2041
    .local v11, "x":I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2042
    .local v12, "y":I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2043
    .local v13, "w":I
    const/4 v14, 0x3

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2044
    .local v14, "h":I
    int-to-float v15, v11

    div-float/2addr v15, v3

    mul-float v15, v15, v1

    float-to-int v11, v15

    .line 2045
    int-to-float v15, v12

    div-float/2addr v15, v4

    mul-float v15, v15, v2

    float-to-int v12, v15

    .line 2046
    int-to-float v15, v13

    div-float/2addr v15, v3

    mul-float v15, v15, v1

    float-to-int v13, v15

    .line 2047
    int-to-float v15, v14

    div-float/2addr v15, v4

    mul-float v15, v15, v2

    float-to-int v14, v15

    .line 2048
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 2049
    .local v15, "paint":Landroid/graphics/Paint;
    move/from16 v22, v0

    .end local v0    # "count":I
    .local v22, "count":I
    const/high16 v0, -0x10000

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2050
    int-to-float v0, v11

    move/from16 v23, v1

    .end local v1    # "cw":F
    .local v23, "cw":F
    int-to-float v1, v12

    move/from16 v24, v2

    .end local v2    # "ch":F
    .local v24, "ch":F
    add-int v2, v11, v13

    int-to-float v2, v2

    move/from16 v25, v3

    .end local v3    # "ow":F
    .local v25, "ow":F
    int-to-float v3, v12

    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2051
    add-int v0, v11, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2052
    add-int v0, v11, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2053
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2054
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2055
    int-to-float v0, v11

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2056
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v11, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_11d

    .line 2039
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_10c
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    goto :goto_11d

    .line 2036
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "split":[Ljava/lang/String;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_115
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .line 2030
    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "tag":Ljava/lang/Object;
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    :goto_11d
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    goto/16 :goto_1c

    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    .restart local v0    # "count":I
    .restart local v1    # "cw":F
    .restart local v2    # "ch":F
    .restart local v3    # "ow":F
    :cond_129
    move-object/from16 v6, p0

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .end local v0    # "count":I
    .end local v1    # "cw":F
    .end local v2    # "ch":F
    .end local v3    # "ow":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    .restart local v25    # "ow":F
    goto :goto_136

    .line 2024
    .end local v4    # "oh":F
    .end local v5    # "i":I
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .end local v25    # "ow":F
    :cond_134
    move-object/from16 v6, p0

    .line 2061
    :goto_136
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .registers 3
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .line 1496
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 1497
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 1498
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 482
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .registers 3

    .line 1980
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 482
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1988
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1972
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 560
    if-nez p1, :cond_1a

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 561
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 562
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 563
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 566
    .end local v0    # "name":Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 787
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 777
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 740
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 730
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    .line 1965
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .line 2015
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1154
    if-ne p1, p0, :cond_5

    .line 1155
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1157
    :cond_5
    if-nez p1, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_11
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1875
    move-object v0, p0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1876
    .local v1, "widgetsCount":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1877
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_5c

    .line 1878
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1879
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1880
    .local v5, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1882
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2b

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_2b

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_2b

    if-nez v2, :cond_2b

    .line 1885
    goto :goto_59

    .line 1887
    :cond_2b
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_30

    .line 1888
    goto :goto_59

    .line 1890
    :cond_30
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v7

    .line 1891
    .local v7, "l":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v8

    .line 1892
    .local v8, "t":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    .line 1893
    .local v9, "r":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    .line 1915
    .local v10, "b":I
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1916
    instance-of v11, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_59

    .line 1917
    move-object v11, v4

    check-cast v11, Landroidx/constraintlayout/widget/Placeholder;

    .line 1918
    .local v11, "holder":Landroidx/constraintlayout/widget/Placeholder;
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object v12

    .line 1919
    .local v12, "content":Landroid/view/View;
    if-eqz v12, :cond_59

    .line 1920
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    invoke-virtual {v12, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1877
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "l":I
    .end local v8    # "t":I
    .end local v9    # "r":I
    .end local v10    # "b":I
    .end local v11    # "holder":Landroidx/constraintlayout/widget/Placeholder;
    .end local v12    # "content":Landroid/view/View;
    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1925
    .end local v3    # "i":I
    :cond_5c
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1926
    .local v3, "helperCount":I
    if-lez v3, :cond_75

    .line 1927
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_65
    if-ge v4, v3, :cond_75

    .line 1928
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1929
    .local v5, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1927
    .end local v5    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 1932
    .end local v4    # "i":I
    :cond_75
    return-void
.end method

.method protected onMeasure(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1505
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1506
    .local v3, "time":J
    const/4 v5, 0x0

    .line 1507
    .local v5, "REMEASURES_A":I
    const/4 v6, 0x0

    .line 1513
    .local v6, "REMEASURES_B":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1514
    .local v7, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1515
    .local v8, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1516
    .local v9, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1542
    .local v10, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    .line 1543
    .local v11, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v12

    .line 1545
    .local v12, "paddingTop":I
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1546
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1547
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1548
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1550
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v15, 0x1

    const/16 v14, 0x11

    if-lt v13, v14, :cond_51

    .line 1551
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v14

    if-ne v14, v15, :cond_4d

    const/4 v14, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v14, 0x0

    :goto_4e
    invoke-virtual {v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1554
    :cond_51
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1555
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    .line 1556
    .local v13, "startingWidth":I
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    .line 1558
    .local v14, "startingHeight":I
    const/16 v17, 0x0

    .line 1559
    .local v17, "runAnalyzer":Z
    iget-boolean v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v15, :cond_6e

    .line 1560
    const/4 v15, 0x0

    iput-boolean v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1561
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()V

    .line 1562
    const/16 v17, 0x1

    .line 1565
    :cond_6e
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    move-wide/from16 v19, v3

    .end local v3    # "time":J
    .local v19, "time":J
    const/16 v3, 0x8

    and-int/lit8 v4, v15, 0x8

    if-ne v4, v3, :cond_7a

    const/4 v4, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v4, 0x0

    .line 1567
    .local v4, "optimiseDimensions":Z
    :goto_7b
    if-eqz v4, :cond_8b

    .line 1568
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1569
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15, v13, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1570
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_8e

    .line 1572
    :cond_8b
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1574
    :goto_8e
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updatePostMeasures()V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v15

    if-lez v15, :cond_9e

    if-eqz v17, :cond_9e

    .line 1583
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-static {v15}, Landroidx/constraintlayout/solver/widgets/Analyzer;->determineGroups(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 1585
    :cond_9e
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    if-eqz v15, :cond_e0

    .line 1586
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    const/high16 v3, -0x80000000

    if-eqz v15, :cond_c2

    if-ne v7, v3, :cond_c2

    .line 1587
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-ge v15, v8, :cond_bb

    .line 1588
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    invoke-virtual {v15, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1590
    :cond_bb
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1591
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1593
    :cond_c2
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v3, :cond_e0

    const/high16 v3, -0x80000000

    if-ne v9, v3, :cond_e0

    .line 1594
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-ge v3, v10, :cond_d9

    .line 1595
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v15, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1597
    :cond_d9
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1598
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1602
    :cond_e0
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/16 v15, 0x20

    and-int/2addr v3, v15

    move/from16 v21, v5

    .end local v5    # "REMEASURES_A":I
    .local v21, "REMEASURES_A":I
    if-ne v3, v15, :cond_147

    .line 1603
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    .line 1604
    .local v3, "width":I
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    .line 1605
    .local v15, "height":I
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    if-eq v5, v3, :cond_108

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v7, v5, :cond_108

    .line 1606
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    move/from16 v23, v6

    const/4 v6, 0x0

    .end local v6    # "REMEASURES_B":I
    .local v23, "REMEASURES_B":I
    invoke-static {v5, v6, v3}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_10a

    .line 1605
    .end local v23    # "REMEASURES_B":I
    .restart local v6    # "REMEASURES_B":I
    :cond_108
    move/from16 v23, v6

    .line 1608
    .end local v6    # "REMEASURES_B":I
    .restart local v23    # "REMEASURES_B":I
    :goto_10a
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    if-eq v5, v15, :cond_11a

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_11a

    .line 1609
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v5, v6, v15}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    .line 1611
    :cond_11a
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    if-eqz v5, :cond_12f

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    if-le v5, v8, :cond_12f

    .line 1612
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v5, v6, v8}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_130

    .line 1611
    :cond_12f
    const/4 v6, 0x0

    .line 1614
    :goto_130
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    if-eqz v5, :cond_145

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    if-le v5, v10, :cond_145

    .line 1615
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidgetGroups:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v5, v6, v10}, Landroidx/constraintlayout/solver/widgets/Analyzer;->setPosition(Ljava/util/List;II)V

    goto :goto_14a

    .line 1614
    :cond_145
    const/4 v6, 0x1

    goto :goto_14a

    .line 1602
    .end local v3    # "width":I
    .end local v15    # "height":I
    .end local v23    # "REMEASURES_B":I
    .restart local v6    # "REMEASURES_B":I
    :cond_147
    move/from16 v23, v6

    const/4 v6, 0x1

    .line 1620
    .end local v6    # "REMEASURES_B":I
    .restart local v23    # "REMEASURES_B":I
    :goto_14a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_155

    .line 1621
    const-string v3, "First pass"

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1623
    :cond_155
    const/4 v3, 0x0

    .line 1626
    .local v3, "childState":I
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1628
    .local v5, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v15, v12

    .line 1629
    .local v15, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v18

    add-int v6, v11, v18

    .line 1635
    .local v6, "widthPadding":I
    move/from16 v18, v3

    .end local v3    # "childState":I
    .local v18, "childState":I
    if-lez v5, :cond_3d9

    .line 1636
    const/16 v25, 0x0

    .line 1637
    .local v25, "needSolverPass":Z
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    move/from16 v26, v7

    .end local v7    # "widthMode":I
    .local v26, "widthMode":I
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_17b

    const/4 v3, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v3, 0x0

    .line 1639
    .local v3, "containerWrapWidth":Z
    :goto_17c
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    move/from16 v27, v8

    .end local v8    # "widthSize":I
    .local v27, "widthSize":I
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_18b

    const/16 v16, 0x1

    goto :goto_18d

    :cond_18b
    const/16 v16, 0x0

    :goto_18d
    move/from16 v7, v16

    .line 1641
    .local v7, "containerWrapHeight":Z
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    move/from16 v16, v9

    .end local v9    # "heightMode":I
    .local v16, "heightMode":I
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1642
    .local v8, "minWidth":I
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    move/from16 v24, v8

    .end local v8    # "minWidth":I
    .local v24, "minWidth":I
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1643
    .local v8, "minHeight":I
    const/4 v9, 0x0

    move/from16 v37, v10

    move v10, v8

    move/from16 v8, v18

    move/from16 v18, v25

    move/from16 v25, v11

    move v11, v9

    move/from16 v9, v24

    move/from16 v24, v37

    .local v8, "childState":I
    .local v9, "minWidth":I
    .local v10, "minHeight":I
    .local v11, "i":I
    .local v18, "needSolverPass":Z
    .local v24, "heightSize":I
    .local v25, "paddingLeft":I
    :goto_1ba
    const-wide/16 v28, 0x1

    if-ge v11, v5, :cond_30b

    .line 1644
    move/from16 v30, v12

    .end local v12    # "paddingTop":I
    .local v30, "paddingTop":I
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1645
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v31

    move/from16 v32, v5

    .end local v5    # "sizeDependentWidgetsCount":I
    .local v32, "sizeDependentWidgetsCount":I
    move-object/from16 v5, v31

    check-cast v5, Landroid/view/View;

    .line 1646
    .local v5, "child":Landroid/view/View;
    if-nez v5, :cond_1dc

    .line 1647
    move/from16 v34, v11

    move/from16 v31, v13

    move/from16 v33, v14

    goto/16 :goto_2fb

    .line 1649
    :cond_1dc
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    move/from16 v33, v14

    .end local v14    # "startingHeight":I
    .local v33, "startingHeight":I
    move-object/from16 v14, v31

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1650
    .local v14, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    move/from16 v31, v13

    .end local v13    # "startingWidth":I
    .local v31, "startingWidth":I
    iget-boolean v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v13, :cond_2f9

    iget-boolean v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v13, :cond_1f4

    .line 1651
    move/from16 v34, v11

    goto/16 :goto_2fb

    .line 1653
    :cond_1f4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v13

    move/from16 v34, v11

    const/16 v11, 0x8

    .end local v11    # "i":I
    .local v34, "i":I
    if-ne v13, v11, :cond_200

    .line 1654
    goto/16 :goto_2fb

    .line 1657
    :cond_200
    if-eqz v4, :cond_218

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v11

    if-eqz v11, :cond_218

    .line 1658
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v11

    if-eqz v11, :cond_218

    .line 1659
    goto/16 :goto_2fb

    .line 1661
    :cond_218
    const/4 v11, 0x0

    .line 1662
    .local v11, "widthSpec":I
    const/4 v13, 0x0

    .line 1664
    .local v13, "heightSpec":I
    move/from16 v35, v11

    .end local v11    # "widthSpec":I
    .local v35, "widthSpec":I
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    move/from16 v36, v13

    .end local v13    # "heightSpec":I
    .local v36, "heightSpec":I
    const/4 v13, -0x2

    if-ne v11, v13, :cond_22e

    iget-boolean v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v11, :cond_22e

    .line 1665
    iget v11, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v6, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    .end local v35    # "widthSpec":I
    .restart local v11    # "widthSpec":I
    goto :goto_238

    .line 1667
    .end local v11    # "widthSpec":I
    .restart local v35    # "widthSpec":I
    :cond_22e
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1669
    .end local v35    # "widthSpec":I
    .restart local v11    # "widthSpec":I
    :goto_238
    iget v13, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v13, v1, :cond_248

    iget-boolean v1, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_248

    .line 1670
    iget v1, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v15, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    .end local v36    # "heightSpec":I
    .local v1, "heightSpec":I
    goto :goto_252

    .line 1672
    .end local v1    # "heightSpec":I
    .restart local v36    # "heightSpec":I
    :cond_248
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1676
    .end local v36    # "heightSpec":I
    .restart local v1    # "heightSpec":I
    :goto_252
    invoke-virtual {v5, v11, v1}, Landroid/view/View;->measure(II)V

    .line 1677
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v13, :cond_262

    .line 1678
    move/from16 v35, v1

    .end local v1    # "heightSpec":I
    .local v35, "heightSpec":I
    iget-wide v1, v13, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    add-long v1, v1, v28

    iput-wide v1, v13, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    goto :goto_264

    .line 1677
    .end local v35    # "heightSpec":I
    .restart local v1    # "heightSpec":I
    :cond_262
    move/from16 v35, v1

    .line 1681
    .end local v1    # "heightSpec":I
    .restart local v35    # "heightSpec":I
    :goto_264
    add-int/lit8 v21, v21, 0x1

    .line 1683
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1684
    .local v1, "measuredWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1686
    .local v2, "measuredHeight":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    if-eq v1, v13, :cond_2a3

    .line 1687
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1688
    if-eqz v4, :cond_280

    .line 1689
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1691
    :cond_280
    if-eqz v3, :cond_29e

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v13

    if-le v13, v9, :cond_29e

    .line 1692
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v13

    move/from16 v28, v1

    .end local v1    # "measuredWidth":I
    .local v28, "measuredWidth":I
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1693
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v13, v1

    .line 1694
    .local v13, "w":I
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2a0

    .line 1691
    .end local v13    # "w":I
    .end local v28    # "measuredWidth":I
    .restart local v1    # "measuredWidth":I
    :cond_29e
    move/from16 v28, v1

    .line 1696
    .end local v1    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    :goto_2a0
    const/16 v18, 0x1

    goto :goto_2a5

    .line 1686
    .end local v28    # "measuredWidth":I
    .restart local v1    # "measuredWidth":I
    :cond_2a3
    move/from16 v28, v1

    .line 1698
    .end local v1    # "measuredWidth":I
    .restart local v28    # "measuredWidth":I
    :goto_2a5
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v2, v1, :cond_2d4

    .line 1699
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1700
    if-eqz v4, :cond_2b7

    .line 1701
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1703
    :cond_2b7
    if-eqz v7, :cond_2d2

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    if-le v1, v10, :cond_2d2

    .line 1704
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1705
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v1, v13

    .line 1706
    .local v1, "h":I
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1708
    .end local v1    # "h":I
    :cond_2d2
    const/16 v18, 0x1

    .line 1710
    :cond_2d4
    iget-boolean v1, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v1, :cond_2ea

    .line 1711
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1712
    .local v1, "baseline":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_2ea

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v13

    if-eq v1, v13, :cond_2ea

    .line 1713
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1714
    const/16 v18, 0x1

    .line 1718
    .end local v1    # "baseline":I
    :cond_2ea
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v1, v13, :cond_2fb

    .line 1719
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_2fb

    .line 1650
    .end local v2    # "measuredHeight":I
    .end local v28    # "measuredWidth":I
    .end local v34    # "i":I
    .end local v35    # "heightSpec":I
    .local v11, "i":I
    :cond_2f9
    move/from16 v34, v11

    .line 1643
    .end local v5    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .restart local v34    # "i":I
    :cond_2fb
    :goto_2fb
    add-int/lit8 v11, v34, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, v30

    move/from16 v13, v31

    move/from16 v5, v32

    move/from16 v14, v33

    .end local v34    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_1ba

    .end local v30    # "paddingTop":I
    .end local v31    # "startingWidth":I
    .end local v32    # "sizeDependentWidgetsCount":I
    .end local v33    # "startingHeight":I
    .local v5, "sizeDependentWidgetsCount":I
    .local v12, "paddingTop":I
    .local v13, "startingWidth":I
    .local v14, "startingHeight":I
    :cond_30b
    move/from16 v32, v5

    move/from16 v34, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v33, v14

    .line 1722
    .end local v5    # "sizeDependentWidgetsCount":I
    .end local v11    # "i":I
    .end local v12    # "paddingTop":I
    .end local v13    # "startingWidth":I
    .end local v14    # "startingHeight":I
    .restart local v30    # "paddingTop":I
    .restart local v31    # "startingWidth":I
    .restart local v32    # "sizeDependentWidgetsCount":I
    .restart local v33    # "startingHeight":I
    if-eqz v18, :cond_35b

    .line 1723
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v2, v31

    .end local v31    # "startingWidth":I
    .local v2, "startingWidth":I
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1724
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v33

    .end local v33    # "startingHeight":I
    .local v5, "startingHeight":I
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1725
    if-eqz v4, :cond_32c

    .line 1726
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    .line 1728
    :cond_32c
    const-string v1, "2nd pass"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1729
    const/4 v1, 0x0

    .line 1730
    .end local v18    # "needSolverPass":Z
    .local v1, "needSolverPass":Z
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v11

    if-ge v11, v9, :cond_340

    .line 1731
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1732
    const/4 v1, 0x1

    .line 1734
    :cond_340
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v11

    if-ge v11, v10, :cond_351

    .line 1735
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1736
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_353

    .line 1734
    :cond_351
    move/from16 v18, v1

    .line 1738
    .end local v1    # "needSolverPass":Z
    .restart local v18    # "needSolverPass":Z
    :goto_353
    if-eqz v18, :cond_35f

    .line 1739
    const-string v1, "3rd pass"

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    goto :goto_35f

    .line 1722
    .end local v2    # "startingWidth":I
    .end local v5    # "startingHeight":I
    .restart local v31    # "startingWidth":I
    .restart local v33    # "startingHeight":I
    :cond_35b
    move/from16 v2, v31

    move/from16 v5, v33

    .line 1742
    .end local v31    # "startingWidth":I
    .end local v33    # "startingHeight":I
    .restart local v2    # "startingWidth":I
    .restart local v5    # "startingHeight":I
    :cond_35f
    :goto_35f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_360
    move/from16 v11, v32

    .end local v32    # "sizeDependentWidgetsCount":I
    .local v11, "sizeDependentWidgetsCount":I
    if-ge v1, v11, :cond_3d3

    .line 1743
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1744
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 1745
    .local v13, "child":Landroid/view/View;
    if-nez v13, :cond_379

    .line 1746
    move/from16 v31, v2

    move/from16 v22, v3

    goto :goto_3ca

    .line 1748
    :cond_379
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move/from16 v31, v2

    .end local v2    # "startingWidth":I
    .restart local v31    # "startingWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    if-ne v14, v2, :cond_393

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    if-eq v2, v14, :cond_390

    goto :goto_393

    :cond_390
    move/from16 v22, v3

    goto :goto_3ca

    .line 1749
    :cond_393
    :goto_393
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v14, 0x8

    if-eq v2, v14, :cond_3c8

    .line 1750
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1751
    .local v2, "widthSpec":I
    move/from16 v22, v3

    .end local v3    # "containerWrapWidth":Z
    .local v22, "containerWrapWidth":Z
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1752
    .local v3, "heightSpec":I
    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1753
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v14, :cond_3c1

    .line 1754
    move/from16 v33, v2

    move/from16 v34, v3

    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    .local v33, "widthSpec":I
    .local v34, "heightSpec":I
    iget-wide v2, v14, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    add-long v2, v2, v28

    iput-wide v2, v14, Landroidx/constraintlayout/solver/Metrics;->additionalMeasures:J

    goto :goto_3c5

    .line 1753
    .end local v33    # "widthSpec":I
    .end local v34    # "heightSpec":I
    .restart local v2    # "widthSpec":I
    .restart local v3    # "heightSpec":I
    :cond_3c1
    move/from16 v33, v2

    move/from16 v34, v3

    .line 1757
    .end local v2    # "widthSpec":I
    .end local v3    # "heightSpec":I
    .restart local v33    # "widthSpec":I
    .restart local v34    # "heightSpec":I
    :goto_3c5
    add-int/lit8 v23, v23, 0x1

    goto :goto_3ca

    .line 1749
    .end local v22    # "containerWrapWidth":Z
    .end local v33    # "widthSpec":I
    .end local v34    # "heightSpec":I
    .local v3, "containerWrapWidth":Z
    :cond_3c8
    move/from16 v22, v3

    .line 1742
    .end local v3    # "containerWrapWidth":Z
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "child":Landroid/view/View;
    .restart local v22    # "containerWrapWidth":Z
    :goto_3ca
    add-int/lit8 v1, v1, 0x1

    move/from16 v32, v11

    move/from16 v3, v22

    move/from16 v2, v31

    goto :goto_360

    .end local v22    # "containerWrapWidth":Z
    .end local v31    # "startingWidth":I
    .local v2, "startingWidth":I
    .restart local v3    # "containerWrapWidth":Z
    :cond_3d3
    move/from16 v31, v2

    move/from16 v22, v3

    .end local v2    # "startingWidth":I
    .end local v3    # "containerWrapWidth":Z
    .restart local v22    # "containerWrapWidth":Z
    .restart local v31    # "startingWidth":I
    move v3, v8

    goto :goto_3eb

    .line 1635
    .end local v1    # "i":I
    .end local v16    # "heightMode":I
    .end local v22    # "containerWrapWidth":Z
    .end local v24    # "heightSize":I
    .end local v25    # "paddingLeft":I
    .end local v26    # "widthMode":I
    .end local v27    # "widthSize":I
    .end local v30    # "paddingTop":I
    .end local v31    # "startingWidth":I
    .local v5, "sizeDependentWidgetsCount":I
    .local v7, "widthMode":I
    .local v8, "widthSize":I
    .local v9, "heightMode":I
    .local v10, "heightSize":I
    .local v11, "paddingLeft":I
    .local v12, "paddingTop":I
    .local v13, "startingWidth":I
    .restart local v14    # "startingHeight":I
    .local v18, "childState":I
    :cond_3d9
    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v16, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move v11, v5

    move v5, v14

    .end local v7    # "widthMode":I
    .end local v8    # "widthSize":I
    .end local v9    # "heightMode":I
    .end local v10    # "heightSize":I
    .end local v12    # "paddingTop":I
    .end local v13    # "startingWidth":I
    .end local v14    # "startingHeight":I
    .local v5, "startingHeight":I
    .local v11, "sizeDependentWidgetsCount":I
    .restart local v16    # "heightMode":I
    .restart local v24    # "heightSize":I
    .restart local v25    # "paddingLeft":I
    .restart local v26    # "widthMode":I
    .restart local v27    # "widthSize":I
    .restart local v30    # "paddingTop":I
    .restart local v31    # "startingWidth":I
    move/from16 v3, v18

    .line 1762
    .end local v18    # "childState":I
    .local v3, "childState":I
    :goto_3eb
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v6

    .line 1763
    .local v1, "androidLayoutWidth":I
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    add-int/2addr v2, v15

    .line 1765
    .local v2, "androidLayoutHeight":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_43a

    .line 1766
    move/from16 v7, p1

    invoke-static {v1, v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v8

    .line 1767
    .local v8, "resolvedWidthSize":I
    shl-int/lit8 v9, v3, 0x10

    move/from16 v10, p2

    invoke-static {v2, v10, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v9

    .line 1769
    .local v9, "resolvedHeightSize":I
    const v12, 0xffffff

    and-int/2addr v8, v12

    .line 1770
    and-int/2addr v9, v12

    .line 1771
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1772
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1773
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v12

    const/high16 v13, 0x1000000

    if-eqz v12, :cond_429

    .line 1774
    or-int/2addr v8, v13

    .line 1776
    :cond_429
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v12

    if-eqz v12, :cond_432

    .line 1777
    or-int/2addr v9, v13

    .line 1779
    :cond_432
    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1780
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1781
    iput v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1782
    .end local v8    # "resolvedWidthSize":I
    .end local v9    # "resolvedHeightSize":I
    goto :goto_445

    .line 1783
    :cond_43a
    move/from16 v7, p1

    move/from16 v10, p2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1784
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1785
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1795
    :goto_445
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 659
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 660
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 661
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v1, :cond_2e

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 663
    .local v1, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 664
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 665
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 668
    .end local v1    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_2e
    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_4d

    .line 669
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 670
    .local v1, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 672
    .local v3, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 673
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 674
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v1    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    .end local v3    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_4d
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 679
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 691
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 692
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 695
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 647
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 649
    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 3172
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3175
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 3176
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 3177
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3178
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3179
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3180
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3181
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 2
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2004
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2005
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 542
    if-nez p1, :cond_37

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_37

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 543
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_15

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 546
    :cond_15
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 548
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 549
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_27
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 552
    .local v2, "id":I
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_37
    return-void
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 589
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .param p1, "value"    # I

    .line 762
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_5

    .line 763
    return-void

    .line 765
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 766
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 767
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .param p1, "value"    # I

    .line 749
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_5

    .line 750
    return-void

    .line 752
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 753
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 754
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .param p1, "value"    # I

    .line 716
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_5

    .line 717
    return-void

    .line 719
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 720
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 721
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .param p1, "value"    # I

    .line 703
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_5

    .line 704
    return-void

    .line 706
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 707
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 708
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .line 1955
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1956
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 3189
    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1861
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_10

    .line 1862
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->resolutions:J

    .line 1864
    :cond_10
    return-void
.end method

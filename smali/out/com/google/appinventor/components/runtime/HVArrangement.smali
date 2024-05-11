.class public Lcom/google/appinventor/components/runtime/HVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "HVArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HVArrangement"


# instance fields
.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/app/Activity;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private frameContainer:Landroid/view/ViewGroup;

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private imagePath:Ljava/lang/String;

.field private final orientation:I

.field private scrollable:Z

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V
    .registers 10
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "orientation"    # I
    .param p3, "scrollable"    # Z

    .line 95
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 67
    sget-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 68
    sget-object v1, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    .line 98
    iput p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    .line 99
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 100
    new-instance v2, Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 101
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 102
    invoke-direct {v2, v1, p2, v4, v4}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 104
    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 105
    new-instance v4, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v4, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 106
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 107
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 109
    const-string v4, "HVArrangement"

    if-eqz p3, :cond_70

    .line 110
    packed-switch p2, :pswitch_data_a6

    goto :goto_6f

    .line 116
    :pswitch_55
    const-string v5, "Setting up frameContainer = HorizontalScrollView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v4, Landroid/widget/HorizontalScrollView;

    invoke-direct {v4, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    goto :goto_6f

    .line 112
    :pswitch_62
    const-string v5, "Setting up frameContainer = ScrollView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    .line 114
    nop

    .line 118
    :goto_6f
    goto :goto_7c

    .line 121
    :cond_70
    const-string v5, "Setting up frameContainer = FrameLayout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    .line 125
    :goto_7c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->BackgroundColor(I)V

    .line 136
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_62
        :pswitch_55
    .end packed-switch
.end method

.method private updateAppearance()V
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    .line 422
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    if-nez v0, :cond_14

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    .line 428
    :cond_14
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_35

    .line 433
    :cond_2a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 435
    :goto_35
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .registers 8
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    .line 272
    .local v0, "align":Lcom/google/appinventor/components/common/HorizontalAlignment;
    if-nez v0, :cond_22

    .line 273
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x579

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 273
    const-string v4, "HorizontalAlignment"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 275
    return-void

    .line 277
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 278
    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .registers 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 256
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 257
    return-void
.end method

.method public AlignVertical()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .registers 8
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    .line 326
    .local v0, "align":Lcom/google/appinventor/components/common/VerticalAlignment;
    if-nez v0, :cond_22

    .line 327
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x57a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 327
    const-string v4, "VerticalAlignment"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 329
    return-void

    .line 331
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 332
    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .registers 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 310
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 311
    return-void
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .line 343
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 361
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    .line 363
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 365
    return-void
.end method

.method public Image()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 394
    return-void

    .line 397
    :cond_d
    if-nez p1, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p1

    :goto_13
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 405
    :try_start_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 408
    goto :goto_2e

    .line 406
    :catch_2d
    move-exception v0

    .line 412
    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 413
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 197
    .local v0, "cHeight":I
    if-nez v0, :cond_19

    .line 198
    move v1, p2

    .line 199
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/HVArrangement$2;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    .end local v1    # "fHeight":I
    :cond_19
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_24

    .line 208
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 211
    :cond_24
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 213
    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 214
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_3b

    .line 216
    :cond_34
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 218
    :goto_3b
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 166
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .registers 10
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I
    .param p3, "trycount"    # I

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 170
    .local v0, "cWidth":I
    if-nez v0, :cond_1c

    const/4 v1, 0x2

    if-ge p3, v1, :cond_1c

    .line 171
    move v1, p2

    .line 172
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$1;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/google/appinventor/components/runtime/HVArrangement$1;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    .end local v1    # "fWidth":I
    :cond_1c
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_53

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HVArrangement.setChildWidth(): width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HVArrangement"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 185
    :cond_53
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 187
    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    .line 188
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_6a

    .line 190
    :cond_63
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 192
    :goto_6a
    return-void
.end method

.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBase"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private defaultOutlineProvider:Ljava/lang/Object;

.field private defaultStateAnimator:Ljava/lang/Object;

.field private fontTypeface:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private isBigText:Z

.field private isHighContrast:Z

.field private italic:Z

.field private myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private shape:I

.field private showFeedback:Z

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    .line 137
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 144
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    return-void

    nop

    :array_10
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 9
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 152
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 101
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    .line 130
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    .line 153
    new-instance v3, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    .line 156
    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v3}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 158
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 159
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v4

    sput v4, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    .line 160
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_47

    .line 161
    invoke-virtual {v3}, Landroid/widget/Button;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    .line 162
    invoke-virtual {v3}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    .line 166
    :cond_47
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 169
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 172
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 183
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 184
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 185
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 186
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 188
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    .line 189
    return-void
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .registers 9

    .line 527
    const/4 v0, 0x1

    new-array v1, v0, [[I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const v4, 0x101009e

    aput v4, v2, v3

    aput-object v2, v1, v3

    .line 528
    .local v1, "states":[[I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 529
    .local v2, "enabled_color":I
    new-array v0, v0, [I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 530
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 529
    const/16 v7, 0x46

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v0, v3

    .line 532
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2e

    .line 507
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 508
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_2a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2a

    .line 510
    :try_start_12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_29

    .line 511
    :catch_1d
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "ButtonBase"

    const-string v3, "Unable to clone button drawable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_29
    goto :goto_2e

    .line 519
    :cond_2a
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 522
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setShape()V
    .registers 7

    .line 537
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 540
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_e4

    .line 551
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 548
    :pswitch_11
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 549
    goto :goto_2e

    .line 545
    :pswitch_1a
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 546
    goto :goto_2e

    .line 542
    :pswitch_23
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v3, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v3, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 543
    nop

    .line 554
    :goto_2e
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-nez v1, :cond_47

    .line 555
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    :cond_47
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    const/16 v3, 0x15

    if-nez v1, :cond_62

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_62

    .line 560
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v4, v5, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    .line 562
    :cond_62
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 566
    :goto_67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0xffffff

    if-lt v1, v3, :cond_8f

    .line 567
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-ne v1, v4, :cond_7d

    .line 568
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 569
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_8f

    .line 571
    :cond_7d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 572
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    check-cast v2, Landroid/animation/StateListAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 576
    :cond_8f
    :goto_8f
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-ne v1, v4, :cond_a1

    .line 577
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_de

    .line 578
    :cond_a1
    if-nez v1, :cond_d1

    .line 579
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v1, :cond_c3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_c3

    .line 582
    :cond_b4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x333334

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_de

    .line 580
    :cond_c3
    :goto_c3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_de

    .line 585
    :cond_d1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 588
    :goto_de
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 589
    return-void

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method private updateAppearance()V
    .registers 12

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_8d

    .line 433
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_7f

    .line 434
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_42

    .line 437
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_26

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_82

    .line 438
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_82

    .line 446
    :cond_42
    const v2, 0xffffff

    if-ne v0, v2, :cond_63

    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_82

    .line 454
    :cond_63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_82

    .line 463
    :cond_7f
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setShape()V

    .line 465
    :goto_82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto/16 :goto_12e

    .line 467
    :cond_8d
    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v2, :cond_98

    .line 468
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_12e

    .line 470
    :cond_98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 471
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 473
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 474
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 475
    .local v2, "displayDensity":F
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 476
    .local v3, "shapeHeight":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 478
    .local v4, "shapeWidth":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 479
    .local v5, "result":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .local v6, "canvas":Landroid/graphics/Canvas;
    iget v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_130

    .line 493
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 490
    :pswitch_ec
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v10, v3

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 491
    goto :goto_10f

    .line 487
    :pswitch_f7
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v10, v3

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 488
    goto :goto_10f

    .line 483
    :pswitch_102
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v10, v3

    invoke-direct {v7, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v6, v7, v8, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 485
    nop

    .line 496
    :goto_10f
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 498
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7, v1, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 500
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 503
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v2    # "displayDensity":F
    .end local v3    # "shapeHeight":I
    .end local v4    # "shapeWidth":I
    .end local v5    # "result":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :goto_12e
    return-void

    nop

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_102
        :pswitch_f7
        :pswitch_ec
    .end packed-switch
.end method


# virtual methods
.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .line 405
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

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

    .line 423
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 424
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 425
    return-void
.end method

.method public Enabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 613
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .registers 6
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 640
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    .line 641
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 642
    return-void
.end method

.method public FontBold()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .line 626
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .registers 6
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 701
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    .line 702
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 703
    return-void
.end method

.method public FontItalic()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .line 687
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .registers 4
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 730
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_1f

    .line 733
    :cond_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 735
    :goto_1f
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .registers 7
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 769
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 771
    return-void
.end method

.method public GotFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public Image()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 372
    return-void

    .line 375
    :cond_d
    if-nez p1, :cond_12

    const-string v0, ""

    goto :goto_13

    :cond_12
    move-object v0, p1

    :goto_13
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    .line 382
    :try_start_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 387
    goto :goto_48

    .line 383
    :catch_2d
    move-exception v0

    .line 385
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ButtonBase"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_48
    :goto_48
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 392
    return-void
.end method

.method public Initialize()V
    .registers 1

    .line 192
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 193
    return-void
.end method

.method public LostFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public Shape()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 313
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    return v0
.end method

.method public Shape(I)V
    .registers 2
    .param p1, "shape"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .line 337
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    .line 338
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 339
    return-void
.end method

.method public ShowFeedback(Z)V
    .registers 2
    .param p1, "showFeedback"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .line 657
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 658
    return-void
.end method

.method public ShowFeedback()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .line 673
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public TextAlignment()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .registers 4
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 297
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 299
    return-void
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .line 808
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 822
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 823
    if-eqz p1, :cond_a

    .line 824
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_29

    .line 826
    :cond_a
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 830
    :cond_1b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_29

    .line 827
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 833
    :goto_29
    return-void
.end method

.method public TouchDown()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    .line 235
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public TouchUp()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    .line 243
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public abstract click()V
.end method

.method public getHighContrast()Z
    .registers 2

    .line 895
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    return v0
.end method

.method public getLargeFont()Z
    .registers 2

    .line 911
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .registers 2

    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 849
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    .line 850
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .line 856
    if-eqz p2, :cond_6

    .line 857
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    goto :goto_9

    .line 859
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    .line 861
    :goto_9
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 867
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_28

    .line 207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_24

    .line 208
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 211
    :cond_24
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V

    goto :goto_55

    .line 212
    :cond_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_36

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_55

    .line 215
    :cond_36
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_46

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_52

    .line 216
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 219
    :cond_52
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V

    .line 222
    :cond_55
    :goto_55
    const/4 v0, 0x0

    return v0
.end method

.method public setHighContrast(Z)V
    .registers 5
    .param p1, "isHighContrast"    # Z

    .line 873
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_32

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_32

    .line 874
    if-eqz p1, :cond_2b

    .line 875
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 876
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 877
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_32

    .line 879
    :cond_2b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 884
    :cond_32
    :goto_32
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-nez v0, :cond_46

    .line 885
    if-eqz p1, :cond_3f

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_46

    .line 888
    :cond_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 891
    :cond_46
    :goto_46
    return-void
.end method

.method public setLargeFont(Z)V
    .registers 8
    .param p1, "isLargeFont"    # Z

    .line 900
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const/high16 v2, 0x41600000    # 14.0f

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_25

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_34

    .line 901
    :cond_25
    if-eqz p1, :cond_2f

    .line 902
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_34

    .line 904
    :cond_2f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 907
    :cond_34
    :goto_34
    return-void
.end method

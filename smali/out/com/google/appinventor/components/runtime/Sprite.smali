.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_HEADING:I = 0x0

.field private static final DEFAULT_INTERVAL:I = 0x64

.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z = false

.field private static final DEFAULT_SPEED:F = 0.0f

.field private static final DEFAULT_VISIBLE:Z = true

.field private static final DEFAULT_Z:D = 1.0

.field private static final DIRECTION_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Sprite"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field private final registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F

.field private final timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected userHeading:D

.field protected visible:Z

.field protected xCenter:D

.field protected xLeft:D

.field protected yCenter:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 148
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .registers 9
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 108
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 111
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v2, :cond_4f

    .line 114
    move-object v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 115
    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 118
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 121
    new-instance v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v1, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 123
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 127
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 132
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 134
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 135
    return-void

    .line 112
    :cond_4f
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sprite constructor called with container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static coerceToDouble(Ljava/lang/Object;)D
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 732
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 733
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 736
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_14} :catch_15

    return-wide v0

    .line 737
    :catch_15
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .registers 15
    .param p0, "sprite1"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p1, "sprite2"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 998
    .local v1, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v2

    .line 999
    .local v2, "rect2":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_11

    .line 1000
    return v4

    .line 1007
    :cond_11
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v5

    .local v5, "x":D
    :goto_15
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v7

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_3c

    .line 1008
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v7

    .local v7, "y":D
    :goto_21
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v7, v9

    if-gtz v3, :cond_3a

    .line 1009
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1010
    return v0

    .line 1008
    :cond_38
    add-double/2addr v7, v11

    goto :goto_21

    .line 1007
    .end local v7    # "y":D
    :cond_3a
    add-double/2addr v5, v11

    goto :goto_15

    .line 1014
    .end local v5    # "x":D
    :cond_3c
    return v4
.end method

.method private final overEastEdge(I)Z
    .registers 7
    .param p1, "canvasWidth"    # I

    .line 962
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private final overNorthEdge()Z
    .registers 6

    .line 966
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private final overSouthEdge(I)Z
    .registers 7
    .param p1, "canvasHeight"    # I

    .line 970
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private final overWestEdge()Z
    .registers 6

    .line 958
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private updateX(D)V
    .registers 5
    .param p1, "x"    # D

    .line 325
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_d

    .line 326
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->xCenterToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    goto :goto_15

    .line 329
    :cond_d
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 332
    :goto_15
    return-void
.end method

.method private updateY(D)V
    .registers 5
    .param p1, "y"    # D

    .line 354
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_d

    .line 355
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->yCenterToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    goto :goto_15

    .line 358
    :cond_d
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 361
    :goto_15
    return-void
.end method

.method private xCenterToLeft(D)D
    .registers 5
    .param p1, "xCenter"    # D

    .line 319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    return-wide v0
.end method

.method private xLeftToCenter(D)D
    .registers 5
    .param p1, "xLeft"    # D

    .line 315
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private yCenterToTop(D)D
    .registers 5
    .param p1, "yCenter"    # D

    .line 348
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, p1, v0

    return-wide v0
.end method

.method private yTopToCenter(D)D
    .registers 5
    .param p1, "yTop"    # D

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public Bounce(I)V
    .registers 3
    .param p1, "edge"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .line 617
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 618
    .local v0, "dir":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_b

    .line 619
    return-void

    .line 621
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 622
    return-void
.end method

.method public BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .registers 15
    .param p1, "edge"    # Lcom/google/appinventor/components/common/Direction;

    .line 640
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 643
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    .line 644
    .local v0, "normalizedAngle":D
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_12

    .line 645
    add-double/2addr v0, v2

    .line 650
    :cond_12
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    const-wide v7, 0x4070e00000000000L    # 270.0

    const-wide v9, 0x4056800000000000L    # 90.0

    const-wide v11, 0x4066800000000000L    # 180.0

    if-ne p1, v6, :cond_2d

    cmpg-double v6, v0, v9

    if-ltz v6, :cond_39

    cmpl-double v6, v0, v7

    if-gtz v6, :cond_39

    :cond_2d
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_3e

    cmpl-double v6, v0, v9

    if-lez v6, :cond_3e

    cmpg-double v6, v0, v7

    if-gez v6, :cond_3e

    .line 654
    :cond_39
    sub-double/2addr v11, v0

    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_87

    .line 655
    :cond_3e
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_4a

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4a

    cmpg-double v6, v0, v11

    if-ltz v6, :cond_52

    :cond_4a
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_57

    cmpl-double v6, v0, v11

    if-lez v6, :cond_57

    .line 658
    :cond_52
    sub-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_87

    .line 659
    :cond_57
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_63

    cmpl-double v2, v0, v4

    if-lez v2, :cond_63

    cmpg-double v2, v0, v9

    if-ltz v2, :cond_83

    :cond_63
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_6f

    cmpl-double v2, v0, v9

    if-lez v2, :cond_6f

    cmpg-double v2, v0, v11

    if-ltz v2, :cond_83

    :cond_6f
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_7b

    cmpl-double v2, v0, v11

    if-lez v2, :cond_7b

    cmpg-double v2, v0, v7

    if-ltz v2, :cond_83

    :cond_7b
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_87

    cmpl-double v2, v0, v7

    if-lez v2, :cond_87

    .line 666
    :cond_83
    add-double/2addr v11, v0

    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 668
    :cond_87
    :goto_87
    return-void
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "CollidedWith"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_18
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .registers 3
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dragged(FFFFFF)V
    .registers 10
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    .line 477
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Dragged"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public EdgeReached(I)V
    .registers 3
    .param p1, "edge"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 496
    .local v0, "dir":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_b

    .line 497
    return-void

    .line 499
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 500
    return-void
.end method

.method public EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .registers 5
    .param p1, "edge"    # Lcom/google/appinventor/components/common/Direction;

    .line 508
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EdgeReached"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 185
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (-180 to 180 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    .line 566
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Flung"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    return-void
.end method

.method public Heading()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .line 198
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .registers 5
    .param p1, "userHeading"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 214
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 216
    neg-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 219
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 221
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 222
    return-void
.end method

.method public Initialize()V
    .registers 2

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 153
    return-void
.end method

.method public Interval()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .registers 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 251
    return-void
.end method

.method public MoveIntoBounds()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 703
    return-void
.end method

.method public MoveTo(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 714
    invoke-direct {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 715
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 716
    return-void
.end method

.method public MoveToPoint(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 6
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the origin of %type% to the position of the cooordinates given  by the list formatted as [x-coordinate, y-coordinate]."
    .end annotation

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 729
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 527
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NoLongerCollidingWith"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method protected OriginAtCenter(Z)V
    .registers 2
    .param p1, "b"    # Z

    .line 401
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    .line 402
    return-void
.end method

.method public PointInDirection(DD)V
    .registers 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .line 767
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double v0, p3, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 768
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .registers 8
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .line 754
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 755
    return-void
.end method

.method public Speed()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .line 281
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .registers 2
    .param p1, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .line 267
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 268
    return-void
.end method

.method public TouchDown(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .line 598
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TouchDown"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method public TouchUp(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .line 582
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TouchUp"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public Touched(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    .line 542
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Touched"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public Visible(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 306
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 308
    return-void
.end method

.method public Visible()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .line 292
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .registers 3

    .line 311
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    :goto_9
    return-wide v0
.end method

.method public X(D)V
    .registers 3
    .param p1, "x"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 340
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 341
    return-void
.end method

.method public Y()D
    .registers 3

    .line 372
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_9

    :cond_7
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    :goto_9
    return-wide v0
.end method

.method public Y(D)V
    .registers 3
    .param p1, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 369
    return-void
.end method

.method public Z()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .line 395
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .registers 4
    .param p1, "layer"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 387
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 389
    return-void
.end method

.method public alarm()V
    .registers 3

    .line 1066
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    .line 1067
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 1068
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 1070
    :cond_11
    return-void
.end method

.method public containsPoint(DD)Z
    .registers 9
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .line 1052
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_28

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    cmpg-double v2, p1, v0

    if-gez v2, :cond_28

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_28

    .line 1053
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    cmpg-double v2, p3, v0

    if-gez v2, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 1052
    :goto_29
    return v0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .registers 16
    .param p1, "border"    # I

    .line 982
    new-instance v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    .line 983
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    int-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v8

    int-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v12

    sub-double/2addr v0, v6

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double v7, v0, v6

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 982
    return-object v9
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .registers 3

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 804
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_8

    .line 805
    const/4 v1, 0x0

    return v1

    .line 807
    :cond_8
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected hitEdge(II)I
    .registers 5
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 818
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 819
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_8

    .line 820
    const/4 v1, 0x0

    return v1

    .line 822
    :cond_8
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;
    .registers 3

    .line 833
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_a

    .line 834
    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;
    .registers 8
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 848
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v0

    .line 849
    .local v0, "west":Z
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    .line 850
    .local v1, "north":Z
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v2

    .line 851
    .local v2, "east":Z
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v3

    .line 853
    .local v3, "south":Z
    if-nez v1, :cond_1a

    if-nez v3, :cond_1a

    if-nez v2, :cond_1a

    if-nez v0, :cond_1a

    .line 854
    const/4 v4, 0x0

    return-object v4

    .line 857
    :cond_1a
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 859
    if-eqz v0, :cond_2c

    .line 860
    if-eqz v1, :cond_24

    .line 861
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 862
    :cond_24
    if-eqz v3, :cond_29

    .line 863
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 865
    :cond_29
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 868
    :cond_2c
    if-eqz v2, :cond_3b

    .line 869
    if-eqz v1, :cond_33

    .line 870
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 871
    :cond_33
    if-eqz v3, :cond_38

    .line 872
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 874
    :cond_38
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 877
    :cond_3b
    if-eqz v1, :cond_40

    .line 878
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 880
    :cond_40
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    return-object v4
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .registers 13
    .param p1, "rect"    # Lcom/google/appinventor/components/runtime/util/BoundingBox;

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 1026
    .local v1, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1027
    return v0

    .line 1033
    :cond_c
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, "x":D
    :goto_10
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_32

    .line 1034
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, "y":D
    :goto_1c
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v6

    if-gez v10, :cond_30

    .line 1035
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1036
    const/4 v0, 0x1

    return v0

    .line 1034
    :cond_2e
    add-double/2addr v4, v8

    goto :goto_1c

    .line 1033
    .end local v4    # "y":D
    :cond_30
    add-double/2addr v2, v8

    goto :goto_10

    .line 1040
    .end local v2    # "x":D
    :cond_32
    return v0
.end method

.method protected final moveIntoBounds(II)V
    .registers 9
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 891
    const/4 v0, 0x0

    .line 897
    .local v0, "moved":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    const-wide/16 v2, 0x0

    if-le v1, p1, :cond_19

    .line 901
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_3f

    .line 902
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 903
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 904
    const/4 v0, 0x1

    goto :goto_3f

    .line 906
    :cond_19
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 907
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 908
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 909
    const/4 v0, 0x1

    goto :goto_3f

    .line 910
    :cond_29
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 911
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    sub-int v1, p1, v1

    int-to-double v4, v1

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 912
    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 913
    const/4 v0, 0x1

    .line 918
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    if-le v1, p2, :cond_55

    .line 922
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7b

    .line 923
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 924
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 925
    const/4 v0, 0x1

    goto :goto_7b

    .line 927
    :cond_55
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 928
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 929
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 930
    const/4 v0, 0x1

    goto :goto_7b

    .line 931
    :cond_65
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 932
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    sub-int v1, p2, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 933
    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 934
    const/4 v0, 0x1

    .line 938
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_80

    .line 939
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 941
    :cond_80
    return-void
.end method

.method public onDelete()V
    .registers 3

    .line 1090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1091
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1092
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1083
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1084
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method protected registerChange()V
    .registers 3

    .line 783
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v0, :cond_e

    .line 785
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 786
    return-void

    .line 788
    :cond_e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 789
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-eqz v0, :cond_17

    .line 790
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 792
    :cond_17
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 793
    return-void
.end method

.method protected updateCoordinates()V
    .registers 7

    .line 948
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 949
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 950
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 951
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToCenter(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 952
    return-void
.end method

.class public final Lcom/google/appinventor/components/runtime/Ball;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "Ball.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>\'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    iconName = "images/ball.png"
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field static final DEFAULT_RADIUS:I = 0x5


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private radius:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    .line 69
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->PaintColor(I)V

    .line 70
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->Radius(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public Height()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Height(I)V
    .registers 2
    .param p1, "height"    # I

    .line 97
    return-void
.end method

.method public HeightPercent(I)V
    .registers 2
    .param p1, "pCent"    # I

    .line 102
    return-void
.end method

.method public MoveTo(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates."
    .end annotation

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 242
    return-void
.end method

.method public OriginAtCenter(Z)V
    .registers 2
    .param p1, "b"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the x- and y-coordinates should represent the center of the Ball (true) or its left and top edges (false)."
        userVisible = false
    .end annotation

    .line 197
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 198
    return-void
.end method

.method public PaintColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Ball."
    .end annotation

    .line 161
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    .line 175
    if-eqz p1, :cond_a

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_11

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 181
    :goto_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 182
    return-void
.end method

.method public Radius()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 148
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    return v0
.end method

.method public Radius(I)V
    .registers 7
    .param p1, "radius"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance from the edge of the Ball to its center."
    .end annotation

    .line 133
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    sub-int v0, p1, v0

    .line 135
    .local v0, "dr":I
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Ball;->originAtCenter:Z

    if-eqz v1, :cond_1a

    .line 136
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    .line 137
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    .line 139
    :cond_1a
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    .line 140
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 141
    return-void
.end method

.method public Width()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Width(I)V
    .registers 2
    .param p1, "width"    # I

    .line 112
    return-void
.end method

.method public WidthPercent(I)V
    .registers 2
    .param p1, "pCent"    # I

    .line 117
    return-void
.end method

.method public X()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball."
    .end annotation

    .line 211
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball."
    .end annotation

    .line 225
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method public containsPoint(DD)Z
    .registers 11
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .line 121
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->xCenter:D

    sub-double v2, p1, v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double v2, p3, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ball;->yCenter:D

    sub-double v4, p3, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int v2, v2, v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ball;->visible:Z

    if-eqz v0, :cond_36

    .line 78
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 79
    .local v0, "correctedXLeft":F
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 80
    .local v1, "correctedYTop":F
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v2, v2, v3

    .line 81
    .local v2, "correctedRadius":F
    add-float v3, v0, v2

    add-float v4, v1, v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    .end local v0    # "correctedXLeft":F
    .end local v1    # "correctedYTop":F
    .end local v2    # "correctedRadius":F
    :cond_36
    return-void
.end method

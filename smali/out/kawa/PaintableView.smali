.class Lkawa/PaintableView;
.super Ljavax/swing/text/View;
.source "ReplPane.java"


# instance fields
.field bounds:Ljava/awt/geom/Rectangle2D;

.field p:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V
    .registers 4
    .param p1, "elem"    # Ljavax/swing/text/Element;
    .param p2, "paintable"    # Lgnu/kawa/models/Paintable;

    .line 238
    invoke-direct {p0, p1}, Ljavax/swing/text/View;-><init>(Ljavax/swing/text/Element;)V

    .line 239
    iput-object p2, p0, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    .line 240
    invoke-interface {p2}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    .line 241
    return-void
.end method


# virtual methods
.method public getAlignment(I)F
    .registers 3
    .param p1, "axis"    # I

    .line 264
    packed-switch p1, :pswitch_data_c

    .line 269
    invoke-super {p0, p1}, Ljavax/swing/text/View;->getAlignment(I)F

    move-result v0

    return v0

    .line 267
    :pswitch_8
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public getPreferredSpan(I)F
    .registers 5
    .param p1, "axis"    # I

    .line 274
    packed-switch p1, :pswitch_data_2c

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_1c
    iget-object v0, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 276
    :pswitch_24
    iget-object v0, p0, Lkawa/PaintableView;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public modelToView(ILjava/awt/Shape;Ljavax/swing/text/Position$Bias;)Ljava/awt/Shape;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "a"    # Ljava/awt/Shape;
    .param p3, "b"    # Ljavax/swing/text/Position$Bias;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lkawa/PaintableView;->getStartOffset()I

    move-result v0

    .line 286
    .local v0, "p0":I
    invoke-virtual {p0}, Lkawa/PaintableView;->getEndOffset()I

    move-result v1

    .line 287
    .local v1, "p1":I
    if-lt p1, v0, :cond_1d

    if-gt p1, v1, :cond_1d

    .line 288
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v2

    .line 289
    .local v2, "r":Ljava/awt/Rectangle;
    if-ne p1, v1, :cond_19

    .line 290
    iget v3, v2, Ljava/awt/Rectangle;->x:I

    iget v4, v2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    iput v3, v2, Ljava/awt/Rectangle;->x:I

    .line 292
    :cond_19
    const/4 v3, 0x0

    iput v3, v2, Ljava/awt/Rectangle;->width:I

    .line 293
    return-object v2

    .line 295
    .end local v2    # "r":Ljava/awt/Rectangle;
    :cond_1d
    new-instance v2, Ljavax/swing/text/BadLocationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public paint(Ljava/awt/Graphics;Ljava/awt/Shape;)V
    .registers 9
    .param p1, "g"    # Ljava/awt/Graphics;
    .param p2, "a"    # Ljava/awt/Shape;

    .line 245
    move-object v0, p1

    check-cast v0, Ljava/awt/Graphics2D;

    .line 246
    .local v0, "g2":Ljava/awt/Graphics2D;
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    .line 247
    .local v1, "bounds":Ljava/awt/Rectangle;
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    .line 248
    .local v2, "saveTransform":Ljava/awt/geom/AffineTransform;
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getPaint()Ljava/awt/Paint;

    move-result-object v3

    .line 251
    .local v3, "savePaint":Ljava/awt/Paint;
    :try_start_f
    iget v4, v1, Ljava/awt/Rectangle;->x:I

    iget v5, v1, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v0, v4, v5}, Ljava/awt/Graphics2D;->translate(II)V

    .line 252
    sget-object v4, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v0, v4}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 253
    iget-object v4, p0, Lkawa/PaintableView;->p:Lgnu/kawa/models/Paintable;

    invoke-interface {v4, v0}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_28

    .line 257
    invoke-virtual {v0, v2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 259
    nop

    .line 260
    return-void

    .line 257
    :catchall_28
    move-exception v4

    invoke-virtual {v0, v2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 258
    invoke-virtual {v0, v3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    throw v4
.end method

.method public viewToModel(FFLjava/awt/Shape;[Ljavax/swing/text/Position$Bias;)I
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "a"    # Ljava/awt/Shape;
    .param p4, "bias"    # [Ljavax/swing/text/Position$Bias;

    .line 299
    move-object v0, p3

    check-cast v0, Ljava/awt/Rectangle;

    .line 300
    .local v0, "alloc":Ljava/awt/Rectangle;
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_19

    .line 301
    sget-object v1, Ljavax/swing/text/Position$Bias;->Forward:Ljavax/swing/text/Position$Bias;

    aput-object v1, p4, v2

    .line 302
    invoke-virtual {p0}, Lkawa/PaintableView;->getStartOffset()I

    move-result v1

    return v1

    .line 304
    :cond_19
    sget-object v1, Ljavax/swing/text/Position$Bias;->Backward:Ljavax/swing/text/Position$Bias;

    aput-object v1, p4, v2

    .line 305
    invoke-virtual {p0}, Lkawa/PaintableView;->getEndOffset()I

    move-result v1

    return v1
.end method

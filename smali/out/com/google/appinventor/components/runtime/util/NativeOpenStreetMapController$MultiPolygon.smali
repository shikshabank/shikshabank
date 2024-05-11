.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPolygon"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private draggable:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1397
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1554
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1555
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1556
    const/4 v0, 0x1

    return v0

    .line 1558
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_1a
    goto :goto_6

    .line 1559
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "b"    # Z

    .line 1413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1414
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 1415
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_6

    .line 1416
    :cond_16
    return-void
.end method

.method public finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .registers 6
    .param p1, "start"    # Landroid/view/MotionEvent;
    .param p2, "end"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .line 1593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1594
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1595
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_6

    .line 1596
    :cond_16
    return-void
.end method

.method public getMultiHoles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 1452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1454
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_b

    .line 1456
    :cond_1f
    return-object v0
.end method

.method public getMultiPoints()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1421
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_b

    .line 1423
    :cond_1f
    return-object v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "start"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .line 1586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1587
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1588
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_6

    .line 1589
    :cond_16
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1564
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1565
    .local v0, "touched":Z
    if-eqz v0, :cond_3e

    .line 1566
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    if-eqz v1, :cond_21

    .line 1567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1568
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->closeInfoWindow()V

    .line 1569
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1570
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_1b

    .line 1571
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1573
    :cond_1b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_3e

    .line 1574
    :cond_21
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_3e

    .line 1575
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1576
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1576
    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 1575
    invoke-interface {v1, p0, p2, v2}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    .line 1580
    :cond_3e
    :goto_3e
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1545
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1546
    const/4 v0, 0x1

    return v0

    .line 1548
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_1a
    goto :goto_6

    .line 1549
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1600
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    if-eqz v0, :cond_37

    .line 1601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 1602
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1604
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v0, :cond_20

    .line 1605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1607
    :cond_20
    return v2

    .line 1608
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 1609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v0, :cond_36

    .line 1611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1613
    :cond_36
    return v2

    .line 1616
    :cond_37
    return v1
.end method

.method public setDraggable(Z)V
    .registers 4
    .param p1, "draggable"    # Z

    .line 1477
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1478
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    .line 1479
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1480
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1481
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_b

    .line 1482
    :cond_1b
    return-void
.end method

.method public setFillColor(I)V
    .registers 4
    .param p1, "fillColor"    # I

    .line 1520
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1522
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1523
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_9

    .line 1524
    :cond_19
    return-void
.end method

.method public setMultiHoles(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1460
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_43

    .line 1464
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 1467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1468
    .local v0, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1469
    .local v1, "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_1f

    .line 1465
    .end local v0    # "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    .end local v1    # "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Holes and points are not of the same arity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1462
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    .line 1463
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_49

    :cond_5d
    nop

    .line 1473
    :cond_5e
    return-void
.end method

.method public setMultiPoints(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 1427
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1428
    .local v0, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1429
    .local v1, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_a

    .line 1432
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1434
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_26

    .line 1436
    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1437
    new-instance v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v2}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1438
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1440
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1441
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1442
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1443
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1444
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1445
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1446
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_33

    .line 1448
    :cond_78
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1486
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1487
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1489
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1490
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_b

    .line 1491
    :cond_1b
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1495
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1496
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1498
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1499
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_b

    .line 1500
    :cond_1b
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 4
    .param p1, "snippet"    # Ljava/lang/String;

    .line 1536
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1538
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1539
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_9

    .line 1540
    :cond_19
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 4
    .param p1, "strokeColor"    # I

    .line 1512
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1513
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1514
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1515
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_9

    .line 1516
    :cond_19
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 4
    .param p1, "strokeWidth"    # F

    .line 1504
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1506
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1507
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_9

    .line 1508
    :cond_19
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .line 1528
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1530
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1531
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_9

    .line 1532
    :cond_19
    return-void
.end method

.method public showInfoWindow()V
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    .line 1409
    :cond_14
    return-void
.end method

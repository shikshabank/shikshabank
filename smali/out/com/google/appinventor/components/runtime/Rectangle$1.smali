.class Lcom/google/appinventor/components/runtime/Rectangle$1;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Rectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 80
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 82
    :cond_19
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 62
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 64
    :cond_19
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 53
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 55
    :cond_19
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 71
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 73
    :cond_19
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 89
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 91
    :cond_19
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/Rectangle;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Rectangle$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Rectangle$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Rectangle$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Rectangle$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Rectangle$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

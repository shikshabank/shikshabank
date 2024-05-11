.class public Lcom/google/appinventor/components/runtime/Polygon;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Polygon.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Polygon encloses an arbitrary 2-dimensional area on a Map. Polygons can be used for drawing a perimeter, such as a campus, city, or country. Polygons begin as basic triangles. New vertices can be created by dragging the midpoint of a polygon away from the edge. Clicking on a vertex will remove the vertex, but a minimum of 3 vertices must exist at all times."
    iconName = "images/polygon.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private holePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private multipolygon:Z

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Polygon$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Polygon;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 114
    sget-object v0, Lcom/google/appinventor/components/runtime/Polygon;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    .line 115
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 116
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the centroid of the Polygon as a (latitude, longitude) pair."
    .end annotation

    .line 324
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/PolygonBase;->Centroid()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public HolePoints()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw holes in the polygon."
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 238
    :cond_d
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v0, :cond_35

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 240
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 241
    .local v2, "polyholes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2    # "polyholes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    goto :goto_1c

    .line 243
    :cond_30
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 245
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :cond_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 7
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    goto :goto_2e

    .line 261
    :cond_e
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v0, :cond_19

    .line 262
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    goto :goto_2e

    .line 263
    :cond_19
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 267
    .end local v0    # "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    nop

    .line 271
    :goto_2e
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v0, :cond_3e

    .line 272
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 278
    :cond_3e
    goto :goto_63

    .line 268
    :cond_3f
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v1, 0xd4c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Unable to determine the structure of the points argument."

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local p1    # "points":Lcom/google/appinventor/components/runtime/util/YailList;
    throw v0
    :try_end_4f
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_4f} :catch_4f

    .line 275
    .restart local p1    # "points":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_4f
    move-exception v0

    .line 276
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    .line 276
    const-string v4, "HolePoints"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 279
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :goto_63
    return-void
.end method

.method public HolePointsFromString(Ljava/lang/String;)V
    .registers 8
    .param p1, "pointString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Constructs holes in a polygon from a given list of coordinates per hole."
    .end annotation

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 296
    return-void

    .line 299
    :cond_17
    :try_start_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "content":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_33

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 302
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 303
    return-void

    .line 305
    :cond_33
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    .line 306
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v1, :cond_49

    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 308
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 310
    :cond_49
    sget-object v1, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Points: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_63} :catch_65

    .line 315
    nop

    .end local v0    # "content":Lorg/json/JSONArray;
    goto :goto_84

    .line 311
    :catch_65
    move-exception v0

    .line 312
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/google/appinventor/components/runtime/Polygon;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse point string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xd4c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 314
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 313
    const-string v4, "HolePointsFromString"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 316
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_84
    return-void
.end method

.method public Initialize()V
    .registers 2

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 124
    return-void
.end method

.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the sequence of points used to draw the polygon."
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 150
    :cond_d
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    if-eqz v0, :cond_35

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 153
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 154
    .local v2, "part":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "part":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    goto :goto_1c

    .line 156
    :cond_30
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :cond_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 7
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 173
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 174
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 177
    :cond_18
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    .line 178
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 179
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 184
    :goto_27
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v0, :cond_37

    .line 185
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 190
    :cond_37
    goto :goto_5a

    .line 181
    :cond_38
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v3, 0xd4c

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Unable to determine the structure of the points argument."

    aput-object v4, v2, v1

    invoke-direct {v0, v3, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local p1    # "points":Lcom/google/appinventor/components/runtime/util/YailList;
    throw v0
    :try_end_46
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_46} :catch_46

    .line 188
    .restart local p1    # "points":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_46
    move-exception v0

    .line 189
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Points"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :goto_5a
    return-void
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .registers 9
    .param p1, "pointString"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Constructs a polygon from the given list of coordinates."
    .end annotation

    .line 204
    const-string v0, "PointsFromString"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 207
    return-void

    .line 210
    :cond_19
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1b
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "content":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_39

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 213
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 214
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 215
    return-void

    .line 217
    :cond_39
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    .line 218
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_47

    const/4 v4, 0x1

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    :goto_48
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->multipolygon:Z

    .line 219
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    if-eqz v4, :cond_80

    .line 220
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 221
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_5a} :catch_6c
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1b .. :try_end_5a} :catch_5b

    goto :goto_80

    .line 226
    .end local v3    # "content":Lorg/json/JSONArray;
    :catch_5b
    move-exception v1

    .line 227
    .local v1, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    .line 227
    invoke-interface {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_81

    .line 223
    .end local v1    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :catch_6c
    move-exception v3

    .line 224
    .local v3, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Polygon;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0xd4c

    new-array v2, v2, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 224
    invoke-virtual {v4, p0, v0, v5, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 229
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_80
    :goto_80
    nop

    .line 230
    :goto_81
    return-void
.end method

.method public Type()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the feature. For polygons, this returns MapFeature.Polygon (\"Polygon\")."
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .registers 2

    .line 141
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 339
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getHolePoints()Ljava/util/List;
    .registers 2
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

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    return-object v0
.end method

.method isInitialized()Z
    .registers 2

    .line 363
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->initialized:Z

    return v0
.end method

.method public updateHolePoints(Ljava/util/List;)V
    .registers 3
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

    .line 356
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->holePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 359
    return-void
.end method

.method public updatePoints(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Polygon;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Polygon;->clearGeometry()V

    .line 352
    return-void
.end method

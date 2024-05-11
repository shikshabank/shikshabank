.class public Lcom/google/appinventor/components/runtime/FeatureCollection;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "FeatureCollection.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A FeatureCollection contains one or more map features as a group. Any events fired on a feature in the collection will also trigger the corresponding event on the collection object. FeatureCollections can be loaded from external resources as a means of populating a Map with content."
    iconName = "images/featurecollection.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private map:Lcom/google/appinventor/components/runtime/Map;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public FeaturesFromGeoJSON(Ljava/lang/String;)V
    .registers 8
    .param p1, "geojson"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Loads a collection of features from the given string. If the string is not valid GeoJSON, the ErrorLoadingFeatureCollection error will be run with url = <string>."
    .end annotation

    .line 63
    :try_start_0
    const-string v0, "<string>"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FeatureCollection;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 67
    goto :goto_1c

    .line 64
    :catch_6
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0xd53

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    const-string v4, "FeaturesFromGeoJSON"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1c
    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 84
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 85
    return-void
.end method

.method public Source()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the source URL used to populate the feature collection. If the feature collection was not loaded from a URL, this will be the empty string."
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .registers 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "geojson_type"
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->source:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public Visible(Z)V
    .registers 3
    .param p1, "visibility"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V

    .line 123
    return-void
.end method

.method public Visible()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z

    move-result v0

    return v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

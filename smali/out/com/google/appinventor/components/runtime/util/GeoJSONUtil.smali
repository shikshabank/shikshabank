.class public final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;,
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_COORDINATES:Ljava/lang/String; = "coordinates"

.field private static final GEOJSON_FEATURE:Ljava/lang/String; = "Feature"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final KEY:I = 0x1

.field private static final LATITUDE:I = 0x2

.field private static final LONGITUDE:I = 0x1

.field private static final PROPERTY_ANCHOR_HORIZONTAL:Ljava/lang/String; = "anchorHorizontal"

.field private static final PROPERTY_ANCHOR_VERTICAL:Ljava/lang/String; = "anchorVertical"

.field private static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PROPERTY_DRAGGABLE:Ljava/lang/String; = "draggable"

.field private static final PROPERTY_FILL:Ljava/lang/String; = "fill"

.field private static final PROPERTY_FILL_OPACITY:Ljava/lang/String; = "fill-opacity"

.field private static final PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROPERTY_IMAGE:Ljava/lang/String; = "image"

.field private static final PROPERTY_INFOBOX:Ljava/lang/String; = "infobox"

.field private static final PROPERTY_STROKE:Ljava/lang/String; = "stroke"

.field private static final PROPERTY_STROKE_OPACITY:Ljava/lang/String; = "stroke-opacity"

.field private static final PROPERTY_STROKE_WIDTH:Ljava/lang/String; = "stroke-width"

.field private static final PROPERTY_TITLE:Ljava/lang/String; = "title"

.field private static final PROPERTY_VISIBLE:Ljava/lang/String; = "visible"

.field private static final PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final SUPPORTED_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE:I = 0x2

.field private static final colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    .line 87
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const v1, -0xffff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const v1, -0xff0001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cyan"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v1, -0xbbbbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const v1, -0x777778

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const v1, -0xff0100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const v1, -0x333334

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lightgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const v1, -0xff01

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "magenta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v1, -0x3800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orange"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/16 v1, -0x5051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pink"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/high16 v1, -0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "white"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yellow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    .line 102
    const-string v1, "anchorHorizontal"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "anchorVertical"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;-><init>()V

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;-><init>()V

    const-string v2, "draggable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;-><init>()V

    const-string v2, "fill"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;-><init>()V

    const-string v2, "fill-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;-><init>()V

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;-><init>()V

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;-><init>()V

    const-string v2, "infobox"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;-><init>()V

    const-string v2, "stroke"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;-><init>()V

    const-string v2, "stroke-opacity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;-><init>()V

    const-string v2, "stroke-width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;-><init>()V

    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;-><init>()V

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;-><init>()V

    const-string v2, "visible"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charToHex(C)I
    .registers 3
    .param p0, "c"    # C

    .line 267
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 268
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 269
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 270
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 271
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 272
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 274
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid hex character. Expected [0-9A-Fa-f]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->stripBOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "parsedData":Lorg/json/JSONObject;
    const-string v1, "features"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 458
    .local v1, "features":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v2, "yailFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 460
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 462
    .end local v3    # "i":I
    :cond_29
    return-object v2
.end method

.method public static getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "geojsonType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 466
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->stripBOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "parsedData":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "type":Ljava/lang/String;
    return-object v1
.end method

.method private static jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 8
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 499
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 500
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_6e

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_6e

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_6e

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_6e

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_25

    goto :goto_6e

    .line 506
    :cond_25
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_34

    .line 507
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 508
    :cond_34
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_43

    .line 509
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 510
    :cond_43
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_71

    .line 511
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unrecognized/invalid type in JSON object"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 505
    :cond_6e
    :goto_6e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v2    # "value":Ljava/lang/Object;
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 515
    .end local v1    # "i":I
    :cond_74
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method private static jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 10
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 475
    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 478
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Boolean;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_8e

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_8e

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_8e

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_8e

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_31

    goto :goto_8e

    .line 484
    :cond_31
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_4a

    .line 485
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    move-object v6, v3

    check-cast v6, Lorg/json/JSONArray;

    invoke-static {p0, v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 486
    :cond_4a
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_63

    .line 487
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    move-object v6, v3

    check-cast v6, Lorg/json/JSONObject;

    invoke-static {p0, v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 488
    :cond_63
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_9b

    .line 489
    :cond_6c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unrecognized/invalid type in JSON object"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_8e
    :goto_8e
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_9b
    goto/16 :goto_9

    .line 493
    :cond_9d
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private static lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .registers 4
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 361
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14

    .line 364
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/LineString;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 365
    .local v0, "lineString":Lcom/google/appinventor/components/runtime/LineString;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LineString;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 366
    return-object v0

    .line 362
    .end local v0    # "lineString":Lcom/google/appinventor/components/runtime/LineString;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few coordinates supplied in GeoJSON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .registers 5
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 350
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    .line 353
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 354
    .local v0, "marker":Lcom/google/appinventor/components/runtime/Marker;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 356
    return-object v0

    .line 351
    .end local v0    # "marker":Lcom/google/appinventor/components/runtime/Marker;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid coordinate supplied in GeoJSON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .registers 8
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 384
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 385
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "holePoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 388
    .local v3, "i":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 391
    .local v4, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .end local v4    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_16

    .line 394
    :cond_48
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 395
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 396
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 397
    return-object v0
.end method

.method static parseBooleanOrString(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 418
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 419
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 420
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 421
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 422
    :cond_28
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_35

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseBooleanOrString(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 425
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static parseColor(Ljava/lang/String;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "lcValue":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 222
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_13

    .line 223
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 224
    :cond_13
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 226
    :cond_25
    const-string v2, "&h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 227
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 229
    :cond_37
    const/high16 v2, -0x10000

    return v2
.end method

.method static parseColorHex(Ljava/lang/String;)I
    .registers 8
    .param p0, "value"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "argb":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x8

    if-ne v1, v2, :cond_28

    .line 238
    const/high16 v0, -0x1000000

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 241
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v2

    .line 242
    .local v2, "hex":I
    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v2

    rsub-int/lit8 v5, v1, 0x2

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v0, v4

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .end local v1    # "i":I
    .end local v2    # "hex":I
    :cond_27
    goto :goto_83

    .line 244
    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ne v1, v4, :cond_58

    .line 246
    const/high16 v0, -0x1000000

    .line 248
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_33
    if-ge v1, v2, :cond_57

    .line 249
    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    shl-int/2addr v4, v5

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v6

    or-int/2addr v4, v6

    .line 250
    .local v4, "hex":I
    rsub-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x8

    shl-int v6, v4, v6

    or-int/2addr v0, v6

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .end local v1    # "i":I
    .end local v4    # "hex":I
    :cond_57
    goto :goto_83

    .line 252
    :cond_58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_84

    .line 255
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5f
    if-ge v1, v5, :cond_83

    .line 256
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v2

    shl-int/2addr v2, v5

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    or-int/2addr v2, v4

    .line 257
    .restart local v2    # "hex":I
    rsub-int/lit8 v4, v1, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int v4, v2, v4

    or-int/2addr v0, v4

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 262
    .end local v1    # "i":I
    .end local v2    # "hex":I
    :cond_83
    :goto_83
    return v0

    .line 260
    :cond_84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_8b

    :goto_8a
    throw v1

    :goto_8b
    goto :goto_8a
.end method

.method static parseFloatOrString(Ljava/lang/Object;)F
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 444
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 445
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0

    .line 446
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 447
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 448
    :cond_18
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_25

    .line 449
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 451
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static parseIntegerOrString(Ljava/lang/Object;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 431
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 432
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 433
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 434
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 435
    :cond_18
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_25

    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 438
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .registers 5
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 371
    new-instance v0, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 372
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 376
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 378
    :cond_36
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 379
    return-object v0
.end method

.method private static processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .registers 4
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 336
    const-string v0, "Point"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    move-result-object v0

    return-object v0

    .line 338
    :cond_d
    const-string v0, "LineString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 339
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    move-result-object v0

    return-object v0

    .line 340
    :cond_1a
    const-string v0, "Polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 341
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    return-object v0

    .line 342
    :cond_27
    const-string v0, "MultiPolygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 343
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    return-object v0

    .line 345
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .registers 14
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "descriptions"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 282
    .local v1, "geometry":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v2, 0x0

    .line 283
    .local v2, "properties":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/LList;

    invoke-virtual {v3}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 284
    .local v4, "o":Ljava/lang/Object;
    move-object v7, v4

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 285
    .local v7, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v7, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v7, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v9

    .line 287
    .local v9, "value":Ljava/lang/Object;
    const-string v10, "type"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 288
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    goto :goto_55

    .line 289
    :cond_30
    const-string v10, "geometry"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 290
    move-object v1, v9

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_55

    .line 291
    :cond_3c
    const-string v10, "properties"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 292
    move-object v2, v9

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_55

    .line 294
    :cond_48
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v6, "Unsupported field \"%s\" in JSON format"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v4    # "o":Ljava/lang/Object;
    .end local v7    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    :goto_55
    goto :goto_d

    .line 297
    :cond_56
    const-string v3, "Feature"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 300
    if-nez v1, :cond_62

    .line 303
    const/4 v3, 0x0

    return-object v3

    .line 305
    :cond_62
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v3

    .line 306
    .local v3, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    if-eqz v2, :cond_6b

    .line 307
    invoke-static {p0, v3, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 309
    :cond_6b
    return-object v3

    .line 298
    .end local v3    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_6c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v5, "Unknown type \"%s\""

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :goto_7c
    throw v3

    :goto_7d
    goto :goto_7c
.end method

.method private static processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .registers 13
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "geometry"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 316
    .local v1, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 318
    .local v4, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    .line 320
    .local v8, "value":Ljava/lang/Object;
    const-string v9, "type"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 321
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    goto :goto_48

    .line 322
    :cond_2f
    const-string v9, "coordinates"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 323
    move-object v1, v8

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_48

    .line 325
    :cond_3b
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    const-string v5, "Unsupported field \"%s\" in JSON format"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :goto_48
    goto :goto_c

    .line 328
    :cond_49
    if-eqz v1, :cond_50

    .line 331
    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v2

    return-object v2

    .line 329
    :cond_50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No coordinates found in GeoJSON Feature"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_59

    :goto_58
    throw v2

    :goto_59
    goto :goto_58
.end method

.method private static processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 10
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "properties"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 402
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_43

    .line 404
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 405
    .local v2, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 407
    .local v5, "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    if-eqz v5, :cond_35

    .line 408
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V

    goto :goto_43

    .line 410
    :cond_35
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v6, "Ignoring GeoJSON property \"%s\""

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    :cond_43
    :goto_43
    goto :goto_4

    .line 414
    :cond_44
    return-void
.end method

.method private static stripBOM(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "content"    # Ljava/lang/String;

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_10

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 522
    :cond_10
    return-object p0
.end method

.method public static swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6
    .param p0, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 792
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 793
    .local v0, "i":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 794
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 795
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 796
    .local v1, "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 797
    .local v2, "temp":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    .line 798
    .local v3, "p":Lgnu/lists/Pair;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lgnu/lists/Pair;

    .line 800
    invoke-virtual {v3, v2}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 801
    .end local v1    # "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "temp":Ljava/lang/Object;
    .end local v3    # "p":Lgnu/lists/Pair;
    goto :goto_7

    .line 802
    :cond_31
    return-object p0
.end method

.method public static swapCoordinates2(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 806
    .local p0, "coordinates":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 807
    .local v1, "point":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 808
    .local v3, "temp":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-interface {v1, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 810
    .end local v1    # "point":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v3    # "temp":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 811
    :cond_21
    return-object p0
.end method

.method public static swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;
    .registers 3
    .param p0, "coordinates"    # Lgnu/lists/LList;

    .line 815
    move-object v0, p0

    .line 816
    .local v0, "it":Lgnu/lists/LList;
    :goto_1
    invoke-virtual {v0}, Lgnu/lists/LList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 817
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    .line 818
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgnu/lists/LList;

    goto :goto_1

    .line 820
    :cond_1c
    return-object p0
.end method

.method public static writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    .local p0, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    const-string v0, "GeoJSONUtil"

    const/4 v1, 0x0

    .line 765
    .local v1, "out":Ljava/io/PrintStream;
    :try_start_3
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 766
    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter-IA;)V

    .line 767
    .local v2, "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    const-string v3, "{\"type\": \"FeatureCollection\", \"features\":["

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 769
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 770
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 771
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 772
    .local v4, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v4, v2, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 774
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object v4, v6

    .line 775
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->print(C)V

    .line 776
    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v4, v2, v6}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 779
    .end local v4    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_47
    const-string v4, "]}"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_51

    .line 781
    .end local v2    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 782
    nop

    .line 783
    return-void

    .line 781
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 782
    goto :goto_57

    :goto_56
    throw v2

    :goto_57
    goto :goto_56
.end method

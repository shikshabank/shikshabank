.class Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .registers 5
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .line 133
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v0, :cond_1e

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_13

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_1b

    .line 135
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 134
    :goto_1b
    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor(I)V

    .line 137
    :cond_1e
    return-void
.end method

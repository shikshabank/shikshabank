.class public Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;
.super Ljava/lang/Object;
.source "OrientationSensorUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static mod(FF)F
    .registers 5
    .param p0, "dividend"    # F
    .param p1, "quotient"    # F

    .line 33
    rem-float v0, p0, p1

    .line 34
    .local v0, "result":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    goto :goto_17

    .line 37
    :cond_14
    add-float v1, v0, p1

    return v1

    .line 35
    :cond_17
    :goto_17
    return v0
.end method

.method public static normalizeAzimuth(F)F
    .registers 2
    .param p0, "azimuth"    # F

    .line 48
    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result v0

    return v0
.end method

.method public static normalizePitch(F)F
    .registers 4
    .param p0, "pitch"    # F

    .line 58
    const/high16 v0, 0x43340000    # 180.0f

    add-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->mod(FF)F

    move-result v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public static normalizeRoll(F)F
    .registers 3
    .param p0, "roll"    # F

    .line 82
    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 83
    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 86
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_19

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_19

    .line 87
    return p0

    .line 91
    :cond_19
    sub-float/2addr v0, p0

    .line 94
    .end local p0    # "roll":F
    .local v0, "roll":F
    const/high16 p0, 0x43870000    # 270.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_23

    .line 95
    const/high16 p0, 0x43b40000    # 360.0f

    sub-float/2addr v0, p0

    .line 97
    :cond_23
    return v0
.end method

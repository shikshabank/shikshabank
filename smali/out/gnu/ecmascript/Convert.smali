.class public Lgnu/ecmascript/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toInteger(D)D
    .registers 5
    .param p0, "x"    # D

    .line 31
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    .line 32
    return-wide v1

    .line 33
    :cond_9
    cmpg-double v0, p0, v1

    if-gez v0, :cond_12

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_16

    :cond_12
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_16
    return-wide v0
.end method

.method public static toInteger(Ljava/lang/Object;)D
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/ecmascript/Convert;->toInteger(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;

    .line 7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 8
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 11
    :cond_c
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    .line 12
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1e

    :cond_1c
    const-wide/16 v0, 0x0

    :goto_1e
    return-wide v0

    .line 13
    :cond_1f
    instance-of v0, p0, Ljava/lang/String;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-eqz v0, :cond_33

    .line 18
    :try_start_25
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_30} :catch_31

    return-wide v0

    .line 20
    :catch_31
    move-exception v0

    .line 22
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-wide v1

    .line 26
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_33
    return-wide v1
.end method


# virtual methods
.method public toInt32(D)I
    .registers 4
    .param p1, "x"    # D

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 46
    :cond_d
    double-to-int v0, p1

    return v0

    .line 44
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public toInt32(Ljava/lang/Object;)I
    .registers 4
    .param p1, "x"    # Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Lgnu/ecmascript/Convert;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lgnu/ecmascript/Convert;->toInt32(D)I

    move-result v0

    return v0
.end method

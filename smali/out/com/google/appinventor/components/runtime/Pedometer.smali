.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 40.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x64


# instance fields
.field private avgPos:I

.field private avgWindow:[F

.field private final context:Landroid/content/Context;

.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private foundNonStep:Z

.field private foundValley:Z

.field private intervalPos:I

.field private lastValley:F

.field private lastValues:[F

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private pedometerPaused:Z

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 9
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 59
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 63
    const/16 v2, 0x64

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    .line 64
    const v2, 0x3f3ae148    # 0.73f

    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 65
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 66
    const/4 v3, 0x2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .line 67
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 68
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 71
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 72
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 74
    const/16 v6, 0xa

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    .line 75
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 78
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 85
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 86
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 87
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 88
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 90
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 91
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 93
    const-string v5, "sensor"

    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 96
    const-string v5, "PedometerPrefs"

    invoke-virtual {v6, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 97
    .local v5, "settings":Landroid/content/SharedPreferences;
    const-string v6, "Pedometer.stridelength"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 98
    const-string v2, "Pedometer.distance"

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 99
    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 100
    const-string v0, "Pedometer.clockTime"

    invoke-interface {v5, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 101
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 103
    const-string v0, "Pedometer"

    const-string v1, "Pedometer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .registers 12

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "avg":F
    const/4 v1, 0x0

    .line 336
    .local v1, "num":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_18

    aget-wide v6, v2, v5

    .line 337
    .local v6, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_15

    .line 338
    add-int/lit8 v1, v1, 0x1

    .line 339
    long-to-float v8, v6

    add-float/2addr v0, v8

    .line 336
    .end local v6    # "interval":J
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 342
    :cond_18
    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 343
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v3, :cond_32

    aget-wide v6, v2, v5

    .line 344
    .restart local v6    # "interval":J
    long-to-float v8, v6

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x437a0000    # 250.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2f

    .line 345
    return v4

    .line 343
    .end local v6    # "interval":J
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 348
    :cond_32
    const/4 v2, 0x1

    return v2
.end method

.method private isPeak()Z
    .registers 6

    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    .line 356
    .local v0, "mid":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1b

    .line 357
    if-eq v2, v0, :cond_18

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v4, v3, v2

    aget v3, v3, v0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_18

    .line 358
    const/4 v1, 0x0

    return v1

    .line 356
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 361
    .end local v2    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private isValley()Z
    .registers 6

    .line 368
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    .line 369
    .local v0, "mid":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1b

    .line 370
    if-eq v2, v0, :cond_18

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v4, v3, v2

    aget v3, v3, v0

    cmpg-float v3, v4, v3

    if-gez v3, :cond_18

    .line 371
    const/4 v1, 0x0

    return v1

    .line 369
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 374
    .end local v2    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .registers 2
    .param p1, "cal"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    return-void
.end method

.method public CalibrateStrideLength()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    return-void
.end method

.method public Distance()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .line 289
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_7

    .line 301
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    return-wide v0

    .line 303
    :cond_7
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public GPSAvailable()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    return-void
.end method

.method public GPSLost()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    return-void
.end method

.method public Moving()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    .line 164
    return-void
.end method

.method public Reset()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 142
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 146
    return-void
.end method

.method public Resume()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 155
    return-void
.end method

.method public Save()V
    .registers 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const-string v3, "Pedometer.stridelength"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    const-string v3, "Pedometer.distance"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 179
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    const-string v3, "Pedometer.prevStepCount"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    const-string v3, "Pedometer.clockTime"

    if-eqz v2, :cond_2e

    .line 181
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3b

    .line 183
    :cond_2e
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 183
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    :goto_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Pedometer.closeTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public SimpleStep(IF)V
    .registers 6
    .param p1, "simpleSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected."
    .end annotation

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SimpleSteps"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Distance"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SimpleStep"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public SimpleSteps()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .line 315
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    return v0
.end method

.method public Start()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_1d

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 115
    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 120
    :cond_1d
    return-void
.end method

.method public StartedMoving()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    return-void
.end method

.method public Stop()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_1f

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 133
    :cond_1f
    return-void
.end method

.method public StopDetectionTimeout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 278
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .line 268
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 269
    return-void
.end method

.method public StoppedMoving()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    return-void
.end method

.method public StrideLength()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .registers 2
    .param p1, "length"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 243
    return-void
.end method

.method public UseGPS(Z)V
    .registers 2
    .param p1, "gps"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    return-void
.end method

.method public WalkStep(IF)V
    .registers 6
    .param p1, "walkSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WalkSteps"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Distance"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "WalkStep"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public WalkSteps()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .line 326
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "Distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :sswitch_12
    const-string v0, "SimpleSteps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "WalkSteps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_56

    .line 562
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 559
    :pswitch_30
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 556
    :pswitch_37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 553
    :pswitch_3f
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x33ecd942 -> :sswitch_1c
        0xe2e9875 -> :sswitch_12
        0x150bf015 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_37
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Pedometer;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 534
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_6

    .line 536
    :cond_16
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 381
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method public onDelete()V
    .registers 2

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 459
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 386
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 387
    return-void

    .line 389
    :cond_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 390
    .local v0, "values":[F
    const/4 v2, 0x0

    .line 391
    .local v2, "magnitude":F
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_1a

    aget v6, v0, v5

    .local v6, "v":F
    mul-float v7, v6, v6

    add-float/2addr v2, v7

    .end local v6    # "v":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 394
    :cond_1a
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v3, v3, 0x32

    rem-int/lit8 v3, v3, 0x64

    .line 397
    .local v3, "mid":I
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_8d

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isPeak()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 398
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v5, v5, v3

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x42200000    # 40.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8d

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 401
    .local v7, "timestamp":J
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    iget v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iget-wide v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v10, v7, v10

    aput-wide v10, v5, v9

    .line 402
    add-int/2addr v9, v1

    rem-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 403
    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 404
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 405
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v5, :cond_6d

    .line 406
    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 407
    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    mul-float v9, v9, v6

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 408
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 410
    :cond_6d
    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 411
    iget v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v5, v9}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 412
    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    goto :goto_81

    .line 414
    :cond_7f
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 416
    :goto_81
    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 417
    iget v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v5, v9}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 418
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 422
    .end local v7    # "timestamp":J
    :cond_8d
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v5, :cond_9f

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isValley()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 423
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 424
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v5, v5, v3

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 427
    :cond_9f
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    aput v2, v5, v7

    .line 428
    add-int/2addr v7, v1

    array-length v8, v5

    rem-int/2addr v7, v8

    iput v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 429
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 430
    array-length v7, v5

    const/4 v8, 0x0

    :goto_b3
    if-ge v8, v7, :cond_c3

    aget v9, v5, v8

    .local v9, "m":F
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v11, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v12, v10, v11

    add-float/2addr v12, v9

    aput v12, v10, v11

    .end local v9    # "m":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    .line 431
    :cond_c3
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v8, v5, v7

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v9, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v5, v7

    .line 432
    iget-boolean v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v9, :cond_e5

    if-le v7, v1, :cond_d7

    goto :goto_e5

    .line 439
    :cond_d7
    if-nez v9, :cond_e4

    if-ne v7, v1, :cond_e4

    .line 440
    aget v7, v5, v1

    aget v4, v5, v4

    add-float/2addr v7, v4

    div-float/2addr v7, v6

    aput v7, v5, v1

    goto :goto_105

    .line 439
    :cond_e4
    :goto_e4
    goto :goto_105

    .line 433
    :cond_e5
    :goto_e5
    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 434
    .local v4, "i":I
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_ed

    add-int/lit8 v4, v4, 0x64

    .line 435
    :cond_ed
    aget v9, v5, v4

    mul-float v9, v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    .line 436
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_fa

    add-int/lit8 v4, v4, 0x64

    .line 437
    :cond_fa
    aget v6, v5, v4

    add-float/2addr v8, v6

    aput v8, v5, v7

    .line 438
    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v8, v6

    aput v8, v5, v7

    .end local v4    # "i":I
    goto :goto_e4

    .line 443
    :goto_105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 444
    .local v4, "elapsedTimestamp":J
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v6, v4, v6

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_116

    .line 445
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 448
    :cond_116
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v7, 0x63

    if-ne v6, v7, :cond_122

    iget-boolean v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v7, :cond_122

    .line 449
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 452
    :cond_122
    add-int/2addr v6, v1

    rem-int/lit8 v6, v6, 0x64

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 453
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 527
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

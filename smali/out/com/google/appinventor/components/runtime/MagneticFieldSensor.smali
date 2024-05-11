.class public Lcom/google/appinventor/components/runtime/MagneticFieldSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "MagneticFieldSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that measures the ambient geomagnetic field for all three physical axes (x, y, z) in Tesla https://en.wikipedia.org/wiki/Tesla_(unit).</p>"
    iconName = "images/magneticSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private absoluteStrength:D

.field private enabled:Z

.field private listening:Z

.field private magneticSensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private xStrength:F

.field private yStrength:F

.field private zStrength:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->magneticSensor:Landroid/hardware/Sensor;

    .line 50
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    .line 51
    return-void
.end method

.method private getMagneticSensor()Landroid/hardware/Sensor;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 111
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_b

    move-object v1, v0

    goto :goto_11

    :cond_b
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    :goto_11
    return-object v1
.end method

.method private startListening()V
    .registers 4

    .line 137
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->listening:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->magneticSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_13

    .line 138
    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->listening:Z

    .line 141
    :cond_13
    return-void
.end method

.method private stopListening()V
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->listening:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    .line 145
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->listening:Z

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->xStrength:F

    .line 148
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->yStrength:F

    .line 149
    iput v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zStrength:F

    .line 151
    :cond_15
    return-void
.end method


# virtual methods
.method public AbsoluteStrength()D
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the absolute strength of the field."
    .end annotation

    .line 91
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->absoluteStrength:D

    return-wide v0
.end method

.method public Available()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates that there is a magnetic field sensor in the device and it is available."
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public Enabled(Z)V
    .registers 3
    .param p1, "localEnabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eq v0, p1, :cond_6

    .line 75
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    .line 77
    :cond_6
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_e

    .line 78
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    goto :goto_11

    .line 80
    :cond_e
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 82
    :goto_11
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether or not the magnetic field sensor is enabled and working."
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    return v0
.end method

.method public MagneticChanged(FFFD)V
    .registers 9
    .param p1, "xStrength"    # F
    .param p2, "yStrength"    # F
    .param p3, "zStrength"    # F
    .param p4, "absoluteStrength"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when magnetic field has changed, setting the new values in parameters."
    .end annotation

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MagneticChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public MaximumRange()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the maximum range the magnetic sensor can reach."
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public XStrength()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the X-axis."
    .end annotation

    .line 96
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->xStrength:F

    return v0
.end method

.method public YStrength()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the Y-axis."
    .end annotation

    .line 101
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->yStrength:F

    return v0
.end method

.method public ZStrength()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates the field\'s strength in the Z-axis."
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zStrength:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 165
    return-void
.end method

.method public onDelete()V
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 128
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 130
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 133
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 134
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 116
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->startListening()V

    .line 118
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_46

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 156
    .local v0, "values":[F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->xStrength:F

    .line 157
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->yStrength:F

    .line 158
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zStrength:F

    .line 159
    iget v2, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->xStrength:F

    mul-float v2, v2, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->yStrength:F

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-float v1, v1, v1

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->absoluteStrength:D

    .line 160
    iget v4, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->xStrength:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->yStrength:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->zStrength:F

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->MagneticChanged(FFFD)V

    .line 162
    .end local v0    # "values":[F
    :cond_46
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 122
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MagneticFieldSensor;->stopListening()V

    .line 124
    :cond_7
    return-void
.end method

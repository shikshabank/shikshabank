.class public Lcom/google/appinventor/components/runtime/GyroscopeSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "GyroscopeSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measure angular velocity in three dimensions in units of degrees per second.</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have a gyroscope sensor.</p>"
    iconName = "images/gyroscopesensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/OnPauseListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private final gyroSensor:Landroid/hardware/Sensor;

.field private listening:Z

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private xAngularVelocity:F

.field private yAngularVelocity:F

.field private zAngularVelocity:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->dataSourceObservers:Ljava/util/Set;

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 67
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->gyroSensor:Landroid/hardware/Sensor;

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->Enabled(Z)V

    .line 75
    return-void
.end method

.method private startListening()V
    .registers 4

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    if-nez v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->gyroSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    .line 82
    :cond_f
    return-void
.end method

.method private stopListening()V
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    if-eqz v0, :cond_13

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->listening:Z

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    .line 91
    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    .line 92
    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    .line 94
    :cond_13
    return-void
.end method


# virtual methods
.method public Available()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a gyroscope sensor is available."
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

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
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then sensor events will be generated and XAngularVelocity, YAngularVelocity, and ZAngularVelocity properties will have meaningful values."
    .end annotation

    .line 150
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eq v0, p1, :cond_f

    .line 151
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    .line 152
    if-eqz p1, :cond_c

    .line 153
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->startListening()V

    goto :goto_f

    .line 155
    :cond_c
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    .line 158
    :cond_f
    :goto_f
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    return v0
.end method

.method public GyroscopeChanged(FFFJ)V
    .registers 9
    .param p1, "xAngularVelocity"    # F
    .param p2, "yAngularVelocity"    # F
    .param p3, "zAngularVelocity"    # F
    .param p4, "timestamp"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the gyroscope sensor data has changed. The timestamp parameter is the time in nanoseconds at which the event occurred."
    .end annotation

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
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

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 106
    const-string v1, "GyroscopeChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public XAngularVelocity()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the X axis, in degrees per second."
    .end annotation

    .line 171
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    return v0
.end method

.method public YAngularVelocity()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Y axis, in degrees per second."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    return v0
.end method

.method public ZAngularVelocity()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The angular velocity around the Z axis, in degrees per second."
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    :cond_7
    goto :goto_26

    :pswitch_8
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :pswitch_12
    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :pswitch_1c
    const-string v0, "X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_50

    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_30
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 289
    :pswitch_37
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 286
    :pswitch_3e
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_46
    .packed-switch 0x58
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_37
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 267
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_6

    .line 269
    :cond_16
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 230
    return-void
.end method

.method public onDelete()V
    .registers 1

    .line 236
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    .line 237
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 242
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->stopListening()V

    .line 243
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 249
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->startListening()V

    .line 251
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 211
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->enabled:Z

    if-eqz v0, :cond_58

    .line 213
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    .line 214
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    .line 215
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    .line 218
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    iget v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget v3, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->xAngularVelocity:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->yAngularVelocity:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->zAngularVelocity:F

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->GyroscopeChanged(FFFJ)V

    .line 226
    :cond_58
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GyroscopeSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

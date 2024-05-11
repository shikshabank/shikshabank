.class public abstract Lcom/google/appinventor/components/runtime/SingleValueSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SingleValueSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_TIME:I = 0x3e8


# instance fields
.field protected enabled:Z

.field protected refreshTime:I

.field private sensor:Landroid/hardware/Sensor;

.field protected final sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I

.field protected value:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "sensorType"    # I

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 41
    iput p2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 45
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 48
    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    .line 49
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 50
    return-void
.end method


# virtual methods
.method public Available()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether or not the device has the hardware to support the %type% component."
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public Enabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->setEnabled(Z)V

    .line 107
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes."
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    return v0
.end method

.method public RefreshTime()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The requested minimum time in milliseconds between changes in readings being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices."
    .end annotation

    .line 120
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    return v0
.end method

.method public RefreshTime(I)V
    .registers 3
    .param p1, "time"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 134
    iput p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 135
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_c

    .line 136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 139
    :cond_c
    return-void
.end method

.method protected getValue()F
    .registers 2

    .line 193
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    return v0
.end method

.method protected isAvailable()Z
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 169
    return-void
.end method

.method public onDelete()V
    .registers 2

    .line 187
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 190
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 176
    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 183
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v0, v1, :cond_18

    .line 144
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 145
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    .line 146
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onValueChanged(F)V

    .line 148
    .end local v0    # "values":[F
    :cond_18
    return-void
.end method

.method protected abstract onValueChanged(F)V
.end method

.method protected setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 157
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-ne v0, p1, :cond_5

    .line 158
    return-void

    .line 160
    :cond_5
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 161
    if-eqz p1, :cond_d

    .line 162
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    goto :goto_10

    .line 164
    :cond_d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 166
    :goto_10
    return-void
.end method

.method protected startListening()V
    .registers 4

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12

    .line 59
    iget v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 60
    .local v0, "timeInMicroseconds":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    .end local v0    # "timeInMicroseconds":I
    goto :goto_1a

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    :goto_1a
    return-void
.end method

.method protected stopListening()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 68
    return-void
.end method

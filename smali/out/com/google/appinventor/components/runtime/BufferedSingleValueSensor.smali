.class public abstract Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "BufferedSingleValueSensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
    }
.end annotation


# instance fields
.field private buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;II)V
    .registers 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "sensorType"    # I
    .param p3, "bufferSize"    # I

    .line 25
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 26
    new-instance v0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;ILcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer-IA;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    .line 27
    return-void
.end method


# virtual methods
.method protected getAverageValue()F
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->-$$Nest$mgetAverage(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;)F

    move-result v0

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 31
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->enabled:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->sensorType:I

    if-ne v0, v1, :cond_1f

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    .local v0, "values":[F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->-$$Nest$minsert(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;Ljava/lang/Float;)V

    .line 34
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 36
    .end local v0    # "values":[F
    :cond_1f
    return-void
.end method

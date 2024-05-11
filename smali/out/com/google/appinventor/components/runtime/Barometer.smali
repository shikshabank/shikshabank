.class public Lcom/google/appinventor/components/runtime/Barometer;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "Barometer.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A sensor component that can measure the ambient air pressure."
    iconName = "images/barometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public AirPressure()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The air pressure in hPa (millibar), if the sensor is available and enabled."
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Barometer;->getValue()F

    move-result v0

    return v0
.end method

.method public AirPressureChanged(F)V
    .registers 5
    .param p1, "pressure"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AirPressureChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method protected onValueChanged(F)V
    .registers 2
    .param p1, "value"    # F

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Barometer;->AirPressureChanged(F)V

    .line 41
    return-void
.end method

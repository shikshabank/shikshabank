.class public Lcom/google/appinventor/components/runtime/NxtTouchSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtTouchSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field private handler:Landroid/os/Handler;

.field private pressedEventEnabled:Z

.field private previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

.field private releasedEventEnabled:Z

.field private final sensorReader:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpressedEventEnabled(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreleasedEventEnabled(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPressedValue(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 54
    const-string v0, "NxtTouchSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    .line 82
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->SensorPort(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->PressedEventEnabled(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->ReleasedEventEnabled(Z)V

    .line 85
    return-void
.end method

.method private getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v0

    .line 121
    .local v0, "returnPackage":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 122
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getBooleanValueFromBytes([BI)Z

    move-result v2

    .line 123
    .local v2, "valid":Z
    if-eqz v2, :cond_24

    .line 124
    const/16 v3, 0xc

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getSWORDValueFromBytes([BI)I

    move-result v3

    .line 125
    .local v3, "scaledValue":I
    new-instance v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v5, 0x1

    if-eqz v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v4

    .line 130
    .end local v2    # "valid":Z
    .end local v3    # "scaledValue":I
    :cond_24
    new-instance v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v2
.end method

.method private isHandlerNeeded()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public IsPressed()Z
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the touch sensor is pressed."
    .end annotation

    .line 105
    const-string v0, "IsPressed"

    .line 106
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 107
    return v2

    .line 110
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 111
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Boolean;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_1b

    .line 112
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 116
    :cond_1b
    return v2
.end method

.method public Pressed()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been pressed."
    .end annotation

    .line 167
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Pressed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public PressedEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    .line 153
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    .line 155
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    .line 156
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    .line 157
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    :cond_15
    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    .line 160
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 161
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_24
    return-void
.end method

.method public PressedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Pressed event should fire when the touch sensor is pressed."
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method public Released()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been released."
    .end annotation

    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Released"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public ReleasedEventEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    .line 190
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    .line 192
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    .line 193
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    .line 194
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    :cond_15
    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    .line 197
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 198
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_24
    return-void
.end method

.method public ReleasedEventEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is released."
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .registers 2
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setSensorPort(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionName"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Touch:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Boolean:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 90
    return-void
.end method

.method public onDelete()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 217
    return-void
.end method

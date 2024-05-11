.class Lcom/google/appinventor/components/runtime/NxtColorSensor$1;
.super Ljava/lang/Object;
.source "NxtColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtColorSensor;

    .line 93
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetdetectColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_40

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$mgetColorValue(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 99
    .local v0, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_3e

    .line 100
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    .local v1, "currentColor":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetpreviousColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-eq v1, v2, :cond_39

    .line 103
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChanged(I)V

    .line 106
    :cond_39
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fputpreviousColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)V

    .line 109
    .end local v0    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    .end local v1    # "currentColor":I
    :cond_3e
    goto/16 :goto_b2

    .line 111
    :cond_40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$mgetLightValue(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 112
    .restart local v0    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_b2

    .line 114
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 115
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .local v1, "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    goto :goto_72

    .line 116
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :cond_5d
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I

    move-result v2

    if-le v1, v2, :cond_70

    .line 117
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    goto :goto_72

    .line 119
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :cond_70
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 122
    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :goto_72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    move-result-object v2

    if-eq v1, v2, :cond_ad

    .line 123
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v2, :cond_8b

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 124
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRange()V

    .line 126
    :cond_8b
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v2, :cond_9c

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 127
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRange()V

    .line 129
    :cond_9c
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-ne v1, v2, :cond_ad

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 130
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRange()V

    .line 134
    :cond_ad
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)V

    .line 138
    .end local v0    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->-$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_c9
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "Ev3ColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 67
    const-string v0, ""

    .line 69
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v2, 0x32

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 70
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetmode(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v1

    sget-object v4, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v1, v4, :cond_5b

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$mgetSensorValue(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "currentColor":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gez v4, :cond_3b

    .line 74
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fputpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 75
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void

    .line 79
    :cond_3b
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-eq v1, v4, :cond_54

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetcolorChangedEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 80
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$mtoColorName(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 82
    :cond_54
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fputpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 83
    .end local v1    # "currentColor":I
    goto/16 :goto_ee

    .line 84
    :cond_5b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$mgetSensorValue(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "currentLightLevel":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gez v4, :cond_78

    .line 86
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fputpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 87
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void

    .line 92
    :cond_78
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-ge v1, v4, :cond_9c

    .line 93
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v5

    if-lt v4, v5, :cond_e9

    .line 94
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    goto :goto_e9

    .line 95
    :cond_9c
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v1, v4, :cond_c0

    .line 96
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v5

    if-gt v4, v5, :cond_e9

    .line 97
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_e9

    .line 99
    :cond_c0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v5

    if-lt v4, v5, :cond_e4

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v5

    if-le v4, v5, :cond_e9

    .line 100
    :cond_e4
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    .line 103
    :cond_e9
    :goto_e9
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fputpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V

    .line 107
    .end local v1    # "currentLightLevel":I
    :cond_ee
    :goto_ee
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

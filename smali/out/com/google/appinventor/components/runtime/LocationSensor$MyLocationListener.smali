.class Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 21
    .param p1, "location"    # Landroid/location/Location;

    .line 110
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object/from16 v11, p1

    invoke-static {v0, v11}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputlastLocation(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)V

    .line 111
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputlongitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V

    .line 112
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputlatitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V

    .line 113
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputspeed(Lcom/google/appinventor/components/runtime/LocationSensor;F)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    .line 117
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputhasAltitude(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V

    .line 118
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputaltitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V

    .line 123
    :cond_39
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetlongitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_4f

    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetlatitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_87

    .line 124
    :cond_4f
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputhasLocationData(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V

    .line 125
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetlatitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v12

    .line 126
    .local v12, "argLatitude":D
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetlongitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v14

    .line 127
    .local v14, "argLongitude":D
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetaltitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D

    move-result-wide v16

    .line 128
    .local v16, "argAltitude":D
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetspeed(Lcom/google/appinventor/components/runtime/LocationSensor;)F

    move-result v18

    .line 129
    .local v18, "argSpeed":F
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;

    move-result-object v9

    new-instance v8, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object v10, v8

    move/from16 v8, v18

    move-object v11, v9

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;DDDFLandroid/location/Location;)V

    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .end local v12    # "argLatitude":D
    .end local v14    # "argLongitude":D
    .end local v16    # "argAltitude":D
    .end local v18    # "argSpeed":F
    :cond_87
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Disabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$mstopListening(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetenabled(Lcom/google/appinventor/components/runtime/LocationSensor;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "onProviderDisabled"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 148
    :cond_1b
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "Enabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "onProviderEnabled"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 158
    const-string v0, "onStatusChanged"

    packed-switch p2, :pswitch_data_52

    goto :goto_50

    .line 176
    :pswitch_6
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v2, "AVAILABLE"

    invoke-virtual {v1, p1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetproviderName(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetallProviders(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 179
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    goto :goto_50

    .line 161
    :pswitch_2b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    goto :goto_50

    .line 166
    :pswitch_33
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    const-string v2, "OUT_OF_SERVICE"

    invoke-virtual {v1, p1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetproviderName(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 169
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$mstopListening(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 170
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 183
    :cond_50
    :goto_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_6
    .end packed-switch
.end method

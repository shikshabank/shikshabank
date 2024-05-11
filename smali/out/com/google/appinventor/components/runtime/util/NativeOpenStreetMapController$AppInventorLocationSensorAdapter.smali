.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInventorLocationSensorAdapter"
.end annotation


# instance fields
.field private consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private enabled:Z

.field private lastLocation:Landroid/location/Location;

.field private source:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 217
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onDistanceIntervalChanged(I)V
    .registers 2
    .param p1, "distance"    # I

    .line 169
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 173
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_9

    .line 175
    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 177
    :cond_9
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 185
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 181
    return-void
.end method

.method public onTimeIntervalChanged(I)V
    .registers 2
    .param p1, "time"    # I

    .line 165
    return-void
.end method

.method public setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .registers 4
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_5

    .line 152
    return-void

    .line 154
    :cond_5
    if-eqz v0, :cond_b

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 157
    :cond_b
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 158
    if-eqz p1, :cond_14

    .line 159
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 161
    :cond_14
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .registers 4
    .param p1, "consumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 193
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_c

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 196
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 198
    :cond_c
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return v0
.end method

.method public stopLocationProvider()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 206
    :cond_8
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 207
    return-void
.end method

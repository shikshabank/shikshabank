.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;
.super Lorg/osmdroid/views/MapView;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomMapView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .line 272
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 273
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler-IA;)V

    invoke-direct {p0, p2, v1, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 277
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler-IA;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 278
    return-void
.end method


# virtual methods
.method public onDetach()V
    .registers 1

    .line 289
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->getScrollX()I

    move-result v0

    sub-int v1, p3, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->getScrollY()I

    move-result v1

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;->scrollTo(II)V

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/MapView;->onSizeChanged(IIII)V

    .line 284
    return-void
.end method

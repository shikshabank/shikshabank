.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;
.super Landroid/os/Handler;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapReadyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3a

    .line 254
    :pswitch_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetready(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fputready(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Z)V

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    :cond_31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetview(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 268
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

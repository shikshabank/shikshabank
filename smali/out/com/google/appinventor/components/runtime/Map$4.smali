.class Lcom/google/appinventor/components/runtime/Map$4;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;

    .line 730
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$4;->this$0:Lcom/google/appinventor/components/runtime/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$4;->this$0:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->Ready()V

    .line 734
    return-void
.end method

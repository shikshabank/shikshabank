.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;
.super Ljava/util/TimerTask;
.source "WebRTCNativeMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .line 286
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$mPoller(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    .line 290
    return-void
.end method

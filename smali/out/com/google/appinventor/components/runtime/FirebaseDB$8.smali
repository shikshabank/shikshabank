.class Lcom/google/appinventor/components/runtime/FirebaseDB$8;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/Transaction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

.field final synthetic val$toRun:Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .line 792
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$toRun:Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .registers 3
    .param p1, "currentData"    # Lcom/firebase/client/MutableData;

    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$toRun:Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V
    .registers 6
    .param p1, "firebaseError"    # Lcom/firebase/client/FirebaseError;
    .param p2, "committed"    # Z
    .param p3, "currentData"    # Lcom/firebase/client/DataSnapshot;

    .line 801
    if-eqz p1, :cond_11

    .line 802
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$8$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void

    .line 812
    :cond_11
    if-nez p2, :cond_22

    .line 813
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 821
    :cond_22
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$whenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    .line 822
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    :cond_31
    :goto_31
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/Voting$4;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Voting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Voting;

    .line 387
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$4;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postSendBallot Failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$4;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$4$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Voting$4$2;-><init>(Lcom/google/appinventor/components/runtime/Voting$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 387
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Voting$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$4;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Voting$4$1;-><init>(Lcom/google/appinventor/components/runtime/Voting$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

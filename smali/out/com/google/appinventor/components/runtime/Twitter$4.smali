.class Lcom/google/appinventor/components/runtime/Twitter$4;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Tweet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 514
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->val$status:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_b
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_b} :catch_c

    .line 521
    goto :goto_24

    .line 518
    :catch_c
    move-exception v0

    .line 519
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$4;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const/16 v3, 0x132

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 520
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 519
    const-string v5, "Tweet"

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 522
    .end local v0    # "e":Ltwitter4j/TwitterException;
    :goto_24
    return-void
.end method

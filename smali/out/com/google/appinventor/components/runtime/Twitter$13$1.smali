.class Lcom/google/appinventor/components/runtime/Twitter$13$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$13;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$13;

    .line 1025
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1027
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetsearchResults(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1028
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$13;->tweets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Status;

    .line 1029
    .local v1, "tweet":Ltwitter4j/Status;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetsearchResults(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    .end local v1    # "tweet":Ltwitter4j/Status;
    goto :goto_13

    .line 1031
    :cond_4e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$13;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetsearchResults(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->SearchSuccessful(Ljava/util/List;)V

    .line 1032
    return-void
.end method

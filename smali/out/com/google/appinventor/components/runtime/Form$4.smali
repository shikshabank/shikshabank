.class Lcom/google/appinventor/components/runtime/Form$4;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$errorNumber:I

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$messageArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 992
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$errorNumber:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$messageArgs:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 994
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$errorNumber:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$messageArgs:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$functionName:Ljava/lang/String;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$errorNumber:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V

    .line 996
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;
.super Ljava/lang/Object;
.source "InternalTextToSpeech.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

.field final synthetic val$loc:Ljava/util/Locale;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$retries:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    .line 128
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iput p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$loc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delaying call to speak.  Retries is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Message is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->this$0:Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$loc:Ljava/util/Locale;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;->val$retries:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->-$$Nest$mspeak(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V

    .line 133
    return-void
.end method

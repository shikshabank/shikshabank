.class Lcom/google/appinventor/components/runtime/TextToSpeech$1;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/TextToSpeech;

    .line 140
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->-$$Nest$fputresult(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    .line 151
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->-$$Nest$fputresult(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech$1;->this$0:Lcom/google/appinventor/components/runtime/TextToSpeech;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    .line 145
    return-void
.end method

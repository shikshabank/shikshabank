.class public Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.source "ServiceBasedSpeechRecognizer.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private recognizerIntent:Landroid/content/Intent;

.field private result:Ljava/lang/String;

.field private speech:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/content/Intent;)V
    .registers 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "recognizerIntent"    # Landroid/content/Intent;

    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 26
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 27
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method private getErrorMessage(I)I
    .registers 3
    .param p1, "errorCode"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "errCode":I
    packed-switch p1, :pswitch_data_22

    goto :goto_20

    .line 112
    :pswitch_5
    const/16 v0, 0xedb

    .line 113
    goto :goto_20

    .line 124
    :pswitch_8
    const/16 v0, 0xedf

    .line 125
    goto :goto_20

    .line 121
    :pswitch_b
    const/16 v0, 0xede

    .line 122
    goto :goto_20

    .line 130
    :pswitch_e
    const/16 v0, 0xee1

    goto :goto_20

    .line 109
    :pswitch_11
    const/16 v0, 0xeda

    .line 110
    goto :goto_20

    .line 127
    :pswitch_14
    const/16 v0, 0xee0

    .line 128
    goto :goto_20

    .line 106
    :pswitch_17
    const/16 v0, 0xed9

    .line 107
    goto :goto_20

    .line 115
    :pswitch_1a
    const/16 v0, 0xedc

    .line 116
    goto :goto_20

    .line 118
    :pswitch_1d
    const/16 v0, 0xedd

    .line 119
    nop

    .line 133
    :goto_20
    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .line 52
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 62
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .line 67
    return-void
.end method

.method public onError(I)V
    .registers 4
    .param p1, "i"    # I

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->getErrorMessage(I)I

    move-result v0

    .line 72
    .local v0, "errorNumber":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/SpeechListener;->onError(I)V

    .line 73
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 88
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    goto :goto_1a

    .line 91
    :cond_b
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    .line 94
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/SpeechListener;->onPartialResult(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 77
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    goto :goto_1a

    .line 80
    :cond_b
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    .line 83
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->result:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/SpeechListener;->onResult(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2
    .param p1, "v"    # F

    .line 57
    return-void
.end method

.method public start()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 33
    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public stop()V
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ServiceBasedSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_7

    .line 40
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 42
    :cond_7
    return-void
.end method

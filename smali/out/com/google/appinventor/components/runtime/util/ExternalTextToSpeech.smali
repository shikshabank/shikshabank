.class public Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;
.super Ljava/lang/Object;
.source "ExternalTextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# static fields
.field private static final TTS_INTENT:Ljava/lang/String; = "com.google.tts.makeBagel"


# instance fields
.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "callback"    # Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .registers 2

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .line 65
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 70
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 89
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-ne p1, v0, :cond_9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 90
    .local v0, "isSuccess":Z
    :goto_a
    if-eqz v0, :cond_12

    .line 91
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onSuccess()V

    goto :goto_17

    .line 93
    :cond_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 95
    :goto_17
    return-void
.end method

.method public setPitch(F)V
    .registers 2
    .param p1, "pitch"    # F

    .line 80
    return-void
.end method

.method public setSpeechRate(F)V
    .registers 2
    .param p1, "speechRate"    # F

    .line 85
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.tts.makeBagel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    if-nez v1, :cond_3d

    .line 57
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    .line 59
    :cond_3d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method

.method public stop()V
    .registers 1

    .line 100
    return-void
.end method

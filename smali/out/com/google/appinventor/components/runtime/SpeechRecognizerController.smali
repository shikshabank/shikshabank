.class public abstract Lcom/google/appinventor/components/runtime/SpeechRecognizerController;
.super Ljava/lang/Object;
.source "SpeechRecognizerController.java"


# instance fields
.field speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addListener(Lcom/google/appinventor/components/runtime/SpeechListener;)V
    .registers 2
    .param p1, "speechListener"    # Lcom/google/appinventor/components/runtime/SpeechListener;

    .line 19
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizerController;->speechListener:Lcom/google/appinventor/components/runtime/SpeechListener;

    .line 20
    return-void
.end method

.method start()V
    .registers 1

    .line 25
    return-void
.end method

.method stop()V
    .registers 1

    .line 30
    return-void
.end method

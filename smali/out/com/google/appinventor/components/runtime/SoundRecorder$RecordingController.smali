.class Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingController"
.end annotation


# instance fields
.field final file:Ljava/lang/String;

.field final recorder:Landroid/media/MediaRecorder;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V
    .registers 7
    .param p2, "savedRecording"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->this$0:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 80
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "3gp"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getRecordingFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 81
    :cond_1a
    move-object v0, p2

    :goto_1b
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->file:Ljava/lang/String;

    .line 83
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 85
    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting output file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 89
    const-string v0, "preparing"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 91
    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 92
    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 96
    const-string v0, "SoundRecorder"

    const-string v1, "starting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_7
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c} :catch_e

    .line 108
    nop

    .line 109
    return-void

    .line 100
    :catch_e
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "got IllegalStateException. Are there two recorders running?"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Is there another recording running?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stop()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$RecordingController;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 117
    return-void
.end method

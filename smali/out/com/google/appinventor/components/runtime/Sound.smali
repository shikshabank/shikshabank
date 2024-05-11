.class public Lcom/google/appinventor/components/runtime/Sound;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Sound.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For supported sound file formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This <code>Sound</code> component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p><p>You might get an error if you attempt to play a sound immeditely after setting the source.</p>"
    iconName = "images/soundEffect.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;
    }
.end annotation


# static fields
.field private static final LOOP_MODE_NO_LOOP:I = 0x0

.field private static final MAX_PLAY_DELAY_RETRIES:I = 0xa

.field private static final MAX_STREAMS:I = 0xa

.field private static final PLAYBACK_RATE_NORMAL:F = 1.0f

.field private static final PLAY_DELAY_LENGTH:I = 0x32

.field private static final VOLUME_FULL:F = 1.0f


# instance fields
.field private delayRetries:I

.field private loadComplete:Z

.field private minimumInterval:I

.field private final playWaitHandler:Landroid/os/Handler;

.field private soundId:I

.field private final soundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private sourcePath:Ljava/lang/String;

.field private streamId:I

.field private final thisComponent:Lcom/google/appinventor/components/runtime/Component;

.field private timeLastPlayed:J

.field private final vibe:Landroid/os/Vibrator;

.field private final waitForLoadToComplete:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetdelayRetries(Lcom/google/appinventor/components/runtime/Sound;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadComplete(Lcom/google/appinventor/components/runtime/Sound;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsourcePath(Lcom/google/appinventor/components/runtime/Sound;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthisComponent(Lcom/google/appinventor/components/runtime/Sound;)Lcom/google/appinventor/components/runtime/Component;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdelayRetries(Lcom/google/appinventor/components/runtime/Sound;I)V
    .registers 2

    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadComplete(Lcom/google/appinventor/components/runtime/Sound;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayAndCheckResult(Lcom/google/appinventor/components/runtime/Sound;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayWhenLoadComplete(Lcom/google/appinventor/components/runtime/Sound;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 131
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 116
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    .line 124
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    .line 132
    iput-object p0, p0, Lcom/google/appinventor/components/runtime/Sound;->thisComponent:Lcom/google/appinventor/components/runtime/Component;

    .line 133
    new-instance v3, Landroid/media/SoundPool;

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    .line 135
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    .line 136
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 146
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sound;->MinimumInterval(I)V

    .line 148
    if-eqz v0, :cond_68

    .line 149
    new-instance v0, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;-><init>(Lcom/google/appinventor/components/runtime/Sound;Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper-IA;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;->setOnloadCompleteListener(Landroid/media/SoundPool;)V

    .line 151
    :cond_68
    return-void
.end method

.method private playAndCheckResult()V
    .registers 8

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundPool.play returned stream id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-nez v0, :cond_3f

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 322
    :cond_3f
    return-void
.end method

.method private playWhenLoadComplete()V
    .registers 5

    .line 290
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sound;->waitForLoadToComplete:Z

    if-nez v0, :cond_9

    goto :goto_30

    .line 293
    :cond_9
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound not ready:  retrying.  Remaining retries = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sound"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->playWaitHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sound$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Sound$2;-><init>(Lcom/google/appinventor/components/runtime/Sound;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 291
    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playAndCheckResult()V

    .line 312
    :goto_33
    return-void
.end method

.method private prepareToDie()V
    .registers 3

    .line 411
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_10

    .line 412
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 415
    :cond_10
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    .line 419
    return-void
.end method


# virtual methods
.method public MinimumInterval()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between sounds.  If you play a sound, all further Play() calls will be ignored until the interval has elapsed."
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .registers 2
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 257
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    .line 258
    return-void
.end method

.method public Pause()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playing the sound if it is being played."
    .end annotation

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_a

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_11

    .line 333
    :cond_a
    const-string v0, "Sound"

    const-string v1, "Unable to pause. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_11
    return-void
.end method

.method public Play()V
    .registers 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Plays the sound specified by the Source property."
    .end annotation

    .line 269
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    const-string v1, "Sound"

    if-eqz v0, :cond_2b

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, "currentTime":J
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->minimumInterval:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1b

    goto :goto_21

    .line 277
    :cond_1b
    const-string v0, "Unable to play because MinimumInterval has not elapsed since last play."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 272
    :cond_21
    :goto_21
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sound;->timeLastPlayed:J

    .line 273
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->delayRetries:I

    .line 274
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->playWhenLoadComplete()V

    .line 279
    .end local v2    # "currentTime":J
    :goto_2a
    goto :goto_41

    .line 282
    :cond_2b
    const-string v0, "Sound Id was 0. Did you remember to set the Source property?"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Play"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 286
    :goto_41
    return-void
.end method

.method public Resume()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes playing the sound after a pause."
    .end annotation

    .line 342
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_a

    .line 343
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_11

    .line 345
    :cond_a
    const-string v0, "Sound"

    const-string v1, "Unable to resume. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_11
    return-void
.end method

.method public SoundError(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The SoundError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .line 374
    return-void
.end method

.method public Source()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the sound file.  Only certain formats are supported.  See http://developer.android.com/guide/appendix/media-formats.html."
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 180
    const-string v0, "Source"

    if-nez p1, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p1

    .line 181
    .local v1, "tempPath":Ljava/lang/String;
    :goto_8
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/Sound$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Sound$1;-><init>(Lcom/google/appinventor/components/runtime/Sound;Ljava/lang/String;)V

    invoke-static {v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestAudioPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 191
    return-void

    .line 193
    :cond_16
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    .line 196
    iget v2, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 197
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 198
    iput v3, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    .line 200
    :cond_24
    iput v3, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 202
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_ba

    .line 203
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 204
    .local v2, "existingSoundId":Ljava/lang/Integer;
    if-eqz v2, :cond_42

    .line 205
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    goto/16 :goto_ba

    .line 208
    :cond_42
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing sound with path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Sound"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v4, 0x1

    const/16 v7, 0x2bd

    :try_start_65
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I

    move-result v8

    .line 211
    .local v8, "newSoundId":I
    if-eqz v8, :cond_9b

    .line 212
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Sound;->soundMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully began loading sound: setting soundId to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput v8, p0, Lcom/google/appinventor/components/runtime/Sound;->soundId:I

    .line 216
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Sound;->loadComplete:Z

    goto :goto_ba

    .line 218
    :cond_9b
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v9, v6, v3

    invoke-virtual {v5, p0, v0, v7, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_a6
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_65 .. :try_end_a6} :catch_b4
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_a6} :catch_a7

    goto :goto_ba

    .line 223
    .end local v8    # "newSoundId":I
    :catch_a7
    move-exception v5

    .line 224
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Sound;->sourcePath:Ljava/lang/String;

    aput-object v8, v4, v3

    invoke-virtual {v6, p0, v0, v7, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_ba

    .line 221
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b4
    move-exception v3

    .line 222
    .local v3, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 229
    .end local v2    # "existingSoundId":Ljava/lang/Integer;
    .end local v3    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_ba
    :goto_ba
    return-void
.end method

.method public Stop()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops playing the sound if it is being played."
    .end annotation

    .line 354
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_d

    .line 355
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    goto :goto_14

    .line 358
    :cond_d
    const-string v0, "Sound"

    const-string v1, "Unable to stop. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_14
    return-void
.end method

.method public Vibrate(I)V
    .registers 5
    .param p1, "millisecs"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Vibrates for the specified number of milliseconds."
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sound;->vibe:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 368
    return-void
.end method

.method public onDelete()V
    .registers 1

    .line 407
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    .line 408
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 400
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sound;->prepareToDie()V

    .line 401
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 390
    const-string v0, "Sound"

    const-string v1, "Got onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_10

    .line 392
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    .line 394
    :cond_10
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 380
    const-string v0, "Sound"

    const-string v1, "Got onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sound;->streamId:I

    if-eqz v0, :cond_10

    .line 382
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    .line 384
    :cond_10
    return-void
.end method

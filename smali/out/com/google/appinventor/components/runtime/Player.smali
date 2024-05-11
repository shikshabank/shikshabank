.class public final Lcom/google/appinventor/components/runtime/Player;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Player.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Multimedia component that plays audio and controls phone vibration.  The name of a multimedia field is specified in the <code>Source</code> property, which can be set in the Designer or in the Blocks Editor.  The length of time for a vibration is specified in the Blocks Editor in milliseconds (thousandths of a second).\n<p>For supported audio formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p>\n<p>This component is best for long sound files, such as songs, while the <code>Sound</code> component is more efficient for short files, such as sound effects.</p>"
    iconName = "images/player.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Player$State;
    }
.end annotation


# static fields
.field private static final audioFocusSupported:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private afChangeListener:Ljava/lang/Object;

.field private am:Landroid/media/AudioManager;

.field private focusOn:Z

.field private loop:Z

.field private playOnlyInForeground:Z

.field private player:Landroid/media/MediaPlayer;

.field public playerState:Lcom/google/appinventor/components/runtime/Player$State;

.field private sourcePath:Ljava/lang/String;

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 111
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    goto :goto_f

    .line 114
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    .line 116
    :goto_f
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 142
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 143
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->activity:Landroid/app/Activity;

    .line 144
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    .line 146
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 147
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 148
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 149
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    .line 153
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    .line 154
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 155
    sget-boolean v1, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;

    move-result-object v0

    goto :goto_49

    :cond_48
    move-object v0, v2

    :goto_49
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    .line 156
    if-eqz v1, :cond_51

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;

    move-result-object v2

    :cond_51
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method private abandonFocus()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 414
    return-void
.end method

.method private prepare()V
    .registers 7

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 436
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 443
    goto :goto_28

    .line 437
    :catch_a
    move-exception v0

    .line 438
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 440
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 441
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2be

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Source"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 444
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_28
    return-void
.end method

.method private prepareToDie()V
    .registers 3

    .line 515
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_b

    .line 516
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 518
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1a

    .line 519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 521
    :cond_1a
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_28

    .line 523
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 526
    :cond_28
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 527
    return-void
.end method

.method private requestPermanentFocus()V
    .registers 6

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->afChangeListener:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    .line 244
    if-nez v0, :cond_1d

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Source"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    :cond_1d
    return-void
.end method


# virtual methods
.method public Completed()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 458
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_b

    .line 459
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 462
    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public IsPlaying()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether the media is playing"
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_d

    goto :goto_f

    .line 259
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public Loop(Z)V
    .registers 4
    .param p1, "shouldLoop"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_17

    .line 286
    :cond_12
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 290
    :cond_17
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    .line 291
    return-void
.end method

.method public Loop()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will loop when it plays. Setting Loop while the player is playing will affect the current playing."
    .end annotation

    .line 270
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    return v0
.end method

.method public OtherPlayerStarted()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is signaled when another player has started (and the current player is playing or paused, but not stopped)."
    .end annotation

    .line 472
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OtherPlayerStarted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public Pause()V
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 366
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 367
    .local v0, "wasPlaying":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v1, v2, :cond_1a

    .line 368
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 369
    if-eqz v0, :cond_1a

    .line 370
    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 374
    :cond_1a
    return-void
.end method

.method public PlayOnlyInForeground(Z)V
    .registers 2
    .param p1, "shouldForeground"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 340
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    .line 341
    return-void
.end method

.method public PlayOnlyInForeground()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, the player will pause playing when leaving the current screen; if false (default option), the player continues playing whenever the current screen is displaying or not."
    .end annotation

    .line 325
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    return v0
.end method

.method public PlayerError(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The PlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .line 429
    return-void
.end method

.method public Source()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .registers 10
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

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE",
            "android.permission.READ_MEDIA_AUDIO"
        }
    .end annotation

    .line 182
    const-string v0, "Source"

    if-nez p1, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p1

    .line 183
    .local v1, "tempPath":Ljava/lang/String;
    :goto_8
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/Player$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Player$1;-><init>(Lcom/google/appinventor/components/runtime/Player;Ljava/lang/String;)V

    invoke-static {v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestAudioPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 193
    return-void

    .line 196
    :cond_16
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v3, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v2, v3, :cond_33

    .line 200
    :cond_2a
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 201
    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 203
    :cond_33
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    .line 204
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 205
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 208
    :cond_3d
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_90

    .line 209
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 210
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 213
    :try_start_4f
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_4f .. :try_end_58} :catch_82
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_6a

    .line 226
    nop

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 229
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_66

    .line 230
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->requestPermanentFocus()V

    .line 233
    :cond_66
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    goto :goto_90

    .line 220
    :catch_6a
    move-exception v2

    .line 221
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 222
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 223
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x2bd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Player;->sourcePath:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 225
    return-void

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    :catch_82
    move-exception v2

    .line 216
    .local v2, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 217
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    .line 218
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 219
    return-void

    .line 236
    .end local v2    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_90
    :goto_90
    return-void
.end method

.method public Start()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 349
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-nez v0, :cond_b

    .line 350
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->requestPermanentFocus()V

    .line 352
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_33

    .line 353
    :cond_23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->loop:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 355
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 358
    :cond_33
    return-void
.end method

.method public Stop()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 394
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Player;->audioFocusSupported:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->focusOn:Z

    if-eqz v0, :cond_b

    .line 395
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->abandonFocus()V

    .line 397
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_2d

    .line 398
    :cond_1d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 399
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepare()V

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2d

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 405
    :cond_2d
    return-void
.end method

.method public Vibrate(J)V
    .registers 4
    .param p1, "milliseconds"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 423
    return-void
.end method

.method public Volume(I)V
    .registers 7
    .param p1, "vol"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the volume to a number between 0 and 100"
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_38

    .line 306
    :cond_12
    const/16 v0, 0x64

    if-gt p1, v0, :cond_25

    if-gez p1, :cond_19

    goto :goto_25

    .line 309
    :cond_19
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_38

    .line 307
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Volume"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 312
    :cond_38
    :goto_38
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "m"    # Landroid/media/MediaPlayer;

    .line 449
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Completed()V

    .line 450
    return-void
.end method

.method public onDelete()V
    .registers 1

    .line 510
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 511
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 504
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Player;->prepareToDie()V

    .line 505
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 488
    :cond_5
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 489
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    .line 491
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 478
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_d

    .line 479
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->Start()V

    .line 481
    :cond_d
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 496
    :cond_5
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Player;->playOnlyInForeground:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 497
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    .line 499
    :cond_12
    return-void
.end method

.method public pause()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_14

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 384
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    .line 387
    :cond_14
    return-void
.end method

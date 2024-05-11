.class public Lcom/google/appinventor/components/runtime/Form;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "Form.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x1f
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0x186a0

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private accentColor:I

.field private actionBarEnabled:Z

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private bigDefaultText:Z

.field private closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private compatScalingFactor:F

.field private defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

.field private deviceDensity:F

.field private dimChanges:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field private highContrast:Z

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private keyboardShown:Z

.field private lastToastTime:J

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private screenInitialized:Z

.field private scrollable:Z

.field private showStatusBar:Z

.field private showTitle:Z

.field protected startupValue:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field private usesDarkTheme:Z

.field private usesDefaultBackground:Z

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonInitializeListeners(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionHandlers(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionRandom(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputscreenInitialized(Lcom/google/appinventor/components/runtime/Form;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseApplicationFromMenu(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecomputeLayout(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAboutApplicationNotification(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowExitApplicationNotification(Lcom/google/appinventor/components/runtime/Form;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsCompatibilityMode()Z
    .registers 1

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 143
    nop

    .line 144
    const-string v0, "&HFF303F9F"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    .line 145
    nop

    .line 146
    const-string v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    .line 172
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 251
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 129
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 181
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 200
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 201
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 204
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 205
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 206
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 219
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 221
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 224
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 225
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 226
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 227
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 228
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 229
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 230
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    .line 231
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 232
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 235
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 238
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 239
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 242
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 244
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 248
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 265
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 291
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private closeApplication()V
    .registers 3

    .line 2463
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2465
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2467
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2473
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2475
    :cond_14
    return-void
.end method

.method private closeApplicationFromMenu()V
    .registers 1

    .line 2454
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2455
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, ""

    .line 606
    .local v0, "valueFromJSON":Ljava/lang/Object;
    const/4 v2, 0x1

    :try_start_1b
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 607
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_3a} :catch_3b

    .line 613
    goto :goto_48

    .line 608
    :catch_3b
    move-exception v1

    .line 609
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x387

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    invoke-virtual {v3, v3, p1, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 614
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_48
    return-object v0
.end method

.method public static finishActivity()V
    .registers 2

    .line 2396
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_9

    .line 2397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2401
    return-void

    .line 2399
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .registers 4
    .param p0, "result"    # Ljava/lang/Object;

    .line 2405
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_2b

    .line 2406
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_14

    .line 2407
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2408
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    goto :goto_2a

    .line 2410
    :cond_14
    const-string v0, "close screen with value"

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2411
    .local v0, "jString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2412
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "APP_INVENTOR_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2413
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2414
    .end local v0    # "jString":Ljava/lang/String;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    nop

    .line 2418
    :goto_2a
    return-void

    .line 2416
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .registers 3
    .param p0, "result"    # Ljava/lang/String;

    .line 2422
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_15

    .line 2423
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2424
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "APP_INVENTOR_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2425
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2426
    .end local v0    # "resultIntent":Landroid/content/Intent;
    nop

    .line 2429
    return-void

    .line 2427
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishApplication()V
    .registers 2

    .line 2442
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_8

    .line 2443
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    .line 2447
    return-void

    .line 2445
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 679
    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne p2, v0, :cond_11

    .line 680
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 682
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static generateNewRequestCode()I
    .registers 2

    .line 698
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .registers 1

    .line 2353
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getCompatibilityMode()Z
    .registers 1

    .line 2724
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .registers 2

    .line 2364
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_7

    .line 2365
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2367
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .registers 2

    .line 2382
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_d

    .line 2383
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2385
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;

    .line 2233
    const-string v0, ""

    .line 2234
    .local v0, "jsonResult":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonEncodeForForm -- creating JSON representation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :try_start_1e
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonEncodeForForm -- got JSON representation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_39} :catch_3a

    .line 2244
    goto :goto_4c

    .line 2239
    :catch_3a
    move-exception v1

    .line 2240
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x388

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2243
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2240
    invoke-virtual {v2, v2, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2245
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4c
    return-object v0
.end method

.method private populatePermissions()V
    .registers 4

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 412
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    .line 415
    nop

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1f

    .line 413
    :catch_17
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Form"

    const-string v2, "Exception while attempting to learn permissions."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method private recomputeLayout()V
    .registers 9

    .line 1225
    const-string v0, "Form"

    const-string v1, "recomputeLayout called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    .line 1228
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1230
    :cond_e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 1231
    .local v1, "needsTitleBar":Z
    :goto_20
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1232
    const/4 v3, -0x1

    if-eqz v1, :cond_35

    .line 1233
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    :cond_35
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v4, :cond_4e

    .line 1250
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1251
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_55

    .line 1254
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_55

    .line 1257
    :cond_4e
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1259
    :cond_55
    :goto_55
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1265
    const-string v2, "About to create a new ScaledFrameLayout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    new-instance v0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1267
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1292
    return-void
.end method

.method private setBackground(Landroid/view/View;)V
    .registers 6
    .param p1, "bgview"    # Landroid/view/View;

    .line 2710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2711
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, ""

    if-eq v1, v3, :cond_20

    if-eqz v0, :cond_20

    .line 2712
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2713
    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v1, :cond_1a

    move v2, v1

    :cond_1a
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2b

    .line 2716
    :cond_20
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 2717
    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v3, :cond_27

    move v2, v3

    :cond_27
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v0, v1

    .line 2719
    :goto_2b
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2720
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2721
    return-void
.end method

.method private static setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .registers 5
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p1, "enabled"    # Z

    .line 1171
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Component;

    .line 1172
    .local v1, "child":Lcom/google/appinventor/components/runtime/Component;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v2, :cond_1f

    .line 1173
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/Form;->setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_29

    .line 1174
    :cond_1f
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v2, :cond_29

    .line 1175
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setLargeFont(Z)V

    .line 1177
    .end local v1    # "child":Lcom/google/appinventor/components/runtime/Component;
    :cond_29
    :goto_29
    goto :goto_8

    .line 1178
    :cond_2a
    return-void
.end method

.method private static setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .registers 5
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p1, "enabled"    # Z

    .line 1132
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Component;

    .line 1133
    .local v1, "child":Lcom/google/appinventor/components/runtime/Component;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v2, :cond_1f

    .line 1134
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/Form;->setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_29

    .line 1135
    :cond_1f
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v2, :cond_29

    .line 1136
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setHighContrast(Z)V

    .line 1138
    .end local v1    # "child":Lcom/google/appinventor/components/runtime/Component;
    :cond_29
    :goto_29
    goto :goto_8

    .line 1139
    :cond_2a
    return-void
.end method

.method private showAboutApplicationNotification()V
    .registers 6

    .line 2552
    const-string v0, "About this app"

    .line 2553
    .local v0, "title":Ljava/lang/String;
    const-string v1, "<p><small><em>Invented with MIT App Inventor<br>appinventor.mit.edu</em></small></p>"

    .line 2555
    .local v1, "MITtagline":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2556
    .local v2, "message":Ljava/lang/String;
    const-string v3, "\\n"

    const-string v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2557
    const-string v3, "Got it"

    .line 2558
    .local v3, "buttonText":Ljava/lang/String;
    invoke-static {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    return-void
.end method

.method private showExitApplicationNotification()V
    .registers 14

    .line 2530
    const-string v9, "Stop application?"

    .line 2531
    .local v9, "title":Ljava/lang/String;
    const-string v10, "Stop this application and exit? You\'ll need to relaunch the application to use it again."

    .line 2533
    .local v10, "message":Ljava/lang/String;
    const-string v11, "Stop and exit"

    .line 2534
    .local v11, "positiveButton":Ljava/lang/String;
    const-string v12, "Don\'t stop"

    .line 2537
    .local v12, "negativeButton":Ljava/lang/String;
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$12;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2538
    .local v6, "stopApplication":Ljava/lang/Runnable;
    new-instance v7, Lcom/google/appinventor/components/runtime/Form$13;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2539
    .local v7, "doNothing":Ljava/lang/Runnable;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v3, v11

    move-object v4, v12

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2549
    return-void
.end method

.method public static switchForm(Ljava/lang/String;)V
    .registers 3
    .param p0, "nextFormName"    # Ljava/lang/String;

    .line 2174
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_9

    .line 2175
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2179
    return-void

    .line 2177
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "nextFormName"    # Ljava/lang/String;
    .param p1, "startValue"    # Ljava/lang/Object;

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open another screen with start value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_20

    .line 2192
    invoke-virtual {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    return-void

    .line 2194
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 2279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2281
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .registers 1

    .line 2268
    return-object p0
.end method

.method protected $define()V
    .registers 2

    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .registers 1

    .line 2273
    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .registers 2
    .param p1, "aboutScreen"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1438
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1439
    return-void
.end method

.method public AccentColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2042
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    return v0
.end method

.method public AccentColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .line 2031
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 2032
    return-void
.end method

.method public ActionBar(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1601
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_9

    .line 1603
    return-void

    .line 1605
    :cond_9
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eq v0, p1, :cond_2e

    .line 1606
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setActionBarEnabled(Z)V

    .line 1607
    if-eqz p1, :cond_20

    .line 1608
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->hideTitleBar()V

    .line 1609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_2c

    .line 1611
    :cond_20
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    .line 1612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1614
    :goto_2c
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1616
    :cond_2e
    return-void
.end method

.method public AlignHorizontal()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned."
    .end annotation

    .line 1628
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .registers 7
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1645
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    .line 1646
    .local v0, "align":Lcom/google/appinventor/components/common/HorizontalAlignment;
    if-nez v0, :cond_1c

    .line 1647
    const/16 v1, 0x579

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1647
    const-string v3, "HorizontalAlignment"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1649
    return-void

    .line 1651
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1652
    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .registers 2

    .line 1660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .registers 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 1669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1670
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 1671
    return-void
.end method

.method public AlignVertical()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .line 1684
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .registers 7
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    .line 1704
    .local v0, "align":Lcom/google/appinventor/components/common/VerticalAlignment;
    if-nez v0, :cond_1c

    .line 1705
    const/16 v1, 0x57a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1705
    const-string v3, "VerticalAlignment"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1707
    return-void

    .line 1709
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1710
    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .registers 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 1727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1728
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 1729
    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "aName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .line 1988
    return-void
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask the user to grant access to a dangerous permission."
    .end annotation

    .line 1088
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1091
    :cond_1b
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1101
    return-void
.end method

.method public AskForPermissionAbstract(Lcom/google/appinventor/components/common/Permission;)V
    .registers 3
    .param p1, "permission"    # Lcom/google/appinventor/components/common/Permission;

    .line 1187
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public BackPressed()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .line 558
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackPressed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1302
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1316
    if-nez p1, :cond_6

    .line 1317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    goto :goto_b

    .line 1319
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    .line 1320
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1323
    :goto_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1324
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1355
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1358
    :try_start_8
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_f

    .line 1362
    goto :goto_2d

    .line 1359
    :catch_f
    move-exception v0

    .line 1360
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1363
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_2d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1364
    return-void
.end method

.method public BigDefaultText(Z)V
    .registers 2
    .param p1, "bigDefaultText"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1164
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->bigDefaultText:Z

    .line 1165
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1166
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1167
    return-void
.end method

.method public BigDefaultText()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1150
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->bigDefaultText:Z

    return v0
.end method

.method public BlocksToolkit(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "subset_json"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Choose the set of components you\u2019ll need for your project. A smaller set is good for beginner projects, while experts can use all options to build complex apps. For example, the Beginner Toolkit gives you access to all the features you need for our novice tutorials and curriculum.</p><p>You can always change your toolkit in Project Properties, so your choice now won\u2019t limit the future possibilities for your app.</p>"
        userVisible = false
    .end annotation

    .line 2140
    return-void
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_d

    .line 1798
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1800
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .registers 6
    .param p1, "animType"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1814
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 1815
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    if-nez v0, :cond_14

    .line 1816
    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Screen"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1818
    return-void

    .line 1820
    :cond_14
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1821
    return-void
.end method

.method public CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .registers 2

    .line 1830
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .registers 2
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1841
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1842
    return-void
.end method

.method public DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;
    .registers 2

    .line 1381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V
    .registers 2
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1377
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 1378
    return-void
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", functionName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", messages = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Form"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 927
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 926
    const-string v2, "ErrorOccurred"

    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_99

    .line 934
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 936
    :cond_99
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "buttonText"    # Ljava/lang/String;

    .line 941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", functionName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", messages = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Form"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 947
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 946
    const-string v2, "ErrorOccurred"

    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_99

    .line 954
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_99
    return-void
.end method

.method public Height()I
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .line 2108
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    return v0
.end method

.method public HideKeyboard()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the onscreen soft keyboard."
    .end annotation

    .line 2732
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2733
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_8

    .line 2734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2736
    :cond_8
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2737
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2738
    return-void
.end method

.method public HighContrast(Z)V
    .registers 2
    .param p1, "highContrast"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1126
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->highContrast:Z

    .line 1127
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1128
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1129
    return-void
.end method

.method public HighContrast()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->highContrast:Z

    return v0
.end method

.method public Icon(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1856
    return-void
.end method

.method public Initialize()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The Initialize event is run when the Screen starts and is only run once per screen."
    .end annotation

    .line 880
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 904
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_9

    .line 1742
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1744
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .registers 6
    .param p1, "animType"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1757
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 1758
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    if-nez v0, :cond_14

    .line 1759
    const/16 v1, 0x389

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Screen"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1761
    return-void

    .line 1763
    :cond_14
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1764
    return-void
.end method

.method public OpenScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .registers 2

    .line 1773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .registers 2
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1783
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1784
    return-void
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "otherScreenName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .line 2251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 2252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "OtherScreenClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2254
    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1046
    const-string v0, "android.permission."

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1048
    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1050
    :cond_e
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "PermissionDenied"

    invoke-static {p0, v3, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1051
    const/16 v0, 0x38c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1053
    :cond_2b
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .registers 4
    .param p1, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to handle when the app user has granted a needed permission. This event is only run when permission is granted in response to the AskForPermission method."
    .end annotation

    .line 1065
    const-string v0, "android.permission."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1067
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1069
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PermissionGranted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1070
    return-void
.end method

.method public Platform()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The platform the app is running on, for example \"Android\" or \"iOS\"."
    .end annotation

    .line 2151
    const-string v0, "Android"

    return-object v0
.end method

.method public PlatformVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The dotted version number of the platform, such as 4.2.2 or 10.0. This is platform specific and there is no guarantee that it has a particular format."
    .end annotation

    .line 2164
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public PrimaryColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2005
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    return v0
.end method

.method public PrimaryColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .line 1995
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setPrimaryColor(I)V

    .line 1996
    return-void
.end method

.method public PrimaryColorDark()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2023
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    return v0
.end method

.method public PrimaryColorDark(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .line 2013
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 2014
    return-void
.end method

.method ReplayFormOrientation()V
    .registers 6

    .line 665
    const-string v0, "Form"

    const-string v1, "ReplayFormOrientation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 667
    .local v0, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 669
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 670
    .local v2, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v3, v4, :cond_36

    .line 671
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_3d

    .line 673
    :cond_36
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 675
    .end local v2    # "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    :goto_3d
    goto :goto_1c

    .line 676
    :cond_3e
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .line 1522
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .registers 6
    .param p1, "screenOrientation"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1588
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    .line 1589
    .local v0, "orientation":Lcom/google/appinventor/components/common/ScreenOrientation;
    if-nez v0, :cond_14

    .line 1590
    const/16 v1, 0x385

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "ScreenOrientation"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1592
    return-void

    .line 1594
    :cond_14
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V

    .line 1595
    return-void
.end method

.method public ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;
    .registers 2

    .line 1530
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 1556
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1546
    :pswitch_a
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1550
    :pswitch_d
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1548
    :pswitch_10
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1554
    :pswitch_13
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1552
    :pswitch_16
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1536
    :pswitch_19
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1540
    :pswitch_1c
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1532
    :pswitch_1f
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1544
    :pswitch_22
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1538
    :pswitch_25
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1534
    :pswitch_28
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1542
    :pswitch_2b
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V
    .registers 6
    .param p1, "orientation"    # Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 1565
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->getOrientationConstant()I

    move-result v0

    .line 1566
    .local v0, "orientationConst":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_1d

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1d

    .line 1567
    const/16 v1, 0x385

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "ScreenOrientation"

    invoke-virtual {p0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1569
    return-void

    .line 1571
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1572
    return-void
.end method

.method public ScreenOrientationChanged()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 909
    .local v1, "onOrientationChangeListener":Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 910
    .end local v1    # "onOrientationChangeListener":Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;
    goto :goto_6

    .line 911
    :cond_16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenOrientationChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 912
    return-void
.end method

.method public Scrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1215
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 1216
    return-void

    .line 1219
    :cond_9
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1220
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1221
    return-void
.end method

.method public Scrollable()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .line 1201
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    return v0
.end method

.method public ShowListsAsJson(Z)V
    .registers 2
    .param p1, "asJson"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"true\" meaning that the App Inventor programmer must explicitly set it to \"false\" if Lisp syntax is desired. In older versions of App Inventor, this setting defaulted to false. Older projects should not have been affected by this default settings update."
        userVisible = false
    .end annotation

    .line 1958
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 1959
    return-void
.end method

.method public ShowListsAsJson()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1971
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return v0
.end method

.method public ShowStatusBar(Z)V
    .registers 5
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1493
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq p1, v0, :cond_29

    .line 1494
    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_19

    .line 1495
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1496
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_27

    .line 1498
    :cond_19
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1499
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1501
    :goto_27
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1503
    :cond_29
    return-void
.end method

.method public ShowStatusBar()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .line 1480
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    return v0
.end method

.method public Sizing(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sizing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1913
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 1914
    const-string v0, "Fixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1915
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1916
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1917
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    goto :goto_5f

    .line 1919
    :cond_5c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1921
    :goto_5f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    goto :goto_6a

    :cond_68
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_6a
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1922
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_74

    .line 1923
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1925
    :cond_74
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " formHeight = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    return-void
.end method

.method public Theme(Ljava/lang/String;)V
    .registers 4
    .param p1, "theme"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppTheme.Light.DarkActionBar"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Pick a design theme for your app. Themes change the appearance of an app, such as how buttons and text look. The most common themes are: </p> <ul> <li> <code>Classic</code>: This theme stays consistent whether you are looking at an Android, iOS, or the screen layout in App Inventor\u2019s designer. Choose Classic if you want detailed control of the appearance of your app. </li><li> <code>Device Default</code>: This theme makes your app resemble the other apps on your device. With the default theme, however, your app won\u2019t look consistent across Android, iOS, and App Inventor\u2019s designer. The best way to see the true appearance of your app is to view it using the Companion."
        userVisible = false
    .end annotation

    .line 2067
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    const-string v1, "AppTheme"

    if-eqz v0, :cond_1f

    .line 2068
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2069
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    goto :goto_1a

    .line 2071
    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 2073
    :goto_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 2075
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 2076
    const-string v0, "Classic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2077
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_5a

    .line 2078
    :cond_30
    const-string v0, "AppTheme.Light.DarkActionBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2079
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_5a

    .line 2080
    :cond_3e
    const-string v0, "AppTheme.Light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2081
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_5a

    .line 2082
    :cond_4c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 2084
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    .line 2086
    :cond_5a
    :goto_5a
    return-void
.end method

.method public Title()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .line 1392
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1405
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 1406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1410
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->updateTitle()V

    .line 1411
    return-void
.end method

.method public TitleVisible(Z)V
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1462
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eq p1, v0, :cond_16

    .line 1463
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1464
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eqz v0, :cond_13

    .line 1465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_16

    .line 1467
    :cond_13
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    .line 1470
    :cond_16
    :goto_16
    return-void
.end method

.method public TitleVisible()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .line 1449
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    return v0
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    .line 2127
    return-void
.end method

.method public VersionCode(I)V
    .registers 2
    .param p1, "vCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .line 1872
    return-void
.end method

.method public VersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "vName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .line 1888
    return-void
.end method

.method public Width()I
    .registers 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .line 2096
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2508
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "About this application"

    invoke-interface {p1, v0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2510
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2516
    .local v0, "aboutAppItem":Landroid/view/MenuItem;
    const v1, 0x1080093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2517
    return-void
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2496
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Stop this application"

    invoke-interface {p1, v0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2498
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2504
    .local v0, "stopApplicationItem":Landroid/view/MenuItem;
    const v1, 0x108005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2505
    return-void
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .registers 6
    .param p1, "request"    # Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    .line 2828
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 2829
    .local v0, "permissionsToAsk":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2830
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2832
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 2835
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 2837
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    goto :goto_32

    .line 2840
    :cond_28
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$15;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2867
    :goto_32
    return-void
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "responseRequestor"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 2803
    move-object v0, p0

    .line 2804
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2806
    const/4 v1, 0x1

    invoke-interface {p2, p1, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 2807
    return-void

    .line 2809
    :cond_c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$14;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2820
    return-void
.end method

.method public assertPermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2777
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2780
    return-void

    .line 2778
    :cond_7
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .registers 8
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2655
    const-string v0, "Form"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Initialize"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_10} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_10} :catch_53

    .line 2662
    .local v1, "method":Ljava/lang/reflect/Method;
    nop

    .line 2664
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling Initialize method for Object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_31} :catch_33

    .line 2669
    nop

    .line 2670
    return-void

    .line 2666
    :catch_33
    move-exception v2

    .line 2667
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 2659
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_53
    move-exception v0

    .line 2661
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-void

    .line 2656
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_55
    move-exception v1

    .line 2657
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    return-void
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 844
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v0, :cond_11

    if-ne p1, p0, :cond_f

    .line 845
    const-string v0, "Initialize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 847
    .local v0, "canDispatch":Z
    :goto_12
    if-eqz v0, :cond_16

    .line 850
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 853
    :cond_16
    return v0
.end method

.method public clear()V
    .registers 4

    .line 2563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clear called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2565
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_33

    .line 2566
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2570
    :cond_33
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2583
    .local v1, "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    .line 2584
    .end local v1    # "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    goto :goto_6c

    .line 2586
    :cond_7c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2587
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Form.clear() About to do moby GC!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2588
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2589
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2590
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .registers 1

    .line 2450
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2451
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .registers 3
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .line 2433
    if-eqz p1, :cond_6

    .line 2434
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2436
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 2438
    return-void
.end method

.method public compatScalingFactor()F
    .registers 2

    .line 2295
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    return v0
.end method

.method protected defaultPropertyValues()V
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    goto :goto_15

    .line 422
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 424
    :goto_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast(Z)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText(Z)V

    .line 427
    const-string v1, "Responsive"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 428
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 430
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 431
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 434
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 435
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 437
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 438
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 439
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    .line 440
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 441
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 442
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 443
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 444
    return-void
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .registers 3
    .param p1, "component"    # Ljava/lang/Object;

    .line 2597
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v0, :cond_9

    .line 2598
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2600
    :cond_9
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v0, :cond_12

    .line 2601
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2603
    :cond_12
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v0, :cond_1b

    .line 2604
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2606
    :cond_1b
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v0, :cond_24

    .line 2607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2609
    :cond_24
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v0, :cond_2d

    .line 2610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2612
    :cond_2d
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v0, :cond_36

    .line 2613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2615
    :cond_36
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v0, :cond_3f

    .line 2616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2618
    :cond_3f
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v0, :cond_48

    .line 2619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2621
    :cond_48
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v0, :cond_51

    .line 2622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2624
    :cond_51
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v0, :cond_5b

    .line 2625
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2627
    :cond_5b
    return-void
.end method

.method public deviceDensity()F
    .registers 2

    .line 2291
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 12
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .line 992
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$4;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 998
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 12
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .line 1007
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$5;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1019
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "notAlreadyHandled"    # Z
    .param p4, "args"    # [Ljava/lang/Object;

    .line 873
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "exception"    # Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 968
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 969
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 982
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 988
    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 2900
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .registers 3

    .line 2636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2637
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 5
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    monitor-enter p0

    .line 2706
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 2706
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "action":I
    .end local p2    # "source":Lcom/google/appinventor/components/runtime/VideoPlayer;
    .end local p3    # "data":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "asset"    # Ljava/lang/String;

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2955
    .local v0, "extPkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "cache"    # Ljava/lang/String;

    .line 2914
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 2285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2918
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .registers 1

    .line 2261
    return-object p0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .registers 2

    .line 2593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 2929
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .registers 2

    .line 2754
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    return v0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 2767
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2766
    :goto_10
    return v0
.end method

.method protected maybeShowTitleBar()V
    .registers 2

    .line 2746
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eqz v0, :cond_8

    .line 2747
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->maybeShowTitleBar()V

    goto :goto_b

    .line 2749
    :cond_8
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->hideTitleBar()V

    .line 2751
    :goto_b
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4e

    .line 576
    if-eqz p3, :cond_40

    const-string v0, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 577
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "resultString":Ljava/lang/String;
    goto :goto_42

    .line 579
    .end local v0    # "resultString":Ljava/lang/String;
    :cond_40
    const-string v0, ""

    .line 581
    .restart local v0    # "resultString":Ljava/lang/String;
    :goto_42
    const-string v1, "other screen closed"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 583
    .local v1, "decodedResult":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    .end local v0    # "resultString":Ljava/lang/String;
    .end local v1    # "decodedResult":Ljava/lang/Object;
    goto :goto_81

    .line 586
    :cond_4e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 587
    .local v0, "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    if-eqz v0, :cond_5f

    .line 588
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 591
    :cond_5f
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 592
    .local v1, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-eqz v1, :cond_81

    .line 593
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    array-length v4, v3

    :goto_77
    if-ge v2, v4, :cond_81

    aget-object v5, v3, v2

    .line 594
    .local v5, "listener":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    invoke-interface {v5, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 593
    .end local v5    # "listener":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 598
    .end local v0    # "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    .end local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_81
    :goto_81
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 550
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 552
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    .line 554
    :cond_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 448
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 449
    const-string v0, "Form"

    const-string v1, "onConfigurationChanged() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 451
    .local v0, "newOrientation":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 457
    :cond_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_1c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 312
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 317
    .local v1, "lastDot":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Form"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 321
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeForm is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceDensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compatScalingFactor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v2, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 328
    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v5, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 330
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 331
    sget-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    const-string v6, " formName = "

    const/4 v7, 0x1

    if-nez v5, :cond_fd

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v8, "Screen1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 332
    sget-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MULTI: _initialized = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sput-boolean v7, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 338
    sget-boolean v5, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v5, :cond_e3

    .line 339
    const-string v2, "MultiDex already installed."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    goto :goto_124

    .line 342
    :cond_e3
    const-string v3, "Please Wait..."

    const-string v5, "Installation Finishing"

    invoke-static {p0, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 343
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 344
    new-instance v3, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>(Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller-IA;)V

    new-array v2, v7, [Lcom/google/appinventor/components/runtime/Form;

    aput-object p0, v2, v4

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_124

    .line 347
    :cond_fd
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NO MULTI: _initialized = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sput-boolean v7, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 349
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 351
    :goto_124
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .param p1, "id"    # I

    .line 809
    packed-switch p1, :pswitch_data_10

    .line 813
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 811
    :pswitch_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0xbd
        :pswitch_8
    .end packed-switch
.end method

.method onCreateFinish()V
    .registers 6

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateFinish called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_23

    .line 372
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 375
    :cond_23
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 377
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 380
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 381
    .local v0, "startIntent":Landroid/content/Intent;
    if-eqz v0, :cond_3d

    const-string v1, "APP_INVENTOR_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 385
    :cond_3d
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 389
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 390
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 391
    .local v2, "softInputMode":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    or-int/lit8 v4, v2, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 395
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 402
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 403
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2484
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2487
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V

    .line 2488
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2489
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 2490
    .local v1, "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 2491
    .end local v1    # "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    goto :goto_f

    .line 2492
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .line 783
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 788
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 789
    .local v1, "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    .line 790
    .end local v1    # "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    goto :goto_29

    .line 793
    :cond_39
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onDestroy()V

    .line 794
    return-void
.end method

.method public onGlobalLayout()V
    .registers 11

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 517
    .local v0, "totalHeight":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v1

    .line 518
    .local v1, "scaledHeight":I
    sub-int v2, v0, v1

    .line 522
    .local v2, "heightDiff":I
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 523
    .local v3, "diffPercent":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGlobalLayout(): diffPercent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Form"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    float-to-double v6, v3

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v6, v8

    if-gez v4, :cond_51

    .line 526
    const-string v4, "keyboard hidden!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v4, :cond_67

    .line 528
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 529
    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v4, :cond_67

    .line 530
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 531
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_67

    .line 535
    :cond_51
    const-string v4, "keyboard shown!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 537
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v4, :cond_67

    .line 538
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 539
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 542
    :cond_67
    :goto_67
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 739
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 742
    .local v1, "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    .line 743
    .end local v1    # "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    goto :goto_2d

    .line 744
    :cond_3d
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2522
    .local v1, "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2523
    const/4 v0, 0x1

    return v0

    .line 2525
    .end local v1    # "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    :cond_1a
    goto :goto_6

    .line 2526
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .line 752
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPause()V

    .line 753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 755
    .local v1, "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    .line 756
    .end local v1    # "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    goto :goto_29

    .line 757
    :cond_39
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 818
    packed-switch p1, :pswitch_data_e

    .line 823
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_d

    .line 820
    :pswitch_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    .line 821
    nop

    .line 825
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0xbd
        :pswitch_7
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 2872
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 2873
    .local v0, "responder":Lcom/google/appinventor/components/runtime/PermissionResultHandler;
    const-string v1, "Form"

    if-nez v0, :cond_16

    .line 2875
    const-string v2, "Received permission response which we cannot match."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    return-void

    .line 2878
    :cond_16
    array-length v2, p3

    if-lez v2, :cond_2b

    .line 2879
    const/4 v1, 0x0

    aget v2, p3, v1

    if-nez v2, :cond_25

    .line 2880
    aget-object v1, p2, v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_4c

    .line 2882
    :cond_25
    aget-object v2, p2, v1

    invoke-interface {v0, v2, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_4c

    .line 2885
    :cond_2b
    array-length v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestPermissionsResult: grantResults.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :goto_4c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 703
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onResume()V

    .line 704
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 709
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v0, :cond_2d

    .line 710
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 711
    return-void

    .line 714
    :cond_2d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 715
    .local v1, "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    .line 716
    .end local v1    # "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    goto :goto_33

    .line 717
    :cond_43
    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 765
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onStop()V

    .line 766
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 768
    .local v1, "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    .line 769
    .end local v1    # "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    goto :goto_29

    .line 770
    :cond_39
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2970
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2976
    const-string v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2977
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 2978
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 2979
    .end local v1    # "am":Landroid/content/res/AssetManager;
    :cond_19
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2980
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0

    .line 2982
    :cond_2a
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 618
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v0

    .line 619
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;
    .param p2, "requestCode"    # I

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 632
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-nez v0, :cond_1b

    .line 633
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 801
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 735
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 747
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 805
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method public registerForOnOrientationChange(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 724
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 720
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .registers 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .registers 7
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "length"    # I
    .param p3, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 687
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 688
    .local v0, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    invoke-direct {p0, p1, p3}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v1

    .line 689
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "functionName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORM_RUNTIME_ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorNumber is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1032
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 2325
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 2326
    .local v0, "cHeight":I
    if-nez v0, :cond_13

    .line 2327
    move v1, p2

    .line 2328
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$9;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2336
    .end local v1    # "fHeight":I
    :cond_13
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_22

    .line 2337
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v1

    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int v1, v1, v2

    div-int/lit8 p2, v1, 0x64

    .line 2340
    :cond_22
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2343
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 2344
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .registers 9
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 2300
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 2301
    .local v0, "cWidth":I
    if-nez v0, :cond_13

    .line 2302
    move v1, p2

    .line 2303
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2311
    .end local v1    # "fWidth":I
    :cond_13
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form.setChildWidth(): width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2312
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_4a

    .line 2313
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 2317
    :cond_4a
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2320
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 2321
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "nextFormName"    # Ljava/lang/String;
    .param p2, "startupValue"    # Ljava/lang/Object;

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNewForm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2204
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2205
    if-nez p2, :cond_40

    const-string v2, "open another screen"

    goto :goto_42

    .line 2206
    :cond_40
    const-string v2, "open another screen with start value"

    :goto_42
    nop

    .line 2208
    .local v2, "functionName":Ljava/lang/String;
    if-eqz p2, :cond_76

    .line 2209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartNewForm about to JSON encode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2211
    .local v3, "jValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartNewForm got JSON encoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 2213
    .end local v3    # "jValue":Ljava/lang/String;
    :cond_76
    const-string v3, ""

    .line 2215
    .restart local v3    # "jValue":Ljava/lang/String;
    :goto_78
    const-string v4, "APP_INVENTOR_START"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "about to start new form"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const/4 v4, 0x1

    :try_start_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm starting activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2223
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    :try_end_b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_96 .. :try_end_b4} :catch_b5

    .line 2227
    goto :goto_c0

    .line 2224
    :catch_b5
    move-exception v1

    .line 2225
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/16 v5, 0x386

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    invoke-virtual {p0, p0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2228
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_c0
    return-void
.end method

.method protected toastAllowed()Z
    .registers 7

    .line 2643
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2644
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    .line 2645
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2646
    const/4 v2, 0x1

    return v2

    .line 2648
    :cond_11
    const/4 v2, 0x0

    return v2
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 640
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 641
    .local v0, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 642
    .local v2, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 643
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v2    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_2d
    goto :goto_e

    .line 646
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 647
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v2    # "key":Ljava/lang/Integer;
    goto :goto_32

    .line 651
    :cond_44
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 652
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 653
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;>;"
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 655
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 656
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_72

    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 659
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    :cond_72
    goto :goto_4e

    .line 660
    :cond_73
    return-void
.end method

.method public unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 694
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    return-void
.end method

.method protected updateTitle()V
    .registers 3

    .line 2741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setTitle(Ljava/lang/String;)V

    .line 2742
    return-void
.end method

.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar.  Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-api-client.jar,google-api-client-android2-beta.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client.jar,guava.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "com.google.android.apps.googlevoice.permission.RECEIVE_SMS, com.google.android.apps.googlevoice.permission.SEND_SMS, android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;,
        Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;,
        Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x54455854

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field private static receivingState:Lcom/google/appinventor/components/common/ReceivingState;


# instance fields
.field private authToken:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

.field private havePermission:Z

.field private haveReceivePermission:Z

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private pendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetauthToken(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgvHelper(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessage(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputauthToken(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgvHelper(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Texting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhaveReceivePermission(Lcom/google/appinventor/components/runtime/Texting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSentMessage(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPendingQueue(Lcom/google/appinventor/components/runtime/Texting;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processPendingQueue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendViaSms(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetactivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 217
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 10
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 256
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 240
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    .line 248
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    .line 257
    const-string v1, "Texting Component"

    const-string v2, "Texting constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 259
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 260
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    .line 262
    const-string v3, "TextingState"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 263
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_83

    .line 264
    const-string v3, "receiving2"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 265
    .local v3, "pref":I
    if-ne v3, v4, :cond_48

    .line 266
    const/4 v4, 0x1

    const-string v5, "receiving"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 267
    sget-object v4, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_52

    .line 269
    :cond_43
    sget-object v4, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_52

    .line 272
    :cond_48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v4

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 275
    :goto_52
    const-string v4, "gvenabled"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 276
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting with receiving Enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " GV enabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v3    # "pref":I
    goto :goto_89

    .line 279
    :cond_83
    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 280
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 284
    :goto_89
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v1, :cond_97

    .line 285
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v3, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    :cond_97
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    .line 288
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 290
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 291
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 294
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 295
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 296
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 297
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 298
    return-void
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "messageText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 462
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-ne v0, v1, :cond_7

    .line 463
    return-void

    .line 465
    :cond_7
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "MessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 467
    const-string v0, "Texting Component"

    const-string v1, "Dispatch successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 469
    :cond_44
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_4e
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    monitor-exit v0

    .line 474
    :goto_54
    return-void

    .line 472
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw v1
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 766
    const-string v0, "Texting Component"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "cachedMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v2, "textingmsgcache"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 769
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 770
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 771
    sget v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_64} :catch_70
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_64} :catch_66

    .line 779
    nop

    .end local v1    # "cachedMsg":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7a

    .line 776
    :catch_66
    move-exception v1

    .line 777
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "I/O Error writing to cache file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 773
    .end local v1    # "e":Ljava/io/IOException;
    :catch_70
    move-exception v1

    .line 774
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "File not found error writing to cache file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 779
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 780
    :goto_7a
    return-void
.end method

.method public static getCachedMsgCount()I
    .registers 1

    .line 717
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;

    .line 635
    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 636
    .local v0, "messages":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [[B

    .line 638
    .local v1, "pduObjs":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_18

    .line 639
    aget-object v3, v0, v2

    check-cast v3, [B

    aput-object v3, v1, v2

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 641
    .end local v2    # "i":I
    :cond_18
    array-length v2, v1

    new-array v2, v2, [[B

    .line 642
    .local v2, "pdus":[[B
    array-length v3, v2

    .line 643
    .local v3, "pduCount":I
    new-array v4, v3, [Landroid/telephony/SmsMessage;

    .line 644
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v3, :cond_30

    .line 645
    aget-object v6, v1, v5

    aput-object v6, v2, v5

    .line 646
    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v4, v5

    .line 644
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 648
    .end local v5    # "i":I
    :cond_30
    return-object v4
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "resultCode"    # I
    .param p4, "smsMsg"    # Ljava/lang/String;

    monitor-enter p0

    .line 1040
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_c2

    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_5
    goto/16 :goto_c0

    .line 1050
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_7
    :try_start_7
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received no service error, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "No Sms service available. Message not sent."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1052
    goto/16 :goto_c0

    .line 1054
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_2c
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received null PDU error, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Received null PDU error. Message not sent."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1056
    goto :goto_c0

    .line 1058
    :pswitch_50
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received radio off error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Could not send SMS message: radio off."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c0

    .line 1046
    :pswitch_75
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received generic failure, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Generic failure: message not sent"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1048
    goto :goto_c0

    .line 1042
    :pswitch_99
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received OK, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Message sent"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_bc
    .catchall {:try_start_7 .. :try_end_bc} :catchall_bd

    .line 1044
    goto :goto_c0

    .line 1039
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "resultCode":I
    .end local p4    # "smsMsg":Ljava/lang/String;
    :catchall_bd
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1062
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local p3    # "resultCode":I
    .restart local p4    # "smsMsg":Ljava/lang/String;
    :goto_c0
    monitor-exit p0

    return-void

    :pswitch_data_c2
    .packed-switch -0x1
        :pswitch_99
        :pswitch_5
        :pswitch_75
        :pswitch_50
        :pswitch_2c
        :pswitch_7
    .end packed-switch
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 749
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v0, :cond_8

    .line 750
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 752
    :cond_8
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_b
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    monitor-exit v0

    .line 756
    :goto_f
    return-void

    .line 754
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 613
    const-string v0, "TextingState"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 614
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "receiving2"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 615
    .local v1, "retval":I
    if-ne v1, v2, :cond_1c

    .line 616
    const-string v2, "receiving"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 617
    const/4 v2, 0x2

    return v2

    .line 619
    :cond_1b
    return v3

    .line 621
    :cond_1c
    return v1
.end method

.method public static isRunning()Z
    .registers 1

    .line 709
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .registers 7

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "messagelist":[Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 659
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_75

    .line 660
    if-nez v0, :cond_d

    .line 661
    return-void

    .line 662
    :cond_d
    const-string v1, "Texting Component"

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cached messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2d
    array-length v2, v0

    if-ge v1, v2, :cond_74

    .line 665
    aget-object v2, v0, v1

    .line 666
    .local v2, "phoneAndMessage":Ljava/lang/String;
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 671
    .local v3, "delim":I
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v5, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v4, v5, :cond_71

    const/4 v4, -0x1

    if-eq v3, v4, :cond_71

    .line 672
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 673
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 672
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v2    # "phoneAndMessage":Ljava/lang/String;
    .end local v3    # "delim":I
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 676
    .end local v1    # "k":I
    :cond_74
    return-void

    .line 659
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    goto :goto_79

    :goto_78
    throw v2

    :goto_79
    goto :goto_78
.end method

.method private processPendingQueue()V
    .registers 7

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_58

    .line 444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, "entry":Ljava/lang/String;
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending queued message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Texting Component"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v4, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v3

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 449
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 450
    :cond_58
    return-void
.end method

.method private requestReceiveSmsPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1140
    return-void
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .registers 7

    .line 684
    const-string v0, "textingmsgcache"

    const-string v1, "Texting Component"

    const-string v2, "Retrieving cached messages"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v2, ""

    .line 687
    .local v2, "cache":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_c
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v4

    .line 688
    .local v4, "bytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    move-object v2, v5

    .line 689
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 690
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved cache "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_36} :catch_48
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_36} :catch_3e

    .line 699
    nop

    .line 700
    .end local v4    # "bytes":[B
    const-string v0, "\u0001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "messagelist":[Ljava/lang/String;
    return-object v0

    .line 695
    .end local v0    # "messagelist":[Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 696
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "I/O Error reading from cache file"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 698
    return-object v3

    .line 692
    .end local v0    # "e":Ljava/io/IOException;
    :catch_48
    move-exception v0

    .line 693
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "No Cache file found -- this is not (usually) an error"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-object v3
.end method

.method private sendViaSms(Ljava/lang/String;)V
    .registers 12
    .param p1, "caller"    # Ljava/lang/String;

    .line 1069
    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    if-nez v0, :cond_1b

    .line 1073
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1074
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    move-object v1, p0

    .line 1075
    .local v1, "me":Lcom/google/appinventor/components/runtime/Texting;
    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1092
    return-void

    .line 1095
    .end local v0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v1    # "me":Lcom/google/appinventor/components/runtime/Texting;
    :cond_1b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1096
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1097
    .local v1, "numParts":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 1098
    .local v8, "pendingIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    const-string v3, "SMS_SENT"

    if-ge v2, v1, :cond_46

    .line 1099
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {v4, v5, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1103
    .end local v2    # "i":I
    :cond_46
    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    move-object v9, v2

    .line 1118
    .local v9, "sendReceiver":Landroid/content/BroadcastReceiver;
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1119
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1120
    return-void
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .line 514
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1f

    .line 515
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 516
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "TextingState"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 518
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gvenabled"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_2b

    .line 521
    :cond_1f
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    const-string v2, "Sorry, your phone\'s system does not support this option."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 523
    :goto_2b
    return-void
.end method

.method public GoogleVoiceEnabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .line 493
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method public Initialize()V
    .registers 3

    .line 317
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v0, :cond_f

    .line 319
    const-string v0, "Initialize"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 321
    :cond_f
    return-void
.end method

.method public Message()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included."
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumber set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public ReceivingEnabled()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .line 547
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ReceivingEnabled(I)V
    .registers 8
    .param p1, "enabled"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ReceivingState;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS"
        }
    .end annotation

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    .line 604
    .local v0, "state":Lcom/google/appinventor/components/common/ReceivingState;
    if-nez v0, :cond_22

    .line 605
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x6a5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 605
    const-string v4, "Texting"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 607
    return-void

    .line 609
    :cond_22
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V

    .line 610
    return-void
.end method

.method public ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;
    .registers 2

    .line 555
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    return-object v0
.end method

.method public ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V
    .registers 6
    .param p1, "state"    # Lcom/google/appinventor/components/common/ReceivingState;

    .line 563
    sput-object p1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 564
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 565
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 566
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "receiving2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 567
    const-string v2, "receiving"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    sget-object v2, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq p1, v2, :cond_31

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v2, :cond_31

    .line 570
    const-string v2, "ReceivingEnabled"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 572
    :cond_31
    return-void
.end method

.method public SendMessage()V
    .registers 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 381
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 383
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 384
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 385
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "sms_body"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 387
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const v5, 0x54455854

    invoke-virtual {v4, p0, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 388
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v3, v5}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    :cond_40
    return-void
.end method

.method public SendMessageDirect()V
    .registers 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 404
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 407
    .local v2, "message":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_a7

    .line 410
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_92

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to get an authToken -- enqueing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":::"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 415
    .local v1, "ok":Z
    if-nez v1, :cond_7f

    .line 416
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v4, "Pending message queue full. Can\'t send message"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 417
    return-void

    .line 423
    :cond_7f
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-ne v3, v4, :cond_91

    .line 424
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    .end local v1    # "ok":Z
    :cond_91
    goto :goto_b1

    .line 428
    :cond_92
    const-string v3, "Creating AsyncSendMessage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b1

    .line 434
    :cond_a7
    const-string v3, "Sending via SMS"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v1, "SendMessage"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    .line 437
    :goto_b1
    return-void
.end method

.method public onDelete()V
    .registers 2

    .line 1255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 1256
    return-void
.end method

.method public onInitialize()V
    .registers 3

    .line 307
    const-string v0, "Texting Component"

    const-string v1, "onInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 309
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 310
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 311
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 312
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 313
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 739
    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 741
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 725
    const-string v0, "Texting Component"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 727
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v0, :cond_20

    .line 728
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 729
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 730
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 732
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_20
    return-void
.end method

.method public onStop()V
    .registers 5

    .line 1246
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1247
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1248
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "receiving2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1249
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    const-string v3, "gvenabled"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1251
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 784
    const v0, 0x54455854

    if-ne p1, v0, :cond_1b

    .line 785
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    if-nez p3, :cond_d

    const-string v2, ""

    goto :goto_13

    .line 786
    :cond_d
    const-string v2, "sms_body"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 785
    :goto_13
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 789
    :cond_1b
    return-void
.end method

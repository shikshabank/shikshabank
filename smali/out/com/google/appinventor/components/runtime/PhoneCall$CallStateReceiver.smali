.class Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 319
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 320
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 321
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 327
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 329
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 330
    const-string v2, "incoming_number"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 331
    if-nez v2, :cond_29

    .line 334
    return-void

    .line 336
    :cond_29
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 337
    :cond_34
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 338
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_ab

    .line 339
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 340
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    goto :goto_ab

    .line 342
    :cond_4e
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 343
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_66

    .line 344
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->IncomingRejected:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_85

    .line 345
    :cond_66
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_76

    .line 346
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->IncomingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_85

    .line 347
    :cond_76
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_85

    .line 348
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->OutgoingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    .line 350
    :cond_85
    :goto_85
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 351
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    goto :goto_ab

    .line 353
    .end local v1    # "state":Ljava/lang/String;
    :cond_8d
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 354
    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 355
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v2, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    goto :goto_ac

    .line 353
    :cond_ab
    :goto_ab
    nop

    .line 358
    :goto_ac
    return-void
.end method

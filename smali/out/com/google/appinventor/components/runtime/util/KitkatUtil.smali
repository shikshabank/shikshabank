.class public final Lcom/google/appinventor/components/runtime/util/KitkatUtil;
.super Ljava/lang/Object;
.source "KitkatUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 39
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_11

    array-length v2, v1

    if-ltz v2, :cond_11

    .line 40
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 42
    :cond_11
    return-object v0
.end method

.method public static getMinHeight(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    return v0

    .line 69
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getMinWidth(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    return v0

    .line 55
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    return v0
.end method

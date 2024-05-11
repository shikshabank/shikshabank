.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "GingerbreadUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .registers 4
    .param p0, "cookieHandler"    # Ljava/net/CookieHandler;

    .line 55
    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_12

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/net/CookieManager;

    .line 57
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    .line 58
    .local v1, "cookieStore":Ljava/net/CookieStore;
    if-eqz v1, :cond_12

    .line 59
    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    .line 60
    const/4 v2, 0x1

    return v2

    .line 63
    .end local v0    # "cookieManager":Ljava/net/CookieManager;
    .end local v1    # "cookieStore":Ljava/net/CookieStore;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;
    .registers 12
    .param p0, "payload"    # Ljava/lang/String;
    .param p1, "encodeInUtf8"    # Z

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 85
    .local v0, "langBytes":[B
    if-eqz p1, :cond_17

    const-string v1, "UTF-8"

    goto :goto_19

    :cond_17
    const-string v1, "UTF-16"

    :goto_19
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 86
    .local v1, "utfEncoding":Ljava/nio/charset/Charset;
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 87
    .local v2, "textBytes":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_26

    const/4 v4, 0x0

    goto :goto_28

    :cond_26
    const/16 v4, 0x80

    .line 88
    .local v4, "utfBit":I
    :goto_28
    array-length v5, v0

    add-int/2addr v5, v4

    int-to-char v5, v5

    .line 89
    .local v5, "status":C
    array-length v6, v0

    const/4 v7, 0x1

    add-int/2addr v6, v7

    array-length v8, v2

    add-int/2addr v6, v8

    new-array v6, v6, [B

    .line 90
    .local v6, "data":[B
    int-to-byte v8, v5

    aput-byte v8, v6, v3

    .line 91
    array-length v8, v0

    invoke-static {v0, v3, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v8, v0

    add-int/2addr v8, v7

    array-length v9, v2

    invoke-static {v2, v3, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v3, v3, [B

    invoke-direct {v8, v7, v9, v3, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v3, v8

    .line 95
    .local v3, "record":Landroid/nfc/NdefRecord;
    return-object v3
.end method

.method public static disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;

    .line 80
    invoke-virtual {p1, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public static enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p2, "textToWrite"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 75
    .local v1, "textRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-direct {v2, v0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v0, v2

    .line 76
    .local v0, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1, p0, v0}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 77
    return-void
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .registers 1

    .line 44
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method

.method public static newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V
    .registers 10
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "nfc"    # Lcom/google/appinventor/components/runtime/NearField;

    .line 99
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 109
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->ReadMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5c

    .line 111
    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 113
    .local v1, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v1, :cond_2d

    .line 114
    array-length v3, v1

    new-array v3, v3, [Landroid/nfc/NdefMessage;

    .line 115
    .local v3, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, v1

    if-ge v4, v5, :cond_2c

    .line 116
    aget-object v5, v1, v4

    check-cast v5, Landroid/nfc/NdefMessage;

    aput-object v5, v3, v4

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .end local v4    # "i":I
    :cond_2c
    goto :goto_42

    .line 122
    .end local v3    # "msgs":[Landroid/nfc/NdefMessage;
    :cond_2d
    new-array v4, v2, [B

    .line 123
    .local v4, "empty":[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v4, v4, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 124
    .local v5, "record":Landroid/nfc/NdefRecord;
    new-instance v6, Landroid/nfc/NdefMessage;

    new-array v7, v3, [Landroid/nfc/NdefRecord;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 125
    .local v6, "msg":Landroid/nfc/NdefMessage;
    new-array v3, v3, [Landroid/nfc/NdefMessage;

    aput-object v6, v3, v2

    .line 127
    .end local v4    # "empty":[B
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    .end local v6    # "msg":Landroid/nfc/NdefMessage;
    .restart local v3    # "msgs":[Landroid/nfc/NdefMessage;
    :goto_42
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 129
    .local v2, "payload":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/NearField;->TagRead(Ljava/lang/String;)V

    .line 131
    .end local v1    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v2    # "payload":[B
    .end local v3    # "msgs":[Landroid/nfc/NdefMessage;
    .end local v4    # "message":Ljava/lang/String;
    goto :goto_9f

    .line 132
    :cond_5c
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 133
    .local v1, "detectedTag":Landroid/nfc/Tag;
    const/4 v4, 0x0

    .line 134
    .local v4, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->WriteType()I

    move-result v5

    if-ne v5, v3, :cond_7d

    .line 135
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TextToWrite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 136
    .local v5, "textRecord":Landroid/nfc/NdefRecord;
    new-instance v6, Landroid/nfc/NdefMessage;

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    aput-object v5, v3, v2

    invoke-direct {v6, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v4, v6

    .line 138
    .end local v5    # "textRecord":Landroid/nfc/NdefRecord;
    :cond_7d
    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 139
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TagWritten()V

    .line 141
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v4    # "msg":Landroid/nfc/NdefMessage;
    :cond_86
    goto :goto_9f

    .line 143
    :cond_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nearfield"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_9f
    return-void
.end method

.method public static writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .registers 7
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 151
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 153
    .local v0, "size":I
    const/4 v1, 0x0

    :try_start_6
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 154
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    const/4 v3, 0x1

    if-eqz v2, :cond_22

    .line 155
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 156
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-nez v4, :cond_17

    .line 157
    return v1

    .line 159
    :cond_17
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    if-ge v4, v0, :cond_1e

    .line 160
    return v1

    .line 162
    :cond_1e
    invoke-virtual {v2, p0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 163
    return v3

    .line 165
    :cond_22
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_32

    .line 166
    .local v4, "format":Landroid/nfc/tech/NdefFormatable;
    if-eqz v4, :cond_31

    .line 168
    :try_start_28
    invoke-virtual {v4}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 169
    invoke-virtual {v4, p0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_32

    .line 170
    return v3

    .line 171
    :catch_2f
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    return v1

    .line 175
    .end local v3    # "e":Ljava/io/IOException;
    :cond_31
    return v1

    .line 178
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    .end local v4    # "format":Landroid/nfc/tech/NdefFormatable;
    :catch_32
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

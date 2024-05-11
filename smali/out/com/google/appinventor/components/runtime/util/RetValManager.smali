.class public Lcom/google/appinventor/components/runtime/util/RetValManager;
.super Ljava/lang/Object;
.source "RetValManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RetValManager"

.field private static final TENSECONDS:J = 0x2710L

.field private static currentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "blockid"    # Ljava/lang/String;
    .param p1, "ok"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_45

    .line 55
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "type"

    const-string v3, "return"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "blockid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1e} :catch_3b
    .catchall {:try_start_8 .. :try_end_1e} :catchall_45

    .line 62
    nop

    .line 63
    :try_start_1f
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 64
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_39

    .line 67
    :cond_34
    if-eqz v2, :cond_39

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_39
    :goto_39
    monitor-exit v0

    .line 71
    return-void

    .line 59
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_3b
    move-exception v2

    .line 60
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v0

    return-void

    .line 70
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_45

    throw v1
.end method

.method public static assetTransferred(Ljava/lang/String;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_48

    .line 160
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "type"

    const-string v3, "assetTransferred"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    if-eqz p0, :cond_21

    .line 163
    const-string v2, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_3e
    .catchall {:try_start_8 .. :try_end_21} :catchall_48

    .line 167
    :cond_21
    nop

    .line 168
    :try_start_22
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 169
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_3c

    .line 172
    :cond_37
    if-eqz v2, :cond_3c

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 176
    return-void

    .line 164
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_3e
    move-exception v2

    .line 165
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    monitor-exit v0

    return-void

    .line 175
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public static extensionsLoaded()V
    .registers 5

    .line 183
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3d

    .line 186
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "type"

    const-string v3, "extensionsLoaded"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_16} :catch_33
    .catchall {:try_start_8 .. :try_end_16} :catchall_3d

    .line 191
    nop

    .line 192
    :try_start_17
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 193
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 195
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_31

    .line 196
    :cond_2c
    if-eqz v2, :cond_31

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 199
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_31
    :goto_31
    monitor-exit v0

    .line 200
    return-void

    .line 188
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_33
    move-exception v2

    .line 189
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    monitor-exit v0

    return-void

    .line 199
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public static fetch(Z)Ljava/lang/String;
    .registers 11
    .param p0, "block"    # Z

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    .local v0, "startTime":J
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :goto_7
    :try_start_7
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz p0, :cond_28

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_58

    .line 215
    .local v3, "time":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0x26ac

    cmp-long v9, v5, v7

    if-lez v9, :cond_1e

    .line 216
    goto :goto_28

    .line 218
    :cond_1e
    :try_start_1e
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_25} :catch_26
    .catchall {:try_start_1e .. :try_end_25} :catchall_58

    .line 220
    goto :goto_27

    .line 219
    :catch_26
    move-exception v5

    .line 221
    .end local v3    # "time":J
    :goto_27
    goto :goto_7

    .line 222
    :cond_28
    :goto_28
    :try_start_28
    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v3, "arrayoutput":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_58

    .line 225
    .local v4, "output":Lorg/json/JSONObject;
    :try_start_34
    const-string v5, "status"

    const-string v6, "OK"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v5, "values"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_40} :catch_4c
    .catchall {:try_start_34 .. :try_end_40} :catchall_58

    .line 230
    nop

    .line 231
    :try_start_41
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 232
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v2

    return-object v5

    .line 227
    :catch_4c
    move-exception v5

    .line 228
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "RetValManager"

    const-string v7, "Error fetching retvals"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const-string v6, "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}"

    monitor-exit v2

    return-object v6

    .line 233
    .end local v3    # "arrayoutput":Lorg/json/JSONArray;
    .end local v4    # "output":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_41 .. :try_end_5a} :catchall_58

    goto :goto_5c

    :goto_5b
    throw v3

    :goto_5c
    goto :goto_5b
.end method

.method public static popScreen(Ljava/lang/String;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_48

    .line 133
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v2, "type"

    const-string v3, "popScreen"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    if-eqz p0, :cond_21

    .line 136
    const-string v2, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_21} :catch_3e
    .catchall {:try_start_8 .. :try_end_21} :catchall_48

    .line 140
    :cond_21
    nop

    .line 141
    :try_start_22
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 142
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 144
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_3c

    .line 145
    :cond_37
    if-eqz v2, :cond_3c

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 149
    return-void

    .line 137
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_3e
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    monitor-exit v0

    return-void

    .line 148
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public static pushScreen(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_4d

    .line 104
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "type"

    const-string v3, "pushScreen"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "screen"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    if-eqz p1, :cond_26

    .line 108
    const-string v2, "value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_26} :catch_43
    .catchall {:try_start_8 .. :try_end_26} :catchall_4d

    .line 112
    :cond_26
    nop

    .line 113
    :try_start_27
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 114
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 116
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_41

    .line 117
    :cond_3c
    if-eqz v2, :cond_41

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_41
    :goto_41
    monitor-exit v0

    .line 121
    return-void

    .line 109
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_43
    move-exception v2

    .line 110
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    monitor-exit v0

    return-void

    .line 120
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public static sendError(Ljava/lang/String;)V
    .registers 6
    .param p0, "error"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_42

    .line 77
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "type"

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_38
    .catchall {:try_start_8 .. :try_end_1b} :catchall_42

    .line 83
    nop

    .line 84
    :try_start_1c
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 85
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 87
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_36

    .line 88
    :cond_31
    if-eqz v2, :cond_36

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_36
    :goto_36
    monitor-exit v0

    .line 92
    return-void

    .line 80
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_38
    move-exception v2

    .line 81
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    monitor-exit v0

    return-void

    .line 91
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_42

    throw v1
.end method

.method private static webRTCsendCurrent()V
    .registers 4

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "status"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v1, "values"

    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->returnRetvals(Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_26

    .line 247
    .end local v0    # "output":Lorg/json/JSONObject;
    nop

    .line 248
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    return-void

    .line 244
    :catch_26
    move-exception v0

    .line 245
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    return-void
.end method

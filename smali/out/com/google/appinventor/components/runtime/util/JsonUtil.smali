.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final BINFILE_DIR:Ljava/lang/String; = "/AppInventorBinaries"

.field private static final LOG_TAG:Ljava/lang/String; = "JsonUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 211
    if-nez p0, :cond_5

    .line 212
    const-string v0, "null"

    return-object v0

    .line 215
    :cond_5
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1b

    .line 216
    if-eqz p1, :cond_13

    .line 217
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    return-object v0

    .line 219
    :cond_13
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1b
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2e

    .line 224
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_2d

    .line 226
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 228
    :cond_2d
    return-object v0

    .line 232
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_46

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 233
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_6e

    .line 237
    :cond_46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5e

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_68

    .line 241
    :cond_5e
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_63

    .line 242
    return-object p0

    .line 245
    :cond_63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_68
    :goto_68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 234
    :cond_6e
    :goto_6e
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 601
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 602
    :catch_5
    move-exception v0

    .line 603
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonObject is not a legal JSON object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getColumnsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 13
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 448
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "jsonObject":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v1, "resultColumns":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_68

    .line 460
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 462
    .local v2, "jsonList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 463
    .local v4, "entry":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v5, "columnElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_60

    .line 468
    move-object v6, v4

    check-cast v6, Ljava/util/List;

    .line 473
    .local v6, "listEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 479
    .local v7, "jsonValue":Ljava/lang/Object;
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_59

    .line 482
    move-object v8, v7

    check-cast v8, Ljava/util/List;

    .line 484
    .local v8, "jsonValueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 485
    .local v10, "jsonValueListEntry":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v10    # "jsonValueListEntry":Ljava/lang/Object;
    goto :goto_46

    .line 487
    .end local v8    # "jsonValueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_58
    goto :goto_60

    .line 489
    :cond_59
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v6    # "listEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "jsonValue":Ljava/lang/Object;
    :cond_60
    :goto_60
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v4    # "entry":Ljava/lang/Object;
    .end local v5    # "columnElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_14

    .line 500
    .end local v2    # "jsonList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_68
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 151
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 152
    .local v1, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 158
    :cond_1e
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_22

    .line 162
    :cond_3b
    return-object v0
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 249
    if-eqz p0, :cond_f0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_f0

    .line 252
    :cond_b
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_18

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_18
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_24

    .line 256
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_24
    instance-of v0, p0, Lgnu/math/IntFraction;

    if-eqz v0, :cond_38

    .line 266
    move-object v0, p0

    check-cast v0, Lgnu/math/IntFraction;

    invoke-virtual {v0}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_38
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_44

    .line 269
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_44
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_4d
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_58

    .line 275
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 277
    :cond_58
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_ae

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 280
    .local v1, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, ""

    .line 281
    .local v2, "sep":Ljava/lang/String;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 283
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, ","

    .line 288
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_73

    .line 289
    :cond_a4
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 292
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v2    # "sep":Ljava/lang/String;
    :cond_ae
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, ""

    .line 296
    .local v1, "separator":Ljava/lang/String;
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c9
    if-ge v4, v3, :cond_dd

    aget-object v5, v2, v4

    .line 297
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, ","

    .line 296
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 300
    :cond_dd
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 303
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "separator":Ljava/lang/String;
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_f0
    :goto_f0
    const-string v0, "null"

    return-object v0
.end method

.method public static getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "value"    # Ljava/lang/Object;

    .line 408
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 409
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "valueJsonList":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 411
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1a

    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_6d

    .line 412
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 417
    .restart local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6c

    .line 418
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 419
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v4, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "filename":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filename Written: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    const-string v3, "file:/"

    const-string v4, "file:///"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 422
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    .end local v2    # "filename":Ljava/lang/String;
    :cond_6b
    return-object v0

    .line 427
    :cond_6c
    return-object v0

    .line 414
    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6d
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "getJsonRepresentationIfValueFileName called on unknown type"

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "value":Ljava/lang/Object;
    throw v1
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7d} :catch_7d

    .line 429
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_7d
    move-exception v1

    .line 430
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "JsonUtil"

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    return-object v0
.end method

.method public static getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "JsonUtil"

    const-string v2, "Calling deprecated function getJsonRepresentationIfValueFileName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 2
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;
    .registers 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 97
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 9
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v2, "keysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 122
    :cond_1e
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_25

    .line 131
    :cond_49
    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 335
    const-string v0, ""

    if-eqz p0, :cond_59

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_59

    .line 342
    :cond_b
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_57

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_57

    .line 346
    :cond_1f
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_56

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_56

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    goto :goto_56

    .line 350
    :cond_2c
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_38

    .line 351
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 352
    :cond_38
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_4e

    .line 353
    if-eqz p1, :cond_46

    .line 354
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v1

    return-object v1

    .line 356
    :cond_46
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 359
    :cond_4e
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid JSON string."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_56
    :goto_56
    return-object v0

    .line 345
    :cond_57
    :goto_57
    const/4 v1, 0x0

    return-object v1

    .line 340
    .end local v0    # "value":Ljava/lang/Object;
    :cond_59
    :goto_59
    return-object v0
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .param p0, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "val":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 74
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private static trimDirectory(ILjava/io/File;)V
    .registers 6
    .param p0, "maxSavedFiles"    # I
    .param p1, "directory"    # Ljava/io/File;

    .line 578
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 580
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/JsonUtil$2;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 586
    array-length v1, v0

    sub-int/2addr v1, p0

    .line 587
    .local v1, "excess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_19

    .line 588
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 590
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method private static writeFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p0, "context"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .line 516
    move-object/from16 v11, p0

    const-string v0, "/AppInventorBinaries"

    invoke-virtual {v11, v0}, Lcom/google/appinventor/components/runtime/Form;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 517
    .local v12, "fullDirName":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/google/appinventor/components/runtime/Form;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, "preAmble":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 531
    .local v14, "destDirectory":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v15, "Write"

    if-nez v1, :cond_4c

    .line 532
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_4c

    .line 533
    :cond_33
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_4c
    :goto_4c
    new-instance v10, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 539
    .local v10, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    :try_start_51
    const-string v1, "BinFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    move-object/from16 v16, v1

    .line 540
    .local v16, "dest":Ljava/io/File;
    new-instance v17, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;

    const-string v4, "Write"

    .line 541
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 554
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->run()V

    .line 555
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 556
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 557
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 558
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "JsonUtil"

    const-string v2, "Error writing content"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_b8

    .line 561
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_ae

    .line 562
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1

    .line 564
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_ae
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1

    .line 560
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_b8
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_bc} :catch_c7

    .line 569
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_bc
    nop

    .line 570
    const/16 v0, 0x14

    invoke-static {v0, v14}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->trimDirectory(ILjava/io/File;)V

    .line 571
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    .end local v16    # "dest":Ljava/io/File;
    :catch_c7
    move-exception v0

    .line 568
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destDirectory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

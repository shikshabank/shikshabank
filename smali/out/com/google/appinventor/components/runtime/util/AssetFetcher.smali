.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "AssetFetcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static context:Landroid/content/Context;

.field private static db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    .line 61
    const-class v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .registers 8
    .param p0, "hash"    # [B

    .line 237
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 238
    .local v0, "formatter":Ljava/util/Formatter;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_1d

    aget-byte v4, p0, v3

    .line 239
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-virtual {v0, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 238
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 241
    :cond_1d
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "asset"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    invoke-direct {v1, p2, p1, p3, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 84
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 22
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;
    .param p2, "asset"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .line 146
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    .line 147
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    const/4 v6, 0x0

    const/4 v0, 0x1

    if-le v4, v0, :cond_28

    .line 148
    sget-object v7, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    monitor-enter v7

    .line 149
    :try_start_13
    sget-boolean v8, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-eqz v8, :cond_19

    .line 150
    monitor-exit v7

    return-object v6

    .line 152
    :cond_19
    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 153
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    monitor-exit v7

    return-object v6

    .line 161
    :catchall_25
    move-exception v0

    monitor-exit v7
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_25

    throw v0

    .line 164
    :cond_28
    const/4 v7, 0x0

    .line 165
    .local v7, "responseCode":I
    new-instance v8, Ljava/io/File;

    invoke-static {v5, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v9, "assets/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v8, "outFile":Ljava/io/File;
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v9, 0x0

    .line 170
    .local v9, "fileHash":Ljava/lang/String;
    const/4 v10, 0x0

    .line 171
    .local v10, "error":Z
    :try_start_56
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    .line 173
    .local v12, "connection":Ljava/net/HttpURLConnection;
    if-eqz v12, :cond_154

    .line 174
    const-string v13, "Cookie"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AppInventor = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v13, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v13, v3}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v13
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_81} :catch_187

    .line 176
    .local v13, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    if-eqz v13, :cond_92

    .line 177
    :try_start_83
    const-string v14, "If-None-Match"

    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8c} :catch_8d

    goto :goto_92

    .line 216
    .end local v10    # "error":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "connection":Ljava/net/HttpURLConnection;
    .end local v13    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    :catch_8d
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_18a

    .line 179
    .restart local v10    # "error":Z
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "connection":Ljava/net/HttpURLConnection;
    .restart local v13    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_92
    :goto_92
    :try_start_92
    const-string v14, "GET"

    invoke-virtual {v12, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_187

    move v7, v14

    .line 181
    :try_start_9c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "asset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " responseCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v14, v0

    .line 183
    .local v14, "parentOutFile":Ljava/io/File;
    const-string v0, "ETag"

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 185
    const/16 v0, 0x130

    if-ne v7, v0, :cond_cd

    .line 186
    return-object v8

    .line 189
    :cond_cd
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_d1} :catch_14e

    if-nez v0, :cond_f3

    :try_start_d3
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_da

    goto :goto_f3

    .line 190
    :cond_da
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create assets directory "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v7    # "responseCode":I
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "fileHash":Ljava/lang/String;
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    throw v0
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f3} :catch_8d

    .line 192
    .restart local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v7    # "responseCode":I
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "fileHash":Ljava/lang/String;
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :cond_f3
    :goto_f3
    :try_start_f3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    const/16 v6, 0x1000

    invoke-direct {v0, v15, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v15, v0

    .line 193
    .local v15, "in":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_106} :catch_14e

    move-object/from16 v17, v5

    const/16 v5, 0x1000

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v17, "form":Lcom/google/appinventor/components/runtime/Form;
    :try_start_10a
    invoke-direct {v0, v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_14a

    move-object v5, v0

    .line 196
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :goto_10e
    :try_start_10e
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 197
    .local v0, "b":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_11f

    .line 198
    nop

    .line 202
    .end local v0    # "b":I
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_119} :catch_127
    .catchall {:try_start_10e .. :try_end_119} :catchall_123

    .line 207
    :try_start_119
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_160

    .line 208
    move/from16 v16, v7

    goto :goto_136

    .line 200
    .restart local v0    # "b":I
    :cond_11f
    :try_start_11f
    invoke-virtual {v5, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_127
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    .line 201
    .end local v0    # "b":I
    goto :goto_10e

    .line 207
    :catchall_123
    move-exception v0

    move/from16 v16, v7

    goto :goto_141

    .line 203
    :catch_127
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    :try_start_128
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;
    :try_end_12a
    .catchall {:try_start_128 .. :try_end_12a} :catchall_13e

    move/from16 v16, v7

    .end local v7    # "responseCode":I
    .local v16, "responseCode":I
    :try_start_12c
    const-string v7, "copying assets"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_12c .. :try_end_131} :catchall_13c

    .line 205
    const/4 v10, 0x1

    .line 207
    .end local v0    # "e":Ljava/io/IOException;
    :try_start_132
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 208
    nop

    .line 209
    :goto_136
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v13    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v14    # "parentOutFile":Ljava/io/File;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    move/from16 v7, v16

    goto :goto_157

    .line 207
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v13    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v14    # "parentOutFile":Ljava/io/File;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    :catchall_13c
    move-exception v0

    goto :goto_141

    .end local v16    # "responseCode":I
    .restart local v7    # "responseCode":I
    :catchall_13e
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "responseCode":I
    .restart local v16    # "responseCode":I
    :goto_141
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 208
    nop

    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "fileHash":Ljava/lang/String;
    .end local v16    # "responseCode":I
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    throw v0
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_146} :catch_146

    .line 216
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v10    # "error":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "connection":Ljava/net/HttpURLConnection;
    .end local v13    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v14    # "parentOutFile":Ljava/io/File;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "fileHash":Ljava/lang/String;
    .restart local v16    # "responseCode":I
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :catch_146
    move-exception v0

    move/from16 v7, v16

    goto :goto_18a

    .end local v16    # "responseCode":I
    .restart local v7    # "responseCode":I
    :catch_14a
    move-exception v0

    move/from16 v16, v7

    .end local v7    # "responseCode":I
    .restart local v16    # "responseCode":I
    goto :goto_18a

    .end local v16    # "responseCode":I
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v7    # "responseCode":I
    :catch_14e
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v16, v7

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v7    # "responseCode":I
    .restart local v16    # "responseCode":I
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    goto :goto_18a

    .line 211
    .end local v16    # "responseCode":I
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v7    # "responseCode":I
    .restart local v10    # "error":Z
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "connection":Ljava/net/HttpURLConnection;
    :cond_154
    move-object/from16 v17, v5

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    const/4 v10, 0x1

    .line 213
    :goto_157
    if-eqz v10, :cond_162

    .line 214
    add-int/lit8 v0, v4, 0x1

    :try_start_15b
    invoke-static {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15f} :catch_160

    return-object v0

    .line 216
    .end local v10    # "error":Z
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "connection":Ljava/net/HttpURLConnection;
    :catch_160
    move-exception v0

    goto :goto_18a

    .line 220
    :cond_162
    nop

    .line 222
    const/16 v0, 0xc8

    if-ne v7, v0, :cond_185

    .line 223
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 224
    .local v0, "timeStamp":Ljava/util/Date;
    new-instance v5, Lcom/google/appinventor/components/runtime/util/HashFile;

    invoke-direct {v5, v3, v9, v0}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 225
    .local v5, "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v3}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v6

    if-nez v6, :cond_17f

    .line 226
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V

    goto :goto_184

    .line 228
    :cond_17f
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I

    .line 230
    :goto_184
    return-object v8

    .line 232
    .end local v0    # "timeStamp":Ljava/util/Date;
    .end local v5    # "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_185
    const/4 v5, 0x0

    return-object v5

    .line 216
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    :catch_187
    move-exception v0

    move-object/from16 v17, v5

    .line 217
    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    :goto_18a
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while fetching "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    add-int/lit8 v5, v4, 0x1

    invoke-static {v1, v2, v3, v5}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    return-object v5
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .registers 9
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadExtensions called jsonString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_18
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 117
    .local v1, "form":Lcom/google/appinventor/components/runtime/ReplForm;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_37

    .line 120
    const-string v4, "loadExtensions: No Extensions"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    .line 122
    return-void

    .line 124
    :cond_37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_38
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6a

    .line 125
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "extensionName":Ljava/lang/String;
    if-eqz v4, :cond_62

    .line 127
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadExtensions, extensionName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "extensionName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 130
    .restart local v4    # "extensionName":Ljava/lang/String;
    :cond_62
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v6, "extensionName was null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_69} :catch_7a

    .line 131
    return-void

    .line 135
    .end local v0    # "i":I
    .end local v4    # "extensionName":Ljava/lang/String;
    :cond_6a
    :try_start_6a
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 136
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_70} :catch_71
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_70} :catch_7a

    .line 139
    goto :goto_79

    .line 137
    :catch_71
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    :try_start_72
    sget-object v4, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error in form.loadComponents"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_79} :catch_7a

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_79
    goto :goto_82

    .line 140
    :catch_7a
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "JSON Exception parsing extension string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_82
    return-void
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "inputUri"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    invoke-direct {v1, p1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    return-void
.end method

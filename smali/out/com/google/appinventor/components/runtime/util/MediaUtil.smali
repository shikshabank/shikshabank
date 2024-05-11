.class public Lcom/google/appinventor/components/runtime/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;,
        Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaUtil"

.field private static pathCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smdecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smopenMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    .line 222
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private static cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 399
    .local v1, "tempFile":Ljava/io/File;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 400
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temp file..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 402
    nop

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished copying media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_5a
    return-object v1
.end method

.method public static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 364
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;
    .registers 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    .line 370
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 372
    .local v1, "file":Ljava/io/File;
    :try_start_5
    const-string v2, "AI_Media_"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_1e
    .catchall {:try_start_5 .. :try_end_17} :catchall_1c

    .line 375
    nop

    .line 390
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 375
    return-object v1

    .line 390
    :catchall_1c
    move-exception v2

    goto :goto_68

    .line 377
    :catch_1e
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Could not copy media "

    const-string v4, "MediaUtil"

    if-eqz v1, :cond_4c

    .line 379
    nop

    .line 380
    :try_start_26
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to temp file "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_66

    .line 383
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to temp file."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_66
    nop

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "mediaPath":Ljava/lang/String;
    .end local p2    # "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    throw v2
    :try_end_68
    .catchall {:try_start_26 .. :try_end_68} :catchall_1c

    .line 390
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "mediaPath":Ljava/lang/String;
    .restart local p2    # "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    :goto_68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 391
    throw v2
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 615
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 112
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6d

    .line 115
    :cond_13
    const-string v0, "content://contacts/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 116
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 118
    :cond_1e
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 119
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 120
    :cond_29
    const-string v0, "/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 121
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->PRIVATE_DATA:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 125
    :cond_34
    :try_start_34
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "url":Ljava/net/URL;
    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 128
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 129
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v1

    .line 131
    :cond_50
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v1

    .line 134
    :cond_53
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->URL:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    :try_end_55
    .catch Ljava/net/MalformedURLException; {:try_start_34 .. :try_end_55} :catch_56

    return-object v1

    .line 136
    .end local v0    # "url":Ljava/net/URL;
    :catch_56
    move-exception v0

    .line 140
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_6a

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isAssetsLoaded()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 142
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 144
    :cond_67
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 147
    :cond_6a
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ASSET:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0

    .line 113
    :cond_6d
    :goto_6d
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    return-object v0
.end method

.method static fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const-string v0, "Unable to determine file path of file url "

    :try_start_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_14} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    return-object v0

    .line 84
    :catch_15
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2d
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 227
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "newPath":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 229
    const/4 v1, 0x0

    return-object v1

    .line 231
    :cond_10
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v0    # "newPath":Ljava/lang/String;
    :cond_15
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil;->pathCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static findCaseinsensitivePathWithoutCache(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "mediaPathlist":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 248
    .local v1, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1d

    .line 249
    aget-object v3, v0, v2

    .line 250
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 251
    return-object v3

    .line 248
    .end local v3    # "temp":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 254
    .end local v2    # "i":I
    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 698
    :catch_9
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 703
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    .line 701
    :cond_19
    throw v0
.end method

.method private static getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 269
    :catch_9
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->findCaseinsensitivePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 272
    :cond_19
    throw v0
.end method

.method public static getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_43

    .line 433
    :cond_9
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 434
    .local v0, "syncer":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Landroid/graphics/drawable/BitmapDrawable;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 444
    .local v1, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 445
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 446
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 447
    .local v2, "result":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v2, :cond_42

    .line 448
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getError()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "error":Ljava/lang/String;
    const-string v4, "PERMISSION_DENIED:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 450
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_3c
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v3    # "error":Ljava/lang/String;
    :cond_42
    return-object v2

    .line 431
    .end local v0    # "syncer":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v1    # "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v2    # "result":Landroid/graphics/drawable/BitmapDrawable;
    :cond_43
    :goto_43
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 14
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 489
    .local p4, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1d

    .line 494
    :cond_9
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 496
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    new-instance v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V

    .line 608
    .local v1, "loadImage":Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 609
    return-void

    .line 490
    .end local v0    # "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .end local v1    # "loadImage":Ljava/lang/Runnable;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public static getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p2, "continuation":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/BitmapDrawable;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 472
    return-void
.end method

.method private static getBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .registers 14
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .line 646
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 647
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 648
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 649
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 650
    .local v1, "imageWidth":I
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 653
    .local v2, "imageHeight":I
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 654
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 664
    .local v3, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getCompatibilityMode()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 665
    const/16 v4, 0x2d0

    .line 666
    .local v4, "maxWidth":I
    const/16 v5, 0x348

    .local v5, "maxHeight":I
    goto :goto_3d

    .line 668
    .end local v4    # "maxWidth":I
    .end local v5    # "maxHeight":I
    :cond_27
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 669
    .restart local v4    # "maxWidth":I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 672
    .restart local v5    # "maxHeight":I
    :goto_3d
    const/4 v6, 0x1

    .line 673
    .local v6, "sampleSize":I
    :goto_3e
    div-int v7, v1, v6

    if-le v7, v4, :cond_49

    div-int v7, v2, v6

    if-le v7, v5, :cond_49

    .line 674
    mul-int/lit8 v6, v6, 0x2

    goto :goto_3e

    .line 676
    :cond_49
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v0, v7

    .line 677
    nop

    .line 679
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmapOptions: sampleSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mediaPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " maxWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " maxHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " display width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " display height = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 677
    const-string v8, "MediaUtil"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 681
    return-object v0
.end method

.method public static isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPath"    # Ljava/lang/String;

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_8

    .line 216
    return v1

    .line 218
    :cond_8
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 219
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    const/4 v1, 0x1

    .line 218
    :cond_21
    return v1
.end method

.method public static isExternalFile(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "MediaUtil"

    const-string v2, "Calling deprecated version of isExternalFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 202
    const-string v0, "/sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 201
    :goto_30
    return v0
.end method

.method public static isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaPath"    # Ljava/lang/String;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_8

    .line 180
    return v1

    .line 182
    :cond_8
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 183
    const-string v0, "file:///sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    .line 182
    :cond_2e
    return v1
.end method

.method public static isExternalFileUrl(Ljava/lang/String;)Z
    .registers 4
    .param p0, "mediaPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "MediaUtil"

    const-string v2, "Calling deprecated version of isExternalFileUrl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 166
    const-string v0, "file:///sdcard/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, 0x1

    .line 165
    :goto_39
    return v0
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 11
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 773
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    const/16 v3, 0x21

    const-string v4, "."

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_c2

    .line 825
    :pswitch_18
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load audio or video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 823
    :pswitch_35
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load audio or video for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :pswitch_52
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 820
    return-void

    .line 815
    :pswitch_5a
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 816
    return-void

    .line 803
    :pswitch_5e
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 804
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 805
    :cond_6a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6f

    .line 806
    goto :goto_70

    :cond_6f
    move-object v2, v5

    .line 805
    :goto_70
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 808
    :cond_73
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 809
    return-void

    .line 795
    :pswitch_7b
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 796
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_86

    .line 797
    goto :goto_87

    :cond_86
    move-object v2, v5

    .line 796
    :goto_87
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 799
    :cond_8a
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 800
    return-void

    .line 788
    :pswitch_8e
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 789
    invoke-virtual {p1, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 791
    :cond_97
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 792
    return-void

    .line 775
    :pswitch_a3
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 777
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_a7
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 778
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 779
    .local v4, "offset":J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 780
    .local v6, "length":J
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_b7
    .catchall {:try_start_a7 .. :try_end_b7} :catchall_bc

    .line 782
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "offset":J
    .end local v6    # "length":J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_bc
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 783
    throw v2

    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_18
        :pswitch_8e
        :pswitch_7b
        :pswitch_5e
        :pswitch_5a
        :pswitch_52
        :pswitch_35
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)I
    .registers 11
    .param p0, "soundPool"    # Landroid/media/SoundPool;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 723
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    const/16 v3, 0x21

    const-string v4, "."

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_b2

    .line 757
    :pswitch_19
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :pswitch_36
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load audio for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :pswitch_53
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 751
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 741
    .end local v1    # "tempFile":Ljava/io/File;
    :pswitch_60
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 742
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 743
    :cond_6c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_71

    .line 744
    goto :goto_72

    :cond_71
    move-object v2, v5

    .line 743
    :goto_72
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 746
    :cond_75
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 734
    :pswitch_7e
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 735
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_89

    .line 736
    goto :goto_8a

    :cond_89
    move-object v2, v5

    .line 735
    :goto_8a
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 738
    :cond_8d
    invoke-virtual {p0, p2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 728
    :pswitch_92
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 729
    invoke-virtual {p1, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 731
    :cond_9b
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 725
    :pswitch_a8
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseAfd(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_19
        :pswitch_92
        :pswitch_7e
        :pswitch_60
        :pswitch_53
        :pswitch_53
        :pswitch_36
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .registers 10
    .param p0, "videoView"    # Landroid/widget/VideoView;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 844
    .local v0, "mediaSource":Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    const/16 v3, 0x21

    const-string v4, "."

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_ac

    .line 882
    :pswitch_18
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :pswitch_35
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load video for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :pswitch_52
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 877
    return-void

    .line 867
    :pswitch_5a
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 868
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 869
    :cond_66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6b

    .line 870
    goto :goto_6c

    :cond_6b
    move-object v2, v5

    .line 869
    :goto_6c
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 872
    :cond_6f
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 873
    return-void

    .line 859
    :pswitch_77
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 860
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_82

    .line 861
    goto :goto_83

    :cond_82
    move-object v2, v5

    .line 860
    :goto_83
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 863
    :cond_86
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 864
    return-void

    .line 852
    :pswitch_8a
    invoke-static {p1, p2, v6}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 853
    invoke-virtual {p1, v5}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 855
    :cond_93
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 856
    return-void

    .line 847
    :pswitch_9f
    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->cacheMediaTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 848
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 849
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_18
        :pswitch_8a
        :pswitch_77
        :pswitch_5a
        :pswitch_9f
        :pswitch_52
        :pswitch_35
    .end packed-switch
.end method

.method public static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->determineMediaSource(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "mediaPath"    # Ljava/lang/String;
    .param p2, "mediaSource"    # Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$3;->$SwitchMap$com$google$appinventor$components$runtime$util$MediaUtil$MediaSource:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "."

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_110

    .line 347
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_2d
    const/4 v0, 0x0

    .line 334
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_43

    .line 335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 336
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 335
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4f

    .line 338
    :cond_43
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 339
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 338
    invoke-static {v2, v3}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 341
    :goto_4f
    if-eqz v0, :cond_52

    .line 342
    return-object v0

    .line 345
    :cond_52
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open contact photo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .end local v0    # "is":Ljava/io/InputStream;
    :pswitch_6f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 321
    :pswitch_7c
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 322
    invoke-static {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 323
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 326
    :cond_8b
    :pswitch_8b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_95
    invoke-static {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 295
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 298
    :cond_9e
    :try_start_9e
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b0} :catch_b1

    return-object v0

    .line 299
    :catch_b1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v4, 0x9

    if-ge v1, v4, :cond_e8

    .line 305
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in REPL_ASSET Fetching: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MediaUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->throwIOException(Ljava/lang/Throwable;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_d9
    invoke-static {p0, p1, v3}, Lcom/google/appinventor/components/runtime/util/RUtil;->needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 316
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 318
    :cond_e2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 309
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_e8
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_ee
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 283
    :pswitch_f4
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 284
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 285
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_10b
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetsIgnoreCaseInputStream(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_ee
        :pswitch_95
        :pswitch_d9
        :pswitch_7c
        :pswitch_8b
        :pswitch_6f
        :pswitch_2d
    .end packed-switch
.end method

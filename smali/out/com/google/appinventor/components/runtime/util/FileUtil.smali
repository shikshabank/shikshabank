.class public Lcom/google/appinventor/components/runtime/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    }
.end annotation


# static fields
.field private static final DIRECTORY_DOWNLOADS:Ljava/lang/String; = "Downloads"

.field private static final DIRECTORY_PICTURES:Ljava/lang/String; = "Pictures"

.field private static final DIRECTORY_RECORDINGS:Ljava/lang/String; = "Recordings"

.field private static final DOCUMENT_DIRECTORY:Ljava/lang/String; = "My Documents/"

.field private static final FILENAME_PREFIX:Ljava/lang/String; = "app_inventor_"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MIN_SDK_FOR_APP_SPECIFIC_DIRS:I = 0x1d


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static checkExternalStorageWriteable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 773
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 775
    return-void

    .line 777
    :cond_d
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 778
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    const/16 v2, 0x2c0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;-><init>(I)V

    throw v1

    .line 780
    :cond_1d
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    const/16 v2, 0x2c1

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;-><init>(I)V

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v0

    .line 436
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    .line 440
    :goto_e
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 441
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 442
    nop

    .line 446
    .end local v0    # "b":I
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 447
    return-void

    .line 444
    .restart local v0    # "b":I
    :cond_1a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 445
    .end local v0    # "b":I
    goto :goto_e
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "inputFileName"    # Ljava/lang/String;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "in":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 363
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 361
    return-object v1

    .line 363
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 364
    throw v1
.end method

.method public static copyFile(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z
    .registers 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "src"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p2, "dest"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3a

    .line 378
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v3, :cond_3a

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v3, :cond_3a

    .line 381
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_5e

    .line 384
    :cond_3a
    const/4 v0, 0x0

    .line 385
    .local v0, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 387
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_3c
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 388
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v3, v4

    .line 389
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 391
    .local v4, "buffer":[B
    :goto_4a
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-lez v5, :cond_55

    .line 392
    invoke-virtual {v3, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_5f

    goto :goto_4a

    .line 395
    .end local v4    # "buffer":[B
    .end local v6    # "read":I
    :cond_55
    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 396
    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 397
    nop

    .line 399
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :goto_5e
    return v2

    .line 395
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_5f
    move-exception v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 396
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 397
    goto :goto_6a

    :goto_69
    throw v1

    :goto_6a
    goto :goto_69
.end method

.method public static downloadUrlToFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 328
    .local v0, "in":Ljava/io/InputStream;
    :try_start_9
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 330
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 328
    return-object v1

    .line 330
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 331
    throw v1
.end method

.method private static getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 1364
    const-string v0, "DCIM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1d

    const-string v2, "external"

    if-nez v0, :cond_7f

    const-string v0, "Pictures"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "Screenshots"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_7f

    .line 1369
    :cond_1d
    const-string v0, "Videos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    const-string v0, "Movies"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_73

    .line 1374
    :cond_2e
    const-string v0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "Music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_67

    .line 1379
    :cond_3f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5a

    .line 1380
    const-string v0, "Download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "Downloads"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1381
    :cond_55
    invoke-static {v2}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1382
    :cond_5a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_65

    .line 1383
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1385
    :cond_65
    const/4 v0, 0x0

    return-object v0

    .line 1375
    :cond_67
    :goto_67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_70

    .line 1376
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1378
    :cond_70
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 1370
    :cond_73
    :goto_73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7c

    .line 1371
    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1373
    :cond_7c
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 1365
    :cond_7f
    :goto_7f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_88

    .line 1366
    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1368
    :cond_88
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 583
    const-string v0, "Downloads"

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function getDownloadFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_21

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 681
    :cond_21
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "uri":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 683
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 685
    :cond_32
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 686
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 688
    :cond_3d
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v1
.end method

.method public static getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public static getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)Ljava/io/File;
    .registers 11
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p3, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p4, "mkdirs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .line 755
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object v0

    .line 756
    .local v0, "file":Ljava/io/File;
    if-eqz p4, :cond_38

    .line 758
    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-eq p3, v1, :cond_38

    .line 759
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 760
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_38

    .line 761
    :cond_1b
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    .end local v1    # "directory":Ljava/io/File;
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;ZZ)Ljava/io/File;
    .registers 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mkdirs"    # Z
    .param p3, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 709
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 710
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 711
    .local v1, "directory":Ljava/io/File;
    if-eqz p2, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_34

    .line 712
    :cond_17
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 714
    :cond_34
    :goto_34
    if-eqz p3, :cond_60

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_60

    .line 715
    :cond_43
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot overwrite existing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 717
    :cond_60
    :goto_60
    return-object v0
.end method

.method public static getExternalFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 599
    nop

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Documents/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/app_inventor_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 602
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 603
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_5e

    .line 604
    :cond_41
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public static getFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "localFileName"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;
    .registers 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 1035
    if-eqz p1, :cond_63

    .line 1037
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x0

    if-nez v0, :cond_25

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_25

    .line 1059
    :cond_14
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_62

    .line 1060
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path cannot be relative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_25
    :goto_25
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1041
    :cond_3e
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1042
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_51

    .line 1047
    return-object v2

    .line 1048
    :cond_51
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p2, v0, :cond_58

    .line 1049
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    return-object v0

    .line 1050
    :cond_58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_61

    .line 1054
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object v0

    .line 1056
    :cond_61
    return-object v2

    .line 1062
    :cond_62
    :goto_62
    return-object v2

    .line 1036
    :cond_63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 488
    const-string v0, "Pictures"

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPictureFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function getPictureFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordingFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 541
    const-string v0, "Recordings"

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordingFile(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getRecordingFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getScopedFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .line 625
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    .line 626
    .local v0, "scope":Lcom/google/appinventor/components/common/FileScope;
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_1c

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/My Documents/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "fullPath":Ljava/lang/String;
    goto :goto_23

    .line 631
    .end local v1    # "fullPath":Ljava/lang/String;
    :cond_1c
    move-object v1, p1

    .line 632
    .restart local v1    # "fullPath":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v2, :cond_23

    .line 635
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 638
    :cond_23
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/app_inventor_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "extension"    # Ljava/lang/String;

    .line 500
    const-string v0, "Pictures"

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    return-object v0
.end method

.method public static isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 993
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    .line 996
    const/4 v0, 0x0

    return v0

    .line 998
    :cond_8
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

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

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAssetUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 965
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 6
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 1010
    const-string v0, "file:///sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5a

    const-string v0, "file:///storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5a

    .line 1013
    :cond_12
    nop

    .line 1014
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1015
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_58

    :cond_56
    const/4 v1, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    nop

    .line 1013
    :goto_59
    return v1

    .line 1011
    :cond_5a
    :goto_5a
    return v1
.end method

.method public static isPrivateUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 980
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getPrivatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static listDirectory(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/util/List;
    .registers 20
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Lcom/google/appinventor/components/runtime/util/ScopedFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    move-object/from16 v1, p0

    const-string v0, "_display_name"

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_14a

    .line 1359
    new-instance v0, Ljava/io/IOException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported file scope: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1291
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_128

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1295
    .local v0, "manager":Landroid/content/res/AssetManager;
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1296
    .local v2, "files":[Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 1297
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1299
    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1315
    .end local v0    # "manager":Landroid/content/res/AssetManager;
    .end local v2    # "files":[Ljava/lang/String;
    :pswitch_4e
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, "dirname":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5f

    .line 1317
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1319
    :cond_5f
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 1320
    .local v6, "parts":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 1321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1323
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1324
    .local v13, "resolver":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    aget-object v7, v6, v14

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1325
    .local v7, "contentUri":Landroid/net/Uri;
    if-nez v7, :cond_90

    .line 1326
    const-string v8, "external"

    invoke-static {v8}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v15, v7

    goto :goto_91

    .line 1325
    :cond_90
    move-object v15, v7

    .line 1328
    .end local v7    # "contentUri":Landroid/net/Uri;
    .local v15, "contentUri":Landroid/net/Uri;
    :goto_91
    const/16 v16, 0x0

    .line 1330
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_93
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-ge v7, v12, :cond_9c

    .line 1331
    const-string v7, "_data"

    goto :goto_9e

    :cond_9c
    const-string v7, "relative_path"

    :goto_9e
    move-object v11, v7

    .line 1332
    .local v11, "dataColumnName":Ljava/lang/String;
    new-array v9, v4, [Ljava/lang/String;

    aput-object v0, v9, v14

    aput-object v11, v9, v5

    .line 1336
    .local v9, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v7, v13

    move-object v8, v15

    move-object v5, v11

    .end local v11    # "dataColumnName":Ljava/lang/String;
    .local v5, "dataColumnName":Ljava/lang/String;
    move-object v11, v4

    const/16 v4, 0x1d

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_b5
    .catchall {:try_start_93 .. :try_end_b5} :catchall_11f

    .line 1337
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_b5
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1338
    .local v0, "nameColumn":I
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1339
    .local v8, "pathColumn":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    invoke-static {v1, v14, v11}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1341
    .local v3, "rootPath":Ljava/lang/String;
    :goto_d8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_116

    .line 1342
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1343
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1345
    .local v12, "path":Ljava/lang/String;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v14, v4, :cond_f1

    .line 1346
    const-string v14, ""

    invoke-virtual {v12, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .local v14, "pathname":Ljava/lang/String;
    goto :goto_102

    .line 1348
    .end local v14    # "pathname":Ljava/lang/String;
    :cond_f1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1350
    .restart local v14    # "pathname":Ljava/lang/String;
    :goto_102
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_113

    .line 1351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_113
    .catchall {:try_start_b5 .. :try_end_113} :catchall_11d

    .line 1353
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "pathname":Ljava/lang/String;
    :cond_113
    const/16 v4, 0x1d

    goto :goto_d8

    .line 1354
    :cond_116
    nop

    .line 1356
    sget-object v4, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1354
    return-object v10

    .line 1356
    .end local v0    # "nameColumn":I
    .end local v3    # "rootPath":Ljava/lang/String;
    .end local v5    # "dataColumnName":Ljava/lang/String;
    .end local v8    # "pathColumn":I
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_11d
    move-exception v0

    goto :goto_122

    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_11f
    move-exception v0

    move-object/from16 v7, v16

    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :goto_122
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1357
    throw v0

    .line 1308
    .end local v2    # "dirname":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    .end local v15    # "contentUri":Landroid/net/Uri;
    :cond_128
    :pswitch_128
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 1309
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "files":[Ljava/lang/String;
    if-eqz v2, :cond_148

    .line 1311
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1313
    :cond_148
    const/4 v3, 0x0

    return-object v3

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_128
        :pswitch_4e
        :pswitch_30
        :pswitch_128
        :pswitch_128
        :pswitch_128
    .end packed-switch
.end method

.method public static moveFile(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z
    .registers 12
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "src"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p2, "dest"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_3a

    .line 1079
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v3, :cond_3a

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v3, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v3, :cond_3a

    .line 1082
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1083
    .local v0, "source":Ljava/nio/file/Path;
    invoke-virtual {p2, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v3

    .line 1084
    .local v3, "destination":Ljava/nio/file/Path;
    new-array v4, v2, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1085
    return v2

    .line 1088
    .end local v0    # "source":Ljava/nio/file/Path;
    .end local v3    # "destination":Ljava/nio/file/Path;
    :cond_3a
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 1090
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 1091
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1093
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_40
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 1094
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;

    move-result-object v5

    move-object v4, v5

    .line 1095
    :goto_4a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-lez v5, :cond_55

    .line 1096
    invoke-virtual {v4, v0, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_7c

    goto :goto_4a

    .line 1099
    :cond_55
    sget-object v5, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1100
    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1101
    nop

    .line 1102
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v5

    .line 1103
    .local v5, "original":Ljava/io/File;
    invoke-virtual {p2, p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v7

    .line 1104
    .local v7, "copy":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 1106
    return v2

    .line 1107
    :cond_6d
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1109
    return v1

    .line 1112
    :cond_74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to delete fresh file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    .end local v5    # "original":Ljava/io/File;
    .end local v6    # "read":I
    .end local v7    # "copy":Ljava/io/File;
    :catchall_7c
    move-exception v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1100
    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1101
    goto :goto_87

    :goto_86
    throw v1

    :goto_87
    goto :goto_86
.end method

.method public static needsExternalStorage(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 949
    nop

    .line 950
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 848
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAssetUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 849
    return v1

    .line 850
    :cond_8
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isPrivateUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 851
    return v1

    .line 852
    :cond_f
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 854
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 856
    :cond_1d
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needsReadPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 869
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needsReadPermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z
    .registers 3
    .param p0, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 880
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 885
    const/4 v0, 0x0

    return v0

    .line 883
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z
    .registers 4
    .param p0, "scope"    # Lcom/google/appinventor/components/common/FileScope;

    .line 929
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 935
    return v1

    .line 933
    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static needsWritePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/lang/String;

    .line 898
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    .line 902
    const/4 v0, 0x0

    return v0

    .line 904
    :cond_8
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z
    .registers 2
    .param p0, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 917
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    return v0
.end method

.method public static openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .line 216
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, p1

    .line 217
    .local v0, "fileUri":Ljava/lang/String;
    :goto_1d
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsReadPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 218
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 220
    :cond_28
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 313
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->assertPermission(Ljava/lang/String;)V

    .line 315
    :cond_f
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static openFile(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function openFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function openFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openFile(Ljava/net/URI;)Ljava/io/FileInputStream;
    .registers 4
    .param p0, "fileUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/errors/PermissionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function openFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;
    .registers 13
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_130

    .line 1217
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported file scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :pswitch_2c
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getPrivatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1181
    :pswitch_43
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1175
    :pswitch_5a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_73

    .line 1176
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1177
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1176
    return-object v0

    .line 1179
    :cond_73
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1173
    :pswitch_88
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1189
    :pswitch_91
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1190
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "targetUri":Landroid/net/Uri;
    goto :goto_f0

    .line 1192
    .end local v0    # "targetUri":Landroid/net/Uri;
    :cond_a6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1194
    .local v3, "contentUri":Landroid/net/Uri;
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v6, v1

    const-string v4, "_display_name"

    const/4 v5, 0x1

    aput-object v4, v6, v5

    .line 1198
    .local v6, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1200
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_c4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "_display_name = ?"

    new-array v8, v5, [Ljava/lang/String;

    aget-object v5, v0, v5

    aput-object v5, v8, v1

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v10, v1

    .line 1202
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1203
    .local v1, "idColumn":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 1204
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1205
    .local v4, "id":J
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2
    :try_end_e9
    .catchall {:try_start_c4 .. :try_end_e9} :catchall_116

    .line 1206
    .end local v4    # "id":J
    .local v2, "targetUri":Landroid/net/Uri;
    nop

    .line 1210
    .end local v1    # "idColumn":I
    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1211
    move-object v0, v2

    .line 1213
    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v0, "targetUri":Landroid/net/Uri;
    :goto_f0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1207
    .local v0, "parts":[Ljava/lang/String;
    .restart local v1    # "idColumn":I
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_f9
    :try_start_f9
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find shared file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parts":[Ljava/lang/String;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    throw v2
    :try_end_116
    .catchall {:try_start_f9 .. :try_end_116} :catchall_116

    .line 1210
    .end local v1    # "idColumn":I
    .restart local v0    # "parts":[Ljava/lang/String;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    :catchall_116
    move-exception v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1211
    throw v1

    .line 1183
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :pswitch_11d
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1184
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1183
    return-object v0

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_91
        :pswitch_88
        :pswitch_5a
        :pswitch_43
        :pswitch_2c
    .end packed-switch
.end method

.method public static openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;
    .registers 10
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ""

    packed-switch v0, :pswitch_data_142

    .line 1276
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported file scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :pswitch_2e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getPrivatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1241
    :pswitch_45
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1235
    :pswitch_5c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_75

    .line 1236
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1237
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1236
    return-object v0

    .line 1239
    :cond_75
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 1233
    :pswitch_88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Assets are read-only."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :pswitch_90
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1249
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 1250
    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening content URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 1253
    :cond_c9
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "/"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1254
    .local v2, "parts":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1255
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string v5, "_display_name"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v4, "mime_type"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v1, 0x0

    aget-object v4, v2, v1

    const-string v5, "relative_path"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1259
    .local v4, "contentUri":Landroid/net/Uri;
    if-eqz v4, :cond_113

    .line 1262
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1264
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_10b

    .line 1268
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 1269
    .local v5, "out":Ljava/io/OutputStream;
    if-eqz v5, :cond_103

    .line 1272
    return-object v5

    .line 1270
    :cond_103
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unable to open stream for writing"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1265
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_10b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to insert MediaStore entry for shared content"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1260
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_113
    new-instance v5, Ljava/io/IOException;

    aget-object v1, v2, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized shared folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1243
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "contentUri":Landroid/net/Uri;
    :pswitch_12e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1244
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1243
    return-object v0

    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_12e
        :pswitch_90
        :pswitch_88
        :pswitch_5c
        :pswitch_45
        :pswitch_2e
    .end packed-switch
.end method

.method public static readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "inputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_d
    const/4 v0, 0x0

    .line 152
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_e
    const-string v1, "/android_asset/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 154
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    goto :goto_38

    .line 156
    :cond_28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "inputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 163
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 165
    .end local v1    # "inputFile":Ljava/io/File;
    :goto_38
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_5c

    .line 167
    .local v1, "content":[B
    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 168
    nop

    .line 169
    return-object v1

    .line 161
    .local v1, "inputFile":Ljava/io/File;
    :cond_43
    :try_start_43
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "inputFileName":Ljava/lang/String;
    throw v2
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_5c

    .line 167
    .end local v1    # "inputFile":Ljava/io/File;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "inputFileName":Ljava/lang/String;
    :catchall_5c
    move-exception v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 168
    throw v1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .registers 4
    .param p0, "inputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v2, "Calling deprecated function readFile"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static removeDirectory(Ljava/io/File;Z)Z
    .registers 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "recursive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1133
    if-eqz p0, :cond_45

    .line 1136
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1140
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1141
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_13

    .line 1142
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 1143
    :cond_13
    const/4 v1, 0x0

    if-nez p1, :cond_1a

    array-length v2, v0

    if-lez v2, :cond_1a

    .line 1144
    return v1

    .line 1146
    :cond_1a
    const/4 v2, 0x1

    .line 1148
    .local v2, "success":Z
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_35

    aget-object v5, v0, v4

    .line 1149
    .local v5, "child":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1150
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->removeDirectory(Ljava/io/File;Z)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_32

    .line 1152
    :cond_2d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v2, v6

    .line 1148
    .end local v5    # "child":Ljava/io/File;
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1156
    :cond_35
    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1

    .line 1137
    .end local v0    # "files":[Ljava/io/File;
    .end local v2    # "success":Z
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1134
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public static resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;
    .registers 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 834
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;
    .registers 7
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "scope"    # Lcom/google/appinventor/components/common/FileScope;

    .line 796
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_1d

    .line 797
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "path":Ljava/io/File;
    goto/16 :goto_d2

    .line 798
    .end local v0    # "path":Ljava/io/File;
    :cond_1d
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 799
    return-object p1

    .line 800
    :cond_26
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    if-ne p2, v0, :cond_3d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3d

    .line 801
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto/16 :goto_d2

    .line 802
    .end local v0    # "path":Ljava/io/File;
    :cond_3d
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p2, v0, :cond_50

    .line 803
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto/16 :goto_d2

    .line 804
    .end local v0    # "path":Ljava/io/File;
    :cond_50
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    if-ne p2, v0, :cond_63

    .line 805
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto/16 :goto_d2

    .line 806
    .end local v0    # "path":Ljava/io/File;
    :cond_63
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    const/4 v2, 0x1

    const-string v3, "/"

    if-eq p2, v0, :cond_6c

    if-nez p2, :cond_81

    :cond_6c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 807
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;ZZ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto :goto_d2

    .line 808
    .end local v0    # "path":Ljava/io/File;
    :cond_81
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    if-ne p2, v0, :cond_93

    .line 809
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getPrivatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto :goto_d2

    .line 810
    .end local v0    # "path":Ljava/io/File;
    :cond_93
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-ne p2, v0, :cond_b6

    .line 811
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto :goto_d2

    .line 812
    .end local v0    # "path":Ljava/io/File;
    :cond_b6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 813
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getPrivatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "path":Ljava/io/File;
    goto :goto_d2

    .line 820
    .end local v0    # "path":Ljava/io/File;
    :cond_ca
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object v0

    .line 822
    .restart local v0    # "path":Ljava/io/File;
    :goto_d2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeFile([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 344
    .local v0, "in":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 346
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 344
    return-object v1

    .line 346
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 347
    throw v1
.end method

.method public static writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 415
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 417
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_11
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_23

    .line 422
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 423
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 420
    return-object v2

    .line 422
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 423
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 424
    throw v2
.end method

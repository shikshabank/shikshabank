.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 51
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2d} :catch_2f

    return-object v2

    .line 56
    :cond_2e
    return-object v0

    .line 58
    .end local v1    # "path":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 59
    .local v1, "e":Landroid/system/ErrnoException;
    return-object v0
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p4, "style"    # I

    .line 66
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 67
    return-object v1

    .line 69
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 70
    .local v0, "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, "resolver":Landroid/content/ContentResolver;
    nop

    .line 72
    :try_start_f
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_61

    .line 71
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    nop

    .line 73
    :try_start_1a
    invoke-direct {p0, v3}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 74
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_31

    .line 81
    :cond_27
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_53

    .line 82
    if-eqz v3, :cond_30

    :try_start_2d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_61

    :cond_30
    return-object v5

    .line 77
    :cond_31
    :goto_31
    :try_start_31
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_53

    .line 78
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3a
    invoke-super {p0, p1, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_47

    .line 79
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_53

    .line 82
    if-eqz v3, :cond_46

    :try_start_43
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_61

    :cond_46
    return-object v6

    .line 77
    :catchall_47
    move-exception v6

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :try_start_48
    throw v6
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 79
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_49
    move-exception v7

    :try_start_4a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v8

    :try_start_4f
    invoke-static {v6, v8}, Landroidx/core/graphics/TypefaceCompatApi21Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :goto_52
    throw v7
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 71
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_53
    move-exception v4

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :try_start_54
    throw v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    .line 82
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_55
    move-exception v5

    if-eqz v3, :cond_60

    :try_start_58
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v6

    :try_start_5d
    invoke-static {v4, v6}, Landroidx/core/graphics/TypefaceCompatApi21Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_60
    :goto_60
    throw v5
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61

    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_61
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    return-object v1
.end method

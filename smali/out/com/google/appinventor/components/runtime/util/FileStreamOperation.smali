.class public Lcom/google/appinventor/components/runtime/util/FileStreamOperation;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "FileStreamOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Closeable;",
        ">",
        "Lcom/google/appinventor/components/runtime/util/SingleFileOperation;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .registers 7
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p5, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p6, "async"    # Z

    .line 58
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V
    .registers 8
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p7, "async"    # Z

    .line 42
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 86
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IO error in file operation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    return-void
.end method

.method protected openFile()Ljava/io/Closeable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must implement FileOperation#openFile."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected process(Ljava/io/Closeable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    .local p1, "stream":Ljava/io/Closeable;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must implement FileOperation#process."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .registers 6
    .param p1, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 63
    .local p0, "this":Lcom/google/appinventor/components/runtime/util/FileStreamOperation;, "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<TT;>;"
    const/4 v0, 0x0

    .line 64
    .local v0, "stream":Ljava/io/Closeable;, "TT;"
    const/4 v1, 0x1

    .line 66
    .local v1, "shouldClose":Z
    :try_start_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->openFile()Ljava/io/Closeable;

    move-result-object v2

    move-object v0, v2

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->process(Ljava/io/Closeable;)Z

    move-result v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_1e
    .catchall {:try_start_2 .. :try_end_b} :catchall_1c

    move v1, v2

    .line 72
    if-eqz v1, :cond_28

    .line 73
    :goto_e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    goto :goto_28

    .line 72
    :catchall_1c
    move-exception v2

    goto :goto_29

    .line 68
    :catch_1e
    move-exception v2

    .line 69
    .local v2, "e":Ljava/io/IOException;
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->onError(Ljava/io/IOException;)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1c

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_28

    .line 73
    goto :goto_e

    .line 76
    :cond_28
    :goto_28
    return-void

    .line 72
    :goto_29
    if-eqz v1, :cond_38

    .line 73
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 75
    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

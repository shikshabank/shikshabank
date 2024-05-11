.class public Lcom/google/appinventor/components/runtime/util/RUtil;
.super Ljava/lang/Object;
.source "RUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z
    .registers 8
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileScope"    # Lcom/google/appinventor/components/common/FileScope;

    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_4c

    .line 24
    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 25
    return v1

    .line 27
    :cond_d
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "file:"

    if-nez v2, :cond_1e

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 28
    return v1

    .line 30
    :cond_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v2, v4, :cond_3d

    .line 31
    move-object v0, p1

    .line 32
    .local v0, "fpath":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 33
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 37
    .end local v0    # "fpath":Ljava/lang/String;
    :cond_3d
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 38
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    .line 37
    :goto_4b
    return v0

    .line 40
    :cond_4c
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x13

    packed-switch v2, :pswitch_data_70

    .line 48
    return v1

    .line 46
    :pswitch_5a
    return v0

    .line 44
    :pswitch_5b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v2

    if-eqz v2, :cond_66

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_66

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    return v0

    .line 42
    :pswitch_68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    return v0

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_68
        :pswitch_5b
        :pswitch_5a
    .end packed-switch
.end method

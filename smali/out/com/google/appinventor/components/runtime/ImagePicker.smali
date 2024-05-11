.class public Lcom/google/appinventor/components/runtime/ImagePicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ImagePicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A special-purpose button. When the user taps an image picker, the device\'s image gallery appears, and the user can choose an image. After an image is picked, it is saved, and the <code>Selected</code> property will be the name of the file where the image is stored. In order to not fill up storage, a maximum of 10 images will be stored.  Picking more images will delete previous images, in order from oldest to newest."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "picked_image"

.field private static final LOG_TAG:Ljava/lang/String; = "ImagePicker"

.field private static final imagePickerDirectoryName:Ljava/lang/String; = "/Pictures/_app_inventor_image_picker"

.field private static final maxSavedFiles:I = 0xa


# instance fields
.field private havePermission:Z

.field private selectionSavedImage:Ljava/lang/String;

.field private selectionURI:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/ImagePicker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 89
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    .line 90
    return-void
.end method

.method private copyToExternalStorageAndDeleteSource(Ljava/io/File;Ljava/lang/String;)V
    .registers 12
    .param p1, "source"    # Ljava/io/File;
    .param p2, "extension"    # Ljava/lang/String;

    .line 180
    const-string v0, "ImagePicker"

    const/4 v1, 0x0

    .line 182
    .local v1, "dest":Ljava/io/File;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Pictures/_app_inventor_image_picker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "fullDirname":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, "destDirectory":Ljava/io/File;
    :try_start_25
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 187
    const-string v4, "picked_image"

    invoke-static {v4, p2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v1, v4

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved file path is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Image was copied to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_6e} :catch_6f

    .line 208
    goto :goto_c3

    .line 201
    :catch_6f
    move-exception v4

    .line 202
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destination is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": error is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "err":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyFile failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v6, 0x641

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v8, "SaveImage"

    invoke-virtual {v0, p0, v8, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 212
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "err":Ljava/lang/String;
    :goto_c3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 213
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/google/appinventor/components/runtime/ImagePicker;->trimDirectory(ILjava/io/File;)V

    .line 214
    return-void
.end method

.method private saveSelectedImageToExternalStorage(Ljava/lang/String;)V
    .registers 10
    .param p1, "extension"    # Ljava/lang/String;

    .line 157
    const-string v0, "ImagePicker"

    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    .line 164
    .local v1, "tempFile":Ljava/io/File;
    :try_start_7
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionURI:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_33

    move-object v1, v2

    .line 170
    nop

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp file path is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->copyToExternalStorageAndDeleteSource(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    return-void

    .line 165
    :catch_33
    move-exception v2

    .line 166
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyMediaToTempFile failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const/16 v4, 0x642

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 168
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 167
    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private trimDirectory(ILjava/io/File;)V
    .registers 7
    .param p1, "maxSavedFiles"    # I
    .param p2, "directory"    # Ljava/io/File;

    .line 219
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Lcom/google/appinventor/components/runtime/ImagePicker$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ImagePicker$2;-><init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    array-length v1, v0

    sub-int/2addr v1, p1

    .line 228
    .local v1, "excess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_19

    .line 229
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 232
    .end local v2    # "i":I
    :cond_19
    return-void
.end method


# virtual methods
.method public Selection()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Path to the file containing the image that was selected."
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionSavedImage:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .registers 4

    .line 108
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->havePermission:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ImagePicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ImagePicker$1;-><init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 122
    return-void

    .line 124
    :cond_25
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    .line 125
    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .registers 4

    .line 103
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 136
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->requestCode:I

    if-ne p1, v0, :cond_6e

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6e

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, "selectedImage":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->selectionURI:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectionURI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagePicker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 143
    .local v1, "cR":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 144
    .local v3, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "extension":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extension = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/ImagePicker;->saveSelectedImageToExternalStorage(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImagePicker;->AfterPicking()V

    .line 152
    .end local v0    # "selectedImage":Landroid/net/Uri;
    .end local v1    # "cR":Landroid/content/ContentResolver;
    .end local v3    # "mime":Landroid/webkit/MimeTypeMap;
    .end local v4    # "extension":Ljava/lang/String;
    :cond_6e
    return-void
.end method

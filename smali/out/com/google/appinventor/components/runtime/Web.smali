.class public Lcom/google/appinventor/components/runtime/Web;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Web.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides functions for HTTP GET, POST, PUT, and DELETE requests."
    iconName = "images/web.png"
    nonVisible = true
    version = 0x9
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "json.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Web$CapturedProperties;,
        Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;,
        Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Web"

.field private static final mimeTypeToExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private allowCookies:Z

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final cookieHandler:Ljava/net/CookieHandler;

.field private dataSourceObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private haveReadPermission:Z

.field private haveWritePermission:Z

.field private lastTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

.field private responseFileName:Ljava/lang/String;

.field private responseTextEncoding:Ljava/lang/String;

.field private saveResponse:Z

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetallowCookies(Lcom/google/appinventor/components/runtime/Web;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcookieHandler(Lcom/google/appinventor/components/runtime/Web;)Ljava/net/CookieHandler;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestHeaders(Lcom/google/appinventor/components/runtime/Web;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresponseFileName(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveResponse(Lcom/google/appinventor/components/runtime/Web;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimeout(Lcom/google/appinventor/components/runtime/Web;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeturlString(Lcom/google/appinventor/components/runtime/Web;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhaveReadPermission(Lcom/google/appinventor/components/runtime/Web;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhaveWritePermission(Lcom/google/appinventor/components/runtime/Web;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smprocessRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .registers 1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 199
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    .line 200
    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "application/zip"

    const-string v2, "zip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "audio/mpeg"

    const-string v2, "mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "image/gif"

    const-string v2, "gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "image/png"

    const-string v2, "png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "image/tiff"

    const-string v2, "tiff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "text/plain"

    const-string v2, "txt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "text/html"

    const-string v2, "html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "text/xml"

    const-string v2, "xml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 218
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 220
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 222
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 227
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    .line 228
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    .line 236
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 240
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->dataSourceObservers:Ljava/util/HashSet;

    .line 244
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->responseTextEncoding:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 266
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 267
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 252
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 220
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 222
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 227
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    .line 228
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 240
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->dataSourceObservers:Ljava/util/HashSet;

    .line 244
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->responseTextEncoding:Ljava/lang/String;

    .line 253
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    .line 255
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_43

    .line 256
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->newCookieManager()Ljava/net/CookieHandler;

    move-result-object v0

    goto :goto_44

    .line 257
    :cond_43
    nop

    :goto_44
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    .line 258
    return-void
.end method

.method private capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .registers 8
    .param p1, "functionName"    # Ljava/lang/String;

    .line 1613
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;-><init>(Lcom/google/appinventor/components/runtime/Web;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_1b
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v2

    .line 1617
    :catch_8
    move-exception v2

    .line 1618
    .local v2, "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, v2, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v3, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2a

    .line 1614
    .end local v2    # "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    :catch_1b
    move-exception v2

    .line 1615
    .local v2, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x455

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    aput-object v5, v1, v0

    invoke-virtual {v3, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1619
    .end local v2    # "e":Ljava/net/MalformedURLException;
    nop

    .line 1620
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
        }
    .end annotation

    .line 1532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 1539
    :cond_d
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1540
    .local v0, "indexOfSemicolon":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 1541
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1543
    :cond_1b
    sget-object v1, Lcom/google/appinventor/components/runtime/Web;->mimeTypeToExtension:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1544
    .local v1, "extension":Ljava/lang/String;
    if-nez v1, :cond_27

    .line 1545
    const-string v1, "tmp"

    .line 1547
    :cond_27
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getDownloadFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method static decodeJsonText(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "jsonText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 5
    .param p0, "jsonText"    # Ljava/lang/String;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1008
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1009
    :catch_5
    move-exception v0

    .line 1010
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonText is not a legal JSON value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 1520
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1523
    :catch_5
    move-exception v0

    .line 1525
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1521
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 1522
    .local v0, "e":Ljava/net/SocketTimeoutException;
    throw v0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "encodingProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 1458
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    .line 1461
    :cond_f
    move-object v0, p1

    goto :goto_13

    .line 1459
    :cond_11
    :goto_11
    const-string v0, "UTF-8"

    .line 1464
    :cond_13
    :goto_13
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1466
    .local v1, "reader":Ljava/io/InputStreamReader;
    :try_start_1c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 1467
    .local v2, "contentLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2e

    .line 1469
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2e
    nop

    .line 1470
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 1472
    .local v5, "buf":[C
    :goto_33
    invoke-virtual {v1, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    if-eq v6, v3, :cond_3f

    .line 1473
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 1475
    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_47

    .line 1477
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1475
    return-object v3

    .line 1477
    .end local v2    # "contentLength":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[C
    .end local v7    # "read":I
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1478
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method private static getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 1437
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "responseType":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    const-string v1, ""

    :goto_a
    return-object v1
.end method

.method private static openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 8
    .param p0, "webProps"    # Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .param p1, "httpVerb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassCastException;,
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1357
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1358
    iget v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1360
    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1363
    :cond_2a
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1367
    :cond_2d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1368
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1369
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1370
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_53

    .line 1372
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_63
    goto :goto_37

    .line 1375
    :cond_64
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    if-eqz v1, :cond_9f

    .line 1376
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->cookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1377
    .local v2, "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1378
    .restart local v3    # "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1379
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_8e

    .line 1381
    .end local v2    # "cookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "name":Ljava/lang/String;
    :cond_9e
    goto :goto_72

    .line 1384
    :cond_9f
    return-object v0
.end method

.method private performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "webProps"    # Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .param p2, "postData"    # [B
    .param p3, "postFile"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;

    .line 1194
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1197
    .local v10, "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_23

    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v12}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsReadPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    if-nez v0, :cond_23

    .line 1198
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    :cond_23
    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v0, :cond_46

    .line 1203
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    iget-object v2, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1204
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    .line 1203
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "target":Ljava/lang/String;
    iget-object v1, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-boolean v1, v13, Lcom/google/appinventor/components/runtime/Web;->haveWritePermission:Z

    if-nez v1, :cond_46

    .line 1206
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1211
    .end local v0    # "target":Ljava/lang/String;
    :cond_46
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_7d

    iget-boolean v0, v13, Lcom/google/appinventor/components/runtime/Web;->haveReadPermission:Z

    if-nez v0, :cond_7d

    .line 1212
    move-object/from16 v7, p0

    .line 1213
    .local v7, "me":Lcom/google/appinventor/components/runtime/Web;
    iget-object v0, v13, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v8, Lcom/google/appinventor/components/runtime/Web$7;

    new-array v1, v9, [Ljava/lang/String;

    .line 1214
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object v6, v10

    move-object v9, v8

    move-object/from16 v8, p1

    move-object v13, v9

    move-object/from16 v9, p2

    move-object/from16 v16, v10

    .end local v10    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/google/appinventor/components/runtime/Web$7;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, v13}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 1233
    return-void

    .line 1211
    .end local v7    # "me":Lcom/google/appinventor/components/runtime/Web;
    .end local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7d
    move-object/from16 v16, v10

    .line 1238
    .end local v10    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v12, p4

    :try_start_81
    invoke-static {v14, v12}, Lcom/google/appinventor/components/runtime/Web;->openConnection(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_85
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_81 .. :try_end_85} :catch_1e6
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_81 .. :try_end_85} :catch_1d4
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_81 .. :try_end_85} :catch_1c1
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_81 .. :try_end_85} :catch_1ac
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_12e

    move-object v13, v0

    .line 1239
    .local v13, "connection":Ljava/net/HttpURLConnection;
    if-eqz v13, :cond_128

    .line 1241
    if-eqz v15, :cond_9e

    .line 1242
    :try_start_8a
    invoke-static {v13, v15}, Lcom/google/appinventor/components/runtime/Web;->writeRequestData(Ljava/net/HttpURLConnection;[B)V
    :try_end_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_8a .. :try_end_8d} :catch_98
    .catchall {:try_start_8a .. :try_end_8d} :catchall_92

    move-object/from16 v8, p0

    move-object/from16 v10, p3

    goto :goto_aa

    .line 1299
    :catchall_92
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_115

    .line 1289
    :catch_98
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_104

    .line 1243
    :cond_9e
    move-object/from16 v10, p3

    if-eqz v10, :cond_a8

    .line 1244
    move-object/from16 v8, p0

    :try_start_a4
    invoke-direct {v8, v13, v10}, Lcom/google/appinventor/components/runtime/Web;->writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    goto :goto_aa

    .line 1243
    :cond_a8
    move-object/from16 v8, p0

    .line 1248
    :goto_aa
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 1249
    .local v4, "responseCode":I
    invoke-static {v13}, Lcom/google/appinventor/components/runtime/Web;->getResponseType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "responseType":Ljava/lang/String;
    invoke-direct {v8, v13}, Lcom/google/appinventor/components/runtime/Web;->processResponseCookies(Ljava/net/HttpURLConnection;)V

    .line 1252
    iget-boolean v1, v8, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    if-eqz v1, :cond_d3

    .line 1253
    iget-object v1, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->responseFileName:Ljava/lang/String;

    invoke-direct {v8, v13, v1, v0}, Lcom/google/appinventor/components/runtime/Web;->saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, "path":Ljava/lang/String;
    iget-object v7, v8, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/Web$8;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v9, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web$8;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1263
    .end local v6    # "path":Ljava/lang/String;
    move-object v11, v8

    const/4 v4, 0x0

    goto :goto_f7

    .line 1264
    :cond_d3
    iget-object v1, v8, Lcom/google/appinventor/components/runtime/Web;->responseTextEncoding:Ljava/lang/String;

    invoke-static {v13, v1}, Lcom/google/appinventor/components/runtime/Web;->getResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    .local v1, "responseContent":Ljava/lang/String;
    iget-object v2, v8, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$9;
    :try_end_dd
    .catch Ljava/net/SocketTimeoutException; {:try_start_a4 .. :try_end_dd} :catch_101
    .catchall {:try_start_a4 .. :try_end_dd} :catchall_fd

    move-object v5, v3

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v9, v8

    move v8, v4

    move/from16 v17, v4

    move-object v11, v9

    const/4 v4, 0x0

    .end local v4    # "responseCode":I
    .local v17, "responseCode":I
    move-object v9, v0

    move-object v10, v1

    :try_start_ea
    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/Web$9;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1279
    invoke-direct {v11, v1, v0}, Lcom/google/appinventor/components/runtime/Web;->updateColumns(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    const/4 v2, 0x0

    invoke-virtual {v11, v2, v2}, Lcom/google/appinventor/components/runtime/Web;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    :try_end_f7
    .catch Ljava/net/SocketTimeoutException; {:try_start_ea .. :try_end_f7} :catch_fb
    .catchall {:try_start_ea .. :try_end_f7} :catchall_114

    .line 1299
    .end local v0    # "responseType":Ljava/lang/String;
    .end local v1    # "responseContent":Ljava/lang/String;
    .end local v17    # "responseCode":I
    :goto_f7
    :try_start_f7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_fa
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_f7 .. :try_end_fa} :catch_125
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_f7 .. :try_end_fa} :catch_122
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_f7 .. :try_end_fa} :catch_11f
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_f7 .. :try_end_fa} :catch_11c
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_11a

    .line 1300
    goto :goto_12a

    .line 1289
    :catch_fb
    move-exception v0

    goto :goto_104

    .line 1299
    :catchall_fd
    move-exception v0

    move-object v11, v8

    const/4 v4, 0x0

    goto :goto_115

    .line 1289
    :catch_101
    move-exception v0

    move-object v11, v8

    const/4 v4, 0x0

    .line 1291
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :goto_104
    :try_start_104
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Web;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Web$10;

    invoke-direct {v2, v11, v14}, Lcom/google/appinventor/components/runtime/Web$10;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1297
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;-><init>()V

    .end local v13    # "connection":Ljava/net/HttpURLConnection;
    .end local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .end local p2    # "postData":[B
    .end local p3    # "postFile":Ljava/lang/String;
    .end local p4    # "httpVerb":Ljava/lang/String;
    .end local p5    # "method":Ljava/lang/String;
    throw v1
    :try_end_114
    .catchall {:try_start_104 .. :try_end_114} :catchall_114

    .line 1299
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .restart local v13    # "connection":Ljava/net/HttpURLConnection;
    .restart local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .restart local p2    # "postData":[B
    .restart local p3    # "postFile":Ljava/lang/String;
    .restart local p4    # "httpVerb":Ljava/lang/String;
    .restart local p5    # "method":Ljava/lang/String;
    :catchall_114
    move-exception v0

    :goto_115
    :try_start_115
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1300
    nop

    .end local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .end local p2    # "postData":[B
    .end local p3    # "postFile":Ljava/lang/String;
    .end local p4    # "httpVerb":Ljava/lang/String;
    .end local p5    # "method":Ljava/lang/String;
    throw v0
    :try_end_11a
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_115 .. :try_end_11a} :catch_125
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_115 .. :try_end_11a} :catch_122
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_115 .. :try_end_11a} :catch_11f
    .catch Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException; {:try_start_115 .. :try_end_11a} :catch_11c
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11a} :catch_11a

    .line 1312
    .end local v13    # "connection":Ljava/net/HttpURLConnection;
    .restart local v16    # "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    .restart local p2    # "postData":[B
    .restart local p3    # "postFile":Ljava/lang/String;
    .restart local p4    # "httpVerb":Ljava/lang/String;
    .restart local p5    # "method":Ljava/lang/String;
    :catch_11a
    move-exception v0

    goto :goto_132

    .line 1309
    :catch_11c
    move-exception v0

    goto/16 :goto_1b0

    .line 1307
    :catch_11f
    move-exception v0

    goto/16 :goto_1c4

    .line 1304
    :catch_122
    move-exception v0

    goto/16 :goto_1d8

    .line 1302
    :catch_125
    move-exception v0

    goto/16 :goto_1e9

    .line 1239
    .restart local v13    # "connection":Ljava/net/HttpURLConnection;
    :cond_128
    move-object/from16 v11, p0

    .line 1340
    .end local v13    # "connection":Ljava/net/HttpURLConnection;
    :goto_12a
    move-object/from16 v2, p5

    goto/16 :goto_1f1

    .line 1312
    :catch_12e
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v11, p0

    :goto_132
    move-object v1, v0

    .line 1316
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "Get"

    move-object/from16 v2, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 1317
    const/16 v0, 0x44d

    .line 1318
    .local v0, "message":I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v5, v3, v4

    .local v3, "args":[Ljava/lang/String;
    goto :goto_1a3

    .line 1319
    .end local v0    # "message":I
    .end local v3    # "args":[Ljava/lang/String;
    :cond_147
    const-string v0, "Delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 1320
    const/16 v0, 0x45a

    .line 1321
    .restart local v0    # "message":I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v5, v3, v4

    .restart local v3    # "args":[Ljava/lang/String;
    goto :goto_1a3

    .line 1322
    .end local v0    # "message":I
    .end local v3    # "args":[Ljava/lang/String;
    :cond_159
    const-string v0, "PostFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_198

    const-string v0, "PutFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_198

    const-string v0, "PatchFile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    goto :goto_198

    .line 1326
    :cond_173
    const/16 v5, 0x44f

    .line 1327
    .local v5, "message":I
    const-string v6, ""

    .line 1329
    .local v6, "content":Ljava/lang/String;
    if-eqz v15, :cond_18b

    .line 1331
    :try_start_179
    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, v15, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_180
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_179 .. :try_end_180} :catch_182

    move-object v6, v0

    .end local v6    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    goto :goto_18b

    .line 1333
    .end local v0    # "content":Ljava/lang/String;
    .restart local v6    # "content":Ljava/lang/String;
    :catch_182
    move-exception v0

    .line 1334
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v7, "Web"

    const-string v8, "UTF-8 is the default charset for Android but not available???"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    .line 1335
    .end local v0    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_18b
    :goto_18b
    nop

    .line 1336
    :goto_18c
    new-array v0, v3, [Ljava/lang/String;

    aput-object v6, v0, v4

    iget-object v3, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    move-object v3, v0

    move v0, v5

    .restart local v3    # "args":[Ljava/lang/String;
    goto :goto_1a3

    .line 1323
    .end local v3    # "args":[Ljava/lang/String;
    .end local v5    # "message":I
    .end local v6    # "content":Ljava/lang/String;
    :cond_198
    :goto_198
    const/16 v0, 0x450

    .line 1324
    .local v0, "message":I
    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    iget-object v4, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1338
    .restart local v3    # "args":[Ljava/lang/String;
    :goto_1a3
    iget-object v4, v11, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, v11, v2, v0, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1f1

    .line 1309
    .end local v0    # "message":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "args":[Ljava/lang/String;
    :catch_1ac
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v11, p0

    :goto_1b0
    move-object/from16 v2, p5

    .line 1310
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x45d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v14, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v1, v11, v2, v3, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/RequestTimeoutException;
    goto :goto_1f0

    .line 1307
    :catch_1c1
    move-exception v0

    move-object/from16 v11, p0

    :goto_1c4
    move-object/from16 v2, p5

    .line 1308
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v11, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    goto :goto_1f0

    .line 1304
    :catch_1d4
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v11, p0

    :goto_1d8
    move-object/from16 v2, p5

    .line 1305
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1306
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1305
    invoke-virtual {v1, v11, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    goto :goto_1f0

    .line 1302
    :catch_1e6
    move-exception v0

    move-object/from16 v11, p0

    :goto_1e9
    move-object/from16 v2, p5

    .line 1303
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v11, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 1340
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :goto_1f0
    nop

    .line 1341
    :goto_1f1
    return-void
.end method

.method private static processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;
    .registers 13
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
        }
    .end annotation

    .line 1557
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1558
    .local v0, "requestHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_71

    .line 1559
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 1561
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_67

    .line 1562
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1563
    .local v3, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d

    .line 1565
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1567
    .local v4, "fieldName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 1570
    .local v5, "fieldValues":Ljava/lang/Object;
    move-object v6, v4

    .line 1571
    .local v6, "key":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1576
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v8, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_4d

    .line 1578
    move-object v8, v5

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1579
    .local v8, "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_38
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4c

    .line 1580
    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v10

    .line 1581
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    .end local v10    # "value":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 1583
    .end local v8    # "multipleFieldsValues":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v9    # "j":I
    :cond_4c
    goto :goto_55

    .line 1585
    :cond_4d
    move-object v8, v5

    .line 1586
    .local v8, "singleFieldValue":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v8    # "singleFieldValue":Ljava/lang/Object;
    :goto_55
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldValues":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1595
    .end local v3    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    nop

    .line 1558
    .end local v2    # "item":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1592
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v3    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_5d
    new-instance v4, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v5, 0x457

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v4

    .line 1597
    .end local v3    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_67
    new-instance v3, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;

    const/16 v4, 0x456

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;-><init>(II)V

    throw v3

    .line 1601
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/lang/Object;
    :cond_71
    return-object v0
.end method

.method private processResponseCookies(Ljava/net/HttpURLConnection;)V
    .registers 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 1442
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_1d

    .line 1444
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1445
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_19} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .end local v0    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_1d

    .line 1448
    :catch_1a
    move-exception v0

    goto :goto_1d

    .line 1446
    :catch_1c
    move-exception v0

    .line 1452
    :cond_1d
    :goto_1d
    return-void
.end method

.method private requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "functionName"    # Ljava/lang/String;
    .param p4, "httpVerb"    # Ljava/lang/String;

    .line 785
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v7

    .line 786
    .local v7, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v7, :cond_7

    .line 788
    return-void

    .line 791
    :cond_7
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcom/google/appinventor/components/runtime/Web$6;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Web$6;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {v8, v9, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 812
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method

.method private saveResponseContent(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseFileName"    # Ljava/lang/String;
    .param p3, "responseType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-direct {p0, p2, p3}, Lcom/google/appinventor/components/runtime/Web;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1486
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1487
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_27

    .line 1488
    :cond_15
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v3, 0x83c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1489
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v2

    .line 1492
    :cond_27
    :goto_27
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1494
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_32
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_5e

    .line 1498
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :goto_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 1499
    .local v4, "b":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_54

    .line 1500
    nop

    .line 1504
    .end local v4    # "b":I
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_58

    .line 1506
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5e

    .line 1507
    nop

    .line 1509
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1510
    nop

    .line 1512
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1502
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "b":I
    :cond_54
    :try_start_54
    invoke-virtual {v3, v4}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 1503
    .end local v4    # "b":I
    goto :goto_3c

    .line 1506
    :catchall_58
    move-exception v4

    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 1507
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    .end local p2    # "responseFileName":Ljava/lang/String;
    .end local p3    # "responseType":Ljava/lang/String;
    throw v4
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_5e

    .line 1509
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "parent":Ljava/io/File;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    .restart local p2    # "responseFileName":Ljava/lang/String;
    .restart local p3    # "responseType":Ljava/lang/String;
    :catchall_5e
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1510
    goto :goto_64

    :goto_63
    throw v3

    :goto_64
    goto :goto_63
.end method

.method private updateColumns(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "responseContent"    # Ljava/lang/String;
    .param p2, "responseType"    # Ljava/lang/String;

    .line 1674
    const-string v0, "json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1677
    :try_start_8
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getColumnsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_10

    .line 1678
    :catch_f
    move-exception v0

    .line 1680
    :goto_10
    goto :goto_36

    .line 1681
    :cond_11
    const-string v0, "csv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "text/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1683
    :cond_21
    :try_start_21
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1684
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e

    .line 1688
    goto :goto_36

    .line 1685
    :catch_2e
    move-exception v0

    .line 1687
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1690
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    return-void
.end method

.method private static writeRequestData(Ljava/net/HttpURLConnection;[B)V
    .registers 5
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "postData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1395
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1396
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1398
    .local v0, "out":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    :try_start_12
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1399
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 1401
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1402
    nop

    .line 1403
    return-void

    .line 1401
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1402
    throw v1
.end method

.method private writeRequestFile(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1409
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1416
    .local v0, "in":Ljava/io/BufferedInputStream;
    const/4 v1, 0x1

    :try_start_c
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1417
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1418
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_3a

    .line 1421
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    .line 1422
    .local v2, "b":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 1423
    nop

    .line 1427
    .end local v2    # "b":I
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_34

    .line 1429
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3a

    .line 1430
    nop

    .line 1432
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1433
    nop

    .line 1434
    return-void

    .line 1425
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "b":I
    :cond_30
    :try_start_30
    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 1426
    .end local v2    # "b":I
    goto :goto_1c

    .line 1429
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1430
    nop

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    .end local p2    # "path":Ljava/lang/String;
    throw v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 1432
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    .restart local p2    # "path":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1433
    goto :goto_40

    :goto_3f
    throw v1

    :goto_40
    goto :goto_3f
.end method


# virtual methods
.method public AllowCookies(Z)V
    .registers 6
    .param p1, "allowCookies"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 362
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    .line 363
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v0, :cond_13

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AllowCookies"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 367
    :cond_13
    return-void
.end method

.method public AllowCookies()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the cookies from a response should be saved and used in subsequent requests. Cookies are only supported on Android version 2.3 or greater."
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->allowCookies:Z

    return v0
.end method

.method public BuildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 8
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 865
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 866
    :catch_5
    move-exception v0

    .line 867
    .local v0, "e":Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->errorNumber:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "BuildRequestData"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 868
    const-string v1, ""

    return-object v1
.end method

.method public ClearCookies()V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears all cookies for this Web component."
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_8

    .line 441
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->clearCookies(Ljava/net/CookieHandler;)Z

    goto :goto_13

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ClearCookies"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 446
    :goto_13
    return-void
.end method

.method public Delete()V
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 748
    const-string v0, "Delete"

    .line 750
    .local v0, "METHOD":Ljava/lang/String;
    const-string v1, "Delete"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 751
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 753
    return-void

    .line 756
    :cond_b
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$5;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Web$5;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 763
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public Get()V
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 461
    const-string v0, "Get"

    .line 463
    .local v0, "METHOD":Ljava/lang/String;
    const-string v1, "Get"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 464
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 466
    return-void

    .line 469
    :cond_b
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Web$1;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 476
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 841
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "GotFile"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 842
    return-void
.end method

.method public GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "responseContent"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 826
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const-string v1, "GotText"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 828
    return-void
.end method

.method public HtmlTextDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "htmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given HTML text value. HTML character entities such as `&`, `<`, `>`, `\'`, and `\"` are changed to &, <, >, \', and \". Entities such as &#xhhhh, and &#nnnn are changed to the appropriate characters."
    .end annotation

    .line 1161
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1162
    :catch_5
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x452

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "HtmlTextDecode"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1165
    const-string v1, ""

    return-object v1
.end method

.method public JsonObjectEncode(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "jsonObject"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 1040
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1041
    :catch_5
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x45e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "JsonObjectEncode"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1044
    const-string v1, ""

    return-object v1
.end method

.method public JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 969
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 970
    :catch_6
    move-exception v1

    .line 971
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x451

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const-string v0, "JsonTextDecode"

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 973
    const-string v0, ""

    return-object v0
.end method

.method public JsonTextDecodeWithDictionaries(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "jsonText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 988
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Web;->decodeJsonText(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 989
    :catch_6
    move-exception v1

    .line 990
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x451

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    const-string v4, "JsonTextDecodeWithDictionaries"

    invoke-virtual {v2, p0, v4, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 992
    const-string v0, ""

    return-object v0
.end method

.method public PatchFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 633
    const-string v0, "PatchFile"

    .line 635
    .local v0, "METHOD":Ljava/lang/String;
    const-string v1, "PatchFile"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 636
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 638
    return-void

    .line 641
    :cond_b
    new-instance v2, Lcom/google/appinventor/components/runtime/Web$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Web$3;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public PatchText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 586
    const-string v0, "UTF-8"

    const-string v1, "PatchText"

    const-string v2, "PATCH"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public PatchTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PATCH request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 612
    const-string v0, "PatchTextWithEncoding"

    const-string v1, "PATCH"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public PostFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and data from the specified file.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 547
    const-string v0, "PostFile"

    .line 549
    .local v0, "METHOD":Ljava/lang/String;
    const-string v1, "PostFile"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 550
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 552
    return-void

    .line 555
    :cond_b
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Web$2;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 562
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method public PostText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using UTF-8 encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 500
    const-string v0, "UTF-8"

    const-string v1, "PostText"

    const-string v2, "POST"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public PostTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP POST request using the Url property and the specified text.\nThe characters of the text are encoded using the given encoding.\nIf the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.\nIf the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 526
    const-string v0, "PostTextWithEncoding"

    const-string v1, "POST"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public PutFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and data from the specified file.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 717
    const-string v0, "PutFile"

    .line 719
    .local v0, "METHOD":Ljava/lang/String;
    const-string v1, "PutFile"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Web;->capturePropertyValues(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-result-object v1

    .line 720
    .local v1, "webProps":Lcom/google/appinventor/components/runtime/Web$CapturedProperties;
    if-nez v1, :cond_b

    .line 722
    return-void

    .line 725
    :cond_b
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/appinventor/components/runtime/Web$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Web$4;-><init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 732
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method

.method public PutText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using UTF-8 encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The responseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 670
    const-string v0, "UTF-8"

    const-string v1, "PutText"

    const-string v2, "PUT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public PutTextWithEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs an HTTP PUT request using the Url property and the specified text.<br>The characters of the text are encoded using the given encoding.<br>If the SaveResponse property is true, the response will be saved in a file and the GotFile event will be triggered. The ResponseFileName property can be used to specify the name of the file.<br>If the SaveResponse property is false, the GotText event will be triggered."
    .end annotation

    .line 696
    const-string v0, "PutTextWithEncoding"

    const-string v1, "PUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public RequestHeaders()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The request headers, as a list of two-element sublists. The first element of each sublist represents the request header field name. The second element of each sublist represents the request header field values, either a single value or a list containing multiple values."
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public RequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 8
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 335
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Web;->processRequestHeaders(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/Map;

    .line 336
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->requestHeaders:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_5
    .catch Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException; {:try_start_0 .. :try_end_5} :catch_6

    .line 339
    goto :goto_1c

    .line 337
    :catch_6
    move-exception v0

    .line 338
    .local v0, "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget v2, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "RequestHeaders"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 340
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
    :goto_1c
    return-void
.end method

.method public ResponseFileName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of the file where the response should be saved. If SaveResponse is true and ResponseFileName is empty, then a new file name will be generated."
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "responseFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 410
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseFileName:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public ResponseTextEncoding()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "User-specified character encoding for web response."
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->responseTextEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public ResponseTextEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->responseTextEncoding:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public SaveResponse(Z)V
    .registers 2
    .param p1, "saveResponse"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 385
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    .line 386
    return-void
.end method

.method public SaveResponse()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the response should be saved in a file."
    .end annotation

    .line 375
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Web;->saveResponse:Z

    return v0
.end method

.method public TimedOut(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 852
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "TimedOut"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 853
    return-void
.end method

.method public Timeout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of milliseconds that a web request will wait for a response before giving up. If set to 0, then there is no time limit on how long the request will wait."
    .end annotation

    .line 421
    iget v0, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    return v0
.end method

.method public Timeout(I)V
    .registers 4
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 432
    if-ltz p1, :cond_5

    .line 435
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web;->timeout:I

    .line 436
    return-void

    .line 433
    :cond_5
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    const-string v1, "Web Timeout must be a non-negative integer."

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public UriDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 936
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 937
    :catch_7
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const-string v1, ""

    return-object v1
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 916
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 917
    :catch_7
    move-exception v0

    .line 921
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Web"

    const-string v2, "UTF-8 is unsupported?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    const-string v1, ""

    return-object v1
.end method

.method public Url()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL for the web request."
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public Url(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web;->urlString:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public XMLTextDecode(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "XmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML string to produce a dictionary structure. See the App Inventor documentation on \"Other topics, notes, and details\" for information."
    .end annotation

    .line 1132
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Web;->JsonTextDecode(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1133
    :catch_d
    move-exception v0

    .line 1137
    .local v0, "e":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Web"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x451

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1139
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1138
    const-string v4, "XMLTextDecode"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1141
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public XMLTextDecodeAsDictionary(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "XmlText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Decodes the given XML into a set of nested dictionaries that capture the structure and data contained in the XML. See the help for more details."
    .end annotation

    .line 1087
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/XmlParser;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/XmlParser;-><init>()V

    .line 1088
    .local v0, "p":Lcom/google/appinventor/components/runtime/util/XmlParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 1089
    .local v1, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 1090
    .local v2, "is":Lorg/xml/sax/InputSource;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1092
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/XmlParser;->getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    .line 1093
    .end local v0    # "p":Lcom/google/appinventor/components/runtime/util/XmlParser;
    .end local v1    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_24
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Web"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x451

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1095
    const-string v4, "XMLTextDecodeAsDictionary"

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1097
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object v1
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1742
    return-void
.end method

.method buildRequestData(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 11
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
        }
    .end annotation

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 884
    .local v1, "delimiter":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_66

    .line 885
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 887
    .local v3, "item":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_5c

    .line 888
    move-object v4, v3

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 889
    .local v4, "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_52

    .line 891
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 894
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Web;->UriEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    nop

    .line 899
    .end local v4    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    nop

    .line 902
    const-string v1, "&"

    .line 884
    .end local v3    # "item":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 896
    .restart local v3    # "item":Ljava/lang/Object;
    .restart local v4    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_52
    new-instance v5, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;

    const/16 v6, 0x459

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;-><init>(II)V

    throw v5

    .line 900
    .end local v4    # "sublist":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_5c
    new-instance v4, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;

    const/16 v5, 0x458

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;-><init>(II)V

    throw v4

    .line 904
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/Object;
    :cond_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p1, "column"    # Ljava/lang/String;

    .line 1700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1701
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1705
    .local v1, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1706
    return-object v1

    .line 1700
    .end local v1    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1711
    .end local v0    # "i":I
    :cond_26
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public getColumns(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6
    .param p1, "keyColumns"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v0, "resultingColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1730
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1731
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Web;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 1732
    .local v3, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1736
    .end local v1    # "i":I
    :cond_1a
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 102
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Web;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 1631
    .local v0, "currentTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/appinventor/components/runtime/Web$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Web$11;-><init>(Lcom/google/appinventor/components/runtime/Web;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1653
    .local v1, "getDataValueTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1654
    return-object v1
.end method

.method public notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .registers 7
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 1751
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1754
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-interface {v1, p0, v2, v3}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1755
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_6

    .line 1756
    :cond_19
    return-void
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 102
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Web;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1746
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1747
    return-void
.end method

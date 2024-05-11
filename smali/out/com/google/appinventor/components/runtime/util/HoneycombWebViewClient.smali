.class public Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;
.super Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;
.source "HoneycombWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient<",
        "Lcom/google/appinventor/components/runtime/WebViewer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///appinventor_asset/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/WebViewer;)V
    .registers 5
    .param p1, "followLinks"    # Z
    .param p2, "ignoreErrors"    # Z
    .param p3, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p4, "component"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 18
    .param p1, "url"    # Ljava/lang/String;

    .line 57
    move-object/from16 v1, p1

    const-string v2, "utf-8"

    const-string v0, "file:///appinventor_asset/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v0, "path":Ljava/lang/String;
    goto :goto_23

    .line 60
    .end local v0    # "path":Ljava/lang/String;
    :cond_16
    const-string v0, "//localhost/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 64
    .local v3, "path":Ljava/lang/String;
    :goto_23
    const/16 v4, 0x15

    :try_start_25
    sget-object v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "webviewer requested path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 66
    .local v5, "stream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v13, v6

    .line 67
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Access-Control-Allow-Origin"

    const-string v7, "localhost"

    invoke-interface {v13, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .line 69
    .local v14, "mimeType":Ljava/lang/String;
    move-object v6, v2

    .line 70
    .local v6, "encoding":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mime type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz v14, :cond_87

    const-string v0, "text/"

    .line 72
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "application/javascript"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_87

    .line 75
    :cond_85
    move-object v0, v6

    goto :goto_89

    .line 73
    :cond_87
    :goto_87
    const/4 v6, 0x0

    move-object v0, v6

    .line 75
    .end local v6    # "encoding":Ljava/lang/String;
    .local v0, "encoding":Ljava/lang/String;
    :goto_89
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_9c

    .line 76
    new-instance v15, Landroid/webkit/WebResourceResponse;

    const/16 v9, 0xc8

    const-string v10, "OK"

    move-object v6, v15

    move-object v7, v14

    move-object v8, v0

    move-object v11, v13

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v15

    .line 78
    :cond_9c
    new-instance v6, Landroid/webkit/WebResourceResponse;

    invoke-direct {v6, v14, v0, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_a1} :catch_a2

    return-object v6

    .line 80
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v13    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "mimeType":Ljava/lang/String;
    :catch_a2
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "404 Not Found"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 82
    .local v5, "error":Ljava/io/ByteArrayInputStream;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_c3

    .line 83
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const/16 v10, 0x194

    const/4 v12, 0x0

    const-string v8, "text/plain"

    const-string v9, "utf-8"

    const-string v11, "Not Found"

    move-object v7, v2

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v2

    .line 85
    :cond_c3
    new-instance v4, Landroid/webkit/WebResourceResponse;

    const-string v6, "text/plain"

    invoke-direct {v4, v6, v2, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v4
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->TAG:Ljava/lang/String;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 49
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///appinventor_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_46

    .line 52
    :cond_41
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 50
    :cond_46
    :goto_46
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 38
    const-string v0, "http://localhost/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "file:///appinventor_asset/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 41
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    .line 39
    :cond_16
    :goto_16
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/HoneycombWebViewClient;->handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

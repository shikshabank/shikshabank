.class public Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field public data:Ljava/io/InputStream;

.field public header:Ljava/util/Properties;

.field public mimeType:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 144
    const-string v0, "200 OK"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/io/InputStream;

    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 152
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    .line 163
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 167
    :try_start_10
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 172
    goto :goto_22

    .line 169
    :catch_1e
    move-exception v0

    .line 171
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 173
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    :goto_22
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

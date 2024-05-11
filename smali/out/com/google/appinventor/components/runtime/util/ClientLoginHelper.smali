.class public Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;
.super Ljava/lang/Object;
.source "ClientLoginHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "GoogleLogin auth="

.field private static final LOG_TAG:Ljava/lang/String; = "ClientLoginHelper"


# instance fields
.field private accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private authToken:Ljava/lang/String;

.field private client:Lorg/apache/http/client/HttpClient;

.field private initialized:Z

.field private service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "prompt"    # Ljava/lang/String;
    .param p4, "client"    # Lorg/apache/http/client/HttpClient;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->service:Ljava/lang/String;

    .line 61
    if-nez p4, :cond_10

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_11

    :cond_10
    move-object v0, p4

    :goto_11
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    .line 63
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-direct {v0, p1, p2, p3, p2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    .line 65
    return-void
.end method

.method private static addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .registers 4
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "token"    # Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_32

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding auth token token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientLoginHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLogin auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-interface {p0, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_32
    return-void
.end method

.method private initialize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    if-nez v0, :cond_23

    .line 73
    const-string v0, "ClientLoginHelper"

    const-string v1, "initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 77
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    goto :goto_23

    .line 75
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t initialize login helper from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_23
    :goto_23
    return-void
.end method

.method private isUiThread()Z
    .registers 3

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static removeGoogleAuthHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 7
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 129
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    .line 130
    .local v3, "header":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 131
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GoogleLogin auth="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing header:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClientLoginHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeader(Lorg/apache/http/Header;)V

    .line 129
    .end local v3    # "header":Lorg/apache/http/Header;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 136
    :cond_40
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialize()V

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 97
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_69

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientLoginHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-virtual {v1, v4, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->removeGoogleAuthHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->addGoogleAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 106
    :cond_69
    return-object v0
.end method

.method public forgetAccountName()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->forgetAccountName()V

    .line 119
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountChooser:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->findAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 144
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_49

    .line 146
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->accountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->service:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 147
    .local v1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have account, auth token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClientLoginHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_2e
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 151
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2e .. :try_end_3a} :catch_45
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3a} :catch_40
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2e .. :try_end_3a} :catch_3b

    return-object v3

    .line 156
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_3b
    move-exception v2

    .line 157
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_49

    .line 154
    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :catch_40
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_49

    .line 152
    :catch_45
    move-exception v2

    .line 153
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 160
    .end local v1    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    :cond_49
    :goto_49
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    const-string v2, "Can\'t get valid authentication token"

    invoke-direct {v1, v2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;
.super Ljava/lang/Object;
.source "AssetFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cookieValue:Ljava/lang/String;

.field final synthetic val$inputUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    const-string v1, "/"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-object v1, v0, v1

    .line 94
    .local v1, "asset":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    invoke-static {v4, v5, v1, v2}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->-$$Nest$smgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 95
    .local v2, "assetFile":Ljava/io/File;
    if-eqz v2, :cond_42

    .line 97
    :try_start_18
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    .line 98
    .local v4, "form":Lcom/google/appinventor/components/runtime/Form;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 100
    .local v6, "packageuri":Landroid/net/Uri;
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_33

    .line 106
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "packageuri":Landroid/net/Uri;
    goto :goto_42

    .line 103
    :catch_33
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ERROR_UNABLE_TO_GET"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const-string v4, "Unable to Install new Companion Package."

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return-void
.end method

.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "GitBuildId.java"


# static fields
.field public static final ACRA_URI:Ljava/lang/String; = "${acra.uri}"

.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "February 19 2024"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "2965242f6c92e55bc7d049ec621aec875559c799"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "nb196"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getAcraUri()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "${acra.uri}"

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 49
    const-string v0, ""

    return-object v0

    .line 50
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate()Ljava/lang/String;
    .registers 1

    .line 44
    const-string v0, "February 19 2024"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "2965242f6c92e55bc7d049ec621aec875559c799"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "nb196"

    .line 32
    .local v0, "version":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_10

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    .line 35
    :cond_f
    return-object v0

    .line 33
    :cond_10
    :goto_10
    const-string v1, "none"

    return-object v1
.end method

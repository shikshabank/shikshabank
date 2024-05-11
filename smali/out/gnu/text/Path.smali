.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .registers 3
    .param p0, "path"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_8

    .line 54
    move-object v0, p0

    check-cast v0, Lgnu/text/Path;

    return-object v0

    .line 55
    :cond_8
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_14

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    return-object v0

    .line 58
    :cond_14
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_20

    .line 59
    move-object v0, p0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 61
    :cond_20
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_2c

    .line 62
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2c
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_35

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_3e

    .line 66
    .end local v0    # "str":Ljava/lang/String;
    :cond_35
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_3b
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 70
    .restart local v0    # "str":Ljava/lang/String;
    :goto_3e
    invoke-static {v0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 71
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1

    .line 73
    :cond_49
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    return-object v1
.end method

.method public static currentPath()Lgnu/text/Path;
    .registers 2

    .line 35
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Path;

    .line 36
    .local v0, "path":Lgnu/text/Path;
    if-eqz v0, :cond_b

    .line 37
    return-object v0

    .line 39
    :cond_b
    sget-object v1, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    return-object v1
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 2
    .param p0, "uri"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    move-object v0, p1

    .line 330
    .local v0, "baseStr":Ljava/lang/String;
    move-object v1, p0

    .line 332
    .local v1, "inStr":Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 336
    .local v2, "baseLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 337
    .local v3, "inLen":I
    const/4 v4, 0x0

    .line 338
    .local v4, "i":I
    const/4 v5, 0x0

    .line 339
    .local v5, "sl":I
    const/4 v6, 0x0

    .line 340
    .local v6, "colon":I
    :goto_2a
    const/16 v7, 0x2f

    if-ge v4, v2, :cond_46

    if-ge v4, v3, :cond_46

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 343
    .local v8, "cb":C
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 344
    .local v9, "ci":C
    if-eq v8, v9, :cond_3b

    .line 345
    goto :goto_46

    .line 346
    :cond_3b
    if-ne v8, v7, :cond_3e

    .line 347
    move v5, v4

    .line 348
    :cond_3e
    const/16 v7, 0x3a

    if-ne v8, v7, :cond_43

    .line 349
    move v6, v4

    .line 340
    .end local v8    # "cb":C
    .end local v9    # "ci":C
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 351
    :cond_46
    :goto_46
    if-lez v6, :cond_88

    add-int/lit8 v8, v6, 0x2

    if-gt v5, v8, :cond_58

    add-int/lit8 v8, v6, 0x2

    if-le v2, v8, :cond_58

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_88

    .line 360
    :cond_58
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v8, "sbuf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    move v4, v9

    :cond_70
    :goto_70
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_80

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_70

    .line 373
    const-string v9, "../"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 374
    :cond_80
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 364
    .end local v8    # "sbuf":Ljava/lang/StringBuilder;
    :cond_88
    return-object p0
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .registers 2
    .param p0, "path"    # Lgnu/text/Path;

    .line 45
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 91
    .local v0, "cur":Lgnu/text/Path;
    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    .line 92
    .local v1, "path":Lgnu/text/Path;
    invoke-virtual {v1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 93
    invoke-virtual {v1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    return-object v2

    .line 94
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p0, v2

    .line 96
    .end local v0    # "cur":Lgnu/text/Path;
    .end local v1    # "path":Lgnu/text/Path;
    :cond_1e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-object v0

    .line 98
    :catchall_24
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 113
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_31

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 116
    .local v3, "ch":C
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_11

    .line 117
    return v1

    .line 118
    :cond_11
    if-nez v1, :cond_1a

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2e

    :goto_19
    goto :goto_2d

    :cond_1a
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2e

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2e

    goto :goto_19

    .line 121
    :goto_2d
    return v2

    .line 113
    .end local v3    # "ch":C
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 123
    .end local v1    # "i":I
    :cond_31
    return v2
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "ulen":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_24

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 135
    .local v3, "drive":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1a

    const/16 v4, 0x7a

    if-le v3, v4, :cond_23

    :cond_1a
    const/16 v4, 0x41

    if-lt v3, v4, :cond_22

    const/16 v4, 0x5a

    if-le v3, v4, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    return v1

    .line 138
    .end local v3    # "drive":C
    :cond_24
    if-lez v0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 79
    .local v0, "path":Lgnu/text/Path;
    if-eqz v0, :cond_7

    .line 81
    return-object v0

    .line 80
    :cond_7
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "path"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public delete()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 6

    .line 167
    invoke-virtual {p0}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getAbsolute()Lgnu/text/Path;
    .registers 2

    .line 385
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_b

    .line 386
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    .line 388
    :cond_b
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .registers 2

    .line 393
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    .line 174
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .registers 2

    .line 198
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    return-object p0

    .line 201
    :cond_7
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 8

    .line 235
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "p":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 237
    return-object v1

    .line 238
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, "len":I
    move v3, v2

    .line 241
    .local v3, "i":I
    :goto_d
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_12

    .line 242
    return-object v1

    .line 243
    :cond_12
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .local v4, "c":C
    const/4 v5, 0x0

    .line 245
    .local v5, "sawDot":Z
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_22

    .line 247
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 248
    const/4 v5, 0x1

    .line 250
    :cond_22
    const/16 v6, 0x2f

    if-eq v4, v6, :cond_39

    instance-of v6, p0, Lgnu/text/FilePath;

    if-eqz v6, :cond_2f

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-ne v4, v6, :cond_2f

    goto :goto_39

    .line 254
    :cond_2f
    if-eqz v5, :cond_38

    .line 255
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    .end local v4    # "c":C
    .end local v5    # "sawDot":Z
    :cond_38
    goto :goto_d

    .line 253
    .restart local v4    # "c":C
    .restart local v5    # "sawDot":Z
    :cond_39
    :goto_39
    return-object v1
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .registers 7

    .line 211
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 214
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 215
    .local v1, "len":I
    move v2, v1

    .line 216
    .local v2, "end":I
    move v3, v1

    .line 218
    .local v3, "i":I
    :goto_e
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_15

    .line 219
    const-string v4, ""

    return-object v4

    .line 220
    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 221
    .local v4, "c":C
    const/16 v5, 0x2f

    if-eq v4, v5, :cond_25

    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_2a

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_2a

    .line 225
    :cond_25
    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_2b

    .line 226
    move v2, v3

    .line 230
    .end local v4    # "c":C
    :cond_2a
    goto :goto_e

    .line 228
    .restart local v4    # "c":C
    :cond_2b
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .registers 2

    .line 206
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ".."

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .registers 2

    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .registers 5

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    .local v1, "len":I
    if-lez v1, :cond_1a

    .line 153
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 154
    .local v2, "last":C
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_18

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_1a

    .line 155
    :cond_18
    const/4 v3, 0x1

    return v3

    .line 157
    .end local v2    # "last":C
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .registers 3
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .registers 3
    .param p1, "relative"    # Lgnu/text/Path;

    .line 289
    invoke-virtual {p1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    return-object p1

    .line 291
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .registers 2

    .line 279
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method

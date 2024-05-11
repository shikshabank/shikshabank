.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "URIPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field final uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 26
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    iput-object p1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .registers 3
    .param p0, "path"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Lgnu/text/URIPath;

    if-eqz v0, :cond_8

    .line 35
    move-object v0, p0

    check-cast v0, Lgnu/text/URIPath;

    return-object v0

    .line 36
    :cond_8
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_14

    .line 37
    move-object v0, p0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    return-object v0

    .line 39
    :cond_14
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_20

    .line 40
    move-object v0, p0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 43
    :cond_20
    instance-of v0, p0, Ljava/io/File;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_37

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2d

    goto :goto_37

    .line 45
    :cond_2d
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .local v0, "str":Ljava/lang/String;
    goto :goto_3b

    .line 48
    .end local v0    # "str":Ljava/lang/String;
    :cond_35
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_37
    :goto_37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "str":Ljava/lang/String;
    :goto_3b
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .registers 18
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # C

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 325
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_118

    .line 327
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 329
    .local v4, "ch":I
    const/high16 v6, 0x10000

    const v7, 0xd800

    if-lt v4, v7, :cond_33

    const v8, 0xdc00

    if-ge v4, v8, :cond_33

    if-ge v5, v3, :cond_33

    .line 330
    sub-int v7, v4, v7

    mul-int/lit16 v7, v7, 0x400

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v8

    add-int/2addr v7, v5

    add-int v4, v7, v6

    move v5, v9

    .line 332
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_33
    const/16 v7, 0x48

    const/16 v8, 0x25

    const/16 v9, 0x7e

    const/16 v10, 0x41

    if-ne v1, v7, :cond_45

    const/16 v7, 0x20

    if-lt v4, v7, :cond_b8

    if-gt v4, v9, :cond_b8

    goto/16 :goto_111

    :cond_45
    const/16 v7, 0x61

    if-lt v4, v7, :cond_4d

    const/16 v7, 0x7a

    if-le v4, v7, :cond_111

    :cond_4d
    if-lt v4, v10, :cond_53

    const/16 v7, 0x5a

    if-le v4, v7, :cond_111

    :cond_53
    const/16 v7, 0x30

    if-lt v4, v7, :cond_5b

    const/16 v7, 0x39

    if-le v4, v7, :cond_111

    :cond_5b
    const/16 v7, 0x2d

    if-eq v4, v7, :cond_111

    const/16 v7, 0x5f

    if-eq v4, v7, :cond_111

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_111

    if-eq v4, v9, :cond_111

    const/16 v7, 0x49

    if-ne v1, v7, :cond_b8

    const/16 v7, 0x3b

    if-eq v4, v7, :cond_111

    const/16 v7, 0x2f

    if-eq v4, v7, :cond_111

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_111

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_111

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_111

    const/16 v7, 0x27

    if-eq v4, v7, :cond_111

    const/16 v7, 0x28

    if-eq v4, v7, :cond_111

    const/16 v7, 0x29

    if-eq v4, v7, :cond_111

    const/16 v7, 0x40

    if-eq v4, v7, :cond_111

    const/16 v7, 0x26

    if-eq v4, v7, :cond_111

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_111

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_111

    const/16 v7, 0x24

    if-eq v4, v7, :cond_111

    const/16 v7, 0x2c

    if-eq v4, v7, :cond_111

    const/16 v7, 0x5b

    if-eq v4, v7, :cond_111

    const/16 v7, 0x5d

    if-eq v4, v7, :cond_111

    const/16 v7, 0x23

    if-eq v4, v7, :cond_111

    const/16 v7, 0x21

    if-eq v4, v7, :cond_111

    if-ne v4, v8, :cond_b8

    goto :goto_111

    .line 345
    :cond_b8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 346
    .local v7, "pos":I
    const/4 v9, 0x0

    .line 347
    .local v9, "nbytes":I
    const/16 v11, 0x80

    const/4 v12, 0x1

    if-ge v4, v11, :cond_c4

    const/4 v6, 0x1

    goto :goto_cf

    :cond_c4
    const/16 v13, 0x800

    if-ge v4, v13, :cond_ca

    const/4 v6, 0x2

    goto :goto_cf

    :cond_ca
    if-ge v4, v6, :cond_ce

    const/4 v6, 0x3

    goto :goto_cf

    :cond_ce
    const/4 v6, 0x4

    .line 354
    .local v6, "needed":I
    :goto_cf
    if-nez v9, :cond_d3

    const/4 v13, 0x7

    goto :goto_d5

    :cond_d3
    rsub-int/lit8 v13, v9, 0x6

    .line 356
    .local v13, "availbits":I
    :goto_d5
    shl-int v14, v12, v13

    if-ge v4, v14, :cond_e5

    .line 359
    move v14, v4

    .line 360
    .local v14, "b":I
    if-lez v9, :cond_e3

    .line 361
    const v15, 0xff80

    shr-int/2addr v15, v9

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    .line 362
    :cond_e3
    const/4 v4, 0x0

    goto :goto_ea

    .line 366
    .end local v14    # "b":I
    :cond_e5
    and-int/lit8 v14, v4, 0x3f

    or-int/2addr v14, v11

    .line 367
    .restart local v14    # "b":I
    shr-int/lit8 v4, v4, 0x6

    .line 369
    :goto_ea
    add-int/lit8 v9, v9, 0x1

    .line 370
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_ed
    if-gt v15, v12, :cond_107

    .line 372
    and-int/lit8 v11, v14, 0xf

    .line 373
    .local v11, "hex":I
    const/16 v12, 0x9

    if-gt v11, v12, :cond_f8

    add-int/lit8 v12, v11, 0x30

    goto :goto_fb

    :cond_f8
    add-int/lit8 v12, v11, -0xa

    add-int/2addr v12, v10

    :goto_fb
    int-to-char v12, v12

    invoke-virtual {v2, v7, v12}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 375
    shr-int/lit8 v14, v14, 0x4

    .line 370
    .end local v11    # "hex":I
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x80

    const/4 v12, 0x1

    goto :goto_ed

    .line 377
    .end local v15    # "j":I
    :cond_107
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 379
    .end local v13    # "availbits":I
    .end local v14    # "b":I
    if-nez v4, :cond_10d

    goto :goto_115

    :cond_10d
    const/16 v11, 0x80

    const/4 v12, 0x1

    goto :goto_cf

    .line 342
    .end local v6    # "needed":I
    .end local v7    # "pos":I
    .end local v9    # "nbytes":I
    :cond_111
    :goto_111
    int-to-char v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    .end local v4    # "ch":I
    :goto_115
    move v4, v5

    goto/16 :goto_e

    .line 382
    .end local v5    # "i":I
    :cond_118
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    .line 55
    .local v0, "path":Lgnu/text/URIPath;
    if-eqz v0, :cond_7

    .line 57
    return-object v0

    .line 56
    :cond_7
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "URI"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 70
    :try_start_0
    new-instance v0, Lgnu/text/URIStringPath;

    new-instance v1, Ljava/net/URI;

    const/16 v2, 0x49

    invoke-static {p0, v2}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lgnu/text/URIStringPath;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object v0

    .line 72
    :catchall_11
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .registers 2
    .param p0, "uri"    # Ljava/net/URI;

    .line 62
    new-instance v0, Lgnu/text/URIPath;

    invoke-direct {v0, p0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .registers 4
    .param p1, "path"    # Lgnu/text/URIPath;

    .line 190
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 14
    move-object v0, p1

    check-cast v0, Lgnu/text/URIPath;

    invoke-virtual {p0, v0}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    instance-of v0, p1, Lgnu/text/URIPath;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    move-object v1, p1

    check-cast v1, Lgnu/text/URIPath;

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public exists()Z
    .registers 9

    .line 94
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 95
    .local v1, "conn":Ljava/net/URLConnection;
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 96
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 99
    :cond_1b
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    .line 101
    .end local v1    # "conn":Ljava/net/URLConnection;
    :catchall_27
    move-exception v1

    .line 103
    .local v1, "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .registers 3

    .line 306
    invoke-virtual {p0}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 309
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 310
    .local v0, "norm":Ljava/net/URI;
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    if-ne v0, v1, :cond_11

    .line 311
    return-object p0

    .line 312
    :cond_11
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0    # "norm":Ljava/net/URI;
    :cond_16
    invoke-virtual {p0}, Lgnu/text/URIPath;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 114
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    .line 109
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 279
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 270
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 207
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .registers 8
    .param p1, "rstr"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 129
    :cond_b
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 130
    .local v0, "fileSep":C
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_46

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_42

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2c

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_2c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_42

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_42

    .line 137
    :cond_38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v1

    return-object v1

    .line 139
    :cond_42
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_46
    const/4 v1, 0x0

    :try_start_47
    iget-object v2, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1, p1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_58

    .line 150
    .local v1, "resolved":Ljava/net/URI;
    nop

    .line 185
    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    return-object v2

    .line 147
    .end local v1    # "resolved":Ljava/net/URI;
    :catchall_58
    move-exception v2

    .line 149
    .restart local v1    # "resolved":Ljava/net/URI;
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 212
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 2

    .line 217
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    .line 118
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-object v0
.end method

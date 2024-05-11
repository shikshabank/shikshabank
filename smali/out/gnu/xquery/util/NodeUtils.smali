.class public Lgnu/xquery/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# static fields
.field static collectionNamespace:Ljava/lang/String;

.field public static final collectionResolverSymbol:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 329
    const-string v0, "http://gnu.org/kawa/cached-collections"

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    .line 370
    const-string v0, "http://www.w3.org/2005/xquery-local-functions"

    const-string v1, "collection-resolver"

    const-string v2, "qexo"

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCached(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 456
    const-string v0, "doc-available"

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 457
    const/4 v0, 0x0

    if-nez p0, :cond_a

    .line 458
    return v0

    .line 461
    :cond_a
    :try_start_a
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 462
    const/4 v0, 0x1

    return v0

    .line 464
    :catchall_f
    move-exception v1

    .line 466
    .local v1, "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 201
    if-eqz p0, :cond_23

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_23

    .line 203
    :cond_7
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_18

    .line 205
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v0

    .line 206
    .local v0, "uri":Lgnu/text/Path;
    if-nez v0, :cond_17

    .line 207
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 209
    :cond_17
    return-object v0

    .line 204
    .end local v0    # "uri":Lgnu/text/Path;
    :cond_18
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "base-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static collection(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 376
    const-string v0, "collection"

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 377
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 378
    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v1, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    .line 379
    .local v1, "rsym":Lgnu/mapping/Symbol;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 380
    .local v3, "rvalue":Ljava/lang/Object;
    if-nez v3, :cond_23

    .line 382
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    :cond_23
    if-nez v3, :cond_2a

    .line 390
    invoke-static {p0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 392
    :cond_2a
    instance-of v4, v3, Ljava/lang/String;

    const-string v5, "invalid collection-resolver: "

    if-nez v4, :cond_34

    instance-of v4, v3, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v4, :cond_bc

    :cond_34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .local v6, "str":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v7, v4

    .local v7, "colon":I
    if-lez v4, :cond_bc

    .line 395
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, "cname":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "mname":Ljava/lang/String;
    :try_start_4d
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_51} :catch_9c
    .catchall {:try_start_4d .. :try_end_51} :catchall_84

    .line 409
    .local v2, "rclass":Ljava/lang/Class;
    nop

    .line 410
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/ClassType;

    .line 411
    .local v10, "rclassType":Lgnu/bytecode/ClassType;
    sget-object v11, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v10, v9, v4, v11}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v3

    .line 412
    if-eqz v3, :cond_61

    goto :goto_bc

    .line 413
    :cond_61
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid collection-resolver: no method "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    .end local v2    # "rclass":Ljava/lang/Class;
    .end local v10    # "rclassType":Lgnu/bytecode/ClassType;
    :catchall_84
    move-exception v4

    .line 408
    .restart local v2    # "rclass":Ljava/lang/Class;
    .local v4, "ex":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 402
    .end local v2    # "rclass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/Throwable;
    :catch_9c
    move-exception v4

    .line 404
    .restart local v2    # "rclass":Ljava/lang/Class;
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid collection-resolver: class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 415
    .end local v2    # "rclass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "colon":I
    .end local v8    # "cname":Ljava/lang/String;
    .end local v9    # "mname":Ljava/lang/String;
    :cond_bc
    :goto_bc
    instance-of v2, v3, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_c8

    .line 417
    move-object v2, v3

    check-cast v2, Lgnu/mapping/Procedure;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 416
    :cond_c8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static data$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 111
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 112
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_21

    .line 114
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 115
    .local v1, "vals":Lgnu/mapping/Values;
    invoke-virtual {v1}, Lgnu/mapping/Values;->startPos()I

    move-result v2

    .line 116
    .local v2, "ipos":I
    :goto_d
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    move v2, v3

    if-eqz v3, :cond_20

    .line 117
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_d

    .line 118
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v2    # "ipos":I
    :cond_20
    goto :goto_28

    .line 120
    :cond_21
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 121
    :goto_28
    return-void
.end method

.method public static docCached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 442
    const-string v0, "doc"

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 443
    if-nez p0, :cond_b

    .line 444
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 445
    :cond_b
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    return-object v0
.end method

.method public static documentUri(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 179
    if-eqz p0, :cond_2a

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_2a

    .line 181
    :cond_7
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1f

    .line 183
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 184
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    iget v2, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->documentUriOfPos(I)Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "uri":Ljava/lang/Object;
    if-nez v1, :cond_1d

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    :goto_1e
    return-object v2

    .line 182
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    .end local v1    # "uri":Ljava/lang/Object;
    :cond_1f
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:document-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method static getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collector"    # Ljava/lang/Object;

    .line 222
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_8

    .line 223
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 224
    :cond_8
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_21

    .line 226
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "ar":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "i":I
    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1f

    .line 228
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_14

    .line 229
    .end local v0    # "ar":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1f
    goto/16 :goto_84

    .line 232
    :cond_21
    const-string v0, "fn:id"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 234
    .local v1, "len":I
    const/4 v2, 0x0

    .line 235
    .local v2, "i":I
    :goto_2f
    if-ge v2, v1, :cond_84

    .line 237
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 238
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 239
    move v2, v3

    goto :goto_2f

    .line 240
    :cond_3f
    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v4

    if-eqz v4, :cond_48

    add-int/lit8 v4, v3, -0x1

    goto :goto_49

    :cond_48
    move v4, v1

    .line 241
    .local v4, "start":I
    :cond_49
    :goto_49
    if-ge v3, v1, :cond_62

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 244
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 245
    goto :goto_62

    .line 246
    :cond_56
    add-int/lit8 v3, v3, 0x1

    .line 247
    if-ge v4, v1, :cond_49

    invoke-static {v2}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_49

    .line 248
    move v4, v1

    goto :goto_49

    .line 250
    :cond_62
    :goto_62
    if-ge v4, v1, :cond_80

    .line 252
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "ref":Ljava/lang/String;
    if-nez p1, :cond_6c

    .line 254
    move-object p1, v5

    goto :goto_80

    .line 258
    :cond_6c
    instance-of v6, p1, Ljava/util/Stack;

    if-eqz v6, :cond_74

    .line 259
    move-object v6, p1

    check-cast v6, Ljava/util/Stack;

    .local v6, "st":Ljava/util/Stack;
    goto :goto_7d

    .line 262
    .end local v6    # "st":Ljava/util/Stack;
    :cond_74
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 263
    .restart local v6    # "st":Ljava/util/Stack;
    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object p1, v6

    .line 266
    :goto_7d
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "st":Ljava/util/Stack;
    :cond_80
    :goto_80
    nop

    .end local v2    # "ch":C
    .end local v4    # "start":I
    add-int/lit8 v2, v3, 0x1

    .line 270
    .end local v3    # "i":I
    .local v2, "i":I
    goto :goto_2f

    .line 272
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_84
    :goto_84
    return-object p1
.end method

.method public static getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;
    .registers 5
    .param p0, "node"    # Lgnu/kawa/xml/KNode;

    .line 150
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 151
    .local v0, "seq":Lgnu/xml/NodeTree;
    iget v1, p0, Lgnu/kawa/xml/KNode;->ipos:I

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "lang"

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/NodeTree;->ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "attr":I
    if-nez v1, :cond_12

    .line 155
    const/4 v2, 0x0

    return-object v2

    .line 157
    :cond_12
    invoke-static {v0, v1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "uri"    # Ljava/lang/Object;

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .registers 7
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 352
    if-nez p0, :cond_4

    .line 353
    const-string p0, "#default"

    .line 354
    :cond_4
    sget-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 355
    .local v0, "sym":Lgnu/mapping/Symbol;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 356
    .local v1, "coll":Ljava/lang/Object;
    if-eqz v1, :cond_16

    .line 358
    return-object v1

    .line 357
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collection \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static id$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 10
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 277
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 278
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 279
    .local v1, "ntree":Lgnu/xml/NodeTree;
    iget v2, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v1, v2}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v2

    check-cast v2, Lgnu/kawa/xml/KDocument;

    .line 281
    .local v2, "root":Lgnu/kawa/xml/KDocument;
    iget-object v3, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 282
    .local v3, "out":Lgnu/lists/Consumer;
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 283
    .local v4, "idrefs":Ljava/lang/Object;
    if-nez v4, :cond_19

    .line 284
    return-void

    .line 285
    :cond_19
    invoke-virtual {v1}, Lgnu/xml/NodeTree;->makeIDtableIfNeeded()V

    .line 286
    instance-of v5, v3, Lgnu/lists/PositionConsumer;

    if-eqz v5, :cond_2f

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_28

    instance-of v5, v3, Lgnu/kawa/xml/SortedNodes;

    if-eqz v5, :cond_2f

    .line 288
    :cond_28
    move-object v5, v3

    check-cast v5, Lgnu/lists/PositionConsumer;

    invoke-static {v4, v1, v5}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    goto :goto_50

    .line 289
    :cond_2f
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_45

    .line 291
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v5

    .line 292
    .local v5, "pos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_44

    .line 293
    invoke-static {v1, v5}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v6

    invoke-interface {v3, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 294
    .end local v5    # "pos":I
    :cond_44
    goto :goto_50

    .line 297
    :cond_45
    new-instance v5, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v5}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 298
    .local v5, "nodes":Lgnu/kawa/xml/SortedNodes;
    invoke-static {v4, v1, v5}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 299
    invoke-static {v5, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 301
    .end local v5    # "nodes":Lgnu/kawa/xml/SortedNodes;
    :goto_50
    return-void
.end method

.method private static idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V
    .registers 7
    .param p0, "ids"    # Ljava/lang/Object;
    .param p1, "seq"    # Lgnu/xml/NodeTree;
    .param p2, "out"    # Lgnu/lists/PositionConsumer;

    .line 305
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 307
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 309
    invoke-interface {p2, p1, v0}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 310
    .end local v0    # "pos":I
    :cond_11
    goto :goto_2a

    .line 311
    :cond_12
    instance-of v0, p0, Ljava/util/Stack;

    if-eqz v0, :cond_2a

    .line 313
    move-object v0, p0

    check-cast v0, Ljava/util/Stack;

    .line 314
    .local v0, "st":Ljava/util/Stack;
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    .line 315
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_2a

    .line 316
    invoke-virtual {v0, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 318
    .end local v0    # "st":Ljava/util/Stack;
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static idref(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 322
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 323
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/KDocument;

    .line 325
    .local v1, "root":Lgnu/kawa/xml/KDocument;
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v2
.end method

.method public static inScopePrefixes$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 6
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 100
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KElement;

    .line 101
    .local v0, "element":Lgnu/kawa/xml/KElement;
    invoke-virtual {v0}, Lgnu/kawa/xml/KElement;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/xml/XName;

    if-eqz v2, :cond_14

    .line 103
    move-object v2, v1

    check-cast v2, Lgnu/xml/XName;

    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v2, v3}, Lgnu/xquery/util/NodeUtils;->prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V

    goto :goto_1b

    .line 105
    :cond_14
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-string v3, "xml"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 107
    .end local v0    # "element":Lgnu/kawa/xml/KElement;
    .end local v1    # "type":Ljava/lang/Object;
    :goto_1b
    return-void
.end method

.method public static lang(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p0, "testlang"    # Ljava/lang/Object;
    .param p1, "node"    # Ljava/lang/Object;

    .line 163
    if-eqz p0, :cond_c

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_c

    .line 166
    :cond_7
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "teststr":Ljava/lang/String;
    goto :goto_e

    .line 164
    .end local v0    # "teststr":Ljava/lang/String;
    :cond_c
    :goto_c
    const-string v0, ""

    .line 167
    .restart local v0    # "teststr":Ljava/lang/String;
    :goto_e
    move-object v1, p1

    check-cast v1, Lgnu/kawa/xml/KNode;

    invoke-static {v1}, Lgnu/xquery/util/NodeUtils;->getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "lang":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 169
    return v2

    .line 170
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 171
    .local v3, "langlen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 172
    .local v4, "testlen":I
    if-le v3, v4, :cond_2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2f

    .line 173
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_2f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static localName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;

    .line 42
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    const-string v1, ""

    if-eq p0, v0, :cond_38

    if-nez p0, :cond_9

    goto :goto_38

    .line 44
    :cond_9
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_2d

    .line 46
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/Object;
    if-eqz v0, :cond_2c

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v2, :cond_1b

    goto :goto_2c

    .line 49
    :cond_1b
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_27

    .line 50
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 51
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 48
    :cond_2c
    :goto_2c
    return-object v1

    .line 45
    .end local v0    # "name":Ljava/lang/Object;
    :cond_2d
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "local-name"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_38
    :goto_38
    return-object v1
.end method

.method public static name(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "node"    # Ljava/lang/Object;

    .line 32
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    const-string v1, ""

    if-eq p0, v0, :cond_1d

    if-nez p0, :cond_9

    goto :goto_1d

    .line 34
    :cond_9
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/Object;
    if-eqz v0, :cond_1c

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v2, :cond_17

    goto :goto_1c

    .line 37
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 36
    :cond_1c
    :goto_1c
    return-object v1

    .line 33
    .end local v0    # "name":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public static namespaceURI(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_25

    if-eqz p0, :cond_25

    .line 58
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1a

    .line 60
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_25

    .line 62
    invoke-static {v0}, Lgnu/xquery/util/QNameUtils;->namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 59
    .end local v0    # "name":Ljava/lang/Object;
    :cond_1a
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "namespace-uri"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_25
    const-string v0, ""

    return-object v0
.end method

.method public static nilled(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 190
    if-eqz p0, :cond_20

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_20

    .line 192
    :cond_7
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_15

    .line 194
    instance-of v0, p0, Lgnu/kawa/xml/KElement;

    if-nez v0, :cond_12

    .line 195
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 196
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 193
    :cond_15
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "nilled"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_20
    :goto_20
    return-object p0
.end method

.method public static nodeName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;

    .line 19
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_23

    if-nez p0, :cond_7

    goto :goto_23

    .line 21
    :cond_7
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_18

    .line 23
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 24
    .local v0, "sym":Ljava/lang/Object;
    if-nez v0, :cond_17

    .line 25
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 27
    :cond_17
    return-object v0

    .line 22
    .end local v0    # "sym":Ljava/lang/Object;
    :cond_18
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "node-name"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V
    .registers 8
    .param p0, "name"    # Lgnu/xml/XName;
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 69
    invoke-virtual {p0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    .line 70
    .local v0, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v1, v0

    .line 71
    .local v1, "ns":Lgnu/xml/NamespaceBinding;
    :goto_5
    if-eqz v1, :cond_30

    .line 74
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "uri":Ljava/lang/String;
    if-nez v2, :cond_e

    .line 76
    goto :goto_26

    .line 77
    :cond_e
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "prefix":Ljava/lang/String;
    move-object v4, v0

    .line 82
    .local v4, "ns2":Lgnu/xml/NamespaceBinding;
    :goto_13
    if-ne v4, v1, :cond_1f

    .line 84
    if-nez v3, :cond_1a

    const-string v5, ""

    goto :goto_1b

    :cond_1a
    move-object v5, v3

    :goto_1b
    invoke-interface {p1, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 85
    goto :goto_26

    .line 87
    :cond_1f
    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v3, :cond_2b

    .line 90
    nop

    .line 72
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "ns2":Lgnu/xml/NamespaceBinding;
    :goto_26
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v1

    goto :goto_5

    .line 80
    .restart local v2    # "uri":Ljava/lang/String;
    .restart local v3    # "prefix":Ljava/lang/String;
    .restart local v4    # "ns2":Lgnu/xml/NamespaceBinding;
    :cond_2b
    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_13

    .line 94
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "ns2":Lgnu/xml/NamespaceBinding;
    :cond_30
    return-void
.end method

.method static resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .param p2, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 423
    instance-of v0, p0, Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_16

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_16

    instance-of v0, p0, Ljava/net/URL;

    if-nez v0, :cond_16

    .line 429
    const/4 v0, 0x1

    invoke-static {p0, p2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    :cond_16
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_2a

    if-nez p0, :cond_1d

    goto :goto_2a

    .line 432
    :cond_1d
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    .line 431
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public static root(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 126
    if-eqz p0, :cond_26

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_7

    goto :goto_26

    .line 128
    :cond_7
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1b

    .line 130
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 131
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1

    .line 129
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    :cond_1b
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "root"

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_26
    :goto_26
    return-object p0
.end method

.method public static rootDocument(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;

    .line 139
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    const/4 v1, 0x1

    const-string v2, "root-document"

    if-eqz v0, :cond_26

    .line 141
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 142
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v3, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v4

    invoke-static {v3, v4}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 143
    instance-of v3, v0, Lgnu/kawa/xml/KDocument;

    if-eqz v3, :cond_1e

    .line 145
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/KDocument;

    return-object v1

    .line 144
    :cond_1e
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "document()"

    invoke-direct {v3, v2, v1, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 140
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    :cond_26
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "node()?"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 344
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 345
    return-void
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .registers 5
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "env"    # Lgnu/mapping/Environment;

    .line 335
    if-nez p0, :cond_4

    .line 336
    const-string p0, "#default"

    .line 337
    :cond_4
    sget-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 338
    .local v0, "sym":Lgnu/mapping/Symbol;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

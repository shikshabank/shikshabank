.class public Lgnu/xquery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static ERROR_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-string v0, "<error>"

    sput-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .registers 7
    .param p0, "code"    # Ljava/lang/Object;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 339
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    .line 340
    .local v0, "I":Lgnu/math/IntNum;
    invoke-virtual {v0}, Lgnu/math/IntNum;->intValue()I

    move-result v1

    .line 341
    .local v1, "i":I
    if-lez v1, :cond_40

    const v2, 0xd7ff

    const/high16 v3, 0x10000

    if-le v1, v2, :cond_26

    const v2, 0xe000

    if-lt v1, v2, :cond_40

    const v2, 0xfffd

    if-le v1, v2, :cond_21

    if-lt v1, v3, :cond_40

    :cond_21
    const v2, 0x10ffff

    if-gt v1, v2, :cond_40

    .line 345
    :cond_26
    if-lt v1, v3, :cond_3b

    .line 347
    sub-int v2, v1, v3

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    and-int/lit16 v2, v1, 0x3ff

    const v3, 0xdc00

    add-int v1, v2, v3

    .line 350
    :cond_3b
    int-to-char v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    return-void

    .line 344
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codepoints-to-string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid XML character [FOCH0001]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static asDouble(Ljava/lang/Object;)D
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_8

    .line 59
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :cond_8
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static codepointEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 577
    const-string v0, "codepoint-equal"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "str1":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "str2":Ljava/lang/String;
    if-eqz v1, :cond_1e

    if-nez v0, :cond_12

    goto :goto_1e

    .line 581
    :cond_12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1b
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1d
    return-object v2

    .line 580
    :cond_1e
    :goto_1e
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v2
.end method

.method public static codepointsToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 355
    if-nez p0, :cond_5

    .line 356
    const-string v0, ""

    return-object v0

    .line 357
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_25

    .line 360
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 361
    .local v1, "vals":Lgnu/mapping/Values;
    invoke-virtual {v1}, Lgnu/mapping/Values;->startPos()I

    move-result v2

    .line 362
    .local v2, "ipos":I
    :goto_15
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    move v2, v3

    if-eqz v3, :cond_24

    .line 363
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_15

    .line 364
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v2    # "ipos":I
    :cond_24
    goto :goto_28

    .line 366
    :cond_25
    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 367
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I
    .param p3, "onEmpty"    # Ljava/lang/String;

    .line 27
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_8

    .line 28
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :cond_8
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_e

    if-nez p0, :cond_13

    :cond_e
    sget-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-eq p3, v0, :cond_13

    .line 30
    return-object p3

    .line 31
    :cond_13
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v0, :cond_33

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_33

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_33

    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_24

    goto :goto_33

    .line 42
    :cond_24
    new-instance v0, Lgnu/mapping/WrongType;

    sget-object v1, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-ne p3, v1, :cond_2d

    const-string v1, "xs:string"

    goto :goto_2f

    :cond_2d
    const-string v1, "xs:string?"

    :goto_2f
    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_33
    :goto_33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 5
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "val2"    # Ljava/lang/Object;
    .param p2, "coll"    # Lgnu/xquery/util/NamedCollator;

    .line 314
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_30

    if-eqz p0, :cond_30

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_d

    goto :goto_30

    .line 317
    :cond_d
    if-nez p2, :cond_11

    .line 318
    sget-object p2, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 319
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "ret":I
    if-gez v0, :cond_24

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_2f

    :cond_24
    if-lez v0, :cond_2b

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_2f

    :cond_2b
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    :goto_2f
    return-object v1

    .line 316
    .end local v0    # "ret":I
    :cond_30
    :goto_30
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public static concat$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 292
    const-string v0, "concat"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "str1":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "str2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    array-length v4, p2

    .line 303
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    if-ge v5, v4, :cond_32

    .line 305
    aget-object v6, p2, v5

    add-int/lit8 v7, v5, 0x2

    invoke-static {v6, v0, v7}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    .line 306
    .local v6, "arg":Ljava/lang/Object;
    invoke-static {v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .end local v6    # "arg":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 308
    .end local v5    # "i":I
    :cond_32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "contain"    # Ljava/lang/Object;

    .line 246
    const-string v0, "contains"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_17

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_19

    :cond_17
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    return-object v2
.end method

.method public static encodeForUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "arg"    # Ljava/lang/Object;

    .line 372
    const-string v0, "encode-for-uri"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x55

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .line 262
    const-string v0, "ends-with"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_19

    :cond_17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_19
    return-object v2
.end method

.method public static escapeHtmlUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "arg"    # Ljava/lang/Object;

    .line 384
    const-string v0, "escape-html-uri"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x48

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static iriToUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "arg"    # Ljava/lang/Object;

    .line 378
    const-string v0, "iri-to-uru"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x49

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lowerCase(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "node"    # Ljava/lang/Object;

    .line 48
    const-string v0, "lower-case"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 13

    .line 423
    nop

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x5c

    if-ltz v0, :cond_6d

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 427
    sparse-switch v4, :sswitch_data_da

    .line 461
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown \'replace\' flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :sswitch_1c
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 438
    nop

    .line 439
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_28
    if-ge v6, v5, :cond_5e

    .line 441
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 442
    if-ne v6, v3, :cond_41

    if-ge v8, v5, :cond_41

    .line 444
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_59

    .line 447
    :cond_41
    const/16 v9, 0x5b

    if-ne v6, v9, :cond_48

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 449
    :cond_48
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_4f

    .line 450
    add-int/lit8 v7, v7, -0x1

    goto :goto_59

    .line 451
    :cond_4f
    if-nez v7, :cond_59

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_59

    .line 452
    move v6, v8

    goto :goto_28

    .line 453
    :cond_59
    :goto_59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    move v6, v8

    goto :goto_28

    .line 455
    :cond_5e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    goto :goto_6c

    .line 433
    :sswitch_63
    or-int/lit8 v2, v2, 0x20

    .line 434
    goto :goto_6c

    .line 458
    :sswitch_66
    or-int/lit8 v2, v2, 0x8

    .line 459
    goto :goto_6c

    .line 430
    :sswitch_69
    or-int/lit8 v2, v2, 0x42

    .line 431
    nop

    .line 463
    :goto_6c
    goto :goto_7

    .line 465
    :cond_6d
    const-string p1, "{Is"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_d4

    .line 467
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    nop

    :goto_7f
    if-ge v1, v0, :cond_d0

    .line 471
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 472
    if-ne v1, v3, :cond_cb

    add-int/lit8 v5, v4, 0x4

    if-ge v5, v0, :cond_cb

    .line 474
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 476
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const/16 v5, 0x70

    if-eq v4, v5, :cond_a1

    const/16 v5, 0x50

    if-ne v4, v5, :cond_cf

    :cond_a1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_cf

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x49

    if-ne v4, v6, :cond_cf

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x73

    if-ne v4, v7, :cond_cf

    .line 482
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    const/16 v4, 0x6e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v1, v1, 0x3

    goto :goto_cf

    .line 489
    :cond_cb
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v4

    .line 490
    :cond_cf
    :goto_cf
    goto :goto_7f

    .line 491
    :cond_d0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    :cond_d4
    invoke-static {p0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_da
    .sparse-switch
        0x69 -> :sswitch_69
        0x6d -> :sswitch_66
        0x73 -> :sswitch_63
        0x78 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 499
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/StringUtils;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;

    .line 505
    const-string v0, "matches"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method

.method public static normalizeSpace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p0, "arg"    # Ljava/lang/Object;

    .line 390
    const-string v0, "normalize-space"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 392
    .local v3, "len":I
    const/4 v4, 0x0

    .line 393
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 394
    .local v5, "skipped":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    if-ge v6, v3, :cond_55

    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 397
    .local v7, "ch":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 399
    if-nez v4, :cond_2d

    if-nez v5, :cond_2d

    if-lez v6, :cond_2d

    .line 400
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 401
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 405
    :cond_30
    if-lez v5, :cond_4d

    .line 407
    const/16 v8, 0x20

    if-eqz v4, :cond_3a

    .line 408
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4c

    .line 409
    :cond_3a
    if-gt v5, v1, :cond_46

    if-eq v6, v1, :cond_46

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_4c

    .line 410
    :cond_46
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v8

    .line 411
    :cond_4c
    :goto_4c
    const/4 v5, 0x0

    .line 413
    :cond_4d
    if-eqz v4, :cond_52

    .line 414
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    .end local v7    # "ch":C
    :cond_52
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 417
    .end local v6    # "i":I
    :cond_55
    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_60

    :cond_5c
    if-lez v5, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v2, v0

    :goto_60
    return-object v2
.end method

.method public static normalizeUnicode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 586
    const-string v0, "NFC"

    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "form"    # Ljava/lang/String;

    .line 591
    const-string v0, "normalize-unicode"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 594
    return-object v0

    .line 620
    :cond_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "normalize-unicode: unicode string normalization not available"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 515
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lgnu/xquery/util/StringUtils;->replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/String;

    .line 522
    const-string v0, "replace"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 524
    .local v1, "rlen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_38

    .line 526
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 527
    .local v2, "rch":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_36

    .line 529
    if-ge v3, v2, :cond_2e

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_2c

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2a

    goto :goto_2c

    :cond_2a
    move v3, v5

    goto :goto_2e

    .line 533
    .end local v2    # "rch":C
    :cond_2c
    :goto_2c
    move v2, v5

    goto :goto_37

    .line 531
    .end local v5    # "i":I
    .restart local v2    # "rch":C
    .restart local v3    # "i":I
    :cond_2e
    :goto_2e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid replacement string [FORX0004]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :cond_36
    move v2, v3

    .line 533
    .end local v3    # "i":I
    .local v2, "i":I
    :goto_37
    goto :goto_e

    .line 534
    .end local v2    # "i":I
    :cond_38
    invoke-static {p1, p3}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static startsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .line 254
    const-string v0, "starts-with"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_19

    :cond_17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_19
    return-object v2
.end method

.method public static stringJoin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "strseq"    # Ljava/lang/Object;
    .param p1, "join"    # Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v0, "s":Ljava/lang/StringBuffer;
    sget-object v1, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    const-string v2, "string-join"

    const/4 v3, 0x2

    invoke-static {p1, v2, v3, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "glue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 272
    .local v2, "glen":I
    const/4 v3, 0x0

    .line 273
    .local v3, "index":I
    const/4 v4, 0x0

    .line 275
    .local v4, "started":Z
    :goto_14
    invoke-static {p0, v3}, Lgnu/mapping/Values;->nextIndex(Ljava/lang/Object;I)I

    move-result v5

    move v6, v5

    .local v6, "next":I
    if-ltz v5, :cond_35

    .line 277
    invoke-static {p0, v3}, Lgnu/mapping/Values;->nextValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 278
    .local v5, "obj":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v7, :cond_24

    goto :goto_14

    .line 280
    :cond_24
    if-eqz v4, :cond_2b

    if-lez v2, :cond_2b

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_2b
    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/4 v4, 0x1

    .line 284
    move v3, v6

    .line 285
    .end local v5    # "obj":Ljava/lang/Object;
    goto :goto_14

    .line 287
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "str"    # Ljava/lang/Object;

    .line 125
    const-string v0, "string-length"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    .local v1, "slen":I
    const/4 v2, 0x0

    .line 128
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2a

    .line 130
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 131
    .local v3, "ch":C
    const v5, 0xd800

    if-lt v3, v5, :cond_25

    const v5, 0xdc00

    if-ge v3, v5, :cond_25

    if-ge v4, v1, :cond_25

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    :cond_25
    nop

    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 134
    move v3, v4

    goto :goto_f

    .line 135
    .end local v4    # "i":I
    :cond_2a
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3
.end method

.method public static stringPad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "padcount"    # Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 229
    .local v0, "count":I
    const-string v1, ""

    if-gtz v0, :cond_19

    .line 231
    if-nez v0, :cond_11

    .line 232
    return-object v1

    .line 233
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Invalid string-pad count"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_19
    const-string v2, "string-pad"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "sv":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 238
    .local v2, "slen":I
    new-instance v3, Ljava/lang/StringBuffer;

    mul-int v4, v0, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 239
    .local v3, "s":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    if-ge v4, v0, :cond_34

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 241
    .end local v4    # "i":I
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static stringToCodepoints$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 10
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 325
    const-string v0, "string-to-codepoints"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 327
    .local v1, "len":I
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 328
    .local v2, "out":Lgnu/lists/Consumer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_3a

    .line 330
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 331
    .local v3, "ch":I
    const v5, 0xd800

    if-lt v3, v5, :cond_35

    const v6, 0xdc00

    if-ge v3, v6, :cond_35

    if-ge v4, v1, :cond_35

    .line 332
    sub-int v5, v3, v5

    mul-int/lit16 v5, v5, 0x400

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v6

    add-int/2addr v5, v4

    const/high16 v4, 0x10000

    add-int v3, v5, v4

    move v4, v7

    .line 333
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_35
    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 334
    .end local v3    # "ch":I
    move v3, v4

    goto :goto_10

    .line 335
    .end local v4    # "i":I
    :cond_3a
    return-void
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    .local v0, "d1":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_d

    .line 67
    return-object v3

    .line 68
    :cond_d
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v4, v0, v4

    double-to-int v2, v4

    .line 69
    .local v2, "i":I
    if-gez v2, :cond_15

    .line 70
    const/4 v2, 0x0

    .line 71
    :cond_15
    const-string v4, "substring"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 73
    .local v5, "len":I
    const/4 v6, 0x0

    .line 74
    .local v6, "offset":I
    :goto_21
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_40

    .line 76
    if-lt v6, v5, :cond_28

    .line 77
    return-object v3

    .line 78
    :cond_28
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 79
    .local v6, "ch":C
    const v8, 0xd800

    if-lt v6, v8, :cond_3e

    const v8, 0xdc00

    if-ge v6, v8, :cond_3e

    if-ge v7, v5, :cond_3e

    .line 80
    add-int/lit8 v7, v7, 0x1

    move v6, v7

    goto :goto_3f

    .line 81
    .end local v6    # "ch":C
    :cond_3e
    move v6, v7

    .end local v7    # "offset":I
    .local v6, "offset":I
    :goto_3f
    goto :goto_21

    .line 82
    :cond_40
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "length"    # Ljava/lang/Object;

    .line 87
    const-string v0, "substring"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 91
    .local v1, "len":I
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    .line 92
    .local v3, "d1":D
    invoke-static {p2}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    .line 93
    .local v5, "d2":D
    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    if-gtz v9, :cond_2a

    .line 94
    const-wide/16 v3, 0x0

    .line 95
    :cond_2a
    int-to-double v7, v1

    cmpl-double v9, v5, v7

    if-lez v9, :cond_30

    .line 96
    int-to-double v5, v1

    .line 97
    :cond_30
    cmpg-double v7, v5, v3

    if-gtz v7, :cond_35

    .line 98
    return-object v2

    .line 99
    :cond_35
    double-to-int v7, v3

    .line 100
    .local v7, "i1":I
    double-to-int v8, v5

    sub-int/2addr v8, v7

    .line 101
    .local v8, "i2":I
    const/4 v9, 0x0

    .line 102
    .local v9, "offset":I
    :goto_39
    add-int/lit8 v7, v7, -0x1

    const v10, 0xdc00

    const v11, 0xd800

    if-ltz v7, :cond_58

    .line 104
    if-lt v9, v1, :cond_46

    .line 105
    return-object v2

    .line 106
    :cond_46
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "offset":I
    .local v12, "offset":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 107
    .local v9, "ch":C
    if-lt v9, v11, :cond_56

    if-ge v9, v10, :cond_56

    if-ge v12, v1, :cond_56

    .line 108
    add-int/lit8 v12, v12, 0x1

    move v9, v12

    goto :goto_57

    .line 109
    .end local v9    # "ch":C
    :cond_56
    move v9, v12

    .end local v12    # "offset":I
    .local v9, "offset":I
    :goto_57
    goto :goto_39

    .line 110
    :cond_58
    move v7, v9

    .line 111
    :goto_59
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_72

    .line 113
    if-lt v9, v1, :cond_60

    .line 114
    return-object v2

    .line 115
    :cond_60
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 116
    .local v9, "ch":C
    if-lt v9, v11, :cond_70

    if-ge v9, v10, :cond_70

    if-ge v12, v1, :cond_70

    .line 117
    add-int/lit8 v12, v12, 0x1

    move v9, v12

    goto :goto_71

    .line 118
    .end local v9    # "ch":C
    :cond_70
    move v9, v12

    .end local v12    # "offset":I
    .local v9, "offset":I
    :goto_71
    goto :goto_59

    .line 119
    :cond_72
    move v2, v9

    .line 120
    .end local v8    # "i2":I
    .local v2, "i2":I
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static substringAfter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .line 152
    const-string v0, "substring-after"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 156
    .local v3, "flen":I
    if-nez v3, :cond_15

    .line 157
    return-object v1

    .line 159
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "start":I
    if-ltz v4, :cond_21

    add-int v2, v4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_21
    return-object v2
.end method

.method public static substringBefore(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .line 140
    const-string v0, "substring-before"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 144
    .local v3, "flen":I
    if-nez v3, :cond_15

    .line 145
    return-object v2

    .line 146
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "start":I
    if-ltz v4, :cond_20

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_20
    return-object v2
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .registers 4
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 542
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lgnu/xquery/util/StringUtils;->tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V

    .line 543
    return-void
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .registers 13
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 549
    const-string v0, "tokenize"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 551
    .local v1, "out":Lgnu/lists/Consumer;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 552
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 553
    .local v3, "len":I
    if-nez v3, :cond_1a

    .line 554
    return-void

    .line 555
    :cond_1a
    const/4 v4, 0x0

    .line 558
    .local v4, "start":I
    :goto_1b
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 559
    .local v5, "matched":Z
    if-nez v5, :cond_2a

    .line 561
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 562
    nop

    .line 573
    .end local v5    # "matched":Z
    return-void

    .line 564
    .restart local v5    # "matched":Z
    :cond_2a
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 565
    .local v6, "end":I
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 567
    if-eq v4, v6, :cond_3c

    .line 569
    .end local v5    # "matched":Z
    .end local v6    # "end":I
    goto :goto_1b

    .line 568
    .restart local v5    # "matched":Z
    .restart local v6    # "end":I
    :cond_3c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "pattern matches empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_45

    :goto_44
    throw v7

    :goto_45
    goto :goto_44
.end method

.method public static translate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "trans"    # Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    const-string v1, "translate"

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "sv":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    .end local p1    # "map":Ljava/lang/Object;
    .local v3, "map":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/kawa/xml/UntypedAtomic;

    const-string v5, "xs:string"

    if-nez v4, :cond_21

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1a

    goto :goto_21

    .line 168
    :cond_1a
    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v6, 0x2

    invoke-direct {v4, v1, v6, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_21
    :goto_21
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 172
    .local v6, "mlen":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 173
    .end local p2    # "trans":Ljava/lang/Object;
    .local v7, "trans":Ljava/lang/Object;
    instance-of v8, v7, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v8, :cond_3d

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_36

    goto :goto_3d

    .line 174
    :cond_36
    new-instance v8, Lgnu/mapping/WrongType;

    const/4 v9, 0x3

    invoke-direct {v8, v1, v9, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_3d
    :goto_3d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "t":Ljava/lang/String;
    if-nez v6, :cond_44

    return-object v2

    .line 179
    :cond_44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 180
    .local v5, "slen":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    .local v8, "s":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 184
    .local v9, "tlen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_52
    if-ge v10, v5, :cond_109

    .line 186
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 187
    .local v10, "c1":C
    const/4 v12, 0x0

    .line 188
    .local v12, "c2":C
    const v13, 0xdc00

    const v14, 0xd800

    if-lt v10, v14, :cond_6e

    if-ge v10, v13, :cond_6e

    if-ge v11, v5, :cond_6e

    .line 189
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "i":I
    .local v15, "i":I
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_6f

    .line 190
    .end local v15    # "i":I
    .restart local v11    # "i":I
    :cond_6e
    move v15, v11

    .end local v11    # "i":I
    .restart local v15    # "i":I
    :goto_6f
    const/4 v11, 0x0

    .line 191
    .local v11, "j":I
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "mi":I
    :goto_74
    if-ge v13, v6, :cond_f3

    .line 193
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "mi":I
    .local v14, "mi":I
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 194
    .local v13, "m1":C
    const/16 v16, 0x0

    .line 195
    .local v16, "m2":C
    const v0, 0xd800

    if-lt v13, v0, :cond_94

    const v0, 0xdc00

    if-ge v13, v0, :cond_94

    if-ge v14, v6, :cond_94

    .line 196
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "mi":I
    .local v0, "mi":I
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move v14, v0

    move/from16 v0, v16

    goto :goto_96

    .line 197
    .end local v0    # "mi":I
    .restart local v14    # "mi":I
    :cond_94
    move/from16 v0, v16

    .end local v16    # "m2":C
    .local v0, "m2":C
    :goto_96
    if-ne v13, v10, :cond_dc

    if-ne v0, v12, :cond_dc

    .line 199
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v0

    move/from16 v0, v21

    .line 201
    .local v0, "ti":I
    .restart local v16    # "m2":C
    :goto_a2
    if-lt v0, v9, :cond_a9

    .line 202
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    goto :goto_100

    .line 203
    :cond_a9
    move-object/from16 v17, v2

    .end local v2    # "sv":Ljava/lang/String;
    .local v17, "sv":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ti":I
    .local v2, "ti":I
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "t1":C
    const/16 v18, 0x0

    .line 205
    .local v18, "t2":C
    move-object/from16 v19, v3

    const v3, 0xd800

    .end local v3    # "map":Ljava/lang/Object;
    .local v19, "map":Ljava/lang/Object;
    if-lt v0, v3, :cond_ca

    const v3, 0xdc00

    if-ge v0, v3, :cond_cd

    if-ge v2, v9, :cond_cd

    .line 206
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "ti":I
    .local v20, "ti":I
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v2, v20

    goto :goto_cd

    .line 205
    .end local v20    # "ti":I
    .restart local v2    # "ti":I
    :cond_ca
    const v3, 0xdc00

    .line 207
    :cond_cd
    :goto_cd
    if-nez v11, :cond_d4

    .line 209
    move v10, v0

    .line 210
    move/from16 v12, v18

    .line 211
    nop

    .line 214
    .end local v0    # "t1":C
    .end local v2    # "ti":I
    .end local v18    # "t2":C
    goto :goto_f7

    .line 199
    .restart local v2    # "ti":I
    :cond_d4
    add-int/lit8 v11, v11, -0x1

    move v0, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    goto :goto_a2

    .line 197
    .end local v16    # "m2":C
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .local v0, "m2":C
    .local v2, "sv":Ljava/lang/String;
    .restart local v3    # "map":Ljava/lang/Object;
    :cond_dc
    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    const v3, 0xdc00

    .line 216
    .end local v0    # "m2":C
    .end local v2    # "sv":Ljava/lang/String;
    .end local v3    # "map":Ljava/lang/Object;
    .restart local v16    # "m2":C
    .restart local v17    # "sv":Ljava/lang/String;
    .restart local v19    # "map":Ljava/lang/Object;
    nop

    .end local v13    # "m1":C
    .end local v16    # "m2":C
    add-int/lit8 v11, v11, 0x1

    .line 217
    move-object/from16 v0, p0

    move v13, v14

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    const v14, 0xd800

    goto :goto_74

    .line 191
    .end local v14    # "mi":I
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .restart local v2    # "sv":Ljava/lang/String;
    .restart local v3    # "map":Ljava/lang/Object;
    .local v13, "mi":I
    :cond_f3
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .line 218
    .end local v2    # "sv":Ljava/lang/String;
    .end local v3    # "map":Ljava/lang/Object;
    .end local v13    # "mi":I
    .restart local v17    # "sv":Ljava/lang/String;
    .restart local v19    # "map":Ljava/lang/Object;
    :goto_f7
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    if-eqz v12, :cond_ff

    .line 220
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    .end local v10    # "c1":C
    .end local v11    # "j":I
    .end local v12    # "c2":C
    :cond_ff
    nop

    .line 184
    :goto_100
    move-object/from16 v0, p0

    move v10, v15

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    goto/16 :goto_52

    .line 223
    .end local v15    # "i":I
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .restart local v2    # "sv":Ljava/lang/String;
    .restart local v3    # "map":Ljava/lang/Object;
    :cond_109
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "node"    # Ljava/lang/Object;

    .line 53
    const-string v0, "upper-case"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

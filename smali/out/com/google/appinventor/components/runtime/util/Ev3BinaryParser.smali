.class public Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.super Ljava/lang/Object;
.source "Ev3BinaryParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    }
.end annotation


# static fields
.field private static PRIMPAR_1_BYTE:B

.field private static PRIMPAR_2_BYTES:B

.field private static PRIMPAR_4_BYTES:B

.field private static PRIMPAR_ADDR:B

.field private static PRIMPAR_BYTES:B

.field private static PRIMPAR_CONST:B

.field private static PRIMPAR_CONST_SIGN:B

.field private static PRIMPAR_GLOBAL:B

.field private static PRIMPAR_HANDLE:B

.field private static PRIMPAR_INDEX:B

.field private static PRIMPAR_LOCAL:B

.field private static PRIMPAR_LONG:B

.field private static PRIMPAR_SHORT:B

.field private static PRIMPAR_STRING:B

.field private static PRIMPAR_STRING_OLD:B

.field private static PRIMPAR_VALUE:B

.field private static PRIMPAR_VARIABEL:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const/4 v0, 0x0

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    .line 23
    const/16 v1, -0x80

    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    .line 25
    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    .line 26
    const/16 v1, 0x40

    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    .line 27
    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    .line 28
    const/16 v1, 0x20

    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    .line 29
    const/16 v2, 0x10

    sput-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_HANDLE:B

    .line 30
    const/16 v2, 0x8

    sput-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_ADDR:B

    .line 32
    const/16 v2, 0x1f

    sput-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    .line 33
    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST_SIGN:B

    .line 34
    const/16 v1, 0x3f

    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VALUE:B

    .line 36
    const/4 v1, 0x7

    sput-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_BYTES:B

    .line 38
    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_STRING_OLD:B

    .line 39
    const/4 v0, 0x1

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    .line 40
    const/4 v0, 0x2

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    .line 41
    const/4 v0, 0x3

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    .line 42
    const/4 v0, 0x4

    sput-byte v0, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_STRING:B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B
    .registers 13
    .param p0, "opcode"    # B
    .param p1, "needReply"    # Z
    .param p2, "globalAllocation"    # I
    .param p3, "localAllocation"    # I
    .param p4, "paramFormat"    # Ljava/lang/String;
    .param p5, "parameters"    # [Ljava/lang/Object;

    .line 507
    if-ltz p2, :cond_1e9

    const/16 v0, 0x3ff

    if-gt p2, v0, :cond_1e9

    if-ltz p3, :cond_1e9

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_1e9

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    array-length v1, p5

    if-ne v0, v1, :cond_1e9

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_190

    .line 515
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 516
    .local v2, "letter":C
    aget-object v3, p5, v1

    .line 518
    .local v3, "obj":Ljava/lang/Object;
    const/16 v4, -0x1f

    const/16 v5, 0x1f

    sparse-switch v2, :sswitch_data_1f2

    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal format string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :sswitch_34
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_60

    .line 569
    :try_start_38
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US-ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_57} :catch_59

    .line 572
    goto/16 :goto_186

    .line 570
    :catch_59
    move-exception v4

    .line 571
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 566
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 535
    :sswitch_66
    instance-of v6, v3, Ljava/lang/Byte;

    if-eqz v6, :cond_9c

    .line 536
    move-object v6, v3

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-gt v6, v5, :cond_8c

    move-object v5, v3

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-lt v5, v4, :cond_8c

    .line 537
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV0(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 539
    :cond_8c
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV1(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 541
    :cond_9c
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_b0

    .line 542
    move-object v4, v3

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV2(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 543
    :cond_b0
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_c4

    .line 544
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV4(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 546
    :cond_c4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 550
    :sswitch_ca
    instance-of v6, v3, Ljava/lang/Byte;

    if-eqz v6, :cond_100

    .line 551
    move-object v6, v3

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-gt v6, v5, :cond_f0

    move-object v5, v3

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-lt v5, v4, :cond_f0

    .line 552
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV0(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 554
    :cond_f0
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV1(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 556
    :cond_100
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_114

    .line 557
    move-object v4, v3

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV2(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 558
    :cond_114
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_127

    .line 559
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV4(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 561
    :cond_127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 520
    :sswitch_12d
    instance-of v6, v3, Ljava/lang/Byte;

    if-eqz v6, :cond_161

    .line 521
    move-object v6, v3

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-gt v6, v5, :cond_152

    move-object v5, v3

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-lt v5, v4, :cond_152

    .line 522
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC0(B)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 524
    :cond_152
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC1(B)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 526
    :cond_161
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_174

    .line 527
    move-object v4, v3

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC2(S)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 528
    :cond_174
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_18a

    .line 529
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC4(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v2    # "letter":C
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_186
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_19

    .line 531
    .restart local v2    # "letter":C
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_18a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 581
    .end local v1    # "i":I
    .end local v2    # "letter":C
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_190
    const/4 v1, 0x4

    .line 582
    .local v1, "bufferCapacity":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_195
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 583
    .local v3, "array":[B
    array-length v4, v3

    add-int/2addr v1, v4

    .end local v3    # "array":[B
    goto :goto_195

    .line 586
    :cond_1a4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 587
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 588
    const/4 v3, 0x0

    if-eqz p1, :cond_1b2

    const/4 v4, 0x0

    goto :goto_1b4

    .line 589
    :cond_1b2
    const/16 v4, -0x80

    .line 588
    :goto_1b4
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 590
    const/4 v4, 0x2

    new-array v4, v4, [B

    and-int/lit16 v5, p2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    ushr-int/lit8 v3, p2, 0x8

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v5, p3, 0x2

    or-int/2addr v3, v5

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 595
    .local v4, "array":[B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1d4

    .line 597
    .end local v4    # "array":[B
    :cond_1e4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3

    .line 508
    .end local v0    # "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "bufferCapacity":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1e9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_1f0

    :goto_1ef
    throw v0

    :goto_1f0
    goto :goto_1ef

    nop

    :sswitch_data_1f2
    .sparse-switch
        0x63 -> :sswitch_12d
        0x67 -> :sswitch_ca
        0x6c -> :sswitch_66
        0x73 -> :sswitch_34
    .end sparse-switch
.end method

.method public static encodeGV0(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 438
    const/4 v0, 0x1

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    and-int/2addr v1, p0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeGV1(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 442
    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeGV2(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 447
    const/4 v0, 0x3

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeGV4(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 453
    const/4 v0, 0x5

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_GLOBAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLC0(B)[B
    .registers 4
    .param p0, "v"    # B

    .line 388
    const/16 v0, -0x1f

    if-lt p0, v0, :cond_13

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_13

    .line 391
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VALUE:B

    and-int/2addr v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0

    .line 389
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded value must be in range [0, 127]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeLC1(B)[B
    .registers 4
    .param p0, "v"    # B

    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLC2(S)[B
    .registers 4
    .param p0, "v"    # S

    .line 400
    const/4 v0, 0x3

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLC4(I)[B
    .registers 4
    .param p0, "v"    # I

    .line 406
    const/4 v0, 0x5

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_CONST:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLV0(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 415
    const/4 v0, 0x1

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_INDEX:B

    and-int/2addr v1, p0

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_SHORT:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLV1(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 419
    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_1_BYTE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLV2(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 424
    const/4 v0, 0x3

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_2_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static encodeLV4(I)[B
    .registers 4
    .param p0, "i"    # I

    .line 430
    const/4 v0, 0x5

    new-array v0, v0, [B

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LONG:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_VARIABEL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_LOCAL:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->PRIMPAR_4_BYTES:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static varargs encodeSystemCommand(BZ[Ljava/lang/Object;)[B
    .registers 12
    .param p0, "command"    # B
    .param p1, "needReply"    # Z
    .param p2, "parameters"    # [Ljava/lang/Object;

    .line 462
    const/4 v0, 0x2

    .line 465
    .local v0, "bufferCapacity":I
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    const-string v4, "Parameters should be one of the class types: Byte, Short, Integer, String"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_36

    aget-object v6, p2, v3

    .line 466
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Byte;

    if-eqz v7, :cond_12

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 468
    :cond_12
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_19

    .line 469
    add-int/lit8 v0, v0, 0x2

    goto :goto_2d

    .line 470
    :cond_19
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_20

    .line 471
    add-int/lit8 v0, v0, 0x4

    goto :goto_2d

    .line 472
    :cond_20
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_30

    .line 473
    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 465
    .end local v6    # "obj":Ljava/lang/Object;
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 475
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_36
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 480
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    if-eqz p1, :cond_42

    goto :goto_44

    .line 482
    :cond_42
    const/16 v5, -0x7f

    .line 481
    :goto_44
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    array-length v3, p2

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v3, :cond_a3

    aget-object v6, p2, v5

    .line 486
    .restart local v6    # "obj":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Byte;

    if-eqz v7, :cond_5f

    .line 487
    move-object v7, v6

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_91

    .line 488
    :cond_5f
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_6e

    .line 489
    move-object v7, v6

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_91

    .line 490
    :cond_6e
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_7d

    .line 491
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_91

    .line 492
    :cond_7d
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_9d

    .line 494
    :try_start_81
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_8d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_81 .. :try_end_8d} :catch_94

    .line 497
    nop

    .line 498
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    .end local v6    # "obj":Ljava/lang/Object;
    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 495
    .restart local v6    # "obj":Ljava/lang/Object;
    :catch_94
    move-exception v2

    .line 496
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Non-ASCII string encoding is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_a3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static varargs pack(Ljava/lang/String;[Ljava/lang/Object;)[B
    .registers 15
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 56
    const-string v0, "(?<=\\D)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "formatTokens":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;

    .line 58
    .local v1, "literals":[Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    const/4 v2, 0x0

    .line 59
    .local v2, "index":I
    const/4 v3, 0x0

    .line 62
    .local v3, "bufferCapacity":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    array-length v5, v0

    const/4 v6, 0x0

    const-string v7, "Illegal format string"

    if-ge v4, v5, :cond_af

    .line 63
    aget-object v5, v0, v4

    .line 64
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 65
    .local v8, "symbol":C
    const/4 v10, 0x1

    .line 66
    .local v10, "size":I
    const/4 v11, 0x0

    .line 68
    .local v11, "sizeSpecified":Z
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v12, v9, :cond_3d

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 71
    const/4 v11, 0x1

    .line 73
    if-lt v10, v9, :cond_37

    goto :goto_3d

    .line 74
    :cond_37
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_3d
    :goto_3d
    sparse-switch v8, :sswitch_data_1e6

    .line 149
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :sswitch_46
    add-int/2addr v3, v10

    .line 80
    goto :goto_a4

    .line 133
    :sswitch_48
    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v10, v6, :cond_56

    .line 136
    add-int/2addr v3, v10

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto :goto_a4

    .line 134
    :cond_56
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    :sswitch_5c
    mul-int/lit8 v6, v10, 0x8

    add-int/2addr v3, v6

    .line 114
    add-int/2addr v2, v10

    .line 115
    goto :goto_a4

    .line 103
    :sswitch_61
    mul-int/lit8 v6, v10, 0x4

    add-int/2addr v3, v6

    .line 104
    add-int/2addr v2, v10

    .line 105
    goto :goto_a4

    .line 93
    :sswitch_66
    mul-int/lit8 v6, v10, 0x2

    add-int/2addr v3, v6

    .line 94
    add-int/2addr v2, v10

    .line 95
    goto :goto_a4

    .line 123
    :sswitch_6b
    mul-int/lit8 v6, v10, 0x4

    add-int/2addr v3, v6

    .line 124
    add-int/2addr v2, v10

    .line 125
    goto :goto_a4

    .line 83
    :sswitch_70
    add-int/2addr v3, v10

    .line 84
    add-int/2addr v2, v10

    .line 85
    goto :goto_a4

    .line 141
    :sswitch_73
    if-nez v11, :cond_82

    .line 144
    aget-object v6, p1, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v9

    add-int/2addr v3, v6

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_a4

    .line 142
    :cond_82
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    :sswitch_88
    mul-int/lit8 v6, v10, 0x8

    add-int/2addr v3, v6

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_a4

    .line 108
    :sswitch_8e
    mul-int/lit8 v6, v10, 0x4

    add-int/2addr v3, v6

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    goto :goto_a4

    .line 98
    :sswitch_94
    mul-int/lit8 v6, v10, 0x2

    add-int/2addr v3, v6

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_a4

    .line 128
    :sswitch_9a
    mul-int/lit8 v6, v10, 0x4

    add-int/2addr v3, v6

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    goto :goto_a4

    .line 88
    :sswitch_a0
    add-int/2addr v3, v10

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    nop

    .line 152
    :goto_a4
    new-instance v6, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;

    invoke-direct {v6, v8, v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;-><init>(CI)V

    aput-object v6, v1, v4

    .line 62
    .end local v5    # "token":Ljava/lang/String;
    .end local v8    # "symbol":C
    .end local v10    # "size":I
    .end local v11    # "sizeSpecified":Z
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 155
    .end local v4    # "i":I
    :cond_af
    array-length v4, p1

    if-ne v2, v4, :cond_1de

    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 161
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    array-length v5, v1

    const/4 v7, 0x0

    :goto_be
    if-ge v7, v5, :cond_1d9

    aget-object v8, v1, v7

    .line 164
    .local v8, "literal":Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    iget-char v9, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->symbol:C

    const-string v10, "US-ASCII"

    sparse-switch v9, :sswitch_data_21c

    goto/16 :goto_1d5

    .line 166
    :sswitch_cb
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_cc
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_d6

    .line 167
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    .line 168
    .end local v9    # "i":I
    :cond_d6
    goto/16 :goto_1d5

    .line 240
    :sswitch_d8
    :try_start_d8
    aget-object v9, p1, v2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_e3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d8 .. :try_end_e3} :catch_e8

    .line 243
    nop

    .line 244
    add-int/lit8 v2, v2, 0x1

    .line 245
    goto/16 :goto_1d5

    .line 241
    :catch_e8
    move-exception v5

    .line 242
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 211
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :sswitch_ef
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f0
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_104

    .line 212
    aget-object v10, p1, v2

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_f0

    .line 215
    .end local v9    # "i":I
    :cond_104
    goto/16 :goto_1d5

    .line 197
    :sswitch_106
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_107
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_11b

    .line 198
    aget-object v10, p1, v2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 197
    add-int/lit8 v9, v9, 0x1

    goto :goto_107

    .line 201
    .end local v9    # "i":I
    :cond_11b
    goto/16 :goto_1d5

    .line 183
    :sswitch_11d
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_11e
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_132

    .line 184
    aget-object v10, p1, v2

    check-cast v10, Ljava/lang/Short;

    invoke-virtual {v10}, Ljava/lang/Short;->shortValue()S

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_11e

    .line 187
    .end local v9    # "i":I
    :cond_132
    goto/16 :goto_1d5

    .line 225
    :sswitch_134
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_135
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_149

    .line 226
    aget-object v10, p1, v2

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 227
    add-int/lit8 v2, v2, 0x1

    .line 225
    add-int/lit8 v9, v9, 0x1

    goto :goto_135

    .line 229
    .end local v9    # "i":I
    :cond_149
    goto/16 :goto_1d5

    .line 171
    :sswitch_14b
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_14c
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_160

    .line 172
    aget-object v10, p1, v2

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 171
    add-int/lit8 v9, v9, 0x1

    goto :goto_14c

    .line 175
    .end local v9    # "i":I
    :cond_160
    goto/16 :goto_1d5

    .line 249
    :sswitch_162
    :try_start_162
    aget-object v9, p1, v2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_16d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_162 .. :try_end_16d} :catch_174

    .line 252
    nop

    .line 253
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d5

    .line 250
    :catch_174
    move-exception v5

    .line 251
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 218
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :sswitch_17b
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_17c
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_18c

    .line 219
    aget-object v10, p1, v2

    check-cast v10, [J

    aget-wide v11, v10, v9

    invoke-virtual {v4, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 218
    add-int/lit8 v9, v9, 0x1

    goto :goto_17c

    .line 221
    .end local v9    # "i":I
    :cond_18c
    add-int/lit8 v2, v2, 0x1

    .line 222
    goto :goto_1d5

    .line 204
    :sswitch_18f
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_190
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_1a0

    .line 205
    aget-object v10, p1, v2

    check-cast v10, [I

    aget v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    add-int/lit8 v9, v9, 0x1

    goto :goto_190

    .line 207
    .end local v9    # "i":I
    :cond_1a0
    add-int/lit8 v2, v2, 0x1

    .line 208
    goto :goto_1d5

    .line 190
    :sswitch_1a3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1a4
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_1b4

    .line 191
    aget-object v10, p1, v2

    check-cast v10, [S

    aget-short v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a4

    .line 193
    .end local v9    # "i":I
    :cond_1b4
    add-int/lit8 v2, v2, 0x1

    .line 194
    goto :goto_1d5

    .line 232
    :sswitch_1b7
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1b8
    iget v10, v8, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;->size:I

    if-ge v9, v10, :cond_1c8

    .line 233
    aget-object v10, p1, v2

    check-cast v10, [F

    aget v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 232
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b8

    .line 235
    .end local v9    # "i":I
    :cond_1c8
    add-int/lit8 v2, v2, 0x1

    .line 236
    goto :goto_1d5

    .line 178
    :sswitch_1cb
    aget-object v9, p1, v2

    check-cast v9, [B

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 180
    nop

    .line 163
    .end local v8    # "literal":Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$FormatLiteral;
    :goto_1d5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_be

    .line 258
    :cond_1d9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    return-object v5

    .line 156
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1de
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1e5

    :goto_1e4
    throw v4

    :goto_1e5
    goto :goto_1e4

    :sswitch_data_1e6
    .sparse-switch
        0x42 -> :sswitch_a0
        0x46 -> :sswitch_9a
        0x48 -> :sswitch_94
        0x49 -> :sswitch_8e
        0x4c -> :sswitch_88
        0x53 -> :sswitch_73
        0x62 -> :sswitch_70
        0x66 -> :sswitch_6b
        0x68 -> :sswitch_66
        0x69 -> :sswitch_61
        0x6c -> :sswitch_5c
        0x73 -> :sswitch_48
        0x78 -> :sswitch_46
    .end sparse-switch

    :sswitch_data_21c
    .sparse-switch
        0x42 -> :sswitch_1cb
        0x46 -> :sswitch_1b7
        0x48 -> :sswitch_1a3
        0x49 -> :sswitch_18f
        0x4c -> :sswitch_17b
        0x53 -> :sswitch_162
        0x62 -> :sswitch_14b
        0x66 -> :sswitch_134
        0x68 -> :sswitch_11d
        0x69 -> :sswitch_106
        0x6c -> :sswitch_ef
        0x73 -> :sswitch_d8
        0x78 -> :sswitch_cb
    .end sparse-switch
.end method

.method public static unpack(Ljava/lang/String;[B)[Ljava/lang/Object;
    .registers 16
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 262
    const-string v0, "(?<=\\D)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "formatTokens":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "decodedObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 265
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 267
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v3, :cond_15d

    aget-object v6, v0, v5

    .line 268
    .local v6, "token":Ljava/lang/String;
    const/4 v7, 0x0

    .line 269
    .local v7, "sizeSpecified":Z
    const/4 v8, 0x1

    .line 270
    .local v8, "size":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 272
    .local v9, "symbol":C
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "Illegal format string"

    if-le v11, v10, :cond_46

    .line 273
    const/4 v7, 0x1

    .line 274
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v10

    invoke-virtual {v6, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 276
    if-lt v8, v10, :cond_40

    goto :goto_46

    .line 277
    :cond_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    :cond_46
    :goto_46
    sparse-switch v9, :sswitch_data_162

    goto/16 :goto_157

    .line 282
    :sswitch_4b
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4c
    if-ge v10, v8, :cond_54

    .line 283
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 282
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 284
    .end local v10    # "i":I
    :cond_54
    goto/16 :goto_13f

    .line 346
    :sswitch_56
    new-array v10, v8, [B

    .line 347
    .local v10, "byteString":[B
    invoke-virtual {v2, v10, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 349
    :try_start_5b
    new-instance v11, Ljava/lang/String;

    const-string v12, "US-ASCII"

    invoke-direct {v11, v10, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5b .. :try_end_65} :catch_67

    .line 352
    goto/16 :goto_13f

    .line 350
    :catch_67
    move-exception v3

    .line 351
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 322
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "byteString":[B
    :sswitch_6e
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6f
    if-ge v10, v8, :cond_7f

    .line 323
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    .line 324
    .end local v10    # "i":I
    :cond_7f
    goto/16 :goto_13f

    .line 310
    :sswitch_81
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_82
    if-ge v10, v8, :cond_92

    .line 311
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto :goto_82

    .line 312
    .end local v10    # "i":I
    :cond_92
    goto/16 :goto_13f

    .line 298
    :sswitch_94
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_95
    if-ge v10, v8, :cond_a5

    .line 299
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v10, v10, 0x1

    goto :goto_95

    .line 300
    .end local v10    # "i":I
    :cond_a5
    goto/16 :goto_13f

    .line 334
    :sswitch_a7
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a8
    if-ge v10, v8, :cond_b8

    .line 335
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v10, v10, 0x1

    goto :goto_a8

    .line 336
    .end local v10    # "i":I
    :cond_b8
    goto/16 :goto_13f

    .line 287
    :sswitch_ba
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_bb
    if-ge v10, v8, :cond_cb

    .line 288
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v10, v10, 0x1

    goto :goto_bb

    .line 289
    .end local v10    # "i":I
    :cond_cb
    goto/16 :goto_13f

    .line 356
    :sswitch_cd
    if-nez v7, :cond_e7

    .line 359
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    :goto_d4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 363
    .local v11, "b":B
    if-eqz v11, :cond_df

    .line 364
    int-to-char v12, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    .end local v11    # "b":B
    goto :goto_d4

    .line 369
    :cond_df
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    goto :goto_13f

    .line 357
    .end local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_e7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :sswitch_ed
    new-array v10, v8, [J

    .line 328
    .local v10, "longs":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f0
    if-ge v11, v8, :cond_fb

    .line 329
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 328
    add-int/lit8 v11, v11, 0x1

    goto :goto_f0

    .line 330
    .end local v11    # "i":I
    :cond_fb
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    goto :goto_13f

    .line 315
    .end local v10    # "longs":[J
    :sswitch_ff
    new-array v10, v8, [I

    .line 316
    .local v10, "integers":[I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_102
    if-ge v11, v8, :cond_10d

    .line 317
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    aput v12, v10, v11

    .line 316
    add-int/lit8 v11, v11, 0x1

    goto :goto_102

    .line 318
    .end local v11    # "i":I
    :cond_10d
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    goto :goto_13f

    .line 303
    .end local v10    # "integers":[I
    :sswitch_111
    new-array v10, v8, [S

    .line 304
    .local v10, "shorts":[S
    const/4 v11, 0x0

    .local v11, "i":S
    :goto_114
    if-ge v11, v8, :cond_120

    .line 305
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    aput-short v12, v10, v11

    .line 304
    add-int/lit8 v12, v11, 0x1

    int-to-short v11, v12

    goto :goto_114

    .line 306
    .end local v11    # "i":S
    :cond_120
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    goto :goto_13f

    .line 339
    .end local v10    # "shorts":[S
    :sswitch_124
    new-array v10, v8, [F

    .line 340
    .local v10, "floats":[F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_127
    if-ge v11, v8, :cond_132

    .line 341
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    aput v12, v10, v11

    .line 340
    add-int/lit8 v11, v11, 0x1

    goto :goto_127

    .line 342
    .end local v11    # "i":I
    :cond_132
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    goto :goto_13f

    .line 292
    .end local v10    # "floats":[F
    :sswitch_136
    new-array v10, v8, [B

    .line 293
    .local v10, "byteArray":[B
    invoke-virtual {v2, v10, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    nop

    .line 267
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "sizeSpecified":Z
    .end local v8    # "size":I
    .end local v9    # "symbol":C
    .end local v10    # "byteArray":[B
    :goto_13f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 373
    .restart local v6    # "token":Ljava/lang/String;
    .restart local v7    # "sizeSpecified":Z
    .restart local v8    # "size":I
    .restart local v9    # "symbol":C
    :sswitch_143
    if-nez v7, :cond_151

    .line 376
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_157

    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    :cond_157
    :goto_157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "sizeSpecified":Z
    .end local v8    # "size":I
    .end local v9    # "symbol":C
    :cond_15d
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :sswitch_data_162
    .sparse-switch
        0x24 -> :sswitch_143
        0x42 -> :sswitch_136
        0x46 -> :sswitch_124
        0x48 -> :sswitch_111
        0x49 -> :sswitch_ff
        0x4c -> :sswitch_ed
        0x53 -> :sswitch_cd
        0x62 -> :sswitch_ba
        0x66 -> :sswitch_a7
        0x68 -> :sswitch_94
        0x69 -> :sswitch_81
        0x6c -> :sswitch_6e
        0x73 -> :sswitch_56
        0x78 -> :sswitch_4b
    .end sparse-switch
.end method

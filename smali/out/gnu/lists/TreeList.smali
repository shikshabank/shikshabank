.class public Lgnu/lists/TreeList;
.super Lgnu/lists/AbstractSequence;
.source "TreeList.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static final BEGIN_ATTRIBUTE_LONG:I = 0xf109

.field public static final BEGIN_ATTRIBUTE_LONG_SIZE:I = 0x5

.field protected static final BEGIN_DOCUMENT:I = 0xf110

.field protected static final BEGIN_ELEMENT_LONG:I = 0xf108

.field protected static final BEGIN_ELEMENT_SHORT:I = 0xa000

.field protected static final BEGIN_ELEMENT_SHORT_INDEX_MAX:I = 0xfff

.field public static final BEGIN_ENTITY:I = 0xf112

.field public static final BEGIN_ENTITY_SIZE:I = 0x5

.field static final BOOL_FALSE:C = '\uf100'

.field static final BOOL_TRUE:C = '\uf101'

.field static final BYTE_PREFIX:I = 0xf000

.field static final CDATA_SECTION:I = 0xf115

.field static final CHAR_FOLLOWS:I = 0xf106

.field static final COMMENT:I = 0xf117

.field protected static final DOCUMENT_URI:I = 0xf118

.field static final DOUBLE_FOLLOWS:I = 0xf105

.field static final END_ATTRIBUTE:I = 0xf10a

.field public static final END_ATTRIBUTE_SIZE:I = 0x1

.field protected static final END_DOCUMENT:I = 0xf111

.field protected static final END_ELEMENT_LONG:I = 0xf10c

.field protected static final END_ELEMENT_SHORT:I = 0xf10b

.field protected static final END_ENTITY:I = 0xf113

.field static final FLOAT_FOLLOWS:I = 0xf104

.field public static final INT_FOLLOWS:I = 0xf102

.field static final INT_SHORT_ZERO:I = 0xc000

.field static final JOINER:I = 0xf116

.field static final LONG_FOLLOWS:I = 0xf103

.field public static final MAX_CHAR_SHORT:I = 0x9fff

.field static final MAX_INT_SHORT:I = 0x1fff

.field static final MIN_INT_SHORT:I = -0x1000

.field static final OBJECT_REF_FOLLOWS:C = '\uf10d'

.field static final OBJECT_REF_SHORT:I = 0xe000

.field static final OBJECT_REF_SHORT_INDEX_MAX:I = 0xfff

.field protected static final POSITION_PAIR_FOLLOWS:C = '\uf10f'

.field static final POSITION_REF_FOLLOWS:C = '\uf10e'

.field protected static final PROCESSING_INSTRUCTION:I = 0xf114


# instance fields
.field public attrStart:I

.field currentParent:I

.field public data:[C

.field public docStart:I

.field public gapEnd:I

.field public gapStart:I

.field public objects:[Ljava/lang/Object;

.field public oindex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 40
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 42
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;)V
    .registers 4
    .param p1, "list"    # Lgnu/lists/TreeList;

    .line 59
    iget-object v0, p1, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;II)V
    .registers 4
    .param p1, "list"    # Lgnu/lists/TreeList;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .line 53
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 54
    invoke-virtual {p1, p2, p3, p0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 55
    return-void
.end method

.method private copyToList(II)Ljava/lang/Object;
    .registers 4
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .line 1646
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    return-object v0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .registers 2
    .param p1, "c"    # C

    .line 683
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->write(I)V

    .line 684
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 828
    if-nez p1, :cond_4

    .line 829
    const-string p1, "null"

    .line 830
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 835
    if-nez p1, :cond_4

    .line 836
    const-string p1, "null"

    .line 837
    :cond_4
    move v0, p2

    .local v0, "i":I
    :goto_5
    if-ge v0, p3, :cond_11

    .line 838
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 839
    .end local v0    # "i":I
    :cond_11
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .registers 6
    .param p1, "base"    # Ljava/lang/Object;

    .line 535
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz v0, :cond_5

    .line 536
    return-void

    .line 537
    :cond_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 538
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 539
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 540
    .local v0, "p":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf112

    aput-char v2, v1, v0

    .line 541
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 542
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    goto :goto_2b

    :cond_29
    sub-int v3, v2, v0

    :goto_2b
    invoke-virtual {p0, v1, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 543
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 544
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 545
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf113

    aput-char v3, v1, v2

    .line 546
    return-void
.end method

.method public clear()V
    .registers 4

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 65
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 66
    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 67
    const/16 v2, 0x5dc

    if-le v1, v2, :cond_16

    .line 69
    const/16 v1, 0xc8

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 70
    new-array v1, v1, [C

    iput-object v1, p0, Lgnu/lists/TreeList;->data:[C

    .line 72
    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 73
    iput v0, p0, Lgnu/lists/TreeList;->oindex:I

    .line 74
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 75
    return-void
.end method

.method public compare(II)I
    .registers 6
    .param p1, "ipos1"    # I
    .param p2, "ipos2"    # I

    .line 2271
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2272
    .local v0, "i1":I
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2273
    .local v1, "i2":I
    if-ge v0, v1, :cond_c

    const/4 v2, -0x1

    goto :goto_11

    :cond_c
    if-le v0, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .registers 4
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 2303
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 2304
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .registers 7
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .line 400
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 402
    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf10e

    aput-char v4, v1, v2

    .line 404
    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 405
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 406
    return-void
.end method

.method public consumeIRange(IILgnu/lists/Consumer;)I
    .registers 9

    .line 1090
    nop

    .line 1091
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-gt p1, v0, :cond_8

    if-le p2, v0, :cond_8

    goto :goto_9

    :cond_8
    move v0, p2

    .line 1096
    :goto_9
    if-lt p1, v0, :cond_18

    .line 1098
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_17

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-le p2, v0, :cond_17

    .line 1100
    nop

    .line 1101
    move p1, v0

    move v0, p2

    goto :goto_18

    .line 1286
    :cond_17
    return p1

    .line 1107
    :cond_18
    :goto_18
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, v1, p1

    .line 1109
    const v3, 0x9fff

    if-gt p1, v3, :cond_3f

    .line 1111
    add-int/lit8 v4, v2, -0x1

    .line 1112
    nop

    .line 1115
    :goto_26
    if-lt v2, v0, :cond_2a

    .line 1116
    move p1, v2

    goto :goto_35

    .line 1117
    :cond_2a
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, v2, 0x1

    aget-char p1, p1, v2

    .line 1118
    if-le p1, v3, :cond_3d

    .line 1120
    add-int/lit8 v1, v1, -0x1

    .line 1121
    move p1, v1

    .line 1124
    :goto_35
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v2, p1, v4

    invoke-interface {p3, v1, v4, v2}, Lgnu/lists/Consumer;->write([CII)V

    .line 1125
    goto :goto_9

    .line 1118
    :cond_3d
    move v2, v1

    goto :goto_26

    .line 1127
    :cond_3f
    const v3, 0xe000

    if-lt p1, v3, :cond_53

    const v4, 0xefff

    if-gt p1, v4, :cond_53

    .line 1130
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr p1, v3

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1131
    goto/16 :goto_211

    .line 1133
    :cond_53
    const v3, 0xa000

    if-lt p1, v3, :cond_68

    const v4, 0xafff

    if-gt p1, v4, :cond_68

    .line 1136
    sub-int/2addr p1, v3

    .line 1137
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1138
    add-int/lit8 p1, v2, 0x2

    .line 1139
    goto :goto_9

    .line 1148
    :cond_68
    const v3, 0xb000

    if-lt p1, v3, :cond_7b

    const v3, 0xdfff

    if-gt p1, v3, :cond_7b

    .line 1151
    const v1, 0xc000

    sub-int/2addr p1, v1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1152
    goto/16 :goto_211

    .line 1154
    :cond_7b
    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_214

    .line 1283
    :pswitch_7f
    new-instance p2, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown code:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1173
    :pswitch_98
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_aa

    .line 1174
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 1175
    :cond_aa
    add-int/lit8 p1, v2, 0x2

    .line 1176
    goto/16 :goto_9

    .line 1179
    :pswitch_ae
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1180
    add-int/lit8 v2, v2, 0x2

    .line 1181
    instance-of v1, p3, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_c0

    .line 1182
    move-object v1, p3

    check-cast v1, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v1, v3, v2, p1}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1183
    :cond_c0
    add-int/2addr p1, v2

    .line 1185
    goto/16 :goto_9

    .line 1213
    :pswitch_c3
    const-string p1, ""

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 1214
    goto/16 :goto_211

    .line 1188
    :pswitch_ca
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1189
    add-int/lit8 v2, v2, 0x2

    .line 1190
    instance-of v1, p3, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_dd

    .line 1191
    move-object v1, p3

    check-cast v1, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v1, v3, v2, p1}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_e2

    .line 1193
    :cond_dd
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {p3, v1, v2, p1}, Lgnu/lists/Consumer;->write([CII)V

    .line 1194
    :goto_e2
    add-int/2addr p1, v2

    .line 1196
    goto/16 :goto_9

    .line 1199
    :pswitch_e5
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    .line 1200
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1201
    add-int/lit8 v2, v2, 0x4

    .line 1202
    instance-of v3, p3, Lgnu/lists/XConsumer;

    if-eqz v3, :cond_103

    .line 1203
    move-object v3, p3

    check-cast v3, Lgnu/lists/XConsumer;

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v3, p1, v4, v2, v1}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1205
    :cond_103
    add-int p1, v2, v1

    .line 1207
    goto/16 :goto_9

    .line 1169
    :pswitch_107
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_211

    .line 1170
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    invoke-virtual {p1}, Lgnu/lists/TreeList;->endEntity()V

    goto/16 :goto_211

    .line 1164
    :pswitch_113
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_125

    .line 1165
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->beginEntity(Ljava/lang/Object;)V

    .line 1166
    :cond_125
    add-int/lit8 p1, v2, 0x4

    .line 1167
    goto/16 :goto_9

    .line 1161
    :pswitch_129
    invoke-interface {p3}, Lgnu/lists/Consumer;->endDocument()V

    .line 1162
    goto/16 :goto_211

    .line 1157
    :pswitch_12e
    invoke-interface {p3}, Lgnu/lists/Consumer;->startDocument()V

    .line 1158
    add-int/lit8 p1, v2, 0x4

    .line 1159
    goto/16 :goto_9

    .line 1221
    :pswitch_135
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Lgnu/lists/AbstractSequence;

    .line 1222
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1223
    instance-of v3, p3, Lgnu/lists/PositionConsumer;

    if-eqz v3, :cond_150

    .line 1224
    move-object v3, p3

    check-cast v3, Lgnu/lists/PositionConsumer;

    invoke-interface {v3, p1, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_157

    .line 1226
    :cond_150
    invoke-virtual {p1, v1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1227
    :goto_157
    add-int/lit8 p1, v2, 0x4

    .line 1229
    goto/16 :goto_9

    .line 1231
    :pswitch_15b
    instance-of p1, p3, Lgnu/lists/PositionConsumer;

    if-eqz p1, :cond_173

    .line 1233
    move-object p1, p3

    check-cast p1, Lgnu/lists/PositionConsumer;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    check-cast v1, Lgnu/lists/SeqPosition;

    invoke-interface {p1, v1}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    .line 1234
    add-int/lit8 p1, v2, 0x2

    .line 1235
    goto/16 :goto_9

    .line 1239
    :cond_173
    :pswitch_173
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1240
    add-int/lit8 p1, v2, 0x2

    .line 1241
    goto/16 :goto_9

    .line 1254
    :pswitch_182
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    .line 1255
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    .line 1256
    add-int/lit8 p1, v2, 0x6

    .line 1257
    goto/16 :goto_9

    .line 1243
    :pswitch_18c
    add-int/lit8 p1, v2, 0x1

    .line 1244
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    .line 1245
    goto/16 :goto_9

    .line 1264
    :pswitch_193
    invoke-interface {p3}, Lgnu/lists/Consumer;->endAttribute()V

    .line 1265
    goto/16 :goto_211

    .line 1259
    :pswitch_198
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1260
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 p1, v2, 0x4

    .line 1262
    goto/16 :goto_9

    .line 1247
    :pswitch_1a7
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1248
    if-ltz p1, :cond_1b0

    add-int/lit8 v1, v2, -0x1

    goto :goto_1b3

    :cond_1b0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    :goto_1b3
    add-int/2addr p1, v1

    .line 1249
    add-int/lit8 v1, v2, 0x2

    .line 1250
    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1251
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v2, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1252
    move p1, v1

    goto/16 :goto_9

    .line 1216
    :pswitch_1c5
    add-int/lit8 p1, p1, 0x1

    const v3, 0xf106

    sub-int/2addr p1, v3

    invoke-interface {p3, v1, v2, p1}, Lgnu/lists/Consumer;->write([CII)V

    .line 1217
    add-int/lit8 p1, v2, 0x1

    .line 1218
    goto/16 :goto_9

    .line 1279
    :pswitch_1d2
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 1280
    add-int/lit8 p1, v2, 0x4

    .line 1281
    goto/16 :goto_9

    .line 1271
    :pswitch_1e1
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 1272
    add-int/lit8 p1, v2, 0x2

    .line 1273
    goto/16 :goto_9

    .line 1275
    :pswitch_1f0
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 1276
    add-int/lit8 p1, v2, 0x4

    .line 1277
    goto/16 :goto_9

    .line 1267
    :pswitch_1fb
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1268
    add-int/lit8 p1, v2, 0x2

    .line 1269
    goto/16 :goto_9

    .line 1210
    :pswitch_206
    const v1, 0xf100

    if-eq p1, v1, :cond_20c

    goto :goto_20d

    :cond_20c
    const/4 v3, 0x0

    :goto_20d
    invoke-interface {p3, v3}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 1211
    nop

    .line 1096
    :cond_211
    :goto_211
    move p1, v2

    goto/16 :goto_9

    :pswitch_data_214
    .packed-switch 0xf100
        :pswitch_206
        :pswitch_206
        :pswitch_1fb
        :pswitch_1f0
        :pswitch_1e1
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_7f
        :pswitch_1a7
        :pswitch_198
        :pswitch_193
        :pswitch_18c
        :pswitch_182
        :pswitch_173
        :pswitch_15b
        :pswitch_135
        :pswitch_12e
        :pswitch_129
        :pswitch_113
        :pswitch_107
        :pswitch_e5
        :pswitch_ca
        :pswitch_c3
        :pswitch_ae
        :pswitch_98
    .end packed-switch
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .registers 6
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 1072
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1073
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_8
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1075
    .local v0, "start":I
    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v1

    .line 1076
    .local v1, "end":I
    if-ne v1, v0, :cond_19

    .line 1077
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 1078
    :cond_19
    if-ltz v1, :cond_1e

    .line 1079
    invoke-virtual {p0, v0, v1, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1080
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 1085
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1086
    return-void
.end method

.method public createPos(IZ)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lgnu/lists/TreeList;->createRelativePos(IIZ)I

    move-result v0

    return v0
.end method

.method public createRelativePos(IIZ)I
    .registers 8
    .param p1, "istart"    # I
    .param p2, "offset"    # I
    .param p3, "isAfter"    # Z

    .line 1914
    const/4 v0, 0x1

    if-eqz p3, :cond_f

    .line 1916
    if-nez p2, :cond_d

    .line 1918
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_a

    .line 1919
    return p1

    .line 1920
    :cond_a
    if-nez p1, :cond_d

    .line 1921
    return v0

    .line 1923
    :cond_d
    add-int/lit8 p2, p2, -0x1

    .line 1925
    :cond_f
    if-ltz p2, :cond_38

    .line 1927
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1928
    .local v1, "pos":I
    :goto_15
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_26

    .line 1930
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 1931
    if-ltz v1, :cond_20

    goto :goto_15

    .line 1932
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1934
    :cond_26
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v1, v2, :cond_2e

    .line 1935
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1936
    :cond_2e
    if-eqz p3, :cond_35

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v0, v2

    goto :goto_37

    :cond_35
    shl-int/lit8 v0, v1, 0x1

    :goto_37
    return v0

    .line 1926
    .end local v1    # "pos":I
    :cond_38
    const-string v0, "backwards createRelativePos"

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method

.method public documentUriOfPos(I)Ljava/lang/Object;
    .registers 7
    .param p1, "pos"    # I

    .line 2249
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2250
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    .line 2251
    return-object v3

    .line 2252
    :cond_b
    aget-char v2, v1, v0

    const v4, 0xf110

    if-ne v2, v4, :cond_2f

    .line 2254
    add-int/lit8 v2, v0, 0x5

    .line 2255
    .local v2, "next":I
    iget v4, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v2, v4, :cond_1a

    .line 2256
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2257
    :cond_1a
    array-length v4, v1

    if-ge v2, v4, :cond_2f

    aget-char v1, v1, v2

    const v4, 0xf118

    if-ne v1, v4, :cond_2f

    .line 2258
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    return-object v1

    .line 2260
    .end local v2    # "next":I
    :cond_2f
    return-object v3
.end method

.method public dump()V
    .registers 3

    .line 2323
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2325
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;)V

    .line 2326
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2327
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;II)V

    .line 2334
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;II)V
    .registers 20

    .line 2338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2340
    nop

    .line 2341
    move/from16 v3, p2

    const/4 v4, 0x0

    :goto_8
    move/from16 v5, p3

    if-ge v3, v5, :cond_46b

    .line 2344
    iget v6, v0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v3, v6, :cond_14

    iget v6, v0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v3, v6, :cond_467

    .line 2347
    :cond_14
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v6, v6, v3

    .line 2348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-short v10, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    add-int/lit8 v4, v4, -0x1

    const/4 v8, 0x4

    const/4 v10, 0x2

    if-gez v4, :cond_460

    .line 2351
    const v11, 0x9fff

    if-gt v6, v11, :cond_a4

    .line 2353
    const/16 v8, 0x20

    const-string v9, "\'"

    if-lt v6, v8, :cond_79

    const/16 v8, 0x7f

    if-ge v6, v8, :cond_79

    .line 2354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-char v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2355
    :cond_79
    const/16 v8, 0xa

    if-ne v6, v8, :cond_84

    .line 2356
    const-string v6, "=\'\\n\'"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2358
    :cond_84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'\\u"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2360
    :cond_a4
    const/16 v11, 0x40

    const v12, 0xe000

    if-lt v6, v12, :cond_f7

    const v13, 0xefff

    if-gt v6, v13, :cond_f7

    .line 2363
    sub-int/2addr v6, v12

    .line 2364
    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v8, v8, v6

    .line 2365
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=Object#"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x3a

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    goto/16 :goto_460

    .line 2369
    :cond_f7
    const v12, 0xa000

    const/16 v13, 0x3e

    const-string v14, "=<"

    if-lt v6, v12, :cond_140

    const v15, 0xafff

    if-gt v6, v15, :cond_140

    .line 2372
    sub-int/2addr v6, v12

    .line 2373
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x1

    aget-char v4, v4, v8

    add-int/2addr v4, v3

    .line 2374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=BEGIN_ELEMENT_SHORT end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " index#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v8, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    const/4 v4, 0x2

    goto/16 :goto_460

    .line 2377
    :cond_140
    const v15, 0xb000

    if-lt v6, v15, :cond_166

    const v15, 0xdfff

    if-gt v6, v15, :cond_166

    .line 2380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "= INT_SHORT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0xc000

    sub-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2384
    :cond_166
    const-string v15, " -> #"

    const/16 v2, 0x27

    const-string v7, " parent:"

    packed-switch v6, :pswitch_data_46c

    :pswitch_16f
    goto/16 :goto_460

    .line 2431
    :pswitch_171
    const-string v2, "=DOCUMENT_URI: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2433
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2434
    nop

    .line 2435
    const/4 v4, 0x2

    goto/16 :goto_460

    .line 2437
    :pswitch_187
    const-string v4, "=COMMENT: \'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2439
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {v1, v6, v7, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 2440
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2441
    add-int/2addr v4, v10

    .line 2442
    goto/16 :goto_460

    .line 2465
    :pswitch_19f
    const-string v2, "= joiner"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2444
    :pswitch_1a6
    const-string v4, "=CDATA: \'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2446
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {v1, v6, v7, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 2447
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2448
    add-int/2addr v4, v10

    .line 2449
    goto/16 :goto_460

    .line 2451
    :pswitch_1be
    const-string v4, "=PROCESSING_INSTRUCTION: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2453
    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2454
    const-string v4, " \'"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2456
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v7, v3, 0x5

    invoke-virtual {v1, v6, v7, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 2457
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 2458
    add-int/2addr v4, v8

    .line 2459
    goto/16 :goto_460

    .line 2428
    :pswitch_1e8
    const-string v2, "=END_ENTITY"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    goto/16 :goto_460

    .line 2419
    :pswitch_1ef
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2420
    const-string v4, "=BEGIN_ENTITY base:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2424
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2425
    nop

    .line 2426
    const/4 v4, 0x4

    goto/16 :goto_460

    .line 2461
    :pswitch_20d
    const-string v2, "=END_DOCUMENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2462
    goto/16 :goto_460

    .line 2409
    :pswitch_214
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2410
    if-gez v2, :cond_220

    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_221

    :cond_220
    move v4, v3

    :goto_221
    add-int/2addr v2, v4

    .line 2411
    const-string v4, "=BEGIN_DOCUMENT end:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2415
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2416
    nop

    .line 2417
    const/4 v4, 0x4

    goto/16 :goto_460

    .line 2519
    :pswitch_23a
    const-string v2, "=POSITION_PAIR_FOLLOWS seq:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2523
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    .line 2524
    if-nez v2, :cond_253

    const/4 v4, 0x0

    goto :goto_25b

    :cond_253
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_25b
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 2526
    if-nez v2, :cond_269

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_274

    .line 2527
    :cond_269
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :goto_274
    const-string v2, " ipos:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2531
    const/4 v4, 0x4

    goto/16 :goto_460

    .line 2470
    :pswitch_285
    const/4 v4, 0x2

    goto/16 :goto_460

    .line 2497
    :pswitch_288
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=END_ELEMENT_LONG name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2501
    if-gez v2, :cond_2bd

    add-int/2addr v2, v3

    .line 2502
    :cond_2bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " begin:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    add-int/lit8 v2, v3, 0x5

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2504
    if-gez v2, :cond_2dc

    add-int/2addr v2, v3

    .line 2505
    :cond_2dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const/4 v2, 0x6

    .line 2507
    const/4 v4, 0x6

    goto/16 :goto_460

    .line 2472
    :pswitch_2f4
    const-string v2, "=END_ELEMENT_SHORT begin:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    iget-object v2, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v4

    sub-int v2, v3, v2

    .line 2474
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v2, v4, v2

    sub-int/2addr v2, v12

    .line 2476
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2478
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2480
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 2481
    const/4 v4, 0x1

    goto/16 :goto_460

    .line 2517
    :pswitch_31f
    const-string v2, "=END_ATTRIBUTE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_460

    .line 2509
    :pswitch_326
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=BEGIN_ATTRIBUTE name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2513
    if-gez v2, :cond_35c

    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_35d

    :cond_35c
    move v4, v3

    :goto_35d
    add-int/2addr v2, v4

    .line 2514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " end:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    nop

    .line 2516
    const/4 v4, 0x4

    goto/16 :goto_460

    .line 2483
    :pswitch_378
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2484
    if-gez v2, :cond_384

    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_385

    :cond_384
    move v4, v3

    :goto_385
    add-int/2addr v2, v4

    .line 2485
    const-string v4, "=BEGIN_ELEMENT_LONG end:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2487
    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2488
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2490
    if-ltz v2, :cond_3c0

    add-int/lit8 v4, v2, 0x1

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v4, v6, :cond_3c0

    .line 2491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3c5

    .line 2493
    :cond_3c0
    const-string v2, "=<out-of-bounds>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    :goto_3c5
    nop

    .line 2495
    const/4 v4, 0x2

    goto/16 :goto_460

    .line 2467
    :pswitch_3c9
    const-string v2, "=CHAR_FOLLOWS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_460

    .line 2403
    :pswitch_3d1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v6

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=DOUBLE_FOLLOWS value:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    nop

    .line 2407
    const/4 v4, 0x4

    goto :goto_460

    .line 2397
    :pswitch_3f4
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=FLOAT_FOLLOWS value:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2400
    nop

    .line 2401
    const/4 v4, 0x2

    goto :goto_460

    .line 2392
    :pswitch_417
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v6

    .line 2393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=LONG_FOLLOWS value:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    nop

    .line 2395
    const/4 v4, 0x4

    goto :goto_460

    .line 2387
    :pswitch_436
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=INT_FOLLOWS value:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    nop

    .line 2390
    const/4 v4, 0x2

    goto :goto_460

    .line 2464
    :pswitch_455
    const-string v2, "= true"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_460

    .line 2463
    :pswitch_45b
    const-string v2, "= false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    :cond_460
    :goto_460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2541
    if-lez v4, :cond_467

    .line 2543
    add-int/2addr v3, v4

    .line 2544
    const/4 v4, 0x0

    .line 2341
    :cond_467
    const/4 v2, 0x1

    add-int/2addr v3, v2

    goto/16 :goto_8

    .line 2548
    :cond_46b
    return-void

    :pswitch_data_46c
    .packed-switch 0xf100
        :pswitch_45b
        :pswitch_455
        :pswitch_436
        :pswitch_417
        :pswitch_3f4
        :pswitch_3d1
        :pswitch_3c9
        :pswitch_16f
        :pswitch_378
        :pswitch_326
        :pswitch_31f
        :pswitch_2f4
        :pswitch_288
        :pswitch_285
        :pswitch_285
        :pswitch_23a
        :pswitch_214
        :pswitch_20d
        :pswitch_1ef
        :pswitch_1e8
        :pswitch_1be
        :pswitch_1a6
        :pswitch_19f
        :pswitch_187
        :pswitch_171
    .end packed-switch
.end method

.method public endAttribute()V
    .registers 5

    .line 670
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-gtz v0, :cond_5

    .line 671
    return-void

    .line 672
    :cond_5
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v1, v1, v2

    const v3, 0xf10a

    if-ne v1, v3, :cond_2c

    .line 675
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 676
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 678
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v0, v1

    .line 679
    return-void

    .line 673
    :cond_2c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endAttribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .registers 6

    .line 517
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v2, v0, v1

    const v3, 0xf111

    if-ne v2, v3, :cond_44

    iget v2, p0, Lgnu/lists/TreeList;->docStart:I

    if-lez v2, :cond_44

    iget v4, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v0, v0, v4

    const v4, 0xf110

    if-ne v0, v4, :cond_44

    .line 521
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 522
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->docStart:I

    .line 524
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v0, v1

    .line 525
    iget v0, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 526
    .local v0, "parent":I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_3e

    move v1, v0

    goto :goto_41

    :cond_3e
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    :goto_41
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 527
    return-void

    .line 519
    .end local v0    # "parent":I
    :cond_44
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endDocument"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement()V
    .registers 10

    .line 591
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v2, 0xf10c

    if-ne v0, v2, :cond_8d

    .line 593
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 594
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 595
    .local v1, "begin":I
    iget v3, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 596
    .local v3, "parent":I
    iput v3, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 597
    iget v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 598
    iget v4, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int v5, v4, v1

    .line 599
    .local v5, "offset":I
    sub-int v6, v1, v3

    .line 600
    .local v6, "parentOffset":I
    const/16 v7, 0xfff

    if-ge v0, v7, :cond_5b

    const/high16 v7, 0x10000

    if-ge v5, v7, :cond_5b

    if-ge v6, v7, :cond_5b

    .line 603
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    const v7, 0xa000

    or-int/2addr v7, v0

    int-to-char v7, v7

    aput-char v7, v2, v1

    .line 604
    add-int/lit8 v7, v1, 0x1

    int-to-char v8, v5

    aput-char v8, v2, v7

    .line 605
    add-int/lit8 v7, v1, 0x2

    int-to-char v8, v6

    aput-char v8, v2, v7

    .line 606
    const v7, 0xf10b

    aput-char v7, v2, v4

    .line 607
    add-int/lit8 v7, v4, 0x1

    int-to-char v8, v5

    aput-char v8, v2, v7

    .line 608
    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_8c

    .line 612
    :cond_5b
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    const v7, 0xf108

    aput-char v7, v4, v1

    .line 613
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v5}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 614
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    iget v7, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v2, v4, v7

    .line 615
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 616
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x3

    neg-int v4, v5

    invoke-virtual {p0, v2, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 617
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ge v3, v2, :cond_80

    if-gt v1, v2, :cond_81

    .line 618
    :cond_80
    sub-int/2addr v3, v2

    .line 619
    :cond_81
    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v2, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 620
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 622
    :goto_8c
    return-void

    .line 592
    .end local v0    # "index":I
    .end local v1    # "begin":I
    .end local v3    # "parent":I
    .end local v5    # "offset":I
    .end local v6    # "parentOffset":I
    :cond_8d
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endElement"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endEntity()V
    .registers 7

    .line 551
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v2

    if-ne v1, v3, :cond_3f

    aget-char v1, v2, v0

    const v3, 0xf113

    if-eq v1, v3, :cond_11

    goto :goto_3f

    .line 553
    :cond_11
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v4, v2, v1

    const v5, 0xf112

    if-ne v4, v5, :cond_37

    .line 557
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 558
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v3, v2, v0

    .line 559
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 560
    .local v0, "parent":I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_31

    move v1, v0

    goto :goto_34

    :cond_31
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    :goto_34
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 561
    return-void

    .line 555
    .end local v0    # "parent":I
    :cond_37
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endEntity"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3f
    :goto_3f
    return-void
.end method

.method public ensureSpace(I)V
    .registers 11
    .param p1, "needed"    # I

    .line 328
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    .line 329
    .local v0, "avail":I
    if-le p1, v0, :cond_2d

    .line 331
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v2

    .line 332
    .local v3, "oldSize":I
    sub-int v4, v3, v0

    add-int/2addr v4, p1

    .line 333
    .local v4, "neededSize":I
    mul-int/lit8 v5, v3, 0x2

    .line 334
    .local v5, "newSize":I
    if-ge v5, v4, :cond_12

    .line 335
    move v5, v4

    .line 336
    :cond_12
    new-array v6, v5, [C

    .line 337
    .local v6, "tmp":[C
    if-lez v1, :cond_1a

    .line 338
    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1a
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int v2, v3, v1

    .line 340
    .local v2, "afterGap":I
    if-lez v2, :cond_27

    .line 341
    iget-object v7, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v8, v5, v2

    invoke-static {v7, v1, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_27
    sub-int v1, v5, v2

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 343
    iput-object v6, p0, Lgnu/lists/TreeList;->data:[C

    .line 345
    .end local v2    # "afterGap":I
    .end local v3    # "oldSize":I
    .end local v4    # "neededSize":I
    .end local v5    # "newSize":I
    .end local v6    # "tmp":[C
    :cond_2d
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 370
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 371
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 372
    :cond_a
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    iget v1, p0, Lgnu/lists/TreeList;->oindex:I

    aput-object p1, v0, v1

    .line 373
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->oindex:I

    return v1
.end method

.method public firstAttributePos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .line 1039
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1040
    .local v0, "index":I
    if-gez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    shl-int/lit8 v1, v0, 0x1

    :goto_e
    return v1
.end method

.method public firstChildPos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .line 900
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    .line 901
    .local v0, "index":I
    if-gez v0, :cond_c

    .line 902
    const/4 v1, 0x0

    return v1

    .line 903
    :cond_c
    shl-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "i":I
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_12

    .line 1063
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    .line 1064
    if-eqz v0, :cond_c

    goto :goto_1

    .line 1065
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1067
    :cond_12
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeCount(I)I
    .registers 6
    .param p1, "parent"    # I

    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "n":I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v1

    .line 1022
    .local v1, "attr":I
    :goto_5
    if-eqz v1, :cond_16

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_16

    .line 1024
    add-int/lit8 v0, v0, 0x1

    .line 1023
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    goto :goto_5

    .line 1025
    .end local v1    # "attr":I
    :cond_16
    return v0
.end method

.method protected getIndexDifference(II)I
    .registers 8
    .param p1, "ipos1"    # I
    .param p2, "ipos0"    # I

    .line 2278
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2279
    .local v0, "i0":I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2280
    .local v1, "i1":I
    const/4 v2, 0x0

    .line 2281
    .local v2, "negate":Z
    if-le v0, v1, :cond_f

    .line 2283
    const/4 v2, 0x1

    .line 2284
    move v3, v1

    .local v3, "i":I
    move v1, v0

    move v0, v3

    .line 2286
    .end local v3    # "i":I
    :cond_f
    const/4 v3, 0x0

    .line 2287
    .restart local v3    # "i":I
    :goto_10
    if-ge v0, v1, :cond_19

    .line 2289
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 2290
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2292
    :cond_19
    if-eqz v2, :cond_1d

    neg-int v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    return v4
.end method

.method protected final getIntN(I)I
    .registers 5
    .param p1, "index"    # I

    .line 379
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v0, p1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    aget-char v0, v0, v2

    const v2, 0xffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getLongN(I)J
    .registers 10
    .param p1, "index"    # I

    .line 385
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 386
    .local v0, "data":[C
    aget-char v1, v0, p1

    int-to-long v1, v1

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/16 v5, 0x30

    shl-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x1

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x3

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getNextKind(I)I
    .registers 3
    .param p1, "ipos"    # I

    .line 1533
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getNextKindI(I)I

    move-result v0

    return v0
.end method

.method public getNextKindI(I)I
    .registers 8
    .param p1, "index"    # I

    .line 1538
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    .line 1539
    return v2

    .line 1540
    :cond_7
    aget-char v0, v0, p1

    .line 1541
    .local v0, "datum":C
    const v1, 0x9fff

    if-gt v0, v1, :cond_11

    .line 1542
    const/16 v1, 0x1d

    return v1

    .line 1543
    :cond_11
    const v1, 0xe000

    const/16 v3, 0x20

    if-lt v0, v1, :cond_1e

    const v1, 0xefff

    if-gt v0, v1, :cond_1e

    .line 1545
    return v3

    .line 1546
    :cond_1e
    const v1, 0xa000

    const/16 v4, 0x21

    if-lt v0, v1, :cond_2b

    const v1, 0xafff

    if-gt v0, v1, :cond_2b

    .line 1548
    return v4

    .line 1549
    :cond_2b
    const v1, 0xff00

    and-int/2addr v1, v0

    const v5, 0xf000

    if-ne v1, v5, :cond_37

    .line 1550
    const/16 v1, 0x1c

    return v1

    .line 1551
    :cond_37
    const v1, 0xb000

    const/16 v5, 0x16

    if-lt v0, v1, :cond_44

    const v1, 0xdfff

    if-gt v0, v1, :cond_44

    .line 1553
    return v5

    .line 1554
    :cond_44
    packed-switch v0, :pswitch_data_70

    .line 1594
    :pswitch_47
    return v3

    .line 1585
    :pswitch_48
    const/16 v1, 0x24

    return v1

    .line 1583
    :pswitch_4b
    const/16 v1, 0x1f

    return v1

    .line 1587
    :pswitch_4e
    const/16 v1, 0x25

    return v1

    .line 1571
    :pswitch_51
    add-int/lit8 v1, p1, 0x5

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v1

    return v1

    .line 1579
    :pswitch_5a
    return v2

    .line 1581
    :pswitch_5b
    const/16 v1, 0x23

    return v1

    .line 1573
    :pswitch_5e
    return v4

    .line 1569
    :pswitch_5f
    const/16 v1, 0x22

    return v1

    .line 1566
    :pswitch_62
    const/16 v1, 0x1a

    return v1

    .line 1564
    :pswitch_65
    const/16 v1, 0x19

    return v1

    .line 1562
    :pswitch_68
    const/16 v1, 0x18

    return v1

    .line 1560
    :pswitch_6b
    return v5

    .line 1558
    :pswitch_6c
    const/16 v1, 0x1b

    return v1

    nop

    :pswitch_data_70
    .packed-switch 0xf100
        :pswitch_6c
        :pswitch_6c
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_47
        :pswitch_5e
        :pswitch_5b
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_5f
        :pswitch_5a
        :pswitch_51
        :pswitch_5a
        :pswitch_4e
        :pswitch_4b
        :pswitch_47
        :pswitch_48
    .end packed-switch
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .registers 4
    .param p1, "ipos"    # I

    .line 1632
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1633
    .local v0, "type":Ljava/lang/Object;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .registers 7
    .param p1, "ipos"    # I

    .line 1601
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1605
    .local v0, "index":I
    :goto_4
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    .line 1606
    return-object v3

    .line 1607
    :cond_b
    aget-char v1, v1, v0

    .line 1608
    .local v1, "datum":C
    const v2, 0xf112

    if-eq v1, v2, :cond_5a

    .line 1609
    nop

    .line 1612
    const v2, 0xa000

    if-lt v1, v2, :cond_20

    const v4, 0xafff

    if-gt v1, v4, :cond_20

    .line 1614
    sub-int v0, v1, v2

    goto :goto_51

    .line 1615
    :cond_20
    const v2, 0xf108

    if-ne v1, v2, :cond_3a

    .line 1617
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1618
    .local v2, "j":I
    if-gez v2, :cond_31

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_32

    :cond_31
    move v4, v0

    :goto_32
    add-int/2addr v2, v4

    .line 1619
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1620
    .end local v2    # "j":I
    goto :goto_51

    .line 1621
    :cond_3a
    const v2, 0xf109

    if-ne v1, v2, :cond_46

    .line 1622
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    goto :goto_51

    .line 1623
    :cond_46
    const v2, 0xf114

    if-ne v1, v2, :cond_59

    .line 1624
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1627
    :goto_51
    if-gez v0, :cond_54

    goto :goto_58

    :cond_54
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v2, v0

    :goto_58
    return-object v3

    .line 1626
    :cond_59
    return-object v3

    .line 1610
    :cond_5a
    add-int/lit8 v0, v0, 0x5

    goto :goto_4
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .registers 6

    .line 1667
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1668
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    if-ne p1, v1, :cond_c

    .line 1669
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 1670
    :cond_c
    aget-char v1, v0, p1

    .line 1671
    const v2, 0x9fff

    if-gt v1, v2, :cond_18

    .line 1672
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1673
    :cond_18
    const v2, 0xe000

    if-lt v1, v2, :cond_28

    const v3, 0xefff

    if-gt v1, v3, :cond_28

    .line 1675
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    return-object p1

    .line 1676
    :cond_28
    const v2, 0xa000

    if-lt v1, v2, :cond_3e

    const v2, 0xafff

    if-gt v1, v2, :cond_3e

    .line 1678
    add-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1683
    :cond_3e
    const v2, 0xb000

    if-lt v1, v2, :cond_51

    const v2, 0xdfff

    if-gt v1, v2, :cond_51

    .line 1685
    const p1, 0xc000

    sub-int/2addr v1, p1

    invoke-static {v1}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1686
    :cond_51
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_11a

    .line 1741
    :pswitch_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPosNext, code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1735
    :pswitch_71
    const-string p1, ""

    return-object p1

    .line 1690
    :pswitch_74
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1691
    if-gez v0, :cond_80

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_81

    :cond_80
    move v1, p1

    :goto_81
    add-int/2addr v0, v1

    .line 1692
    add-int/2addr v0, v2

    .line 1699
    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1737
    :pswitch_88
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    .line 1738
    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1739
    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    return-object p1

    .line 1733
    :pswitch_9f
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 1730
    :pswitch_a9
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 1716
    :pswitch_ac
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1717
    if-gez v0, :cond_b8

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_b9

    :cond_b8
    move v1, p1

    :goto_b9
    add-int/2addr v0, v1

    .line 1718
    add-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1722
    :pswitch_c0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1723
    if-gez v0, :cond_cc

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_cd

    :cond_cc
    move v1, p1

    :goto_cd
    add-int/2addr v0, v1

    .line 1724
    add-int/lit8 v0, v0, 0x7

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1713
    :pswitch_d5
    add-int/2addr p1, v2

    aget-char p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1711
    :pswitch_dd
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1709
    :pswitch_eb
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1707
    :pswitch_f9
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1705
    :pswitch_103
    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1703
    :pswitch_10d
    const p1, 0xf100

    if-eq v1, p1, :cond_113

    goto :goto_114

    :cond_113
    const/4 v2, 0x0

    :goto_114
    invoke-static {v2}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_11a
    .packed-switch 0xf100
        :pswitch_10d
        :pswitch_10d
        :pswitch_103
        :pswitch_f9
        :pswitch_eb
        :pswitch_dd
        :pswitch_d5
        :pswitch_55
        :pswitch_c0
        :pswitch_ac
        :pswitch_a9
        :pswitch_a9
        :pswitch_a9
        :pswitch_9f
        :pswitch_9f
        :pswitch_88
        :pswitch_74
        :pswitch_a9
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_71
    .end packed-switch
.end method

.method public getPosNextInt(I)I
    .registers 5
    .param p1, "ipos"    # I

    .line 1652
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1653
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 1655
    aget-char v1, v1, v0

    .line 1656
    .local v1, "datum":C
    const v2, 0xb000

    if-lt v1, v2, :cond_1b

    const v2, 0xdfff

    if-gt v1, v2, :cond_1b

    .line 1658
    const v2, 0xc000

    sub-int v2, v1, v2

    return v2

    .line 1659
    :cond_1b
    const v2, 0xf102

    if-ne v1, v2, :cond_27

    .line 1660
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    return v2

    .line 1662
    .end local v1    # "datum":C
    :cond_27
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .registers 3
    .param p1, "ipos"    # I

    .line 1638
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 1639
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1641
    :cond_e
    invoke-super {p0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gotoAttributesStart(I)I
    .registers 5
    .param p1, "index"    # I

    .line 1045
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v0, :cond_8

    .line 1046
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1047
    :cond_8
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_f

    .line 1048
    return v2

    .line 1049
    :cond_f
    aget-char v0, v0, p1

    .line 1050
    .local v0, "datum":C
    const v1, 0xa000

    if-lt v0, v1, :cond_1b

    const v1, 0xafff

    if-le v0, v1, :cond_20

    :cond_1b
    const v1, 0xf108

    if-ne v0, v1, :cond_23

    .line 1053
    :cond_20
    add-int/lit8 v1, p1, 0x3

    return v1

    .line 1055
    :cond_23
    return v2
.end method

.method public gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .registers 5
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .line 1030
    iget v0, p1, Lgnu/lists/TreePosition;->ipos:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1031
    .local v0, "index":I
    if-gez v0, :cond_c

    .line 1032
    const/4 v1, 0x0

    return v1

    .line 1033
    :cond_c
    shl-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, p0, v2}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 1034
    return v1
.end method

.method public final gotoChildrenStart(I)I
    .registers 5
    .param p1, "index"    # I

    .line 908
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_7

    .line 909
    return v2

    .line 910
    :cond_7
    aget-char v0, v0, p1

    .line 911
    .local v0, "datum":C
    const v1, 0xa000

    if-lt v0, v1, :cond_13

    const v1, 0xafff

    if-le v0, v1, :cond_18

    :cond_13
    const v1, 0xf108

    if-ne v0, v1, :cond_1b

    .line 914
    :cond_18
    add-int/lit8 p1, p1, 0x3

    goto :goto_29

    .line 915
    :cond_1b
    const v1, 0xf110

    if-eq v0, v1, :cond_27

    const v1, 0xf112

    if-ne v0, v1, :cond_26

    goto :goto_27

    .line 918
    :cond_26
    return v2

    .line 916
    :cond_27
    :goto_27
    add-int/lit8 p1, p1, 0x5

    .line 921
    :goto_29
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v1, :cond_31

    .line 922
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v2, v1

    add-int/2addr p1, v2

    .line 923
    :cond_31
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v1, p1

    .line 924
    const v1, 0xf109

    if-ne v0, v1, :cond_4a

    .line 926
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 927
    .local v1, "end":I
    if-gez v1, :cond_46

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_47

    :cond_46
    move v2, p1

    :goto_47
    add-int p1, v1, v2

    .line 928
    .end local v1    # "end":I
    goto :goto_29

    .line 929
    :cond_4a
    const v1, 0xf10a

    if-eq v0, v1, :cond_5e

    const v1, 0xf116

    if-ne v0, v1, :cond_55

    goto :goto_5e

    .line 931
    :cond_55
    const v1, 0xf118

    if-ne v0, v1, :cond_5d

    .line 932
    add-int/lit8 p1, p1, 0x3

    goto :goto_29

    .line 936
    :cond_5d
    return p1

    .line 930
    :cond_5e
    :goto_5e
    add-int/lit8 p1, p1, 0x1

    goto :goto_29
.end method

.method public hasNext(I)Z
    .registers 6
    .param p1, "ipos"    # I

    .line 1523
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1524
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    .line 1525
    return v3

    .line 1526
    :cond_b
    aget-char v1, v1, v0

    .line 1527
    .local v1, "ch":C
    const v2, 0xf10a

    if-eq v1, v2, :cond_22

    const v2, 0xf10b

    if-eq v1, v2, :cond_22

    const v2, 0xf10c

    if-eq v1, v2, :cond_22

    const v2, 0xf111

    if-eq v1, v2, :cond_22

    const/4 v3, 0x1

    :cond_22
    return v3
.end method

.method public hashCode()I
    .registers 2

    .line 2298
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ignoring()Z
    .registers 2

    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .line 856
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 857
    .local v0, "pos":I
    :goto_9
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final nextDataIndex(I)I
    .registers 7
    .param p1, "pos"    # I

    .line 2173
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_6

    .line 2174
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2175
    :cond_6
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_d

    .line 2176
    return v2

    .line 2178
    :cond_d
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "pos":I
    .local v1, "pos":I
    aget-char p1, v0, p1

    .line 2179
    .local p1, "datum":C
    const v3, 0x9fff

    if-le p1, v3, :cond_c5

    const v3, 0xe000

    if-lt p1, v3, :cond_20

    const v3, 0xefff

    if-le p1, v3, :cond_c5

    :cond_20
    const v3, 0xb000

    if-lt p1, v3, :cond_2c

    const v3, 0xdfff

    if-gt p1, v3, :cond_2c

    goto/16 :goto_c5

    .line 2185
    :cond_2c
    const v3, 0xa000

    if-lt p1, v3, :cond_3c

    const v3, 0xafff

    if-gt p1, v3, :cond_3c

    .line 2187
    aget-char v0, v0, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2188
    :cond_3c
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_c6

    .line 2243
    .local v0, "j":I
    :pswitch_40
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2188
    :pswitch_5d
    goto :goto_60

    .line 2237
    :pswitch_5e
    add-int/lit8 v1, v1, 0x2

    .line 2241
    :goto_60
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    add-int/2addr v2, v3

    return v2

    .line 2195
    :pswitch_68
    add-int/lit8 v0, v1, 0x4

    .line 2198
    :goto_6a
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v3, :cond_70

    .line 2199
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2200
    :cond_70
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v3

    if-ne v0, v4, :cond_76

    .line 2201
    return v2

    .line 2202
    :cond_76
    aget-char v3, v3, v0

    const v4, 0xf113

    if-ne v3, v4, :cond_80

    .line 2203
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 2204
    :cond_80
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    goto :goto_6a

    .line 2191
    .end local v0    # "j":I
    :pswitch_85
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2192
    .restart local v0    # "j":I
    if-gez v0, :cond_8f

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_91

    :cond_8f
    add-int/lit8 v2, v1, -0x1

    :goto_91
    add-int/2addr v0, v2

    .line 2193
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 2218
    :pswitch_95
    add-int/lit8 v2, v1, 0x4

    return v2

    .line 2224
    :pswitch_98
    return v2

    .line 2230
    :pswitch_99
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2231
    if-gez v0, :cond_a5

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_a7

    :cond_a5
    add-int/lit8 v2, v1, -0x1

    :goto_a7
    add-int/2addr v0, v2

    .line 2232
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 2226
    :pswitch_ab
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2227
    if-gez v0, :cond_b5

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_b7

    :cond_b5
    add-int/lit8 v2, v1, -0x1

    :goto_b7
    add-int/2addr v0, v2

    .line 2228
    add-int/lit8 v2, v0, 0x7

    return v2

    .line 2211
    :pswitch_bb
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 2235
    :pswitch_be
    add-int/lit8 v2, v1, 0x4

    return v2

    .line 2216
    :pswitch_c1
    add-int/lit8 v2, v1, 0x2

    return v2

    .line 2209
    :pswitch_c4
    return v1

    .line 2184
    .end local v0    # "j":I
    :cond_c5
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0xf100
        :pswitch_c4
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_40
        :pswitch_ab
        :pswitch_99
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_c1
        :pswitch_c1
        :pswitch_95
        :pswitch_85
        :pswitch_98
        :pswitch_68
        :pswitch_98
        :pswitch_5e
        :pswitch_5d
        :pswitch_c4
        :pswitch_5d
    .end packed-switch
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .registers 13

    .line 1998
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1999
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p3

    .line 2000
    nop

    .line 2001
    instance-of v0, p2, Lgnu/lists/NodePredicate;

    if-eqz v0, :cond_12

    .line 2002
    invoke-virtual {p0, p1, p3}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    goto :goto_13

    .line 2001
    :cond_12
    move v0, p1

    .line 2003
    :goto_13
    nop

    .line 2007
    instance-of v1, p2, Lgnu/lists/ElementPredicate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 2009
    nop

    .line 2010
    nop

    .line 2011
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_2c

    .line 2013
    :cond_1f
    instance-of v1, p2, Lgnu/lists/AttributePredicate;

    if-eqz v1, :cond_28

    .line 2015
    nop

    .line 2016
    nop

    .line 2017
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_2c

    .line 2021
    :cond_28
    nop

    .line 2022
    nop

    .line 2023
    const/4 v1, 0x1

    const/4 v4, 0x1

    .line 2028
    :goto_2c
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v5, :cond_32

    .line 2029
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2030
    :cond_32
    if-lt v0, p3, :cond_38

    const/4 v5, -0x1

    if-eq p3, v5, :cond_38

    .line 2031
    return v2

    .line 2033
    :cond_38
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v6, v5, v0

    .line 2034
    const v7, 0x9fff

    if-le v6, v7, :cond_140

    const v7, 0xe000

    if-lt v6, v7, :cond_4b

    const v7, 0xefff

    if-le v6, v7, :cond_140

    :cond_4b
    const v7, 0xb000

    if-lt v6, v7, :cond_57

    const v7, 0xdfff

    if-gt v6, v7, :cond_57

    goto/16 :goto_140

    .line 2049
    :cond_57
    packed-switch v6, :pswitch_data_15a

    .line 2139
    :pswitch_5a
    const v7, 0xa000

    if-lt v6, v7, :cond_127

    const v7, 0xafff

    if-gt v6, v7, :cond_127

    .line 2142
    if-eqz p4, :cond_105

    .line 2143
    add-int/lit8 v5, v0, 0x3

    goto/16 :goto_10c

    .line 2052
    :pswitch_6a
    add-int/lit8 v0, v0, 0x3

    .line 2053
    goto/16 :goto_158

    .line 2121
    :pswitch_6e
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2122
    goto/16 :goto_10e

    .line 2109
    :pswitch_79
    add-int/lit8 v0, v0, 0x1

    .line 2110
    goto/16 :goto_158

    .line 2125
    :pswitch_7d
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2126
    if-eqz v1, :cond_8a

    goto/16 :goto_10e

    :cond_8a
    move v0, v5

    goto/16 :goto_158

    .line 2117
    :pswitch_8d
    add-int/lit8 v5, v0, 0x5

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2118
    goto/16 :goto_10e

    .line 2059
    :pswitch_98
    add-int/lit8 v0, v0, 0x5

    .line 2060
    goto/16 :goto_158

    .line 2055
    :pswitch_9c
    add-int/lit8 v5, v0, 0x5

    .line 2056
    goto/16 :goto_10e

    .line 2077
    :pswitch_a0
    add-int/lit8 v5, v0, 0x5

    .line 2078
    if-eqz v1, :cond_a6

    goto/16 :goto_10e

    :cond_a6
    move v0, v5

    goto/16 :goto_158

    .line 2081
    :pswitch_a9
    if-nez p4, :cond_ac

    .line 2082
    return v2

    .line 2083
    :cond_ac
    add-int/lit8 v0, v0, 0x7

    .line 2084
    goto/16 :goto_158

    .line 2072
    :pswitch_b0
    if-nez p4, :cond_b3

    .line 2073
    return v2

    .line 2074
    :cond_b3
    add-int/lit8 v0, v0, 0x2

    .line 2075
    goto/16 :goto_158

    .line 2087
    :pswitch_b7
    if-nez p4, :cond_ba

    .line 2088
    return v2

    .line 2091
    :cond_ba
    :pswitch_ba
    add-int/lit8 v0, v0, 0x1

    .line 2092
    goto/16 :goto_158

    .line 2094
    :pswitch_be
    nop

    .line 2096
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2097
    add-int/lit8 v6, v5, 0x1

    if-gez v5, :cond_cc

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    :cond_cc
    add-int/2addr v6, v0

    .line 2101
    move v0, v6

    goto/16 :goto_158

    .line 2129
    :pswitch_d0
    if-eqz p4, :cond_d5

    .line 2130
    add-int/lit8 v5, v0, 0x3

    goto :goto_e5

    .line 2133
    :cond_d5
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2134
    if-gez v5, :cond_e1

    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    goto :goto_e2

    :cond_e1
    move v6, v0

    :goto_e2
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    .line 2136
    :goto_e5
    if-eqz v4, :cond_e8

    goto :goto_10e

    :cond_e8
    move v0, v5

    goto/16 :goto_158

    .line 2069
    :pswitch_eb
    add-int/lit8 v0, v0, 0x2

    .line 2070
    goto/16 :goto_158

    .line 2113
    :pswitch_ef
    add-int/lit8 v5, v0, 0x5

    .line 2114
    if-eqz v1, :cond_f4

    goto :goto_10e

    :cond_f4
    move v0, v5

    goto/16 :goto_158

    .line 2065
    :pswitch_f7
    add-int/lit8 v5, v0, 0x3

    .line 2066
    if-eqz v1, :cond_fc

    goto :goto_10e

    :cond_fc
    move v0, v5

    goto :goto_158

    .line 2105
    :pswitch_fe
    add-int/lit8 v5, v0, 0x1

    .line 2106
    if-eqz v1, :cond_103

    goto :goto_10e

    :cond_103
    move v0, v5

    goto :goto_158

    .line 2145
    :cond_105
    add-int/lit8 v6, v0, 0x1

    aget-char v5, v5, v6

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x2

    .line 2146
    :goto_10c
    if-eqz v4, :cond_125

    .line 2152
    :goto_10e
    if-le v0, p1, :cond_123

    shl-int/lit8 v6, v0, 0x1

    invoke-interface {p2, p0, v6}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_123

    .line 2154
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_120

    .line 2155
    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    .line 2156
    :cond_120
    shl-int/lit8 p1, v0, 0x1

    return p1

    .line 2026
    :cond_123
    move v0, v5

    goto :goto_158

    .line 2146
    :cond_125
    move v0, v5

    goto :goto_158

    .line 2149
    :cond_127
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown code:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2040
    :cond_140
    :goto_140
    if-eqz v1, :cond_155

    shl-int/lit8 v5, v0, 0x1

    invoke-interface {p2, p0, v5}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v5

    if-eqz v5, :cond_155

    .line 2042
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_152

    .line 2043
    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    .line 2044
    :cond_152
    shl-int/lit8 p1, v0, 0x1

    return p1

    .line 2046
    :cond_155
    add-int/lit8 v0, v0, 0x1

    .line 2047
    nop

    .line 2026
    :goto_158
    goto/16 :goto_2c

    :pswitch_data_15a
    .packed-switch 0xf100
        :pswitch_fe
        :pswitch_fe
        :pswitch_f7
        :pswitch_ef
        :pswitch_f7
        :pswitch_ef
        :pswitch_eb
        :pswitch_5a
        :pswitch_d0
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_f7
        :pswitch_f7
        :pswitch_a0
        :pswitch_9c
        :pswitch_b7
        :pswitch_98
        :pswitch_ba
        :pswitch_8d
        :pswitch_7d
        :pswitch_79
        :pswitch_6e
        :pswitch_6a
    .end packed-switch
.end method

.method public final nextNodeIndex(II)I
    .registers 6
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1942
    const/high16 v0, -0x80000000

    or-int/2addr v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1943
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, v0

    .line 1946
    :cond_9
    :goto_9
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_f

    .line 1947
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1948
    :cond_f
    if-lt p1, p2, :cond_12

    .line 1949
    return p1

    .line 1950
    :cond_12
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 1951
    .local v0, "datum":C
    const v1, 0x9fff

    if-le v0, v1, :cond_58

    const v1, 0xe000

    if-lt v0, v1, :cond_25

    const v1, 0xefff

    if-le v0, v1, :cond_58

    :cond_25
    const v1, 0xb000

    if-lt v0, v1, :cond_2f

    const v1, 0xdfff

    if-le v0, v1, :cond_58

    :cond_2f
    const v1, 0xff00

    and-int/2addr v1, v0

    const v2, 0xf000

    if-ne v1, v2, :cond_39

    goto :goto_58

    .line 1961
    :cond_39
    const v1, 0xa000

    if-lt v0, v1, :cond_44

    const v1, 0xafff

    if-gt v0, v1, :cond_44

    .line 1963
    return p1

    .line 1964
    :cond_44
    packed-switch v0, :pswitch_data_5c

    .line 1989
    :pswitch_47
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1990
    goto :goto_9

    .line 1967
    :pswitch_4c
    add-int/lit8 p1, p1, 0x3

    .line 1968
    goto :goto_55

    .line 1970
    :pswitch_4f
    add-int/lit8 p1, p1, 0x1

    .line 1971
    goto :goto_55

    .line 1979
    :pswitch_52
    add-int/lit8 p1, p1, 0x5

    .line 1980
    nop

    .line 1992
    .end local v0    # "datum":C
    :goto_55
    goto :goto_9

    .line 1986
    .restart local v0    # "datum":C
    :pswitch_56
    return p1

    .line 1977
    :pswitch_57
    return p1

    .line 1958
    :cond_58
    :goto_58
    add-int/lit8 p1, p1, 0x1

    .line 1959
    goto :goto_9

    nop

    :pswitch_data_5c
    .packed-switch 0xf108
        :pswitch_57
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_57
        :pswitch_56
        :pswitch_52
        :pswitch_56
        :pswitch_57
        :pswitch_47
        :pswitch_4f
        :pswitch_57
        :pswitch_4c
    .end packed-switch
.end method

.method public nextPos(I)I
    .registers 5
    .param p1, "position"    # I

    .line 2163
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2164
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_b

    .line 2165
    const/4 v1, 0x0

    return v1

    .line 2166
    :cond_b
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, v1, :cond_13

    .line 2167
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2168
    :cond_13
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public parentOrEntityI(I)I
    .registers 6

    .line 960
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p1, v1, :cond_7

    .line 961
    return v2

    .line 962
    :cond_7
    aget-char v1, v0, p1

    .line 963
    const v3, 0xf110

    if-eq v1, v3, :cond_73

    const v3, 0xf112

    if-ne v1, v3, :cond_14

    goto :goto_73

    .line 971
    :cond_14
    const v3, 0xa000

    if-lt v1, v3, :cond_28

    const v3, 0xafff

    if-gt v1, v3, :cond_28

    .line 974
    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    .line 975
    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    sub-int v2, p1, v0

    :goto_27
    return v2

    .line 977
    :cond_28
    const v0, 0xf108

    if-ne v1, v0, :cond_46

    .line 979
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 980
    if-gez v0, :cond_38

    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_38
    add-int/2addr v0, p1

    .line 981
    add-int/lit8 p1, v0, 0x5

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 982
    if-nez p1, :cond_42

    .line 983
    return v2

    .line 984
    :cond_42
    if-gez p1, :cond_45

    .line 985
    add-int/2addr p1, v0

    .line 986
    :cond_45
    return p1

    .line 990
    :cond_46
    :goto_46
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_4c

    .line 991
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 992
    :cond_4c
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    if-ne p1, v1, :cond_52

    .line 993
    return v2

    .line 994
    :cond_52
    aget-char v1, v0, p1

    .line 995
    sparse-switch v1, :sswitch_data_7e

    .line 1010
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1012
    if-gez p1, :cond_46

    .line 1013
    goto :goto_72

    .line 1008
    :sswitch_5e
    return v2

    .line 1000
    :sswitch_5f
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1001
    if-gez v0, :cond_68

    .line 1002
    add-int/2addr v0, p1

    .line 1003
    :cond_68
    return v0

    .line 998
    :sswitch_69
    add-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    sub-int/2addr p1, v0

    return p1

    .line 1005
    :sswitch_6f
    add-int/lit8 p1, p1, 0x1

    .line 1006
    goto :goto_46

    .line 1015
    :goto_72
    return v2

    .line 965
    :cond_73
    :goto_73
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 966
    if-lt v0, v2, :cond_7c

    .line 967
    return v0

    .line 969
    :cond_7c
    add-int/2addr p1, v0

    return p1

    :sswitch_data_7e
    .sparse-switch
        0xf10a -> :sswitch_6f
        0xf10b -> :sswitch_69
        0xf10c -> :sswitch_5f
        0xf111 -> :sswitch_5e
    .end sparse-switch
.end method

.method public parentOrEntityPos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .line 954
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 955
    .local v0, "index":I
    if-gez v0, :cond_c

    const/4 v1, -0x1

    goto :goto_e

    :cond_c
    shl-int/lit8 v1, v0, 0x1

    :goto_e
    return v1
.end method

.method public parentPos(I)I
    .registers 5
    .param p1, "ipos"    # I

    .line 941
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 944
    .local v0, "index":I
    :goto_4
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 945
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 946
    return v1

    .line 947
    :cond_c
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf112

    if-eq v1, v2, :cond_18

    .line 948
    shl-int/lit8 v1, v0, 0x1

    return v1

    .line 947
    :cond_18
    goto :goto_4
.end method

.method public final posToDataIndex(I)I
    .registers 5
    .param p1, "ipos"    # I

    .line 880
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 881
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    return v0

    .line 882
    :cond_7
    ushr-int/lit8 v0, p1, 0x1

    .line 883
    .local v0, "index":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 884
    add-int/lit8 v0, v0, -0x1

    .line 885
    :cond_f
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v0, v1, :cond_17

    .line 886
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 887
    :cond_17
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2d

    .line 889
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 890
    if-gez v0, :cond_25

    .line 891
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    return v1

    .line 892
    :cond_25
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v1, :cond_2d

    .line 893
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 895
    :cond_2d
    return v0
.end method

.method public final resizeObjects()V
    .registers 6

    .line 352
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "oldLength":I
    const/16 v1, 0x64

    .line 356
    .local v1, "newLength":I
    new-array v2, v1, [Ljava/lang/Object;

    .local v2, "tmp":[Ljava/lang/Object;
    goto :goto_16

    .line 360
    .end local v0    # "oldLength":I
    .end local v1    # "newLength":I
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_a
    array-length v1, v0

    .line 361
    .local v1, "oldLength":I
    mul-int/lit8 v2, v1, 0x2

    .line 362
    .local v2, "newLength":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 363
    .local v3, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 365
    .end local v3    # "tmp":[Ljava/lang/Object;
    .restart local v0    # "oldLength":I
    .local v1, "newLength":I
    .local v2, "tmp":[Ljava/lang/Object;
    :goto_16
    iput-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public setAttributeName(II)V
    .registers 4
    .param p1, "attrIndex"    # I
    .param p2, "nameIndex"    # I

    .line 665
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 666
    return-void
.end method

.method public setElementName(II)V
    .registers 5
    .param p1, "elementIndex"    # I
    .param p2, "nameIndex"    # I

    .line 579
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf108

    if-ne v0, v1, :cond_18

    .line 581
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 582
    .local v0, "j":I
    if-gez v0, :cond_15

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_16

    :cond_15
    move v1, p1

    :goto_16
    add-int p1, v0, v1

    .line 584
    .end local v0    # "j":I
    :cond_18
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt p1, v0, :cond_22

    .line 586
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 587
    return-void

    .line 585
    :cond_22
    new-instance v0, Ljava/lang/Error;

    const-string v1, "setElementName before gapEnd"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIntN(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "i"    # I

    .line 394
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    aput-char v1, v0, p1

    .line 395
    add-int/lit8 v1, p1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 396
    return-void
.end method

.method public size()I
    .registers 3

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "size":I
    const/4 v1, 0x0

    .line 866
    .local v1, "i":I
    :goto_2
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 867
    if-nez v1, :cond_9

    .line 868
    return v0

    .line 869
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public startAttribute(I)V
    .registers 6
    .param p1, "index"    # I

    .line 651
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 652
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 653
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf109

    aput-char v3, v0, v1

    .line 654
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-nez v0, :cond_3d

    .line 656
    iput v2, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 657
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 658
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 659
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 660
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10a

    aput-char v2, v0, v1

    .line 661
    return-void

    .line 655
    :cond_3d
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nested attribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 3
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 626
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 627
    return-void
.end method

.method public startDocument()V
    .registers 5

    .line 500
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 501
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 502
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 503
    .local v1, "p":I
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    const v3, 0xf110

    aput-char v3, v2, v1

    .line 504
    iget v3, p0, Lgnu/lists/TreeList;->docStart:I

    if-nez v3, :cond_41

    .line 506
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->docStart:I

    .line 507
    add-int/lit8 v3, v1, 0x1

    array-length v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 508
    add-int/lit8 v0, v1, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    goto :goto_2c

    :cond_2a
    sub-int v3, v2, v1

    :goto_2c
    invoke-virtual {p0, v0, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 509
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 510
    add-int/lit8 v0, v1, 0x5

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 511
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 512
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf111

    aput-char v3, v0, v2

    .line 513
    return-void

    .line 505
    :cond_41
    new-instance v0, Ljava/lang/Error;

    const-string v2, "nested document"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startElement(I)V
    .registers 7
    .param p1, "index"    # I

    .line 565
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 566
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 567
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf108

    aput-char v4, v1, v2

    .line 568
    array-length v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 569
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 570
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10c

    aput-char v2, v0, v1

    .line 571
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 572
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 573
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 574
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 575
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 495
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startElement(I)V

    .line 496
    return-void
.end method

.method public statistics()V
    .registers 3

    .line 2308
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2309
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->statistics(Ljava/io/PrintWriter;)V

    .line 2310
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2311
    return-void
.end method

.method public statistics(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2315
    const-string v0, "data array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2316
    const-string v0, "data array gap: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2317
    const-string v0, "object array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2318
    return-void
.end method

.method public stringValue(ILjava/lang/StringBuffer;)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .line 1754
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    .line 1755
    .local v0, "next":I
    if-le v0, p1, :cond_d

    .line 1757
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 1758
    return p1

    .line 1761
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v1

    return v1
.end method

.method public stringValue(ZILjava/lang/StringBuffer;)I
    .registers 12

    .line 1766
    nop

    .line 1767
    nop

    .line 1768
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p2, v0, :cond_a

    .line 1769
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 1770
    :cond_a
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-ne p2, v1, :cond_11

    .line 1771
    return v2

    .line 1772
    :cond_11
    aget-char v1, v0, p2

    .line 1773
    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 1774
    nop

    .line 1775
    const v4, 0x9fff

    if-gt v1, v4, :cond_1f

    .line 1777
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1778
    return p2

    .line 1780
    :cond_1f
    const v4, 0xe000

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v1, v4, :cond_33

    const v7, 0xefff

    if-gt v1, v7, :cond_33

    .line 1783
    nop

    .line 1785
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v1, v4

    aget-object v6, p1, v1

    .line 1786
    goto/16 :goto_f4

    .line 1788
    :cond_33
    const v4, 0xa000

    if-lt v1, v4, :cond_46

    const v4, 0xafff

    if-gt v1, v4, :cond_46

    .line 1791
    add-int/lit8 v5, p2, 0x2

    .line 1792
    aget-char p1, v0, p2

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x1

    goto/16 :goto_f4

    .line 1794
    :cond_46
    const v4, 0xff00

    and-int/2addr v4, v1

    const v7, 0xf000

    if-ne v4, v7, :cond_55

    .line 1796
    and-int/lit16 p1, v1, 0xff

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1797
    return p2

    .line 1799
    :cond_55
    const v4, 0xb000

    if-lt v1, v4, :cond_67

    const v4, 0xdfff

    if-gt v1, v4, :cond_67

    .line 1802
    const p1, 0xc000

    sub-int/2addr v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1803
    return p2

    .line 1807
    :cond_67
    packed-switch v1, :pswitch_data_150

    .line 1896
    :pswitch_6a
    new-instance p1, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unimplemented: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " at:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1810
    :pswitch_91
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1871
    :pswitch_94
    nop

    .line 1872
    goto :goto_f4

    .line 1812
    :pswitch_96
    add-int/lit8 p2, p2, 0x2

    .line 1817
    :pswitch_98
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1818
    add-int/lit8 p2, p2, 0x2

    .line 1819
    if-eqz p1, :cond_a5

    const p1, 0xf115

    if-ne v1, p1, :cond_aa

    .line 1820
    :cond_a5
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p3, p1, p2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1821
    :cond_aa
    add-int/2addr p2, v0

    return p2

    .line 1860
    :pswitch_ac
    add-int/lit8 v5, p2, 0x4

    .line 1861
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p2

    .line 1862
    goto :goto_f4

    .line 1887
    :pswitch_b5
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    .line 1888
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1889
    check-cast v0, Lgnu/lists/TreeList;

    shr-int/2addr v1, v3

    invoke-virtual {v0, p1, v1, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    .line 1890
    add-int/lit8 p2, p2, 0x4

    .line 1892
    goto :goto_f4

    .line 1878
    :pswitch_ce
    return v2

    .line 1880
    :pswitch_cf
    if-nez p1, :cond_d3

    .line 1881
    add-int/lit8 v5, p2, 0x4

    .line 1882
    :cond_d3
    add-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1883
    if-gez p1, :cond_df

    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    add-int/2addr p2, v3

    :cond_df
    add-int/2addr p2, p1

    .line 1884
    goto :goto_f4

    .line 1864
    :pswitch_e1
    nop

    .line 1865
    add-int/lit8 v5, p2, 0x2

    .line 1866
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1867
    if-gez p1, :cond_ee

    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    goto :goto_f0

    :cond_ee
    add-int/lit8 p2, p2, -0x1

    :goto_f0
    add-int/2addr p1, p2

    .line 1868
    add-int/lit8 p2, p1, 0x7

    .line 1869
    nop

    .line 1899
    :goto_f4
    if-eqz v6, :cond_f9

    .line 1900
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1901
    :cond_f9
    if-lez v5, :cond_101

    .line 1905
    :cond_fb
    invoke-virtual {p0, v3, v5, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v5

    .line 1907
    if-gez v5, :cond_fb

    .line 1909
    :cond_101
    return p2

    .line 1855
    :pswitch_102
    nop

    .line 1856
    aget-char p1, v0, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1857
    add-int/2addr p2, v3

    return p2

    .line 1849
    :pswitch_10a
    nop

    .line 1851
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1852
    nop

    .line 1853
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1843
    :pswitch_11a
    nop

    .line 1845
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1846
    nop

    .line 1847
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1837
    :pswitch_12a
    nop

    .line 1839
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1840
    nop

    .line 1841
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1831
    :pswitch_136
    nop

    .line 1833
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1834
    nop

    .line 1835
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1825
    :pswitch_142
    nop

    .line 1827
    const p1, 0xf100

    if-eq v1, p1, :cond_149

    goto :goto_14a

    :cond_149
    const/4 v3, 0x0

    :goto_14a
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1828
    nop

    .line 1829
    return p2

    nop

    :pswitch_data_150
    .packed-switch 0xf100
        :pswitch_142
        :pswitch_142
        :pswitch_136
        :pswitch_12a
        :pswitch_11a
        :pswitch_10a
        :pswitch_102
        :pswitch_6a
        :pswitch_e1
        :pswitch_cf
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_6a
        :pswitch_6a
        :pswitch_b5
        :pswitch_ac
        :pswitch_ce
        :pswitch_ac
        :pswitch_ce
        :pswitch_96
        :pswitch_98
        :pswitch_94
        :pswitch_98
        :pswitch_91
    .end packed-switch
.end method

.method public stringValue(IILjava/lang/StringBuffer;)V
    .registers 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;

    .line 1747
    move v0, p1

    .line 1748
    .local v0, "index":I
    :goto_1
    if-ge v0, p2, :cond_b

    if-ltz v0, :cond_b

    .line 1749
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 1750
    :cond_b
    return-void
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 15

    .line 1291
    nop

    .line 1292
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 1294
    nop

    .line 1295
    nop

    .line 1296
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1299
    :goto_a
    if-lt v3, v0, :cond_18

    .line 1301
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v3, v0, :cond_17

    .line 1303
    iget v3, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1304
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    .line 1305
    if-ne v3, v0, :cond_18

    .line 1519
    :cond_17
    return-void

    .line 1312
    :cond_18
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v7, v3, 0x1

    aget-char v3, v6, v3

    .line 1314
    const v8, 0x9fff

    const/16 v9, 0x3e

    if-gt v3, v8, :cond_49

    .line 1316
    add-int/lit8 v10, v7, -0x1

    .line 1317
    nop

    .line 1320
    :goto_28
    if-lt v7, v0, :cond_2c

    .line 1321
    move v3, v7

    goto :goto_37

    .line 1322
    :cond_2c
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v5, v7, 0x1

    aget-char v3, v3, v7

    .line 1323
    if-le v3, v8, :cond_47

    .line 1325
    add-int/lit8 v5, v5, -0x1

    .line 1326
    move v3, v5

    .line 1329
    :goto_37
    if-eqz v4, :cond_3d

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1330
    :cond_3d
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v6, v3, v10

    invoke-virtual {p2, v5, v10, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1331
    nop

    .line 1332
    const/4 v5, 0x0

    goto :goto_a

    .line 1323
    :cond_47
    move v7, v5

    goto :goto_28

    .line 1334
    :cond_49
    const v8, 0xe000

    if-lt v3, v8, :cond_6a

    const v10, 0xefff

    if-gt v3, v10, :cond_6a

    .line 1337
    if-eqz v4, :cond_59

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1338
    :cond_59
    if-eqz v5, :cond_5f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_60

    :cond_5f
    const/4 v5, 0x1

    .line 1339
    :goto_60
    iget-object v6, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v3, v8

    aget-object v3, v6, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1340
    move v3, v7

    goto :goto_a

    .line 1342
    :cond_6a
    const/16 v8, 0x3c

    const v10, 0xa000

    if-lt v3, v10, :cond_97

    const v11, 0xafff

    if-gt v3, v11, :cond_97

    .line 1345
    if-eqz v4, :cond_7b

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1346
    :cond_7b
    sub-int/2addr v3, v10

    .line 1347
    if-eqz v5, :cond_81

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    :cond_81
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1349
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    add-int/lit8 v3, v7, 0x2

    .line 1351
    nop

    .line 1352
    nop

    .line 1353
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1355
    :cond_97
    const v11, 0xb000

    if-lt v3, v11, :cond_b8

    const v11, 0xdfff

    if-gt v3, v11, :cond_b8

    .line 1358
    if-eqz v4, :cond_a7

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1359
    :cond_a7
    if-eqz v5, :cond_ad

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ae

    :cond_ad
    const/4 v5, 0x1

    .line 1360
    :goto_ae
    const v6, 0xc000

    sub-int/2addr v3, v6

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1361
    move v3, v7

    goto/16 :goto_a

    .line 1363
    :cond_b8
    const/16 v11, 0x20

    packed-switch v3, :pswitch_data_2bc

    .line 1516
    :pswitch_bd
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown code:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1370
    :pswitch_d6
    add-int/lit8 v3, v7, 0x2

    .line 1371
    goto/16 :goto_a

    .line 1373
    :pswitch_da
    if-eqz v4, :cond_e0

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1374
    :cond_e0
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1375
    add-int/lit8 v7, v7, 0x2

    .line 1376
    const-string v6, "<!--"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v6, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1378
    const-string v6, "-->"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    add-int/2addr v3, v7

    .line 1380
    goto/16 :goto_a

    .line 1416
    :pswitch_f8
    goto :goto_14b

    .line 1382
    :pswitch_f9
    if-eqz v4, :cond_ff

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1383
    :cond_ff
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1384
    add-int/lit8 v7, v7, 0x2

    .line 1385
    const-string v6, "<![CDATA["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v6, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1387
    const-string v6, "]]>"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    add-int/2addr v3, v7

    .line 1389
    goto/16 :goto_a

    .line 1391
    :pswitch_117
    if-eqz v4, :cond_11d

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1392
    :cond_11d
    const-string v3, "<?"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1394
    add-int/lit8 v7, v7, 0x2

    .line 1395
    iget-object v6, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v6, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1396
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1397
    add-int/lit8 v7, v7, 0x2

    .line 1398
    if-lez v3, :cond_142

    .line 1400
    invoke-virtual {p2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1401
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v6, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1402
    add-int/2addr v7, v3

    move v3, v7

    goto :goto_143

    .line 1398
    :cond_142
    move v3, v7

    .line 1404
    :goto_143
    const-string v6, "?>"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    goto/16 :goto_a

    .line 1408
    :pswitch_14a
    nop

    .line 1299
    :goto_14b
    move v3, v7

    goto/16 :goto_a

    .line 1367
    :pswitch_14e
    add-int/lit8 v3, v7, 0x4

    .line 1368
    goto/16 :goto_a

    .line 1424
    :pswitch_152
    if-eqz v4, :cond_158

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1425
    :cond_158
    if-eqz v5, :cond_15e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15f

    :cond_15e
    const/4 v5, 0x1

    .line 1427
    :goto_15f
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    aget-object v3, v3, v6

    check-cast v3, Lgnu/lists/AbstractSequence;

    .line 1428
    add-int/lit8 v6, v7, 0x2

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    .line 1430
    invoke-virtual {v3, v6}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1431
    add-int/lit8 v3, v7, 0x4

    .line 1433
    goto/16 :goto_a

    .line 1436
    :pswitch_17a
    if-eqz v4, :cond_180

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1437
    :cond_180
    if-eqz v5, :cond_186

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_187

    :cond_186
    const/4 v5, 0x1

    .line 1438
    :goto_187
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1439
    add-int/lit8 v3, v7, 0x2

    .line 1440
    goto/16 :goto_a

    .line 1455
    :pswitch_196
    const v5, 0xf10b

    if-ne v3, v5, :cond_1a6

    .line 1457
    add-int/lit8 v3, v7, 0x1

    aget-char v5, v6, v7

    .line 1458
    add-int/lit8 v7, v3, -0x2

    sub-int/2addr v7, v5

    aget-char v5, v6, v7

    sub-int/2addr v5, v10

    goto :goto_1ad

    .line 1462
    :cond_1a6
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1463
    add-int/lit8 v7, v7, 0x6

    move v3, v7

    .line 1465
    :goto_1ad
    if-eqz v4, :cond_1b5

    .line 1466
    const-string v4, "/>"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c4

    .line 1469
    :cond_1b5
    const-string v4, "</"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1471
    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1473
    :goto_1c4
    nop

    .line 1474
    nop

    .line 1475
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_a

    .line 1486
    :pswitch_1ca
    const/16 v3, 0x22

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1487
    nop

    .line 1488
    nop

    .line 1489
    nop

    .line 1490
    move v3, v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1477
    :pswitch_1d7
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1478
    invoke-virtual {p2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1479
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v4, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1480
    const-string v3, "=\""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    nop

    .line 1482
    nop

    .line 1483
    add-int/lit8 v3, v7, 0x4

    .line 1484
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1442
    :pswitch_1f1
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1443
    if-ltz v3, :cond_1fa

    add-int/lit8 v6, v7, -0x1

    goto :goto_1fd

    :cond_1fa
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    :goto_1fd
    add-int/2addr v3, v6

    .line 1444
    add-int/lit8 v6, v7, 0x2

    .line 1445
    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1446
    if-eqz v4, :cond_20b

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_210

    .line 1447
    :cond_20b
    if-eqz v5, :cond_210

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    :cond_210
    :goto_210
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1449
    iget-object v4, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v3, v4, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1450
    nop

    .line 1451
    nop

    .line 1452
    move v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1418
    :pswitch_221
    if-eqz v4, :cond_227

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1419
    :cond_227
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v3, v3, 0x1

    const v6, 0xf106

    sub-int/2addr v3, v6

    invoke-virtual {p2, v5, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1420
    nop

    .line 1421
    add-int/lit8 v3, v7, 0x1

    .line 1422
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1510
    :pswitch_238
    if-eqz v4, :cond_23e

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1511
    :cond_23e
    if-eqz v5, :cond_244

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_245

    :cond_244
    const/4 v5, 0x1

    .line 1512
    :goto_245
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1513
    add-int/lit8 v3, v7, 0x4

    .line 1514
    goto/16 :goto_a

    .line 1498
    :pswitch_254
    if-eqz v4, :cond_25a

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1499
    :cond_25a
    if-eqz v5, :cond_260

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_261

    :cond_260
    const/4 v5, 0x1

    .line 1500
    :goto_261
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1501
    add-int/lit8 v3, v7, 0x2

    .line 1502
    goto/16 :goto_a

    .line 1504
    :pswitch_270
    if-eqz v4, :cond_276

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1505
    :cond_276
    if-eqz v5, :cond_27c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27d

    :cond_27c
    const/4 v5, 0x1

    .line 1506
    :goto_27d
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1507
    add-int/lit8 v3, v7, 0x4

    .line 1508
    goto/16 :goto_a

    .line 1492
    :pswitch_288
    if-eqz v4, :cond_28e

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1493
    :cond_28e
    if-eqz v5, :cond_294

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_295

    :cond_294
    const/4 v5, 0x1

    .line 1494
    :goto_295
    invoke-virtual {p0, v7}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1495
    add-int/lit8 v3, v7, 0x2

    .line 1496
    goto/16 :goto_a

    .line 1411
    :pswitch_2a0
    if-eqz v4, :cond_2a6

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 1412
    :cond_2a6
    if-eqz v5, :cond_2ac

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2ad

    :cond_2ac
    const/4 v5, 0x1

    .line 1413
    :goto_2ad
    const v6, 0xf100

    if-eq v3, v6, :cond_2b4

    const/4 v3, 0x1

    goto :goto_2b5

    :cond_2b4
    const/4 v3, 0x0

    :goto_2b5
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1414
    move v3, v7

    goto/16 :goto_a

    nop

    :pswitch_data_2bc
    .packed-switch 0xf100
        :pswitch_2a0
        :pswitch_2a0
        :pswitch_288
        :pswitch_270
        :pswitch_254
        :pswitch_238
        :pswitch_221
        :pswitch_bd
        :pswitch_1f1
        :pswitch_1d7
        :pswitch_1ca
        :pswitch_196
        :pswitch_196
        :pswitch_17a
        :pswitch_17a
        :pswitch_152
        :pswitch_14e
        :pswitch_14a
        :pswitch_14e
        :pswitch_14a
        :pswitch_117
        :pswitch_f9
        :pswitch_f8
        :pswitch_da
        :pswitch_d6
    .end packed-switch
.end method

.method public write(I)V
    .registers 6
    .param p1, "c"    # I

    .line 689
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 690
    const v0, 0x9fff

    if-gt p1, v0, :cond_15

    .line 691
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    goto :goto_31

    .line 692
    :cond_15
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2e

    .line 694
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf106

    aput-char v3, v0, v1

    .line 695
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v1, p1

    aput-char v1, v0, v2

    goto :goto_31

    .line 698
    :cond_2e
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 699
    :goto_31
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .registers 8
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 797
    if-nez p3, :cond_5

    .line 798
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 799
    :cond_5
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 800
    :goto_8
    if-lez p3, :cond_2a

    .line 802
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 803
    .local p2, "ch":C
    add-int/lit8 p3, p3, -0x1

    .line 804
    const v1, 0x9fff

    if-gt p2, v1, :cond_22

    .line 805
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_28

    .line 808
    :cond_22
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 809
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 811
    .end local p2    # "ch":C
    :goto_28
    move p2, v0

    goto :goto_8

    .line 812
    .end local v0    # "start":I
    .local p2, "start":I
    :cond_2a
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/TreeList;->write(Ljava/lang/CharSequence;II)V

    .line 789
    return-void
.end method

.method public write([CII)V
    .registers 8
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 769
    if-nez p3, :cond_5

    .line 770
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 771
    :cond_5
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 772
    :goto_8
    if-lez p3, :cond_28

    .line 774
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-char p2, p1, p2

    .line 775
    .local p2, "ch":C
    add-int/lit8 p3, p3, -0x1

    .line 776
    const v1, 0x9fff

    if-gt p2, v1, :cond_20

    .line 777
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_26

    .line 780
    :cond_20
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 781
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 783
    .end local p2    # "ch":C
    :goto_26
    move p2, v0

    goto :goto_8

    .line 784
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_28
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 5
    .param p1, "v"    # Z

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 704
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz p1, :cond_12

    const v2, 0xf101

    goto :goto_15

    :cond_12
    const v2, 0xf100

    :goto_15
    aput-char v2, v0, v1

    .line 705
    return-void
.end method

.method public writeByte(I)V
    .registers 6
    .param p1, "v"    # I

    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 710
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    and-int/lit16 v2, p1, 0xff

    const v3, 0xf000

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 711
    return-void
.end method

.method public writeCDATA([CII)V
    .registers 8
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 816
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 817
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 818
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf115

    aput-char v3, v1, v0

    .line 819
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 820
    add-int/lit8 v2, v2, 0x2

    .line 821
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 823
    return-void
.end method

.method public writeComment(Ljava/lang/String;II)V
    .registers 8
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 456
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 457
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 458
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf117

    aput-char v3, v1, v0

    .line 459
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 460
    add-int/lit8 v2, v2, 0x2

    .line 461
    add-int v0, p2, p3

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 463
    return-void
.end method

.method public writeComment([CII)V
    .registers 8
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 445
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 446
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 447
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf117

    aput-char v3, v1, v0

    .line 448
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 449
    add-int/lit8 v2, v2, 0x2

    .line 450
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 452
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/Object;

    .line 436
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 437
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf118

    aput-char v4, v1, v2

    .line 439
    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 440
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 441
    return-void
.end method

.method public writeDouble(D)V
    .registers 10
    .param p1, "v"    # D

    .line 747
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 748
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 749
    .local v0, "l":J
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const v5, 0xf105

    aput-char v5, v2, v3

    .line 750
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x30

    ushr-long v5, v0, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v2, v4

    .line 751
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x20

    ushr-long v5, v0, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v2, v3

    .line 752
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v5, 0x10

    ushr-long v5, v0, v5

    long-to-int v6, v5

    int-to-char v5, v6

    aput-char v5, v2, v4

    .line 753
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v4, v0

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 754
    return-void
.end method

.method public writeFloat(F)V
    .registers 7
    .param p1, "v"    # F

    .line 738
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 739
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 740
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf104

    aput-char v4, v1, v2

    .line 741
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    ushr-int/lit8 v4, v0, 0x10

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 742
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v3, v0

    aput-char v3, v1, v2

    .line 743
    return-void
.end method

.method public writeInt(I)V
    .registers 6
    .param p1, "v"    # I

    .line 715
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 716
    const/16 v0, -0x1000

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x1fff

    if-gt p1, v0, :cond_1c

    .line 717
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xc000

    add-int/2addr v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_32

    .line 720
    :cond_1c
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf102

    aput-char v3, v0, v1

    .line 721
    invoke-virtual {p0, v2, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 722
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 724
    :goto_32
    return-void
.end method

.method public writeJoiner()V
    .registers 4

    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 764
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf116

    aput-char v2, v0, v1

    .line 765
    return-void
.end method

.method public writeLong(J)V
    .registers 8
    .param p1, "v"    # J

    .line 728
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 729
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf103

    aput-char v3, v0, v1

    .line 730
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v2

    .line 731
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v1

    .line 732
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v3, 0x10

    ushr-long v3, p1, v3

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v2

    .line 733
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 734
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/Object;

    .line 420
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 421
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 422
    .local v0, "index":I
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1c

    .line 423
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xe000

    or-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    goto :goto_32

    .line 426
    :cond_1c
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf10d

    aput-char v4, v1, v2

    .line 427
    invoke-virtual {p0, v3, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 428
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 430
    :goto_32
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .registers 7
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 410
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 411
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10f

    aput-char v3, v1, v2

    .line 412
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v1

    .line 413
    .local v1, "seq_index":I
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 414
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 415
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/2addr v2, v0

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 416
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 482
    add-int/lit8 v0, p4, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 483
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 484
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf114

    aput-char v3, v1, v0

    .line 485
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 486
    .local v0, "index":I
    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 487
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 488
    add-int/lit8 v2, v2, 0x4

    .line 489
    add-int v1, p3, p4

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, p3, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 490
    add-int v1, v2, p4

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 491
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .registers 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 468
    add-int/lit8 v0, p4, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 469
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 470
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf114

    aput-char v3, v1, v0

    .line 471
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 472
    .local v0, "index":I
    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 473
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 474
    add-int/lit8 v2, v2, 0x4

    .line 475
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int v1, v2, p4

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 477
    return-void
.end method

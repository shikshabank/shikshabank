.class public Lgnu/kawa/xml/Nodes;
.super Lgnu/mapping/Values;
.source "Nodes.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static final POS_SIZE:I = 0x5


# instance fields
.field count:I

.field curFragment:Lgnu/xml/XMLFilter;

.field curNode:Lgnu/xml/NodeTree;

.field inAttribute:Z

.field nesting:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Values;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    return-void
.end method

.method private maybeEndNonTextNode()V
    .registers 2

    .line 178
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_b

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 180
    :cond_b
    return-void
.end method

.method private maybeStartNonTextNode()V
    .registers 2

    .line 169
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_b

    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v0, :cond_b

    .line 170
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    .line 171
    :cond_b
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-nez v0, :cond_12

    .line 172
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->startFragment()V

    .line 173
    :cond_12
    iget v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    .line 174
    return-void
.end method

.method public static root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;
    .registers 4
    .param p0, "seq"    # Lgnu/xml/NodeTree;
    .param p1, "ipos"    # I

    .line 342
    iget v0, p0, Lgnu/xml/NodeTree;->gapStart:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_12

    iget-object v0, p0, Lgnu/xml/NodeTree;->data:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    const v1, 0xf112

    if-ne v0, v1, :cond_12

    .line 344
    const/16 v0, 0xa

    .local v0, "root":I
    goto :goto_13

    .line 346
    .end local v0    # "root":I
    :cond_12
    const/4 v0, 0x0

    .line 347
    .restart local v0    # "root":I
    :goto_13
    invoke-static {p0, v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 140
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 141
    return-object p0
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

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/Nodes;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .registers 3
    .param p1, "base"    # Ljava/lang/Object;

    .line 245
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 246
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->beginEntity(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public endAttribute()V
    .registers 2

    .line 203
    iget-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    if-nez v0, :cond_5

    .line 204
    return-void

    .line 205
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 206
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 207
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 208
    return-void
.end method

.method public endDocument()V
    .registers 2

    .line 239
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 240
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 241
    return-void
.end method

.method public endElement()V
    .registers 2

    .line 190
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 191
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 192
    return-void
.end method

.method public endEntity()V
    .registers 2

    .line 251
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endEntity()V

    .line 252
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 253
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .registers 4
    .param p1, "seq"    # Ljava/lang/Object;

    .line 38
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lez v0, :cond_15

    .line 40
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 41
    .local v0, "oindex":I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_15

    .line 42
    return v0

    .line 45
    .end local v0    # "oindex":I
    :cond_15
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    .line 47
    iget v0, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v0

    .line 48
    .restart local v0    # "oindex":I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2b

    .line 49
    return v0

    .line 51
    .end local v0    # "oindex":I
    :cond_2b
    invoke-super {p0, p1}, Lgnu/mapping/Values;->find(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method finishFragment()V
    .registers 2

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 265
    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 266
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I

    .line 280
    mul-int/lit8 v0, p1, 0x5

    .line 281
    .local v0, "i":I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_c

    .line 282
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 283
    :cond_c
    if-ltz v0, :cond_3b

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 286
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-ne v1, v2, :cond_33

    .line 288
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/xml/NodeTree;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1

    .line 287
    :cond_33
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_3b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getLength()I
    .registers 2

    .line 275
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public getPos(I)I
    .registers 5
    .param p1, "index"    # I

    .line 330
    mul-int/lit8 v0, p1, 0x5

    .line 331
    .local v0, "i":I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_c

    .line 332
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 334
    :cond_c
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-ne v1, v2, :cond_1c

    .line 336
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v1

    return v1

    .line 335
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .registers 5
    .param p1, "ipos"    # I

    .line 303
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->posToDataIndex(I)I

    move-result v0

    .line 304
    .local v0, "index":I
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 305
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object v1

    .line 306
    :cond_c
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-ne v1, v2, :cond_2c

    .line 308
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/xml/NodeTree;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1

    .line 307
    :cond_2c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSeq(I)Lgnu/lists/AbstractSequence;
    .registers 5
    .param p1, "index"    # I

    .line 316
    mul-int/lit8 v0, p1, 0x5

    .line 317
    .local v0, "i":I
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    if-lt v0, v1, :cond_c

    .line 318
    iget v1, p0, Lgnu/kawa/xml/Nodes;->gapEnd:I

    iget v2, p0, Lgnu/kawa/xml/Nodes;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 319
    :cond_c
    if-ltz v0, :cond_32

    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_14

    goto :goto_32

    .line 322
    :cond_14
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf10f

    if-ne v1, v2, :cond_2a

    .line 324
    iget-object v1, p0, Lgnu/kawa/xml/Nodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/Nodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/lists/AbstractSequence;

    return-object v1

    .line 323
    :cond_2a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "internal error - unexpected data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_32
    :goto_32
    const/4 v1, 0x0

    return-object v1
.end method

.method handleNonNode()V
    .registers 3

    .line 94
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_5

    .line 98
    return-void

    .line 96
    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "atomic value where node is required"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .line 294
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    if-lt p1, v0, :cond_6

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_6
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/Nodes;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method maybeStartTextNode()V
    .registers 3

    .line 86
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 88
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-node where node required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 270
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 3
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 196
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 197
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/xml/Nodes;->inAttribute:Z

    .line 199
    return-void
.end method

.method public startDocument()V
    .registers 2

    .line 233
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 234
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 235
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 184
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 185
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method startFragment()V
    .registers 3

    .line 257
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    .line 258
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    iput-object v1, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    .line 259
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curNode:Lgnu/xml/NodeTree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 260
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "v"    # I

    .line 132
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 133
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 134
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 157
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 158
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 159
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 164
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 147
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->maybeStartTextNode()V

    .line 148
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 149
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .line 126
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 127
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeBoolean(Z)V

    .line 128
    return-void
.end method

.method public writeCDATA([CII)V
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 219
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 220
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 221
    return-void
.end method

.method public writeComment([CII)V
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 212
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 213
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/xml/XMLFilter;->writeComment([CII)V

    .line 214
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 215
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "v"    # D

    .line 108
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeDouble(D)V

    .line 110
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "v"    # F

    .line 102
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 103
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeFloat(F)V

    .line 104
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "v"    # I

    .line 120
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 121
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeInt(I)V

    .line 122
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "v"    # J

    .line 114
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 115
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2}, Lgnu/xml/XMLFilter;->writeLong(J)V

    .line 116
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 5
    .param p1, "v"    # Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_18

    .line 58
    iget v1, p0, Lgnu/kawa/xml/Nodes;->nesting:I

    if-nez v1, :cond_14

    instance-of v1, p1, Lgnu/lists/SeqPosition;

    if-nez v1, :cond_10

    instance-of v1, p1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_14

    .line 60
    :cond_10
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->finishFragment()V

    goto :goto_18

    .line 63
    :cond_14
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 64
    return-void

    .line 67
    :cond_18
    :goto_18
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_27

    .line 69
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 70
    .local v0, "seq":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 71
    return-void

    .line 73
    .end local v0    # "seq":Lgnu/lists/SeqPosition;
    :cond_27
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-eqz v0, :cond_33

    .line 75
    move-object v0, p1

    check-cast v0, Lgnu/lists/TreeList;

    .line 76
    .local v0, "tlist":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 77
    return-void

    .line 79
    .end local v0    # "tlist":Lgnu/lists/TreeList;
    :cond_33
    invoke-virtual {p0}, Lgnu/kawa/xml/Nodes;->handleNonNode()V

    .line 80
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 31
    iget v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/kawa/xml/Nodes;->count:I

    .line 32
    invoke-super {p0, p1, p2}, Lgnu/mapping/Values;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 33
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .registers 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 226
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeStartNonTextNode()V

    .line 227
    iget-object v0, p0, Lgnu/kawa/xml/Nodes;->curFragment:Lgnu/xml/XMLFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 228
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;->maybeEndNonTextNode()V

    .line 229
    return-void
.end method

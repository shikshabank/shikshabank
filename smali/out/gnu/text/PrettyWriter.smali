.class public Lgnu/text/PrettyWriter;
.super Ljava/io/Writer;
.source "PrettyWriter.java"


# static fields
.field private static final BLOCK_PER_LINE_PREFIX_END:I = -0x3

.field private static final BLOCK_PREFIX_LENGTH:I = -0x4

.field private static final BLOCK_SECTION_COLUMN:I = -0x2

.field private static final BLOCK_SECTION_START_LINE:I = -0x6

.field private static final BLOCK_START_COLUMN:I = -0x1

.field private static final BLOCK_SUFFIX_LENGTH:I = -0x5

.field private static final LOGICAL_BLOCK_LENGTH:I = 0x6

.field public static final NEWLINE_FILL:I = 0x46

.field public static final NEWLINE_LINEAR:I = 0x4e

.field public static final NEWLINE_LITERAL:I = 0x4c

.field public static final NEWLINE_MANDATORY:I = 0x52

.field public static final NEWLINE_MISER:I = 0x4d

.field public static final NEWLINE_SPACE:I = 0x53

.field static final QITEM_BASE_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_SIZE:I = 0x2

.field static final QITEM_BLOCK_END_TYPE:I = 0x5

.field static final QITEM_BLOCK_START_BLOCK_END:I = 0x4

.field static final QITEM_BLOCK_START_PREFIX:I = 0x5

.field static final QITEM_BLOCK_START_SIZE:I = 0x7

.field static final QITEM_BLOCK_START_SUFFIX:I = 0x6

.field static final QITEM_BLOCK_START_TYPE:I = 0x4

.field static final QITEM_INDENTATION_AMOUNT:I = 0x3

.field static final QITEM_INDENTATION_BLOCK:C = 'B'

.field static final QITEM_INDENTATION_CURRENT:C = 'C'

.field static final QITEM_INDENTATION_KIND:I = 0x2

.field static final QITEM_INDENTATION_SIZE:I = 0x4

.field static final QITEM_INDENTATION_TYPE:I = 0x3

.field static final QITEM_NEWLINE_KIND:I = 0x4

.field static final QITEM_NEWLINE_SIZE:I = 0x5

.field static final QITEM_NEWLINE_TYPE:I = 0x2

.field static final QITEM_NOP_TYPE:I = 0x0

.field static final QITEM_POSN:I = 0x1

.field static final QITEM_SECTION_START_DEPTH:I = 0x2

.field static final QITEM_SECTION_START_SECTION_END:I = 0x3

.field static final QITEM_SECTION_START_SIZE:I = 0x4

.field static final QITEM_TAB_COLINC:I = 0x4

.field static final QITEM_TAB_COLNUM:I = 0x3

.field static final QITEM_TAB_FLAGS:I = 0x2

.field static final QITEM_TAB_IS_RELATIVE:I = 0x2

.field static final QITEM_TAB_IS_SECTION:I = 0x1

.field static final QITEM_TAB_SIZE:I = 0x5

.field static final QITEM_TAB_TYPE:I = 0x6

.field static final QITEM_TYPE_AND_SIZE:I = 0x0

.field static final QUEUE_INIT_ALLOC_SIZE:I = 0x12c

.field public static indentLoc:Lgnu/mapping/ThreadLocation;

.field public static initialBufferSize:I

.field public static lineLengthLoc:Lgnu/mapping/ThreadLocation;

.field public static miserWidthLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field blockDepth:I

.field blocks:[I

.field public buffer:[C

.field public bufferFillPointer:I

.field bufferOffset:I

.field bufferStartColumn:I

.field currentBlock:I

.field lineLength:I

.field lineNumber:I

.field miserWidth:I

.field protected out:Ljava/io/Writer;

.field public pendingBlocksCount:I

.field prefix:[C

.field prettyPrintingMode:I

.field queueInts:[I

.field queueSize:I

.field queueStrings:[Ljava/lang/String;

.field queueTail:I

.field suffix:[C

.field wordEndSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "line-length"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    .line 44
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "miser-width"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    .line 46
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    .line 78
    const/16 v0, 0x7e

    sput v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 20
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v1, 0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    const/16 v0, 0x12c

    new-array v1, v0, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 21
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "lineLength"    # I

    .line 26
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v1, 0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    const/16 v0, 0x12c

    new-array v1, v0, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 27
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 28
    iput p2, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 29
    const/4 v0, 0x1

    if-le p2, v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "prettyPrintingMode"    # Z

    .line 33
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 81
    sget v0, Lgnu/text/PrettyWriter;->initialBufferSize:I

    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 126
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 136
    const/4 v1, 0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 141
    new-array v1, v0, [C

    iput-object v1, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 146
    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 166
    const/16 v0, 0x12c

    new-array v1, v0, [I

    iput-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 169
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 34
    iput-object p1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 35
    iput p2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 36
    return-void
.end method

.method private static enoughSpace(II)I
    .registers 5
    .param p0, "current"    # I
    .param p1, "want"    # I

    .line 482
    mul-int/lit8 v0, p0, 0x2

    .line 483
    .local v0, "doubled":I
    mul-int/lit8 v1, p1, 0x5

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p0

    .line 484
    .local v1, "enough":I
    if-le v0, v1, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    return v2
.end method

.method private getPerLinePrefixEnd()I
    .registers 3

    .line 261
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x3

    aget v0, v0, v1

    return v0
.end method

.method private getPrefixLength()I
    .registers 3

    .line 266
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v1

    return v0
.end method

.method private getQueueSize(I)I
    .registers 3
    .param p1, "index"    # I

    .line 187
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private getQueueType(I)I
    .registers 3
    .param p1, "index"    # I

    .line 186
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getSectionColumn()I
    .registers 3

    .line 251
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method private getSectionStartLine()I
    .registers 3

    .line 276
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x6

    aget v0, v0, v1

    return v0
.end method

.method private getStartColumn()I
    .registers 3

    .line 256
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private getSuffixLength()I
    .registers 3

    .line 271
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x5

    aget v0, v0, v1

    return v0
.end method

.method private indexPosn(I)I
    .registers 3
    .param p1, "index"    # I

    .line 110
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v0, p1

    return v0
.end method

.method private posnColumn(I)I
    .registers 3
    .param p1, "posn"    # I

    .line 120
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v0

    return v0
.end method

.method private posnIndex(I)I
    .registers 3
    .param p1, "posn"    # I

    .line 115
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int v0, p1, v0

    return v0
.end method

.method private pushLogicalBlock(IIIII)V
    .registers 11
    .param p1, "column"    # I
    .param p2, "perLineEnd"    # I
    .param p3, "prefixLength"    # I
    .param p4, "suffixLength"    # I
    .param p5, "sectionStartLine"    # I

    .line 412
    iget v0, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v0, 0x6

    .line 413
    .local v1, "newLength":I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v3, v2

    if-lt v1, v3, :cond_14

    .line 415
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 416
    .local v3, "newBlocks":[I
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iput-object v3, p0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 419
    .end local v3    # "newBlocks":[I
    :cond_14
    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 420
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    add-int/lit8 v2, v1, -0x1

    aput p1, v0, v2

    .line 421
    add-int/lit8 v2, v1, -0x2

    aput p1, v0, v2

    .line 422
    add-int/lit8 v2, v1, -0x3

    aput p2, v0, v2

    .line 423
    add-int/lit8 v2, v1, -0x4

    aput p3, v0, v2

    .line 424
    add-int/lit8 v2, v1, -0x5

    aput p4, v0, v2

    .line 425
    add-int/lit8 v2, v1, -0x6

    aput p5, v0, v2

    .line 426
    return-void
.end method


# virtual methods
.method public addIndentation(IZ)V
    .registers 4
    .param p1, "amount"    # I
    .param p2, "current"    # Z

    .line 615
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_e

    .line 616
    if-eqz p2, :cond_9

    const/16 v0, 0x43

    goto :goto_b

    :cond_9
    const/16 v0, 0x42

    :goto_b
    invoke-virtual {p0, v0, p1}, Lgnu/text/PrettyWriter;->enqueueIndent(CI)I

    .line 619
    :cond_e
    return-void
.end method

.method public clearBuffer()V
    .registers 3

    .line 1251
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1252
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1253
    iput v0, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1254
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1255
    const/4 v1, 0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 1256
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1257
    iput v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1258
    iput v0, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 1259
    return-void
.end method

.method public clearWordEnd()V
    .registers 2

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 301
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1212
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1213
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 1214
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1216
    :cond_f
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1217
    return-void
.end method

.method public closeThis()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1224
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1225
    iput-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    .line 1227
    :cond_a
    iput-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1228
    return-void
.end method

.method computeTabSize(III)I
    .registers 12
    .param p1, "tab"    # I
    .param p2, "sectionStart"    # I
    .param p3, "column"    # I

    .line 734
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    .line 735
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 736
    .local v2, "isSection":Z
    :goto_f
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    .line 737
    .local v5, "isRelative":Z
    :goto_16
    if-eqz v2, :cond_19

    move v3, p2

    .line 738
    .local v3, "origin":I
    :cond_19
    add-int/lit8 v6, p1, 0x3

    aget v6, v0, v6

    .line 739
    .local v6, "colnum":I
    add-int/lit8 v7, p1, 0x4

    aget v0, v0, v7

    .line 740
    .local v0, "colinc":I
    if-eqz v5, :cond_2e

    .line 742
    if-le v0, v4, :cond_2d

    .line 744
    add-int v4, p3, v6

    .line 745
    .local v4, "newposn":I
    rem-int v7, v4, v0

    .line 746
    .local v7, "rem":I
    if-eqz v7, :cond_2d

    .line 747
    move v0, v7

    add-int/2addr v6, v7

    .line 749
    .end local v4    # "newposn":I
    .end local v7    # "rem":I
    :cond_2d
    return v6

    .line 751
    :cond_2e
    add-int v4, v6, v3

    if-gt p3, v4, :cond_36

    .line 752
    add-int v4, p3, v3

    sub-int/2addr v4, p3

    return v4

    .line 754
    :cond_36
    sub-int v4, p3, v3

    rem-int/2addr v4, v0

    sub-int v4, v0, v4

    return v4
.end method

.method public endLogicalBlock()V
    .registers 8

    .line 671
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 672
    .local v0, "end":I
    iget v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 673
    iget v1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    const/4 v2, -0x1

    if-gez v1, :cond_2d

    .line 678
    iget-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v3, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v4, v3, -0x5

    aget v4, v1, v4

    .line 679
    .local v4, "suffixLength":I
    add-int/lit8 v3, v3, -0x6

    add-int/lit8 v3, v3, -0x5

    aget v1, v1, v3

    .line 681
    .local v1, "suffixPreviousLength":I
    if-le v4, v1, :cond_2a

    .line 682
    iget-object v3, p0, Lgnu/text/PrettyWriter;->suffix:[C

    array-length v5, v3

    sub-int/2addr v5, v4

    sub-int v6, v4, v1

    invoke-virtual {p0, v3, v5, v6}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 685
    :cond_2a
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 686
    return-void

    .line 688
    .end local v1    # "suffixPreviousLength":I
    .end local v4    # "suffixLength":I
    :cond_2d
    iget v1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 689
    .local v1, "start":I
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v1, 0x4

    aget v4, v3, v4

    .line 690
    .local v4, "outerBlock":I
    if-nez v4, :cond_3a

    .line 691
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_4d

    .line 694
    :cond_3a
    iget v5, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int/2addr v5, v1

    .line 695
    .local v5, "qtailFromStart":I
    if-lez v5, :cond_41

    .line 696
    array-length v6, v3

    sub-int/2addr v5, v6

    .line 697
    :cond_41
    if-ge v4, v5, :cond_46

    .line 701
    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    goto :goto_4d

    .line 706
    :cond_46
    add-int/2addr v4, v1

    .line 707
    if-gez v4, :cond_4b

    .line 708
    array-length v2, v3

    add-int/2addr v4, v2

    .line 709
    :cond_4b
    iput v4, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 712
    .end local v5    # "qtailFromStart":I
    :goto_4d
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x6

    aget-object v2, v2, v3

    .line 713
    .local v2, "suffix":Ljava/lang/String;
    if-eqz v2, :cond_58

    .line 714
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 715
    :cond_58
    sub-int v3, v0, v1

    .line 716
    .local v3, "endFromStart":I
    if-gez v3, :cond_60

    .line 717
    iget-object v5, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v5, v5

    add-int/2addr v3, v5

    .line 718
    :cond_60
    iget-object v5, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v6, v1, 0x4

    aput v3, v5, v6

    .line 720
    return-void
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .registers 3
    .param p1, "suffix"    # Ljava/lang/String;

    .line 724
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_8

    .line 725
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->endLogicalBlock()V

    goto :goto_d

    .line 726
    :cond_8
    if-eqz p1, :cond_d

    .line 727
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 728
    :cond_d
    :goto_d
    return-void
.end method

.method public enqueue(II)I
    .registers 14
    .param p1, "kind"    # I
    .param p2, "size"    # I

    .line 523
    iget-object v0, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v0, v0

    .line 524
    .local v0, "oldLength":I
    iget v1, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v1, v0, v1

    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v1, v2

    .line 525
    .local v1, "endAvail":I
    const/4 v2, 0x0

    if-lez v1, :cond_12

    if-le p2, v1, :cond_12

    .line 526
    invoke-virtual {p0, v2, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    .line 527
    :cond_12
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v3, p2

    if-le v3, v0, :cond_57

    .line 529
    invoke-static {v0, p2}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v3

    .line 530
    .local v3, "newLength":I
    new-array v4, v3, [I

    .line 531
    .local v4, "newInts":[I
    new-array v5, v3, [Ljava/lang/String;

    .line 532
    .local v5, "newStrings":[Ljava/lang/String;
    iget v6, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v7, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v0

    .line 533
    .local v6, "queueHead":I
    if-lez v6, :cond_31

    .line 535
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    invoke-static {v7, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    invoke-static {v7, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    :cond_31
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    sub-int v7, v0, v2

    .line 539
    .local v7, "part1Len":I
    sub-int v8, v3, v0

    .line 540
    .local v8, "deltaLength":I
    iget-object v9, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int v10, v2, v8

    invoke-static {v9, v2, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    add-int v10, v9, v8

    invoke-static {v2, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    iput-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    .line 547
    iput-object v5, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    .line 548
    iget v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    iget v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    if-lt v2, v9, :cond_54

    .line 549
    add-int/2addr v2, v8

    iput v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 550
    :cond_54
    add-int/2addr v9, v8

    iput v9, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 552
    .end local v3    # "newLength":I
    .end local v4    # "newInts":[I
    .end local v5    # "newStrings":[Ljava/lang/String;
    .end local v6    # "queueHead":I
    .end local v7    # "part1Len":I
    .end local v8    # "deltaLength":I
    :cond_57
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v2, v3

    .line 553
    .local v2, "addr":I
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v4, v3

    if-lt v2, v4, :cond_63

    .line 554
    array-length v4, v3

    sub-int/2addr v2, v4

    .line 555
    :cond_63
    add-int/lit8 v4, v2, 0x0

    shl-int/lit8 v5, p2, 0x10

    or-int/2addr v5, p1

    aput v5, v3, v4

    .line 556
    const/4 v4, 0x1

    if-le p2, v4, :cond_77

    .line 557
    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-direct {p0, v5}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v5

    aput v5, v3, v4

    .line 559
    :cond_77
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    add-int/2addr v3, p2

    iput v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 560
    return v2
.end method

.method public enqueueIndent(CI)I
    .registers 6
    .param p1, "kind"    # C
    .param p2, "amount"    # I

    .line 607
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 608
    .local v0, "result":I
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    .line 609
    add-int/lit8 v2, v0, 0x3

    aput p2, v1, v2

    .line 610
    return v0
.end method

.method public enqueueNewline(I)V
    .registers 12
    .param p1, "kind"    # I

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 566
    iget v1, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 568
    .local v1, "depth":I
    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v3

    .line 569
    .local v3, "newline":I
    iget-object v4, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v3, 0x4

    aput p1, v4, v5

    .line 570
    add-int/lit8 v5, v3, 0x2

    iget v6, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v6, v4, v5

    .line 571
    add-int/lit8 v5, v3, 0x3

    aput v0, v4, v5

    .line 572
    iget v4, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 573
    .local v4, "entry":I
    iget v5, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 574
    .local v5, "todo":I
    :goto_1f
    if-lez v5, :cond_52

    .line 576
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v6, v6

    if-ne v4, v6, :cond_27

    .line 577
    const/4 v4, 0x0

    .line 578
    :cond_27
    if-ne v4, v3, :cond_2a

    .line 579
    goto :goto_52

    .line 580
    :cond_2a
    invoke-direct {p0, v4}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v6

    .line 581
    .local v6, "type":I
    if-eq v6, v2, :cond_33

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4b

    :cond_33
    iget-object v7, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v8, v4, 0x3

    aget v8, v7, v8

    if-nez v8, :cond_4b

    add-int/lit8 v8, v4, 0x2

    aget v8, v7, v8

    if-gt v1, v8, :cond_4b

    .line 586
    sub-int v8, v3, v4

    .line 587
    .local v8, "delta":I
    if-gez v8, :cond_47

    .line 588
    array-length v9, v7

    add-int/2addr v8, v9

    .line 589
    :cond_47
    add-int/lit8 v9, v4, 0x3

    aput v8, v7, v9

    .line 591
    .end local v8    # "delta":I
    :cond_4b
    invoke-direct {p0, v4}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v7

    .line 592
    .local v7, "size":I
    sub-int/2addr v5, v7

    .line 593
    add-int/2addr v4, v7

    .line 594
    .end local v6    # "type":I
    .end local v7    # "size":I
    goto :goto_1f

    .line 595
    :cond_52
    :goto_52
    const/16 v2, 0x4c

    if-eq p1, v2, :cond_5d

    const/16 v2, 0x52

    if-ne p1, v2, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v2, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v2, 0x1

    :goto_5e
    invoke-virtual {p0, v2, v0}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    .line 596
    return-void
.end method

.method enqueueTab(III)I
    .registers 7
    .param p1, "flags"    # I
    .param p2, "colnum"    # I
    .param p3, "colinc"    # I

    .line 469
    const/4 v0, 0x6

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 470
    .local v0, "addr":I
    iget-object v1, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v2, v0, 0x2

    aput p1, v1, v2

    .line 471
    add-int/lit8 v2, v0, 0x3

    aput p2, v1, v2

    .line 472
    add-int/lit8 v2, v0, 0x4

    aput p3, v1, v2

    .line 473
    return v0
.end method

.method ensureSpaceInBuffer(I)I
    .registers 10
    .param p1, "want"    # I

    .line 870
    iget-object v0, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 871
    .local v0, "buffer":[C
    array-length v1, v0

    .line 872
    .local v1, "length":I
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 873
    .local v2, "fillPtr":I
    sub-int v3, v1, v2

    .line 874
    .local v3, "available":I
    if-lez v3, :cond_a

    .line 875
    return v3

    .line 876
    :cond_a
    iget v4, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v4, :cond_21

    iget v4, p0, Lgnu/text/PrettyWriter;->lineLength:I

    if-le v2, v4, :cond_21

    .line 878
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 879
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 880
    :cond_1c
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v4

    return v4

    .line 884
    :cond_21
    invoke-static {v1, p1}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v4

    .line 885
    .local v4, "newLength":I
    new-array v5, v4, [C

    .line 886
    .local v5, "newBuffer":[C
    iput-object v5, p0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 887
    move v6, v2

    .local v6, "i":I
    :goto_2a
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_33

    .line 888
    aget-char v7, v0, v6

    aput-char v7, v5, v6

    goto :goto_2a

    .line 889
    .end local v6    # "i":I
    :cond_33
    sub-int v6, v4, v2

    return v6
.end method

.method expandTabs(I)V
    .registers 22
    .param p1, "through"    # I

    .line 792
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 793
    .local v1, "numInsertions":I
    const/4 v2, 0x0

    .line 794
    .local v2, "additional":I
    iget v3, v0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 795
    .local v3, "column":I
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v4

    .line 796
    .local v4, "sectionStart":I
    iget v5, v0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 797
    .local v5, "op":I
    iget v6, v0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 798
    .local v6, "todo":I
    iget v7, v0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    const/4 v8, 0x6

    mul-int/lit8 v7, v7, 0x6

    .line 799
    .local v7, "blocksUsed":I
    :goto_13
    if-lez v6, :cond_7b

    .line 801
    iget-object v10, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v10, v10

    if-ne v5, v10, :cond_1b

    .line 802
    const/4 v5, 0x0

    .line 803
    :cond_1b
    move/from16 v10, p1

    if-ne v5, v10, :cond_20

    .line 804
    goto :goto_7d

    .line 805
    :cond_20
    invoke-direct {v0, v5}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v11

    .line 806
    .local v11, "type":I
    const/4 v12, 0x2

    if-ne v11, v8, :cond_62

    .line 808
    iget-object v13, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v14, v5, 0x1

    aget v13, v13, v14

    invoke-direct {v0, v13}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v13

    .line 809
    .local v13, "index":I
    add-int v14, v3, v13

    invoke-virtual {v0, v5, v4, v14}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v14

    .line 810
    .local v14, "tabsize":I
    if-eqz v14, :cond_61

    .line 813
    mul-int/lit8 v15, v1, 0x2

    add-int/2addr v15, v7

    add-int/lit8 v15, v15, 0x1

    iget-object v8, v0, Lgnu/text/PrettyWriter;->blocks:[I

    array-length v9, v8

    if-lt v15, v9, :cond_4f

    .line 815
    array-length v9, v8

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [I

    .line 816
    .local v9, "newBlocks":[I
    array-length v12, v8

    const/4 v15, 0x0

    invoke-static {v8, v15, v9, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iput-object v9, v0, Lgnu/text/PrettyWriter;->blocks:[I

    .line 819
    .end local v9    # "newBlocks":[I
    :cond_4f
    iget-object v8, v0, Lgnu/text/PrettyWriter;->blocks:[I

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v7

    aput v13, v8, v9

    .line 820
    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x1

    aput v14, v8, v9

    .line 821
    add-int/lit8 v1, v1, 0x1

    .line 822
    add-int/2addr v2, v14

    .line 823
    add-int/2addr v3, v14

    .line 825
    .end local v13    # "index":I
    .end local v14    # "tabsize":I
    :cond_61
    goto :goto_73

    .line 826
    :cond_62
    if-eq v5, v12, :cond_67

    const/4 v8, 0x4

    if-ne v5, v8, :cond_73

    .line 828
    :cond_67
    iget-object v8, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    invoke-direct {v0, v8}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v8

    add-int/2addr v8, v3

    move v4, v8

    .line 830
    :cond_73
    :goto_73
    invoke-direct {v0, v5}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v8

    .line 831
    .local v8, "size":I
    sub-int/2addr v6, v8

    .line 832
    add-int/2addr v5, v8

    .line 833
    .end local v8    # "size":I
    .end local v11    # "type":I
    const/4 v8, 0x6

    goto :goto_13

    .line 799
    :cond_7b
    move/from16 v10, p1

    .line 834
    :goto_7d
    if-lez v1, :cond_de

    .line 836
    iget v8, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 837
    .local v8, "fillPtr":I
    add-int v9, v8, v2

    .line 838
    .local v9, "newFillPtr":I
    iget-object v11, v0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 839
    .local v11, "buffer":[C
    move-object v12, v11

    .line 840
    .local v12, "newBuffer":[C
    array-length v13, v11

    .line 841
    .local v13, "length":I
    move v14, v8

    .line 842
    .local v14, "end":I
    if-le v9, v13, :cond_92

    .line 844
    invoke-static {v8, v2}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v15

    .line 845
    .local v15, "newLength":I
    new-array v12, v15, [C

    .line 846
    iput-object v12, v0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 848
    .end local v15    # "newLength":I
    :cond_92
    iput v9, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 849
    iget v15, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    sub-int/2addr v15, v2

    iput v15, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 850
    move v15, v1

    .local v15, "i":I
    :goto_9a
    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_d1

    .line 852
    move/from16 v16, v1

    .end local v1    # "numInsertions":I
    .local v16, "numInsertions":I
    iget-object v1, v0, Lgnu/text/PrettyWriter;->blocks:[I

    mul-int/lit8 v17, v15, 0x2

    add-int v17, v7, v17

    aget v0, v1, v17

    .line 853
    .local v0, "srcpos":I
    mul-int/lit8 v17, v15, 0x2

    add-int v17, v7, v17

    add-int/lit8 v17, v17, 0x1

    aget v1, v1, v17

    .line 854
    .local v1, "amount":I
    move/from16 v17, v3

    .end local v3    # "column":I
    .local v17, "column":I
    add-int v3, v0, v2

    .line 855
    .local v3, "dstpos":I
    move/from16 v18, v4

    .end local v4    # "sectionStart":I
    .local v18, "sectionStart":I
    sub-int v4, v14, v0

    invoke-static {v11, v0, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    sub-int v4, v3, v1

    .local v4, "j":I
    :goto_bd
    if-ge v4, v3, :cond_c6

    .line 857
    const/16 v19, 0x20

    aput-char v19, v12, v4

    .line 856
    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    .line 858
    .end local v4    # "j":I
    :cond_c6
    sub-int/2addr v2, v1

    .line 859
    move v14, v0

    .line 860
    .end local v0    # "srcpos":I
    .end local v1    # "amount":I
    .end local v3    # "dstpos":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_9a

    .line 850
    .end local v16    # "numInsertions":I
    .end local v17    # "column":I
    .end local v18    # "sectionStart":I
    .local v1, "numInsertions":I
    .local v3, "column":I
    .local v4, "sectionStart":I
    :cond_d1
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    .line 861
    .end local v1    # "numInsertions":I
    .end local v3    # "column":I
    .end local v4    # "sectionStart":I
    .end local v15    # "i":I
    .restart local v16    # "numInsertions":I
    .restart local v17    # "column":I
    .restart local v18    # "sectionStart":I
    if-eq v12, v11, :cond_e4

    .line 862
    const/4 v0, 0x0

    invoke-static {v11, v0, v12, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e4

    .line 834
    .end local v8    # "fillPtr":I
    .end local v9    # "newFillPtr":I
    .end local v11    # "buffer":[C
    .end local v12    # "newBuffer":[C
    .end local v13    # "length":I
    .end local v14    # "end":I
    .end local v16    # "numInsertions":I
    .end local v17    # "column":I
    .end local v18    # "sectionStart":I
    .restart local v1    # "numInsertions":I
    .restart local v3    # "column":I
    .restart local v4    # "sectionStart":I
    :cond_de
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    .line 864
    .end local v1    # "numInsertions":I
    .end local v3    # "column":I
    .end local v4    # "sectionStart":I
    .restart local v16    # "numInsertions":I
    .restart local v17    # "column":I
    .restart local v18    # "sectionStart":I
    :cond_e4
    :goto_e4
    return-void
.end method

.method fitsOnLine(IZ)I
    .registers 7
    .param p1, "sectionEnd"    # I
    .param p2, "forceNewlines"    # Z

    .line 1049
    iget v0, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 1050
    .local v0, "available":I
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v1

    iget v2, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    if-ne v1, v2, :cond_17

    .line 1052
    add-int/lit8 v0, v0, -0x3

    .line 1053
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1055
    :cond_17
    const/4 v1, -0x1

    if-ltz p1, :cond_28

    .line 1056
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v2

    if-gt v2, v0, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    .line 1057
    :cond_28
    if-eqz p2, :cond_2b

    .line 1058
    return v1

    .line 1059
    :cond_2b
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->indexColumn(I)I

    move-result v2

    if-le v2, v0, :cond_34

    .line 1060
    return v1

    .line 1061
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method public flush()V
    .registers 4

    .line 1195
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    if-nez v0, :cond_5

    .line 1196
    return-void

    .line 1199
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->forcePrettyOutput()V

    .line 1200
    iget-object v0, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_f

    .line 1205
    nop

    .line 1206
    return-void

    .line 1202
    :catch_f
    move-exception v0

    .line 1204
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public forcePrettyOutput()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/text/PrettyWriter;->maybeOutput(ZZ)Z

    .line 1184
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-lez v1, :cond_c

    .line 1185
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    .line 1186
    :cond_c
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 1187
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    iput v1, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1188
    iget-object v1, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lgnu/text/PrettyWriter;->buffer:[C

    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Writer;->write([CII)V

    .line 1189
    iput v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1190
    iput v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1191
    return-void
.end method

.method public getColumnNumber()I
    .registers 5

    .line 1233
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1236
    .local v0, "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    .line 1237
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/2addr v1, v2

    return v1

    .line 1238
    :cond_c
    iget-object v1, p0, Lgnu/text/PrettyWriter;->buffer:[C

    aget-char v1, v1, v0

    .line 1239
    .local v1, "ch":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_19

    goto :goto_1a

    .line 1241
    .end local v1    # "ch":C
    :cond_19
    goto :goto_2

    .line 1240
    .restart local v1    # "ch":C
    :cond_1a
    :goto_1a
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method getMaxLines()I
    .registers 2

    .line 1037
    const/4 v0, -0x1

    return v0
.end method

.method protected getMiserWidth()I
    .registers 2

    .line 1024
    iget v0, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    return v0
.end method

.method public getPrettyPrintingMode()I
    .registers 2

    .line 65
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return v0
.end method

.method indexColumn(I)I
    .registers 11
    .param p1, "index"    # I

    .line 759
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 760
    .local v0, "column":I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSectionColumn()I

    move-result v1

    .line 761
    .local v1, "sectionStart":I
    invoke-direct {p0, p1}, Lgnu/text/PrettyWriter;->indexPosn(I)I

    move-result v2

    .line 762
    .local v2, "endPosn":I
    iget v3, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 763
    .local v3, "op":I
    iget v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 764
    .local v4, "todo":I
    :goto_e
    if-lez v4, :cond_4a

    .line 767
    iget-object v5, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v5, v5

    if-lt v3, v5, :cond_16

    .line 768
    const/4 v3, 0x0

    .line 769
    :cond_16
    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v5

    .line 770
    .local v5, "type":I
    if-eqz v5, :cond_43

    .line 772
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v3, 0x1

    aget v7, v6, v7

    .line 773
    .local v7, "posn":I
    if-lt v7, v2, :cond_25

    .line 774
    goto :goto_4a

    .line 775
    :cond_25
    const/4 v8, 0x6

    if-ne v5, v8, :cond_33

    .line 776
    invoke-direct {p0, v7}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p0, v3, v1, v6}, Lgnu/text/PrettyWriter;->computeTabSize(III)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_43

    .line 778
    :cond_33
    const/4 v8, 0x2

    if-eq v5, v8, :cond_39

    const/4 v8, 0x4

    if-ne v5, v8, :cond_43

    .line 780
    :cond_39
    add-int/lit8 v8, v3, 0x1

    aget v6, v6, v8

    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v6

    add-int/2addr v6, v0

    move v1, v6

    .line 783
    .end local v7    # "posn":I
    :cond_43
    :goto_43
    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v6

    .line 784
    .local v6, "size":I
    sub-int/2addr v4, v6

    .line 785
    add-int/2addr v3, v6

    .line 786
    .end local v5    # "type":I
    .end local v6    # "size":I
    goto :goto_e

    .line 787
    :cond_4a
    :goto_4a
    add-int v5, v0, p1

    return v5
.end method

.method isMisering()Z
    .registers 4

    .line 1029
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getMiserWidth()I

    move-result v0

    .line 1030
    .local v0, "mwidth":I
    if-lez v0, :cond_11

    iget v1, p0, Lgnu/text/PrettyWriter;->lineLength:I

    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v1, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public isPrettyPrinting()Z
    .registers 2

    .line 68
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lineAbbreviationHappened()V
    .registers 1

    .line 1067
    return-void
.end method

.method maybeOutput(ZZ)Z
    .registers 11

    .line 895
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 898
    :goto_2
    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v2, :cond_103

    .line 900
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v3, v3

    if-lt v2, v3, :cond_f

    .line 901
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 902
    :cond_f
    iget v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 903
    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v3

    .line 904
    const/4 v4, -0x1

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_104

    goto/16 :goto_f3

    .line 1010
    :pswitch_1c
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    goto/16 :goto_f3

    .line 1007
    :pswitch_21
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->reallyEndLogicalBlock()V

    .line 1008
    goto/16 :goto_f3

    .line 974
    :pswitch_26
    nop

    .line 975
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v2, 0x3

    aget v5, v3, v5

    .line 977
    if-lez v5, :cond_33

    add-int/2addr v5, v2

    array-length v3, v3

    rem-int/2addr v5, v3

    goto :goto_34

    :cond_33
    const/4 v5, -0x1

    .line 978
    :goto_34
    invoke-virtual {p0, v5, p1}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v3

    .line 980
    if-lez v3, :cond_4f

    .line 984
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v5, v2, 0x4

    aget v5, v3, v5

    .line 986
    add-int v6, v5, v2

    array-length v3, v3

    rem-int/2addr v6, v3

    .line 987
    invoke-virtual {p0, v6}, Lgnu/text/PrettyWriter;->expandTabs(I)V

    .line 988
    iput v6, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 989
    iget v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v3, v5

    iput v3, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 991
    goto :goto_6b

    .line 992
    :cond_4f
    if-ltz v3, :cond_53

    if-eqz p2, :cond_103

    .line 994
    :cond_53
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x5

    aget-object v5, v3, v5

    .line 995
    add-int/lit8 v6, v2, 0x6

    aget-object v3, v3, v6

    .line 997
    iget-object v6, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v6

    invoke-virtual {p0, v6, v5, v3}, Lgnu/text/PrettyWriter;->reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v2

    .line 1002
    :goto_6b
    iget v3, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-ne v3, v2, :cond_71

    .line 1003
    iput v4, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 1013
    :cond_71
    move v2, v6

    goto/16 :goto_f3

    .line 961
    :pswitch_74
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 963
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v4, v2, 0x2

    aget v4, v3, v4

    .line 964
    add-int/lit8 v5, v2, 0x3

    aget v5, v3, v5

    .line 965
    const/16 v6, 0x42

    if-ne v4, v6, :cond_8e

    .line 966
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getStartColumn()I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_97

    .line 968
    :cond_8e
    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->posnColumn(I)I

    move-result v3

    add-int/2addr v5, v3

    .line 970
    :goto_97
    invoke-virtual {p0, v5}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    .line 971
    goto :goto_f3

    .line 908
    :pswitch_9b
    nop

    .line 909
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v6, v2, 0x4

    aget v3, v3, v6

    sparse-switch v3, :sswitch_data_112

    .line 912
    nop

    .line 913
    const/4 v3, 0x1

    goto :goto_dc

    .line 915
    :sswitch_a8
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    .line 916
    goto :goto_dc

    .line 918
    :sswitch_ad
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->isMisering()Z

    move-result v3

    if-nez v3, :cond_da

    iget v3, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSectionStartLine()I

    move-result v6

    if-le v3, v6, :cond_bc

    goto :goto_da

    .line 926
    :cond_bc
    :sswitch_bc
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v6, v2, 0x3

    aget v6, v3, v6

    .line 927
    if-nez v6, :cond_c5

    .line 928
    goto :goto_cc

    .line 931
    :cond_c5
    add-int v4, v2, v6

    .line 932
    array-length v6, v3

    if-lt v4, v6, :cond_cc

    .line 933
    array-length v3, v3

    sub-int/2addr v4, v3

    .line 935
    :cond_cc
    :goto_cc
    invoke-virtual {p0, v4, p1}, Lgnu/text/PrettyWriter;->fitsOnLine(IZ)I

    move-result v4

    .line 936
    if-lez v4, :cond_d4

    .line 937
    const/4 v3, 0x0

    goto :goto_dc

    .line 938
    :cond_d4
    if-ltz v4, :cond_d8

    if-eqz p2, :cond_103

    .line 939
    :cond_d8
    const/4 v3, 0x1

    goto :goto_dc

    .line 921
    :cond_da
    :goto_da
    nop

    .line 922
    const/4 v3, 0x1

    .line 944
    :goto_dc
    if-eqz v3, :cond_f3

    .line 946
    nop

    .line 949
    if-eqz p2, :cond_e7

    if-nez v4, :cond_e7

    .line 950
    :try_start_e3
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->outputPartialLine()V

    goto :goto_ea

    .line 952
    :cond_e7
    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->outputLine(I)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ea} :catch_ec

    .line 957
    :goto_ea
    const/4 v1, 0x1

    goto :goto_f3

    .line 954
    :catch_ec
    move-exception p1

    .line 956
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1013
    :cond_f3
    :goto_f3
    iget v3, p0, Lgnu/text/PrettyWriter;->queueTail:I

    invoke-direct {p0, v3}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v3

    .line 1014
    iget v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1016
    add-int/2addr v2, v3

    iput v2, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1017
    goto/16 :goto_2

    .line 1018
    :cond_103
    return v1

    :pswitch_data_104
    .packed-switch 0x2
        :pswitch_9b
        :pswitch_74
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch

    :sswitch_data_112
    .sparse-switch
        0x46 -> :sswitch_ad
        0x4d -> :sswitch_a8
        0x53 -> :sswitch_bc
    .end sparse-switch
.end method

.method outputLine(I)V
    .registers 18
    .param p1, "newline"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1075
    .local v1, "buffer":[C
    iget-object v2, v0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v3, p1, 0x4

    aget v3, v2, v3

    .line 1076
    .local v3, "kind":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_12

    const/4 v6, 0x1

    goto :goto_13

    :cond_12
    const/4 v6, 0x0

    .line 1077
    .local v6, "isLiteral":Z
    :goto_13
    add-int/lit8 v7, p1, 0x1

    aget v2, v2, v7

    invoke-direct {v0, v2}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v2

    .line 1079
    .local v2, "amountToConsume":I
    if-eqz v6, :cond_1f

    .line 1080
    move v7, v2

    .local v7, "amountToPrint":I
    goto :goto_30

    .line 1084
    .end local v7    # "amountToPrint":I
    :cond_1f
    move v7, v2

    .line 1086
    .local v7, "i":I
    :goto_20
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_27

    .line 1088
    const/4 v8, 0x0

    .line 1089
    .local v8, "amountToPrint":I
    move v7, v8

    goto :goto_30

    .line 1091
    .end local v8    # "amountToPrint":I
    :cond_27
    aget-char v8, v1, v7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_aa

    .line 1093
    add-int/lit8 v8, v7, 0x1

    .line 1094
    .restart local v8    # "amountToPrint":I
    move v7, v8

    .line 1098
    .end local v8    # "amountToPrint":I
    .local v7, "amountToPrint":I
    :goto_30
    iget-object v8, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v8, v1, v5, v7}, Ljava/io/Writer;->write([CII)V

    .line 1099
    iget v8, v0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1101
    .local v8, "lineNumber":I
    add-int/2addr v8, v4

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->printReadably()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getMaxLines()I

    move-result v4

    .line 1105
    .local v4, "maxLines":I
    if-lez v4, :cond_60

    if-lt v8, v4, :cond_60

    .line 1107
    iget-object v9, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const-string v10, " .."

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v9

    .line 1109
    .local v9, "suffixLength":I
    if-eqz v9, :cond_5d

    .line 1111
    iget-object v10, v0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 1112
    .local v10, "suffix":[C
    array-length v11, v10

    .line 1113
    .local v11, "len":I
    iget-object v12, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    sub-int v13, v11, v9

    invoke-virtual {v12, v10, v13, v9}, Ljava/io/Writer;->write([CII)V

    .line 1116
    .end local v10    # "suffix":[C
    .end local v11    # "len":I
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lgnu/text/PrettyWriter;->lineAbbreviationHappened()V

    .line 1119
    .end local v4    # "maxLines":I
    .end local v9    # "suffixLength":I
    :cond_60
    iput v8, v0, Lgnu/text/PrettyWriter;->lineNumber:I

    .line 1120
    iget-object v4, v0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Ljava/io/Writer;->write(I)V

    .line 1121
    iput v5, v0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1122
    iget v4, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1123
    .local v4, "fillPtr":I
    if-eqz v6, :cond_74

    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v9

    goto :goto_78

    :cond_74
    invoke-direct/range {p0 .. p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v9

    .line 1124
    .local v9, "prefixLen":I
    :goto_78
    sub-int v10, v2, v9

    .line 1125
    .local v10, "shift":I
    sub-int v11, v4, v10

    .line 1126
    .local v11, "newFillPtr":I
    move-object v12, v1

    .line 1127
    .local v12, "newBuffer":[C
    array-length v13, v1

    .line 1128
    .local v13, "bufferLength":I
    if-le v11, v13, :cond_8a

    .line 1130
    sub-int v14, v11, v13

    invoke-static {v13, v14}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v14

    new-array v12, v14, [C

    .line 1132
    iput-object v12, v0, Lgnu/text/PrettyWriter;->buffer:[C

    .line 1134
    :cond_8a
    sub-int v14, v4, v2

    invoke-static {v1, v2, v12, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    iget-object v14, v0, Lgnu/text/PrettyWriter;->prefix:[C

    invoke-static {v14, v5, v12, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    iput v11, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1138
    iget v5, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v5, v10

    iput v5, v0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1139
    if-nez v6, :cond_a9

    .line 1141
    iget-object v5, v0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v14, v0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v15, v14, -0x2

    aput v9, v5, v15

    .line 1142
    add-int/lit8 v14, v14, -0x6

    aput v8, v5, v14

    .line 1144
    :cond_a9
    return-void

    .line 1091
    .end local v4    # "fillPtr":I
    .end local v8    # "lineNumber":I
    .end local v9    # "prefixLen":I
    .end local v10    # "shift":I
    .end local v11    # "newFillPtr":I
    .end local v12    # "newBuffer":[C
    .end local v13    # "bufferLength":I
    .local v7, "i":I
    :cond_aa
    goto/16 :goto_20
.end method

.method outputPartialLine()V
    .registers 8

    .line 1149
    iget v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1150
    .local v0, "tail":I
    :goto_2
    iget v1, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v1, :cond_1f

    invoke-direct {p0, v0}, Lgnu/text/PrettyWriter;->getQueueType(I)I

    move-result v1

    if-nez v1, :cond_1f

    .line 1152
    invoke-direct {p0, v0}, Lgnu/text/PrettyWriter;->getQueueSize(I)I

    move-result v1

    .line 1153
    .local v1, "size":I
    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    .line 1154
    add-int/2addr v0, v1

    .line 1155
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1c

    .line 1156
    const/4 v0, 0x0

    .line 1157
    :cond_1c
    iput v0, p0, Lgnu/text/PrettyWriter;->queueTail:I

    .line 1158
    .end local v1    # "size":I
    goto :goto_2

    .line 1159
    :cond_1f
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1160
    .local v1, "fillPtr":I
    iget v2, p0, Lgnu/text/PrettyWriter;->queueSize:I

    if-lez v2, :cond_30

    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lgnu/text/PrettyWriter;->posnIndex(I)I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    .line 1162
    .local v2, "count":I
    :goto_31
    sub-int v3, v1, v2

    .line 1163
    .local v3, "newFillPtr":I
    if-lez v2, :cond_5a

    .line 1167
    :try_start_35
    iget-object v4, p0, Lgnu/text/PrettyWriter;->out:Ljava/io/Writer;

    iget-object v5, p0, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_53

    .line 1173
    nop

    .line 1174
    iput v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1175
    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v4

    iput v4, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1176
    iget-object v4, p0, Lgnu/text/PrettyWriter;->buffer:[C

    invoke-static {v4, v2, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1177
    iput v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 1178
    iget v4, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Lgnu/text/PrettyWriter;->bufferOffset:I

    .line 1179
    return-void

    .line 1170
    :catch_53
    move-exception v4

    .line 1172
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1164
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_5a
    new-instance v4, Ljava/lang/Error;

    const-string v5, "outputPartialLine called when nothing can be output."

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_63

    :goto_62
    throw v4

    :goto_63
    goto :goto_62
.end method

.method printReadably()Z
    .registers 2

    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method reallyEndLogicalBlock()V
    .registers 6

    .line 511
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v0

    .line 512
    .local v0, "oldIndent":I
    iget v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v1, v1, -0x6

    iput v1, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    .line 513
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v1

    .line 514
    .local v1, "newIndent":I
    if-le v1, v0, :cond_1c

    .line 516
    move v2, v0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_1c

    .line 517
    iget-object v3, p0, Lgnu/text/PrettyWriter;->prefix:[C

    const/16 v4, 0x20

    aput-char v4, v3, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 519
    .end local v2    # "i":I
    :cond_1c
    return-void
.end method

.method reallyStartLogicalBlock(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "column"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v6

    .line 431
    .local v6, "perLineEnd":I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v7

    .line 432
    .local v7, "prefixLength":I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getSuffixLength()I

    move-result v8

    .line 433
    .local v8, "suffixLength":I
    iget v5, p0, Lgnu/text/PrettyWriter;->lineNumber:I

    move-object v0, p0

    move v1, p1

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lgnu/text/PrettyWriter;->pushLogicalBlock(IIIII)V

    .line 435
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->setIndentation(I)V

    .line 436
    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 438
    iget-object v1, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v2, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v2, v2, -0x3

    aput p1, v1, v2

    .line 439
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 440
    .local v1, "plen":I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->suffix:[C

    sub-int v3, p1, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 442
    .end local v1    # "plen":I
    :cond_2f
    if-eqz p3, :cond_59

    .line 447
    iget-object v1, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 448
    .local v1, "totalSuffix":[C
    array-length v2, v1

    .line 449
    .local v2, "totalSuffixLen":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 450
    .local v3, "additional":I
    add-int v4, v8, v3

    .line 451
    .local v4, "newSuffixLen":I
    if-le v4, v2, :cond_4c

    .line 453
    invoke-static {v2, v3}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v5

    .line 454
    .local v5, "newTotalSuffixLen":I
    new-array v9, v5, [C

    iput-object v9, p0, Lgnu/text/PrettyWriter;->suffix:[C

    .line 455
    sub-int v10, v2, v8

    sub-int v11, v5, v8

    invoke-static {v1, v10, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    move v2, v5

    .line 460
    .end local v5    # "newTotalSuffixLen":I
    :cond_4c
    sub-int v5, v2, v4

    invoke-virtual {p3, v0, v3, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    iget-object v0, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v5, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v5, v5, -0x5

    aput v4, v0, v5

    .line 465
    .end local v1    # "totalSuffix":[C
    .end local v2    # "totalSuffixLen":I
    .end local v3    # "additional":I
    .end local v4    # "newSuffixLen":I
    :cond_59
    return-void
.end method

.method public setColumnNumber(I)V
    .registers 4
    .param p1, "column"    # I

    .line 1246
    iget v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    invoke-virtual {p0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/PrettyWriter;->bufferStartColumn:I

    .line 1247
    return-void
.end method

.method public setIndentation(I)V
    .registers 8
    .param p1, "column"    # I

    .line 489
    iget-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 490
    .local v0, "prefix":[C
    array-length v1, v0

    .line 491
    .local v1, "prefixLen":I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPrefixLength()I

    move-result v2

    .line 492
    .local v2, "current":I
    invoke-direct {p0}, Lgnu/text/PrettyWriter;->getPerLinePrefixEnd()I

    move-result v3

    .line 493
    .local v3, "minimum":I
    if-le v3, p1, :cond_e

    .line 494
    move p1, v3

    .line 495
    :cond_e
    if-le p1, v1, :cond_20

    .line 497
    sub-int v4, p1, v1

    invoke-static {v1, v4}, Lgnu/text/PrettyWriter;->enoughSpace(II)I

    move-result v4

    new-array v0, v4, [C

    .line 498
    iget-object v4, p0, Lgnu/text/PrettyWriter;->prefix:[C

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iput-object v0, p0, Lgnu/text/PrettyWriter;->prefix:[C

    .line 501
    :cond_20
    if-le p1, v2, :cond_2c

    .line 503
    move v4, v2

    .local v4, "i":I
    :goto_23
    if-ge v4, p1, :cond_2c

    .line 504
    const/16 v5, 0x20

    aput-char v5, v0, v4

    .line 503
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 506
    .end local v4    # "i":I
    :cond_2c
    iget-object v4, p0, Lgnu/text/PrettyWriter;->blocks:[I

    iget v5, p0, Lgnu/text/PrettyWriter;->blockDepth:I

    add-int/lit8 v5, v5, -0x4

    aput p1, v4, v5

    .line 507
    return-void
.end method

.method public setPrettyPrinting(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 75
    xor-int/lit8 v0, p1, 0x1

    iput v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    .line 76
    return-void
.end method

.method public setPrettyPrintingMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 60
    iput p1, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "perLine"    # Z
    .param p3, "suffix"    # Ljava/lang/String;

    .line 625
    iget v0, p0, Lgnu/text/PrettyWriter;->queueSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_44

    iget v0, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-nez v0, :cond_44

    .line 627
    sget-object v0, Lgnu/text/PrettyWriter;->lineLengthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, "llen":Ljava/lang/Object;
    if-nez v0, :cond_16

    .line 629
    const/16 v2, 0x50

    iput v2, p0, Lgnu/text/PrettyWriter;->lineLength:I

    goto :goto_20

    .line 631
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lgnu/text/PrettyWriter;->lineLength:I

    .line 633
    :goto_20
    sget-object v2, Lgnu/text/PrettyWriter;->miserWidthLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v2, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 634
    .local v2, "mwidth":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3c

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_31

    goto :goto_3c

    .line 639
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    goto :goto_3f

    .line 637
    :cond_3c
    :goto_3c
    const/4 v3, -0x1

    iput v3, p0, Lgnu/text/PrettyWriter;->miserWidth:I

    .line 641
    :goto_3f
    sget-object v3, Lgnu/text/PrettyWriter;->indentLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v3, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .end local v0    # "llen":Ljava/lang/Object;
    .end local v2    # "mwidth":Ljava/lang/Object;
    :cond_44
    if-eqz p1, :cond_49

    .line 645
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 646
    :cond_49
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-nez v0, :cond_4e

    .line 647
    return-void

    .line 648
    :cond_4e
    const/4 v0, 0x7

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lgnu/text/PrettyWriter;->enqueue(II)I

    move-result v0

    .line 650
    .local v0, "start":I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->queueInts:[I

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    aput v4, v2, v3

    .line 651
    iget-object v3, p0, Lgnu/text/PrettyWriter;->queueStrings:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x5

    if-eqz p2, :cond_63

    move-object v1, p1

    :cond_63
    aput-object v1, v3, v5

    .line 653
    add-int/lit8 v1, v0, 0x6

    aput-object p3, v3, v1

    .line 654
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/text/PrettyWriter;->pendingBlocksCount:I

    .line 655
    iget v1, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 656
    .local v1, "outerBlock":I
    if-gez v1, :cond_73

    .line 657
    const/4 v1, 0x0

    goto :goto_78

    .line 660
    :cond_73
    sub-int/2addr v1, v0

    .line 661
    if-lez v1, :cond_78

    .line 662
    array-length v3, v2

    sub-int/2addr v1, v3

    .line 664
    :cond_78
    :goto_78
    add-int/lit8 v3, v0, 0x4

    aput v1, v2, v3

    .line 665
    add-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 666
    iput v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    .line 667
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "ch"    # I

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 307
    const/16 v0, 0xa

    if-ne p1, v0, :cond_11

    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_11

    .line 308
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    goto :goto_31

    .line 311
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    .line 312
    iget v1, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 313
    .local v1, "fillPointer":I
    iget-object v2, p0, Lgnu/text/PrettyWriter;->buffer:[C

    int-to-char v3, p1

    aput-char v3, v2, v1

    .line 314
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 315
    const/16 v2, 0x20

    if-ne p1, v2, :cond_31

    iget v2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-le v2, v0, :cond_31

    iget v0, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v0, :cond_31

    .line 316
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 318
    .end local v1    # "fillPointer":I
    :cond_31
    :goto_31
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 323
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 329
    :goto_3
    if-lez p3, :cond_4f

    .line 331
    move v0, p3

    .line 333
    .local v0, "cnt":I
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v1

    .line 334
    .local v1, "available":I
    if-le v0, v1, :cond_d

    .line 335
    move v0, v1

    .line 336
    :cond_d
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 337
    .local v2, "fillPointer":I
    sub-int/2addr p3, v0

    .line 338
    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4c

    .line 340
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 341
    .local p2, "ch":C
    const/16 v4, 0xa

    if-ne p2, v4, :cond_2c

    iget v4, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v4, :cond_2c

    .line 343
    iput v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 344
    const/16 v4, 0x4c

    invoke-virtual {p0, v4}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 345
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    goto :goto_4a

    .line 349
    :cond_2c
    iget-object v4, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "fillPointer":I
    .local v5, "fillPointer":I
    aput-char p2, v4, v2

    .line 350
    const/16 v2, 0x20

    if-ne p2, v2, :cond_49

    iget v2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_49

    iget v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v2, :cond_49

    .line 352
    iput v5, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 353
    const/16 v2, 0x53

    invoke-virtual {p0, v2}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 354
    iget v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .end local v5    # "fillPointer":I
    .restart local v2    # "fillPointer":I
    goto :goto_4a

    .line 357
    .end local v2    # "fillPointer":I
    .end local p2    # "ch":C
    .restart local v5    # "fillPointer":I
    :cond_49
    move v2, v5

    .end local v5    # "fillPointer":I
    .restart local v2    # "fillPointer":I
    :goto_4a
    move p2, v3

    goto :goto_10

    .line 358
    .end local v3    # "start":I
    .local p2, "start":I
    :cond_4c
    iput v2, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 359
    .end local v0    # "cnt":I
    .end local v1    # "available":I
    .end local v2    # "fillPointer":I
    goto :goto_3

    .line 360
    :cond_4f
    return-void
.end method

.method public write([C)V
    .registers 4
    .param p1, "str"    # [C

    .line 364
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 365
    return-void
.end method

.method public write([CII)V
    .registers 12
    .param p1, "str"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 371
    add-int v0, p2, p3

    .line 373
    .local v0, "end":I
    :goto_5
    if-lez p3, :cond_50

    .line 376
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_2d

    .line 379
    iget v2, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v2, :cond_2a

    aget-char v2, p1, v1

    move v3, v2

    .local v3, "c":C
    const/16 v4, 0xa

    if-eq v2, v4, :cond_1d

    const/16 v2, 0x20

    if-ne v3, v2, :cond_2a

    iget v2, p0, Lgnu/text/PrettyWriter;->currentBlock:I

    if-gez v2, :cond_2a

    .line 383
    :cond_1d
    sub-int v2, v1, p2

    invoke-virtual {p0, p1, p2, v2}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 384
    invoke-virtual {p0, v3}, Lgnu/text/PrettyWriter;->write(I)V

    .line 385
    add-int/lit8 p2, v1, 0x1

    .line 386
    sub-int p3, v0, p2

    .line 387
    goto :goto_5

    .line 376
    .end local v3    # "c":C
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 393
    .end local v1    # "i":I
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p3}, Lgnu/text/PrettyWriter;->ensureSpaceInBuffer(I)I

    move-result v1

    .line 394
    .local v1, "available":I
    if-ge v1, p3, :cond_35

    move v2, v1

    goto :goto_36

    :cond_35
    move v2, p3

    .line 395
    .local v2, "cnt":I
    :goto_36
    iget v3, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 396
    .local v3, "fillPointer":I
    add-int v4, v3, v2

    .line 397
    .local v4, "newFillPtr":I
    move v5, v3

    .local v5, "i":I
    :goto_3b
    if-ge v5, v4, :cond_49

    .line 398
    iget-object v6, p0, Lgnu/text/PrettyWriter;->buffer:[C

    add-int/lit8 v7, p2, 0x1

    .end local p2    # "start":I
    .local v7, "start":I
    aget-char p2, p1, p2

    aput-char p2, v6, v5

    .line 397
    add-int/lit8 v5, v5, 0x1

    move p2, v7

    goto :goto_3b

    .line 399
    .end local v5    # "i":I
    .end local v7    # "start":I
    .restart local p2    # "start":I
    :cond_49
    iput v4, p0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 400
    sub-int/2addr p3, v2

    .line 401
    if-nez p3, :cond_4f

    .line 402
    goto :goto_5

    .line 403
    .end local v1    # "available":I
    .end local v2    # "cnt":I
    .end local v3    # "fillPointer":I
    .end local v4    # "newFillPtr":I
    :cond_4f
    goto :goto_2d

    .line 405
    :cond_50
    return-void
.end method

.method public final writeBreak(I)V
    .registers 3
    .param p1, "kind"    # I

    .line 600
    iget v0, p0, Lgnu/text/PrettyWriter;->prettyPrintingMode:I

    if-lez v0, :cond_7

    .line 601
    invoke-virtual {p0, p1}, Lgnu/text/PrettyWriter;->enqueueNewline(I)V

    .line 602
    :cond_7
    return-void
.end method

.method public writeWordEnd()V
    .registers 2

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 285
    return-void
.end method

.method public writeWordStart()V
    .registers 2

    .line 293
    iget-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    if-eqz v0, :cond_9

    .line 294
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/text/PrettyWriter;->write(I)V

    .line 295
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/text/PrettyWriter;->wordEndSeen:Z

    .line 296
    return-void
.end method

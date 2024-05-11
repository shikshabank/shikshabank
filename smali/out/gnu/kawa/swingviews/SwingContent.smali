.class public Lgnu/kawa/swingviews/SwingContent;
.super Ljava/lang/Object;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/AbstractDocument$Content;


# instance fields
.field public final buffer:Lgnu/lists/CharBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/SwingContent;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .param p1, "initialSize"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lgnu/lists/CharBuffer;

    invoke-direct {v0, p1}, Lgnu/lists/CharBuffer;-><init>(I)V

    .line 24
    .local v0, "b":Lgnu/lists/CharBuffer;
    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 25
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v1

    iget v2, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    const/16 v3, 0xa

    aput-char v3, v1, v2

    .line 26
    iput-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lgnu/lists/CharBuffer;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 17
    return-void
.end method


# virtual methods
.method public createPosition(I)Ljavax/swing/text/Position;
    .registers 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 102
    .local v0, "b":Lgnu/lists/CharBuffer;
    if-ltz p1, :cond_10

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_10

    .line 104
    new-instance v1, Lgnu/kawa/swingviews/GapPosition;

    invoke-direct {v1, v0, p1}, Lgnu/kawa/swingviews/GapPosition;-><init>(Lgnu/lists/CharBuffer;I)V

    return-object v1

    .line 103
    :cond_10
    new-instance v1, Ljavax/swing/text/BadLocationException;

    const-string v2, "bad offset to createPosition"

    invoke-direct {v1, v2, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public getChars(IILjavax/swing/text/Segment;)V
    .registers 8
    .param p1, "where"    # I
    .param p2, "len"    # I
    .param p3, "txt"    # Ljavax/swing/text/Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 40
    .local v0, "b":Lgnu/lists/CharBuffer;
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    .line 41
    .local v1, "start":I
    if-ltz v1, :cond_13

    .line 43
    iput v1, p3, Ljavax/swing/text/Segment;->offset:I

    .line 44
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    iput-object v2, p3, Ljavax/swing/text/Segment;->array:[C

    .line 45
    iput p2, p3, Ljavax/swing/text/Segment;->count:I

    .line 46
    return-void

    .line 42
    :cond_13
    new-instance v2, Ljavax/swing/text/BadLocationException;

    const-string v3, "invalid offset"

    invoke-direct {v2, v3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public getString(II)Ljava/lang/String;
    .registers 7
    .param p1, "where"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 52
    .local v0, "b":Lgnu/lists/CharBuffer;
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    .line 53
    .local v1, "start":I
    if-ltz v1, :cond_12

    .line 55
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 54
    :cond_12
    new-instance v2, Ljavax/swing/text/BadLocationException;

    const-string v3, "invalid offset"

    invoke-direct {v2, v3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;
    .registers 4
    .param p1, "where"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;

    move-result-object v0

    return-object v0
.end method

.method public insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;
    .registers 7
    .param p1, "where"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "beforeMarkers"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 80
    .local v0, "b":Lgnu/lists/CharBuffer;
    if-ltz p1, :cond_20

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_20

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Lgnu/lists/CharBuffer;->insert(ILjava/lang/String;Z)V

    .line 84
    new-instance v1, Lgnu/kawa/swingviews/GapUndoableEdit;

    invoke-direct {v1, p1}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    .line 85
    .local v1, "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    iput-object p0, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 86
    iput-object p2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    .line 89
    return-object v1

    .line 81
    .end local v1    # "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    :cond_20
    new-instance v1, Ljavax/swing/text/BadLocationException;

    const-string v2, "bad insert"

    invoke-direct {v1, v2, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public length()I
    .registers 2

    .line 34
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v0

    return v0
.end method

.method public remove(II)Ljavax/swing/undo/UndoableEdit;
    .registers 8
    .param p1, "where"    # I
    .param p2, "nitems"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 62
    .local v0, "b":Lgnu/lists/CharBuffer;
    if-ltz p2, :cond_2c

    if-ltz p1, :cond_2c

    add-int v1, p1, p2

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v2

    if-gt v1, v2, :cond_2c

    .line 65
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->delete(II)V

    .line 67
    new-instance v1, Lgnu/kawa/swingviews/GapUndoableEdit;

    invoke-direct {v1, p1}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    .line 68
    .local v1, "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    iput-object p0, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    iget v4, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v4, p2

    invoke-direct {v2, v3, v4, p2}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 70
    iput p2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    .line 71
    const/4 v2, 0x0

    iput-boolean v2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    .line 72
    return-object v1

    .line 63
    .end local v1    # "undo":Lgnu/kawa/swingviews/GapUndoableEdit;
    :cond_2c
    new-instance v1, Ljavax/swing/text/BadLocationException;

    const-string v2, "invalid remove"

    invoke-direct {v1, v2, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

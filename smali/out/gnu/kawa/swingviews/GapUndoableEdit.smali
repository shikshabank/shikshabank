.class Lgnu/kawa/swingviews/GapUndoableEdit;
.super Ljavax/swing/undo/AbstractUndoableEdit;
.source "SwingContent.java"


# instance fields
.field content:Lgnu/kawa/swingviews/SwingContent;

.field data:Ljava/lang/String;

.field isInsertion:Z

.field nitems:I

.field startOffset:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 135
    invoke-direct {p0}, Ljavax/swing/undo/AbstractUndoableEdit;-><init>()V

    .line 136
    iput p1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    .line 137
    return-void
.end method

.method private doit(Z)V
    .registers 5
    .param p1, "isInsertion"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 143
    if-eqz p1, :cond_c

    .line 146
    iget-object v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget-object v2, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;

    goto :goto_15

    .line 151
    :cond_c
    iget-object v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget v2, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/swingviews/SwingContent;->remove(II)Ljavax/swing/undo/UndoableEdit;

    .line 153
    :goto_15
    return-void
.end method


# virtual methods
.method public redo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .line 170
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->redo()V

    .line 173
    :try_start_3
    iget-boolean v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_8
    .catch Ljavax/swing/text/BadLocationException; {:try_start_3 .. :try_end_8} :catch_a

    .line 178
    nop

    .line 179
    return-void

    .line 175
    :catch_a
    move-exception v0

    .line 177
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljavax/swing/undo/CannotRedoException;

    invoke-direct {v1}, Ljavax/swing/undo/CannotRedoException;-><init>()V

    throw v1
.end method

.method public undo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .line 157
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->undo()V

    .line 160
    :try_start_3
    iget-boolean v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_d
    .catch Ljavax/swing/text/BadLocationException; {:try_start_3 .. :try_end_d} :catch_f

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :catch_f
    move-exception v0

    .line 164
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljavax/swing/undo/CannotUndoException;

    invoke-direct {v1}, Ljavax/swing/undo/CannotUndoException;-><init>()V

    throw v1
.end method

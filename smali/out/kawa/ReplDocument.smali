.class public Lkawa/ReplDocument;
.super Ljavax/swing/text/DefaultStyledDocument;
.source "ReplDocument.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;
.implements Ljava/awt/event/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/ReplDocument$DocumentCloseListener;
    }
.end annotation


# static fields
.field static blueStyle:Ljavax/swing/text/Style;

.field public static defaultStyle:Ljavax/swing/text/Style;

.field public static inputStyle:Ljavax/swing/text/Style;

.field static promptStyle:Ljavax/swing/text/Style;

.field public static redStyle:Ljavax/swing/text/Style;

.field public static styles:Ljavax/swing/text/StyleContext;


# instance fields
.field closeListeners:Ljava/lang/Object;

.field content:Lgnu/kawa/swingviews/SwingContent;

.field public endMark:I

.field environment:Lgnu/mapping/Environment;

.field final err_stream:Lkawa/ReplPaneOutPort;

.field final in_p:Lkawa/GuiInPort;

.field final in_r:Lgnu/text/QueueReader;

.field language:Lgnu/expr/Language;

.field length:I

.field final out_stream:Lkawa/ReplPaneOutPort;

.field public outputMark:I

.field pane:Ljavax/swing/JTextPane;

.field paneCount:I

.field thread:Lgnu/mapping/Future;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Ljavax/swing/text/StyleContext;

    invoke-direct {v0}, Ljavax/swing/text/StyleContext;-><init>()V

    sput-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    .line 24
    const-string v1, "default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    .line 25
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "input"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    .line 26
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "red"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    .line 27
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "blue"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    .line 28
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "prompt"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    .line 30
    sget-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 31
    sget-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 32
    sget-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 33
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .registers 5
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "penvironment"    # Lgnu/mapping/Environment;
    .param p3, "shared"    # Z

    .line 62
    new-instance v0, Lgnu/kawa/swingviews/SwingContent;

    invoke-direct {v0}, Lgnu/kawa/swingviews/SwingContent;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    .line 63
    return-void
.end method

.method private constructor <init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .registers 10
    .param p1, "content"    # Lgnu/kawa/swingviews/SwingContent;
    .param p2, "language"    # Lgnu/expr/Language;
    .param p3, "penvironment"    # Lgnu/mapping/Environment;
    .param p4, "shared"    # Z

    .line 67
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    invoke-direct {p0, p1, v0}, Ljavax/swing/text/DefaultStyledDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;Ljavax/swing/text/StyleContext;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lkawa/ReplDocument;->outputMark:I

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lkawa/ReplDocument;->endMark:I

    .line 58
    iput v0, p0, Lkawa/ReplDocument;->length:I

    .line 68
    iput-object p1, p0, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    invoke-static {}, Lgnu/expr/ModuleBody;->exitIncrement()V

    .line 71
    invoke-virtual {p0, p0}, Lkawa/ReplDocument;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 73
    iput-object p2, p0, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    .line 75
    new-instance v0, Lkawa/ReplDocument$1;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$1;-><init>(Lkawa/ReplDocument;)V

    iput-object v0, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    .line 79
    new-instance v1, Lkawa/ReplPaneOutPort;

    sget-object v2, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    const-string v3, "/dev/stdout"

    invoke-direct {v1, p0, v3, v2}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v1, p0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    .line 80
    new-instance v2, Lkawa/ReplPaneOutPort;

    sget-object v3, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    const-string v4, "/dev/stderr"

    invoke-direct {v2, p0, v4, v3}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v2, p0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    .line 81
    new-instance v3, Lkawa/GuiInPort;

    const-string v4, "/dev/stdin"

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1, p0}, Lkawa/GuiInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V

    iput-object v3, p0, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    .line 83
    new-instance v0, Lkawa/ReplDocument$2;

    invoke-direct {v0, p0, p2, p4}, Lkawa/ReplDocument$2;-><init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V

    invoke-static {v0, p3, v3, v1, v2}, Lgnu/mapping/Future;->make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;

    move-result-object v0

    iput-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    .line 98
    invoke-virtual {v0}, Lgnu/mapping/Future;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .registers 4
    .param p1, "listener"    # Lkawa/ReplDocument$DocumentCloseListener;

    .line 253
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 254
    iput-object p1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_1f

    .line 258
    :cond_7
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 259
    check-cast v0, Ljava/util/ArrayList;

    .local v0, "vec":Ljava/util/ArrayList;
    goto :goto_1c

    .line 262
    .end local v0    # "vec":Ljava/util/ArrayList;
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .restart local v0    # "vec":Ljava/util/ArrayList;
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 266
    :goto_1c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v0    # "vec":Ljava/util/ArrayList;
    :goto_1f
    return-void
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .line 209
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public checkingPendingInput()V
    .registers 2

    .line 166
    new-instance v0, Lkawa/ReplDocument$4;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$4;-><init>(Lkawa/ReplDocument;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method close()V
    .registers 3

    .line 234
    iget-object v0, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v0}, Lgnu/text/QueueReader;->appendEOF()V

    .line 237
    const-wide/16 v0, 0x64

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 239
    goto :goto_c

    .line 238
    :catch_b
    move-exception v0

    .line 242
    :goto_c
    iget-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v0}, Lgnu/mapping/Future;->stop()V

    .line 243
    invoke-virtual {p0}, Lkawa/ReplDocument;->fireDocumentClosed()V

    .line 244
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 245
    return-void
.end method

.method public declared-synchronized deleteOldText()V
    .registers 5

    monitor-enter p0

    .line 107
    :try_start_1
    iget v0, p0, Lkawa/ReplDocument;->outputMark:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkawa/ReplDocument;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "str":Ljava/lang/String;
    iget v2, p0, Lkawa/ReplDocument;->outputMark:I

    if-gtz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_18

    :cond_e
    const/16 v3, 0xa

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 110
    .local v2, "lineBefore":I
    :goto_18
    invoke-virtual {p0, v1, v2}, Lkawa/ReplDocument;->remove(II)V
    :try_end_1b
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1 .. :try_end_1b} :catch_20
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    .line 120
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "lineBefore":I
    nop

    .line 121
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lkawa/ReplDocument;
    :catchall_1e
    move-exception v0

    goto :goto_27

    .line 113
    :catch_20
    move-exception v0

    .line 116
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    :try_start_21
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    .line 106
    .end local v0    # "ex":Ljavax/swing/text/BadLocationException;
    :goto_27
    monitor-exit p0

    throw v0
.end method

.method fireDocumentClosed()V
    .registers 4

    .line 292
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v1, v0, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v1, :cond_c

    .line 293
    check-cast v0, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v0, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_22

    .line 294
    :cond_c
    if-eqz v0, :cond_22

    .line 296
    check-cast v0, Ljava/util/ArrayList;

    .line 297
    .local v0, "vec":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_22

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v2, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_14

    .line 300
    .end local v0    # "vec":Ljava/util/ArrayList;
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return-void
.end method

.method public focusGained(Ljava/awt/event/FocusEvent;)V
    .registers 5
    .param p1, "e"    # Ljava/awt/event/FocusEvent;

    .line 193
    invoke-virtual {p1}, Ljava/awt/event/FocusEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "source":Ljava/lang/Object;
    instance-of v1, v0, Lkawa/ReplPane;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 196
    move-object v1, v0

    check-cast v1, Lkawa/ReplPane;

    iput-object v1, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    goto :goto_11

    .line 200
    :cond_f
    iput-object v2, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 201
    :goto_11
    instance-of v1, v0, Lkawa/ReplPane;

    if-eqz v1, :cond_18

    move-object v2, v0

    check-cast v2, Lkawa/ReplPane;

    :cond_18
    iput-object v2, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 202
    return-void
.end method

.method public focusLost(Ljava/awt/event/FocusEvent;)V
    .registers 3
    .param p1, "e"    # Ljava/awt/event/FocusEvent;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 207
    return-void
.end method

.method public insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "style"    # Ljavax/swing/text/AttributeSet;

    .line 127
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljavax/swing/text/DefaultStyledDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    :try_end_3
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_3} :catch_5

    .line 136
    nop

    .line 137
    return-void

    .line 129
    :catch_5
    move-exception v0

    .line 132
    .local v0, "ex":Ljavax/swing/text/BadLocationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .line 210
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .registers 6
    .param p1, "listener"    # Lkawa/ReplDocument$DocumentCloseListener;

    .line 272
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v1, v0, Lkawa/ReplDocument$DocumentCloseListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 274
    if-ne v0, p1, :cond_2a

    .line 275
    iput-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_2a

    .line 277
    :cond_c
    if-eqz v0, :cond_2a

    .line 279
    check-cast v0, Ljava/util/ArrayList;

    .line 280
    .local v0, "vec":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :cond_14
    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_22

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_14

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_14

    .line 285
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2a

    .line 286
    iput-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 288
    .end local v0    # "vec":Ljava/util/ArrayList;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 2
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    .line 211
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public declared-synchronized textValueChanged(Ljavax/swing/event/DocumentEvent;)V
    .registers 6
    .param p1, "e"    # Ljavax/swing/event/DocumentEvent;

    monitor-enter p0

    .line 217
    :try_start_1
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result v0

    .line 218
    .local v0, "pos":I
    invoke-virtual {p0}, Lkawa/ReplDocument;->getLength()I

    move-result v1

    iget v2, p0, Lkawa/ReplDocument;->length:I

    sub-int/2addr v1, v2

    .line 219
    .local v1, "delta":I
    add-int/2addr v2, v1

    iput v2, p0, Lkawa/ReplDocument;->length:I

    .line 220
    iget v2, p0, Lkawa/ReplDocument;->outputMark:I

    if-ge v0, v2, :cond_17

    .line 221
    add-int/2addr v2, v1

    iput v2, p0, Lkawa/ReplDocument;->outputMark:I

    goto :goto_1d

    .line 222
    .end local p0    # "this":Lkawa/ReplDocument;
    :cond_17
    sub-int v3, v0, v1

    if-ge v3, v2, :cond_1d

    .line 223
    iput v0, p0, Lkawa/ReplDocument;->outputMark:I

    .line 224
    :cond_1d
    :goto_1d
    iget v2, p0, Lkawa/ReplDocument;->endMark:I

    if-ltz v2, :cond_2d

    .line 226
    if-ge v0, v2, :cond_27

    .line 227
    add-int/2addr v2, v1

    iput v2, p0, Lkawa/ReplDocument;->endMark:I

    goto :goto_2d

    .line 228
    :cond_27
    sub-int v3, v0, v1

    if-ge v3, v2, :cond_2d

    .line 229
    iput v0, p0, Lkawa/ReplDocument;->endMark:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 231
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    .line 216
    .end local v0    # "pos":I
    .end local v1    # "delta":I
    .end local p1    # "e":Ljavax/swing/event/DocumentEvent;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # Ljavax/swing/text/AttributeSet;

    .line 145
    new-instance v0, Lkawa/ReplDocument$3;

    invoke-direct {v0, p0, p1, p2}, Lkawa/ReplDocument$3;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

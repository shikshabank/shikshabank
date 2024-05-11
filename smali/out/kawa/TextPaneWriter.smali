.class Lkawa/TextPaneWriter;
.super Ljava/io/Writer;
.source "ReplPaneOutPort.java"


# instance fields
.field document:Lkawa/ReplDocument;

.field str:Ljava/lang/String;

.field style:Ljavax/swing/text/AttributeSet;


# direct methods
.method public constructor <init>(Lkawa/ReplDocument;Ljavax/swing/text/AttributeSet;)V
    .registers 4
    .param p1, "document"    # Lkawa/ReplDocument;
    .param p2, "style"    # Ljavax/swing/text/AttributeSet;

    .line 81
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    .line 83
    iput-object p2, p0, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 117
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V

    .line 118
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 108
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 110
    const-string v1, ""

    iput-object v1, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 113
    .end local p0    # "this":Lkawa/TextPaneWriter;
    :cond_12
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "s":Ljava/lang/String;
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 4
    .param p1, "x"    # I

    monitor-enter p0

    .line 88
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkawa/TextPaneWriter;->str:Ljava/lang/String;

    .line 89
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1e

    .line 90
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 91
    .end local p0    # "this":Lkawa/TextPaneWriter;
    :cond_1e
    monitor-exit p0

    return-void

    .line 87
    .end local p1    # "x":I
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lkawa/TextPaneWriter;->document:Lkawa/ReplDocument;

    iget-object v1, p0, Lkawa/TextPaneWriter;->style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v0, p1, v1}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 96
    return-void
.end method

.method public declared-synchronized write([CII)V
    .registers 5
    .param p1, "data"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lkawa/TextPaneWriter;->flush()V

    .line 101
    if-eqz p3, :cond_e

    .line 102
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lkawa/TextPaneWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 103
    .end local p0    # "this":Lkawa/TextPaneWriter;
    :cond_e
    monitor-exit p0

    return-void

    .line 99
    .end local p1    # "data":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

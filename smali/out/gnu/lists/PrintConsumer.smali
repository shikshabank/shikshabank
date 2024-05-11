.class public Lgnu/lists/PrintConsumer;
.super Ljava/io/PrintWriter;
.source "PrintConsumer.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;Z)V
    .registers 4
    .param p1, "out"    # Lgnu/lists/Consumer;
    .param p2, "autoFlush"    # Z

    .line 18
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/io/Writer;

    goto :goto_d

    :cond_8
    new-instance v0, Lgnu/lists/ConsumerWriter;

    invoke-direct {v0, p1}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    :goto_d
    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 34
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .registers 3
    .param p1, "x0"    # C

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lgnu/lists/PrintConsumer;
    .registers 2
    .param p1, "c"    # C

    .line 48
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(C)V

    .line 49
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 54
    if-nez p1, :cond_4

    .line 55
    const-string p1, "null"

    .line 56
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    .line 57
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 62
    if-nez p1, :cond_4

    .line 63
    const-string p1, "null"

    .line 64
    :cond_4
    move v0, p2

    .local v0, "i":I
    :goto_5
    if-ge v0, p3, :cond_11

    .line 65
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 66
    .end local v0    # "i":I
    :cond_11
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/PrintWriter;
    .registers 3
    .param p1, "x0"    # C

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(C)Lgnu/lists/PrintConsumer;

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

    .line 9
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/PrintConsumer;

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

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/PrintConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/PrintConsumer;

    move-result-object v0

    return-object v0
.end method

.method public endAttribute()V
    .registers 1

    .line 127
    return-void
.end method

.method public endDocument()V
    .registers 1

    .line 118
    return-void
.end method

.method public endElement()V
    .registers 1

    .line 123
    return-void
.end method

.method protected endNumber()V
    .registers 1

    .line 43
    return-void
.end method

.method public ignoring()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public startDocument()V
    .registers 1

    .line 116
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/Object;

    .line 121
    return-void
.end method

.method protected startNumber()V
    .registers 1

    .line 39
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 73
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lgnu/lists/PrintConsumer;->write(Ljava/lang/String;II)V

    goto :goto_18

    .line 77
    :cond_b
    move v0, p2

    .local v0, "i":I
    :goto_c
    if-ge v0, p3, :cond_18

    .line 78
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/PrintConsumer;->write(I)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 80
    .end local v0    # "i":I
    :cond_18
    :goto_18
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z

    .line 85
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(Z)V

    .line 86
    return-void
.end method

.method public writeDouble(D)V
    .registers 3
    .param p1, "v"    # D

    .line 97
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(D)V

    .line 99
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 100
    return-void
.end method

.method public writeFloat(F)V
    .registers 2
    .param p1, "v"    # F

    .line 90
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 91
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(F)V

    .line 92
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 93
    return-void
.end method

.method public writeInt(I)V
    .registers 2
    .param p1, "v"    # I

    .line 104
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 105
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(I)V

    .line 106
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 107
    return-void
.end method

.method public writeLong(J)V
    .registers 3
    .param p1, "v"    # J

    .line 111
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->startNumber()V

    .line 112
    invoke-virtual {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(J)V

    .line 113
    invoke-virtual {p0}, Lgnu/lists/PrintConsumer;->endNumber()V

    .line 114
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, p1}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.class public Lgnu/lists/FilterConsumer;
.super Ljava/lang/Object;
.source "FilterConsumer.java"

# interfaces
.implements Lgnu/lists/XConsumer;


# instance fields
.field protected attributeType:Ljava/lang/Object;

.field protected base:Lgnu/lists/Consumer;

.field protected inAttribute:Z

.field protected skipping:Z


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .registers 2
    .param p1, "base"    # Lgnu/lists/Consumer;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    .line 21
    return-void
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .registers 2
    .param p1, "c"    # C

    .line 206
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->write(I)V

    .line 207
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .registers 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 212
    if-nez p1, :cond_4

    .line 213
    const-string p1, "null"

    .line 214
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 215
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 220
    if-nez p1, :cond_4

    .line 221
    const-string p1, "null"

    .line 222
    :cond_4
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 223
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

    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(C)Lgnu/lists/Consumer;

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

    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

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

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method protected beforeContent()V
    .registers 1

    .line 25
    return-void
.end method

.method protected beforeNode()V
    .registers 1

    .line 29
    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .registers 4
    .param p1, "baseUri"    # Ljava/lang/Object;

    .line 154
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_12

    .line 156
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 157
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_12

    .line 158
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 160
    :cond_12
    return-void
.end method

.method public endAttribute()V
    .registers 2

    .line 113
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_9

    .line 114
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    .line 115
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 116
    return-void
.end method

.method public endDocument()V
    .registers 2

    .line 81
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_9

    .line 82
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    .line 83
    :cond_9
    return-void
.end method

.method public endElement()V
    .registers 2

    .line 96
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_9

    .line 97
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    .line 98
    :cond_9
    return-void
.end method

.method public endEntity()V
    .registers 3

    .line 164
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_f

    .line 165
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0}, Lgnu/lists/XConsumer;->endEntity()V

    .line 166
    :cond_f
    return-void
.end method

.method public ignoring()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 3
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->attributeType:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 104
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_11

    .line 106
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 107
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 109
    :cond_11
    return-void
.end method

.method public startDocument()V
    .registers 2

    .line 75
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_9

    .line 76
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 77
    :cond_9
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 87
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 89
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 90
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 92
    :cond_c
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "v"    # I

    .line 33
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 34
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 35
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 36
    :cond_c
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 198
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 199
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 200
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 201
    :cond_c
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 190
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 182
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 183
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 184
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 185
    :cond_c
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .line 40
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 41
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 42
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 43
    :cond_c
    return-void
.end method

.method public writeCDATA([CII)V
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 142
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 143
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_16

    .line 145
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_13

    .line 146
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_16

    .line 148
    :cond_13
    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 150
    :cond_16
    :goto_16
    return-void
.end method

.method public writeComment([CII)V
    .registers 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 120
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_12

    .line 122
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 123
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_12

    .line 124
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 126
    :cond_12
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "v"    # D

    .line 54
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 55
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 56
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 57
    :cond_c
    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .param p1, "v"    # F

    .line 47
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 48
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 49
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 50
    :cond_c
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "v"    # I

    .line 61
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 62
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 63
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 64
    :cond_c
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "v"    # J

    .line 68
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 69
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 70
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 71
    :cond_c
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 171
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_c

    .line 172
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 173
    :cond_c
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 131
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_12

    .line 133
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeNode()V

    .line 134
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_12

    .line 135
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 138
    :cond_12
    return-void
.end method

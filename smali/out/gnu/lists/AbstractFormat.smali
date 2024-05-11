.class public abstract Lgnu/lists/AbstractFormat;
.super Ljava/text/Format;
.source "AbstractFormat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public endAttribute(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 58
    const-string v0, " "

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method

.method public endElement(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 47
    const-string v0, ")"

    invoke-virtual {p0, v0, p1}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 48
    return-void
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 102
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 103
    .local v0, "out":Lgnu/mapping/CharArrayOutPort;
    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    .line 104
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 106
    return-object p2
.end method

.method public format(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 65
    instance-of v0, p2, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_16

    .line 67
    move-object v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    .line 68
    .local v0, "pout":Lgnu/mapping/OutPort;
    iget-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 71
    .local v1, "saveFormat":Lgnu/lists/AbstractFormat;
    :try_start_9
    iput-object p0, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 72
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 76
    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 77
    nop

    .line 78
    .end local v0    # "pout":Lgnu/mapping/OutPort;
    .end local v1    # "saveFormat":Lgnu/lists/AbstractFormat;
    goto :goto_19

    .line 76
    .restart local v0    # "pout":Lgnu/mapping/OutPort;
    .restart local v1    # "saveFormat":Lgnu/lists/AbstractFormat;
    :catchall_12
    move-exception v2

    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v2

    .line 80
    .end local v0    # "pout":Lgnu/mapping/OutPort;
    .end local v1    # "saveFormat":Lgnu/lists/AbstractFormat;
    :cond_16
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 81
    :goto_19
    return-void
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 111
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".parseObject - not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 4
    .param p1, "attrType"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 53
    const-string v0, ": "

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 54
    return-void
.end method

.method public startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 40
    const-string v0, "("

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 42
    const-string v0, " "

    invoke-virtual {p0, v0, p2}, Lgnu/lists/AbstractFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 43
    return-void
.end method

.method public write(ILgnu/lists/Consumer;)V
    .registers 3
    .param p1, "v"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 15
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 16
    return-void
.end method

.method protected write(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 10
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .registers 3
    .param p1, "v"    # Z
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 35
    invoke-interface {p2, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 36
    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 30
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgnu/lists/AbstractFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 31
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .registers 4
    .param p1, "v"    # J
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 22
    invoke-interface {p3, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 23
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
.end method

.method public final writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/PrintConsumer;

    .line 85
    invoke-virtual {p0, p1, p2}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;

    .line 90
    instance-of v0, p2, Lgnu/lists/Consumer;

    if-eqz v0, :cond_b

    .line 91
    move-object v0, p2

    check-cast v0, Lgnu/lists/Consumer;

    invoke-virtual {p0, p1, v0}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1b

    .line 94
    :cond_b
    new-instance v0, Lgnu/mapping/OutPort;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 95
    .local v0, "port":Lgnu/mapping/OutPort;
    move-object v1, p2

    check-cast v1, Lgnu/lists/Consumer;

    invoke-virtual {p0, p1, v1}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 96
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    .line 98
    .end local v0    # "port":Lgnu/mapping/OutPort;
    :goto_1b
    return-void
.end method

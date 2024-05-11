.class public Lkawa/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# static fields
.field static final SB_IAC:I = 0x190


# instance fields
.field protected buf:[B

.field connection:Lkawa/Telnet;

.field count:I

.field pos:I

.field state:I

.field subCommandLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkawa/Telnet;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "conn"    # Lkawa/Telnet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lkawa/TelnetInputStream;->state:I

    .line 30
    iput v0, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    .line 18
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    .line 19
    iput-object p2, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    .line 20
    return-void
.end method


# virtual methods
.method public read()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :goto_0
    iget v0, p0, Lkawa/TelnetInputStream;->pos:I

    iget v1, p0, Lkawa/TelnetInputStream;->count:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2f

    .line 40
    iget-object v0, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 41
    .local v0, "avail":I
    if-gtz v0, :cond_11

    .line 42
    const/4 v0, 0x1

    goto :goto_1c

    .line 43
    :cond_11
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v3, v1

    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1c

    .line 45
    array-length v1, v1

    sub-int v0, v1, v4

    .line 47
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    iget v1, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    iput v1, p0, Lkawa/TelnetInputStream;->pos:I

    .line 49
    iput v0, p0, Lkawa/TelnetInputStream;->count:I

    .line 50
    if-gtz v0, :cond_2f

    .line 51
    return v2

    .line 53
    .end local v0    # "avail":I
    :cond_2f
    iget-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v1, v0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 54
    .local v1, "ch":I
    iget v4, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v4, :cond_46

    .line 56
    if-eq v1, v3, :cond_43

    .line 57
    return v1

    .line 58
    :cond_43
    iput v3, p0, Lkawa/TelnetInputStream;->state:I

    .line 59
    goto :goto_0

    .line 61
    :cond_46
    const/16 v5, 0xfe

    const/16 v6, 0xfd

    const/16 v7, 0xfc

    const/16 v8, 0xfb

    const/16 v9, 0xfa

    const/4 v10, 0x0

    if-ne v4, v3, :cond_7e

    .line 63
    if-ne v1, v3, :cond_58

    .line 65
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 66
    return v3

    .line 68
    :cond_58
    if-eq v1, v8, :cond_7b

    if-eq v1, v7, :cond_7b

    if-eq v1, v6, :cond_7b

    if-eq v1, v5, :cond_7b

    if-ne v1, v9, :cond_63

    goto :goto_7b

    .line 76
    :cond_63
    const/16 v0, 0xf4

    if-ne v1, v0, :cond_72

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Interrupt Process"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_e1

    .line 81
    :cond_72
    const/16 v0, 0xec

    if-ne v1, v0, :cond_77

    .line 83
    return v2

    .line 87
    :cond_77
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_e1

    .line 74
    :cond_7b
    :goto_7b
    iput v1, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_e1

    .line 90
    :cond_7e
    if-eq v4, v8, :cond_da

    if-eq v4, v7, :cond_da

    if-eq v4, v6, :cond_da

    if-ne v4, v5, :cond_87

    goto :goto_da

    .line 96
    :cond_87
    const/16 v2, 0x190

    if-ne v4, v9, :cond_9a

    .line 98
    if-ne v1, v3, :cond_90

    .line 99
    iput v2, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_e1

    .line 101
    :cond_90
    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    goto :goto_e1

    .line 103
    :cond_9a
    if-ne v4, v2, :cond_bf

    .line 105
    if-ne v1, v3, :cond_aa

    .line 107
    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 108
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_e1

    .line 110
    :cond_aa
    const/16 v2, 0xf0

    if-ne v1, v2, :cond_ba

    .line 112
    iget-object v2, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v2, v0, v10, v3}, Lkawa/Telnet;->subCommand([BII)V

    .line 113
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 114
    iput v10, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto :goto_e1

    .line 118
    :cond_ba
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 119
    iput v10, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto :goto_e1

    .line 123
    :cond_bf
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 93
    :cond_da
    :goto_da
    iget-object v0, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    invoke-virtual {v0, v4, v1}, Lkawa/Telnet;->handle(II)V

    .line 94
    iput v10, p0, Lkawa/TelnetInputStream;->state:I

    .line 124
    .end local v1    # "ch":I
    :goto_e1
    goto/16 :goto_0
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    if-gtz p3, :cond_4

    .line 130
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_4
    const/4 v0, 0x0

    .line 132
    .local v0, "done":I
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_f

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-lt v1, v2, :cond_1e

    .line 134
    :cond_f
    invoke-virtual {p0}, Lkawa/TelnetInputStream;->read()I

    move-result v1

    .line 135
    .local v1, "ch":I
    if-gez v1, :cond_16

    .line 136
    return v1

    .line 137
    :cond_16
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v1

    aput-byte v3, p1, p2

    .line 138
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    .line 140
    .end local v1    # "ch":I
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_1e
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_3e

    .line 142
    :goto_22
    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-ge v1, v2, :cond_3e

    if-ge v0, p3, :cond_3e

    .line 144
    iget-object v2, p0, Lkawa/TelnetInputStream;->buf:[B

    aget-byte v2, v2, v1

    .line 145
    .local v2, "ch":B
    const/4 v3, -0x1

    if-ne v2, v3, :cond_32

    .line 146
    goto :goto_3e

    .line 147
    :cond_32
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aput-byte v2, p1, p2

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkawa/TelnetInputStream;->pos:I

    .line 150
    .end local v2    # "ch":B
    move p2, v3

    goto :goto_22

    .line 152
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_3e
    :goto_3e
    return v0
.end method

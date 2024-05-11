.class public Lgnu/text/Char;
.super Ljava/lang/Object;
.source "Char.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field static ascii:[Lgnu/text/Char;

.field static charNameValues:[C

.field static charNames:[Ljava/lang/String;

.field static hashTable:Lgnu/text/CharMap;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Lgnu/text/CharMap;

    invoke-direct {v0}, Lgnu/text/CharMap;-><init>()V

    sput-object v0, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    .line 80
    const/16 v0, 0x80

    new-array v0, v0, [Lgnu/text/Char;

    sput-object v0, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    .line 81
    const/16 v0, 0x80

    .local v0, "i":I
    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    .line 82
    sget-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    new-instance v2, Lgnu/text/Char;

    invoke-direct {v2, v0}, Lgnu/text/Char;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_f

    .line 103
    .end local v0    # "i":I
    :cond_1d
    const/16 v0, 0xf

    new-array v1, v0, [C

    fill-array-data v1, :array_7e

    sput-object v1, Lgnu/text/Char;->charNameValues:[C

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "space"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tab"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "newline"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "linefeed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "return"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "backspace"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "esc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "del"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rubout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarm"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bel"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vtab"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "nul"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    return-void

    nop

    :array_7e
    .array-data 2
        0x20s
        0x9s
        0xas
        0xas
        0xds
        0xcs
        0x8s
        0x1bs
        0x7fs
        0x7fs
        0x7fs
        0x7s
        0x7s
        0xbs
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "ch"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lgnu/text/Char;->value:I

    .line 41
    return-void
.end method

.method public static make(I)Lgnu/text/Char;
    .registers 3
    .param p0, "ch"    # I

    .line 87
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 88
    sget-object v0, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    aget-object v0, v0, p0

    return-object v0

    .line 89
    :cond_9
    sget-object v0, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    monitor-enter v0

    .line 91
    :try_start_c
    sget-object v1, Lgnu/text/Char;->hashTable:Lgnu/text/CharMap;

    invoke-virtual {v1, p0}, Lgnu/text/CharMap;->get(I)Lgnu/text/Char;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static nameToChar(Ljava/lang/String;)I
    .registers 9
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v0, v0

    .local v0, "i":I
    :cond_3
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_16

    .line 127
    sget-object v1, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    sget-object v1, Lgnu/text/Char;->charNameValues:[C

    aget-char v1, v1, v0

    return v1

    .line 130
    .end local v0    # "i":I
    :cond_16
    sget-object v0, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v0, v0

    .restart local v0    # "i":I
    :cond_19
    add-int/2addr v0, v1

    if-ltz v0, :cond_2b

    .line 132
    sget-object v2, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 133
    sget-object v1, Lgnu/text/Char;->charNameValues:[C

    aget-char v1, v1, v0

    return v1

    .line 135
    .end local v0    # "i":I
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    .local v0, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_54

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-ne v4, v5, :cond_54

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "value":I
    const/4 v5, 0x1

    .line 141
    .local v5, "pos":I
    :goto_3d
    if-ne v5, v0, :cond_40

    .line 142
    return v4

    .line 143
    :cond_40
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 144
    .local v6, "dig":I
    if-gez v6, :cond_4d

    .line 145
    goto :goto_54

    .line 146
    :cond_4d
    shl-int/lit8 v7, v4, 0x4

    add-int v4, v7, v6

    .line 139
    .end local v6    # "dig":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 151
    .end local v4    # "value":I
    .end local v5    # "pos":I
    :cond_54
    :goto_54
    const/4 v4, 0x3

    if-ne v0, v4, :cond_73

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_73

    .line 153
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 154
    .local v2, "ch":C
    const/16 v3, 0x63

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x43

    if-ne v2, v3, :cond_73

    .line 156
    :cond_6b
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    .end local v2    # "ch":C
    .local v1, "ch":C
    and-int/lit8 v2, v1, 0x1f

    return v2

    .line 161
    .end local v1    # "ch":C
    :cond_73
    return v1
.end method

.method public static print(ILgnu/lists/Consumer;)V
    .registers 4
    .param p0, "i"    # I
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 50
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_1b

    .line 52
    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 53
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_1f

    .line 56
    :cond_1b
    int-to-char v0, p0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 57
    :goto_1f
    return-void
.end method

.method public static toScmReadableString(I)Ljava/lang/String;
    .registers 5
    .param p0, "ch"    # I

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 204
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "#\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget-object v2, Lgnu/text/Char;->charNameValues:[C

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 207
    int-to-char v3, p0

    aget-char v2, v2, v1

    if-ne v3, v2, :cond_23

    .line 209
    sget-object v2, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 205
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 213
    .end local v1    # "i":I
    :cond_26
    const/16 v1, 0x20

    if-lt p0, v1, :cond_34

    const/16 v1, 0x7f

    if-le p0, v1, :cond_2f

    goto :goto_34

    .line 219
    :cond_2f
    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 215
    :cond_34
    :goto_34
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final charValue()C
    .registers 2

    .line 61
    iget v0, p0, Lgnu/text/Char;->value:I

    int-to-char v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    iget v0, p0, Lgnu/text/Char;->value:I

    move-object v1, p1

    check-cast v1, Lgnu/text/Char;

    iget v1, v1, Lgnu/text/Char;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_13

    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v0

    iget v1, p0, Lgnu/text/Char;->value:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 71
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public final intValue()I
    .registers 2

    .line 66
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 45
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0, p1}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 46
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    iput v0, p0, Lgnu/text/Char;->value:I

    .line 251
    const v1, 0xd800

    if-lt v0, v1, :cond_2b

    const v2, 0xdbff

    if-ge v0, v2, :cond_2b

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    .line 254
    .local v0, "next":C
    const v2, 0xdc00

    if-lt v0, v2, :cond_2b

    const v3, 0xdfff

    if-gt v0, v3, :cond_2b

    .line 255
    iget v3, p0, Lgnu/text/Char;->value:I

    sub-int/2addr v3, v1

    shl-int/lit8 v1, v3, 0xa

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/text/Char;->value:I

    .line 257
    .end local v0    # "next":C
    :cond_2b
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 261
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget v2, p0, Lgnu/text/Char;->value:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1b

    if-eq v2, v1, :cond_1b

    .line 169
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 172
    :cond_1b
    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    iget v2, p0, Lgnu/text/Char;->value:I

    if-ne v2, v1, :cond_28

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 175
    :cond_28
    const/16 v3, 0xa

    if-ne v2, v3, :cond_32

    .line 176
    const/16 v2, 0x6e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 177
    :cond_32
    const/16 v3, 0xd

    if-ne v2, v3, :cond_3c

    .line 178
    const/16 v2, 0x72

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 179
    :cond_3c
    const/16 v3, 0x9

    if-ne v2, v3, :cond_46

    .line 180
    const/16 v2, 0x74

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 181
    :cond_46
    const/16 v3, 0x100

    const/16 v4, 0x30

    if-ge v2, v3, :cond_62

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    .local v3, "i":I
    :goto_56
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5e

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_56

    .line 186
    .end local v3    # "i":I
    :cond_5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_7e

    .line 190
    :cond_62
    const/16 v2, 0x75

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    iget v2, p0, Lgnu/text/Char;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    .restart local v3    # "i":I
    :goto_73
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7b

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_73

    .line 194
    .end local v3    # "i":I
    :cond_7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    .end local v2    # "str":Ljava/lang/String;
    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xd800

    if-le v0, v1, :cond_2b

    .line 233
    const v2, 0xffff

    if-le v0, v2, :cond_20

    .line 235
    const/high16 v2, 0x10000

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 236
    iget v0, p0, Lgnu/text/Char;->value:I

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/Char;->value:I

    goto :goto_2b

    .line 238
    :cond_20
    const v1, 0xdbff

    if-gt v0, v1, :cond_2b

    .line 240
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Char;->value:I

    .line 244
    :cond_2b
    :goto_2b
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 245
    return-void
.end method

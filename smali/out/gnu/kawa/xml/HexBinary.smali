.class public Lgnu/kawa/xml/HexBinary;
.super Lgnu/kawa/xml/BinaryObject;
.source "HexBinary.java"


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 10
    return-void
.end method

.method static forHexDigit(I)C
    .registers 2
    .param p0, "val"    # I

    .line 41
    const/16 v0, 0xa

    if-ge p0, v0, :cond_7

    add-int/lit8 v0, p0, 0x30

    goto :goto_b

    :cond_7
    add-int/lit8 v0, p0, -0xa

    add-int/lit8 v0, v0, 0x41

    :goto_b
    int-to-char v0, v0

    return v0
.end method

.method static parseHexBinary(Ljava/lang/String;)[B
    .registers 10
    .param p0, "str"    # Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 21
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_5c

    .line 23
    shr-int/lit8 v0, v0, 0x1

    .line 24
    new-array v1, v0, [B

    .line 25
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_5b

    .line 27
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 28
    .local v3, "d1":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 29
    .local v4, "d2":I
    const/4 v5, -0x1

    .line 30
    .local v5, "bad":I
    if-gez v3, :cond_31

    mul-int/lit8 v5, v2, 0x2

    goto :goto_37

    .line 31
    :cond_31
    if-gez v4, :cond_37

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v5, v6, 0x1

    .line 32
    :cond_37
    :goto_37
    if-gez v5, :cond_42

    .line 34
    mul-int/lit8 v6, v3, 0x10

    add-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 25
    .end local v3    # "d1":I
    .end local v4    # "d2":I
    .end local v5    # "bad":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 33
    .restart local v3    # "d1":I
    .restart local v4    # "d2":I
    .restart local v5    # "bad":I
    :cond_42
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid hexBinary character at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 36
    .end local v2    # "i":I
    .end local v3    # "d1":I
    .end local v4    # "d2":I
    .end local v5    # "bad":I
    :cond_5b
    return-object v1

    .line 22
    .end local v1    # "result":[B
    :cond_5c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "hexBinary string length not a multiple of 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :goto_64
    throw v1

    :goto_65
    goto :goto_64
.end method

.method static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 14
    new-instance v0, Lgnu/kawa/xml/HexBinary;

    invoke-static {p0}, Lgnu/kawa/xml/HexBinary;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/HexBinary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 46
    iget-object v0, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 47
    .local v0, "bb":[B
    array-length v1, v0

    .line 48
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_1f

    .line 50
    aget-byte v3, v0, v2

    .line 51
    .local v3, "b":B
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 54
    .end local v2    # "i":I
    :cond_1f
    return-object p1
.end method

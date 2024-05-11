.class public Lgnu/lists/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCapitalize(Lgnu/lists/CharSeq;)V
    .registers 6
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 29
    const/16 v0, 0x20

    .line 30
    .local v0, "prev":C
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v1

    .line 31
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_23

    .line 33
    invoke-interface {p0, v2}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v3

    .line 34
    .local v3, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_18

    .line 35
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v3

    goto :goto_1c

    .line 37
    :cond_18
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 38
    :goto_1c
    invoke-interface {p0, v2, v3}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 39
    move v0, v3

    .line 31
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 41
    .end local v2    # "i":I
    :cond_23
    return-void
.end method

.method public static makeLowerCase(Lgnu/lists/CharSeq;)V
    .registers 3
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 20
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, "i":I
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 21
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_4

    .line 22
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public static makeUpperCase(Lgnu/lists/CharSeq;)V
    .registers 3
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 13
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, "i":I
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 14
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_4

    .line 15
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public static printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V
    .registers 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "escapes"    # I

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 52
    .local v0, "len":I
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_67

    .line 55
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 56
    .local v3, "ch":C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_5e

    if-ne v3, v1, :cond_17

    goto :goto_5e

    .line 58
    :cond_17
    if-lez p2, :cond_61

    .line 61
    const/16 v4, 0xa

    if-ne v3, v4, :cond_23

    .line 62
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 63
    :cond_23
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2d

    .line 64
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 65
    :cond_2d
    const/16 v4, 0x9

    if-ne v3, v4, :cond_37

    .line 66
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 67
    :cond_37
    const/4 v4, 0x7

    if-ne v3, v4, :cond_40

    .line 68
    const-string v4, "\\a"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 69
    :cond_40
    const/16 v4, 0x8

    if-ne v3, v4, :cond_4a

    .line 70
    const-string v4, "\\b"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 71
    :cond_4a
    const/16 v4, 0xb

    if-ne v3, v4, :cond_54

    .line 72
    const-string v4, "\\v"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 73
    :cond_54
    const/16 v4, 0xc

    if-ne v3, v4, :cond_61

    .line 74
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 57
    :cond_5e
    :goto_5e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    :cond_61
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    .end local v3    # "ch":C
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 78
    .end local v2    # "i":I
    :cond_67
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    return-void
.end method

.class public Lgnu/text/RomanIntegerFormat;
.super Ljava/text/NumberFormat;
.source "RomanIntegerFormat.java"


# static fields
.field static final codes:Ljava/lang/String; = "IVXLCDM"

.field private static newRoman:Lgnu/text/RomanIntegerFormat;

.field private static oldRoman:Lgnu/text/RomanIntegerFormat;


# instance fields
.field public oldStyle:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "oldStyle"    # Z

    .line 12
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 13
    iput-boolean p1, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    .line 14
    return-void
.end method

.method public static format(I)Ljava/lang/String;
    .registers 2
    .param p0, "num"    # I

    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(IZ)Ljava/lang/String;
    .registers 10
    .param p0, "num"    # I
    .param p1, "oldStyle"    # Z

    .line 40
    if-lez p0, :cond_66

    const/16 v0, 0x1387

    if-lt p0, v0, :cond_7

    goto :goto_66

    .line 42
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 43
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x3

    .line 44
    .local v1, "power":I
    const/16 v2, 0x3e8

    .line 45
    .local v2, "unit":I
    :goto_11
    if-ltz v1, :cond_61

    .line 47
    div-int v3, p0, v2

    .line 48
    .local v3, "digit":I
    mul-int v4, v3, v2

    sub-int/2addr p0, v4

    .line 49
    if-nez v3, :cond_1b

    .line 50
    goto :goto_5c

    .line 51
    :cond_1b
    const/4 v4, 0x5

    const-string v5, "IVXLCDM"

    if-nez p1, :cond_3e

    const/4 v6, 0x4

    if-eq v3, v6, :cond_27

    const/16 v6, 0x9

    if-ne v3, v6, :cond_3e

    .line 53
    :cond_27
    mul-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v7, v3, 0x1

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    goto :goto_5c

    .line 57
    :cond_3e
    move v6, v3

    .line 58
    .local v6, "rest":I
    if-lt v6, v4, :cond_4e

    .line 60
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v6, v6, -0x5

    .line 63
    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_5c

    .line 65
    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4e

    .line 45
    .end local v3    # "digit":I
    .end local v6    # "rest":I
    :cond_5c
    :goto_5c
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 68
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 41
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    .end local v1    # "power":I
    .end local v2    # "unit":I
    :cond_66
    :goto_66
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lgnu/text/RomanIntegerFormat;
    .registers 3
    .param p0, "oldStyle"    # Z

    .line 22
    if-eqz p0, :cond_11

    .line 24
    sget-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lgnu/text/RomanIntegerFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    .line 26
    :cond_e
    sget-object v0, Lgnu/text/RomanIntegerFormat;->oldRoman:Lgnu/text/RomanIntegerFormat;

    return-object v0

    .line 30
    :cond_11
    sget-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    if-nez v0, :cond_1d

    .line 31
    new-instance v0, Lgnu/text/RomanIntegerFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/text/RomanIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    .line 32
    :cond_1d
    sget-object v0, Lgnu/text/RomanIntegerFormat;->newRoman:Lgnu/text/RomanIntegerFormat;

    return-object v0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .param p1, "num"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 100
    double-to-long v0, p1

    .line 101
    .local v0, "inum":J
    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_b

    .line 102
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/RomanIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 103
    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 14
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1a

    iget-boolean v0, p0, Lgnu/text/RomanIntegerFormat;->oldStyle:Z

    if-eqz v0, :cond_d

    const/16 v1, 0x1387

    goto :goto_f

    :cond_d
    const/16 v1, 0xf9f

    :goto_f
    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1a

    .line 80
    long-to-int v1, p1

    invoke-static {v1, v0}, Lgnu/text/RomanIntegerFormat;->format(IZ)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_1e

    .line 82
    .end local v0    # "str":Ljava/lang/String;
    :cond_1a
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0    # "str":Ljava/lang/String;
    :goto_1e
    if-eqz p4, :cond_43

    .line 86
    const-wide/16 v1, 0x1

    .line 87
    .local v1, "tval":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 88
    .local v3, "len":I
    move v4, v3

    .local v4, "i":I
    :goto_27
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_34

    .line 89
    const-wide/16 v5, 0xa

    mul-long v5, v5, v1

    const-wide/16 v7, 0x9

    add-long v1, v5, v7

    goto :goto_27

    .line 91
    .end local v4    # "i":I
    :cond_34
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v4, "tbuf":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2, v4, p4}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 94
    .end local v1    # "tval":J
    .end local v3    # "len":I
    .end local v4    # "tbuf":Ljava/lang/StringBuffer;
    :cond_43
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    return-object p3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 109
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RomanIntegerFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

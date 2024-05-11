.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 34
    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const-string v4, "one"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "two"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const-string v4, "three"

    const/4 v7, 0x3

    aput-object v4, v1, v7

    const-string v4, "four"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    const-string v4, "five"

    const/4 v9, 0x5

    aput-object v4, v1, v9

    const-string v4, "six"

    const/4 v10, 0x6

    aput-object v4, v1, v10

    const-string v4, "seven"

    const/4 v11, 0x7

    aput-object v4, v1, v11

    const-string v4, "eight"

    const/16 v12, 0x8

    aput-object v4, v1, v12

    const-string v4, "nine"

    const/16 v13, 0x9

    aput-object v4, v1, v13

    const-string v4, "ten"

    const/16 v14, 0xa

    aput-object v4, v1, v14

    const-string v4, "eleven"

    const/16 v15, 0xb

    aput-object v4, v1, v15

    const-string v4, "twelve"

    const/16 v16, 0xc

    aput-object v4, v1, v16

    const-string v4, "thirteen"

    const/16 v17, 0xd

    aput-object v4, v1, v17

    const-string v4, "fourteen"

    const/16 v18, 0xe

    aput-object v4, v1, v18

    const-string v4, "fifteen"

    const/16 v19, 0xf

    aput-object v4, v1, v19

    const-string v4, "sixteen"

    const/16 v20, 0x10

    aput-object v4, v1, v20

    const-string v4, "seventeen"

    const/16 v21, 0x11

    aput-object v4, v1, v21

    const-string v4, "eighteen"

    const/16 v22, 0x12

    aput-object v4, v1, v22

    const-string v4, "nineteen"

    const/16 v23, 0x13

    aput-object v4, v1, v23

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v4, "first"

    aput-object v4, v1, v5

    const-string v4, "second"

    aput-object v4, v1, v6

    const-string v4, "third"

    aput-object v4, v1, v7

    const-string v4, "fourth"

    aput-object v4, v1, v8

    const-string v4, "fifth"

    aput-object v4, v1, v9

    const-string v4, "sixth"

    aput-object v4, v1, v10

    const-string v4, "seventh"

    aput-object v4, v1, v11

    const-string v4, "eighth"

    aput-object v4, v1, v12

    const-string v4, "ninth"

    aput-object v4, v1, v13

    const-string v4, "tenth"

    aput-object v4, v1, v14

    const-string v4, "eleventh"

    aput-object v4, v1, v15

    const-string v4, "twelveth"

    aput-object v4, v1, v16

    const-string v4, "thirteenth"

    aput-object v4, v1, v17

    const-string v4, "fourteenth"

    aput-object v4, v1, v18

    const-string v4, "fifteenth"

    aput-object v4, v1, v19

    const-string v4, "sixteenth"

    aput-object v4, v1, v20

    const-string v4, "seventeenth"

    aput-object v4, v1, v21

    const-string v4, "eighteenth"

    aput-object v4, v1, v22

    const-string v4, "nineteenth"

    aput-object v4, v1, v23

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    .line 50
    new-array v1, v14, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v5

    const-string v4, "twenty"

    aput-object v4, v1, v6

    const-string v4, "thirty"

    aput-object v4, v1, v7

    const-string v4, "forty"

    aput-object v4, v1, v8

    const-string v4, "fifty"

    aput-object v4, v1, v9

    const-string v4, "sixty"

    aput-object v4, v1, v10

    const-string v4, "seventy"

    aput-object v4, v1, v11

    const-string v4, "eighty"

    aput-object v4, v1, v12

    const-string v4, "ninety"

    aput-object v4, v1, v13

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    .line 56
    new-array v1, v14, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v5

    const-string v4, "twentieth"

    aput-object v4, v1, v6

    const-string v4, "thirtieth"

    aput-object v4, v1, v7

    const-string v4, "fortieth"

    aput-object v4, v1, v8

    const-string v4, "fiftieth"

    aput-object v4, v1, v9

    const-string v4, "sixtieth"

    aput-object v4, v1, v10

    const-string v4, "seventieth"

    aput-object v4, v1, v11

    const-string v4, "eightieth"

    aput-object v4, v1, v12

    const-string v4, "ninetieth"

    aput-object v4, v1, v13

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    .line 62
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, " thousand"

    aput-object v2, v1, v5

    const-string v2, " million"

    aput-object v2, v1, v6

    const-string v2, " billion"

    aput-object v2, v1, v7

    const-string v2, " trillion"

    aput-object v2, v1, v8

    const-string v2, " quadrillion"

    aput-object v2, v1, v9

    const-string v2, " quintillion"

    aput-object v2, v1, v10

    const-string v2, " sextillion"

    aput-object v2, v1, v11

    const-string v2, " septillion"

    aput-object v2, v1, v12

    const-string v2, " octillion"

    aput-object v2, v1, v13

    const-string v2, " nonillion"

    aput-object v2, v1, v14

    const-string v2, " decillion"

    aput-object v2, v1, v15

    const-string v2, " undecillion"

    aput-object v2, v1, v16

    const-string v2, " duodecillion"

    aput-object v2, v1, v17

    const-string v2, " tredecillion"

    aput-object v2, v1, v18

    const-string v2, " quattuordecillion"

    aput-object v2, v1, v19

    const-string v2, " quindecillion"

    aput-object v2, v1, v20

    const-string v2, " sexdecillion"

    aput-object v2, v1, v21

    const-string v2, " septendecillion"

    aput-object v2, v1, v22

    const-string v2, " octodecillion"

    aput-object v2, v1, v23

    const-string v2, " novemdecillion"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, " vigintillion"

    aput-object v2, v1, v0

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "ordinal"    # Z

    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    .line 16
    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .registers 3
    .param p0, "ordinal"    # Z

    .line 20
    if-eqz p0, :cond_11

    .line 22
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_e

    .line 23
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_e
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object v0

    .line 28
    :cond_11
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_1d

    .line 29
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_1d
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object v0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .param p1, "num"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 179
    double-to-long v0, p1

    .line 180
    .local v0, "inum":J
    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_b

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 182
    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 11
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_13

    .line 160
    iget-boolean v0, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz v0, :cond_d

    const-string v0, "zeroth"

    goto :goto_f

    :cond_d
    const-string v0, "zero"

    :goto_f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 163
    :cond_13
    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    .line 165
    const-string v0, "minus "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    neg-long p1, p1

    .line 168
    :cond_1d
    const/4 v4, 0x0

    iget-boolean v5, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 170
    :goto_26
    nop

    .line 174
    return-object p3
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .registers 18
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "num"    # J
    .param p4, "exp1000"    # I
    .param p5, "ordinal"    # Z

    .line 108
    move-object v6, p1

    move/from16 v7, p4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v0, p2, v10

    if-ltz v0, :cond_2a

    .line 110
    div-long v2, p2, v10

    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    rem-long v0, p2, v10

    .line 112
    .end local p2    # "num":J
    .local v0, "num":J
    cmp-long v2, v0, v8

    if-lez v2, :cond_21

    .line 113
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 114
    :cond_21
    if-eqz p5, :cond_28

    .line 115
    const-string v2, "th"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_28
    :goto_28
    move-wide v10, v0

    goto :goto_2b

    .line 108
    .end local v0    # "num":J
    .restart local p2    # "num":J
    :cond_2a
    move-wide v10, p2

    .line 117
    .end local p2    # "num":J
    .local v10, "num":J
    :goto_2b
    cmp-long v0, v10, v8

    if-lez v0, :cond_5d

    .line 119
    long-to-int v0, v10

    if-eqz p5, :cond_36

    if-nez v7, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    move-object v8, p0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v1, v0

    if-lt v7, v1, :cond_55

    .line 122
    const-string v0, " times ten to the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    mul-int/lit8 v0, v7, 0x3

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 124
    const-string v0, " power"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 126
    :cond_55
    if-lez v7, :cond_5e

    .line 127
    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 117
    :cond_5d
    move-object v8, p0

    .line 129
    :cond_5e
    :goto_5e
    return-void
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .registers 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "num"    # I
    .param p3, "ordinal"    # Z

    .line 77
    const/16 v0, 0x64

    if-lt p2, v0, :cond_29

    .line 79
    div-int/lit8 v0, p2, 0x64

    .line 80
    .local v0, "num100s":I
    rem-int/lit8 p2, p2, 0x64

    .line 81
    const/4 v1, 0x1

    const/16 v2, 0x20

    if-le v0, v1, :cond_17

    .line 83
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :cond_17
    const-string v1, "hundred"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    if-lez p2, :cond_22

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 89
    :cond_22
    if-eqz p3, :cond_29

    .line 90
    const-string v1, "th"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v0    # "num100s":I
    :cond_29
    :goto_29
    const/16 v0, 0x14

    if-lt p2, v0, :cond_46

    .line 94
    div-int/lit8 v0, p2, 0xa

    .line 95
    .local v0, "num10s":I
    rem-int/lit8 p2, p2, 0xa

    .line 96
    if-eqz p3, :cond_38

    if-nez p2, :cond_38

    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    goto :goto_3a

    :cond_38
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    :goto_3a
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    if-lez p2, :cond_46

    .line 98
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .end local v0    # "num10s":I
    :cond_46
    if-lez p2, :cond_54

    .line 102
    if-eqz p3, :cond_4d

    sget-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    goto :goto_4f

    :cond_4d
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    :goto_4f
    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_54
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 188
    new-instance v0, Ljava/lang/Error;

    const-string v1, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .registers 5
    .param p1, "value"    # Z
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 154
    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 155
    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 133
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 134
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .registers 7
    .param p1, "value"    # J
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p3, v0, v2, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 145
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 150
    return-void
.end method

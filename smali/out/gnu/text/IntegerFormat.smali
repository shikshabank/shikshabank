.class public Lgnu/text/IntegerFormat;
.super Lgnu/text/ReportFormat;
.source "IntegerFormat.java"


# static fields
.field public static final MIN_DIGITS:I = 0x40

.field public static final PAD_RIGHT:I = 0x10

.field public static final SHOW_BASE:I = 0x8

.field public static final SHOW_GROUPS:I = 0x1

.field public static final SHOW_PLUS:I = 0x2

.field public static final SHOW_SPACE:I = 0x4

.field public static final UPPERCASE:I = 0x20


# instance fields
.field public base:I

.field public commaChar:I

.field public commaInterval:I

.field public flags:I

.field public minWidth:I

.field public padChar:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lgnu/text/IntegerFormat;->base:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lgnu/text/IntegerFormat;->minWidth:I

    .line 51
    const/16 v0, 0x20

    iput v0, p0, Lgnu/text/IntegerFormat;->padChar:I

    .line 52
    const/16 v0, 0x2c

    iput v0, p0, Lgnu/text/IntegerFormat;->commaChar:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lgnu/text/IntegerFormat;->commaInterval:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/IntegerFormat;->flags:I

    .line 55
    return-void
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "radix"    # I

    .line 165
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_12

    .line 168
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_12
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 30
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v1, [Ljava/lang/Object;

    if-eqz v4, :cond_12

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    .line 69
    .local v4, "args":[Ljava/lang/Object;
    :goto_13
    iget v5, v0, Lgnu/text/IntegerFormat;->minWidth:I

    const/4 v6, 0x1

    invoke-static {v5, v6, v4, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 70
    .local v5, "minWidth":I
    iget v7, v0, Lgnu/text/IntegerFormat;->minWidth:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_22

    add-int/lit8 v2, v2, 0x1

    .line 71
    .end local p2    # "start":I
    .local v2, "start":I
    :cond_22
    iget v7, v0, Lgnu/text/IntegerFormat;->padChar:I

    const/16 v9, 0x20

    invoke-static {v7, v9, v4, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    .line 72
    .local v7, "padChar":C
    iget v10, v0, Lgnu/text/IntegerFormat;->padChar:I

    if-ne v10, v8, :cond_30

    add-int/lit8 v2, v2, 0x1

    .line 73
    :cond_30
    iget v10, v0, Lgnu/text/IntegerFormat;->commaChar:I

    const/16 v11, 0x2c

    invoke-static {v10, v11, v4, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v10

    .line 74
    .local v10, "commaChar":C
    iget v11, v0, Lgnu/text/IntegerFormat;->commaChar:I

    if-ne v11, v8, :cond_3e

    add-int/lit8 v2, v2, 0x1

    .line 75
    :cond_3e
    iget v11, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    const/4 v12, 0x3

    invoke-static {v11, v12, v4, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v11

    .line 76
    .local v11, "commaInterval":I
    iget v12, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    if-ne v12, v8, :cond_4b

    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_4b
    iget v8, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v12, v8, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_54

    const/4 v12, 0x1

    goto :goto_55

    :cond_54
    const/4 v12, 0x0

    .line 78
    .local v12, "printCommas":Z
    :goto_55
    const/16 v14, 0x10

    and-int/2addr v8, v14

    if-eqz v8, :cond_5c

    const/4 v8, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    .line 79
    .local v8, "padRight":Z
    :goto_5d
    const/16 v15, 0x30

    if-ne v7, v15, :cond_64

    const/16 v16, 0x1

    goto :goto_66

    :cond_64
    const/16 v16, 0x0

    .line 80
    .local v16, "padInternal":Z
    :goto_66
    if-eqz v4, :cond_73

    .line 82
    array-length v9, v4

    if-lt v2, v9, :cond_71

    .line 84
    const-string v6, "#<missing format argument>"

    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    return v2

    .line 87
    :cond_71
    aget-object v1, v4, v2

    .line 89
    .end local p1    # "arg":Ljava/lang/Object;
    .local v1, "arg":Ljava/lang/Object;
    :cond_73
    iget v9, v0, Lgnu/text/IntegerFormat;->base:I

    invoke-virtual {v0, v1, v9}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "sarg":Ljava/lang/String;
    if-eqz v9, :cond_188

    .line 92
    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 93
    .local v6, "sarg0":C
    const/16 v13, 0x2d

    if-ne v6, v13, :cond_86

    const/16 v19, 0x1

    goto :goto_88

    :cond_86
    const/16 v19, 0x0

    .line 94
    .local v19, "neg":Z
    :goto_88
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    .line 95
    .local v13, "slen":I
    if-eqz v19, :cond_91

    add-int/lit8 v20, v13, -0x1

    goto :goto_93

    :cond_91
    move/from16 v20, v13

    .line 96
    .local v20, "ndigits":I
    :goto_93
    if-eqz v12, :cond_9a

    add-int/lit8 v21, v20, -0x1

    div-int v21, v21, v11

    goto :goto_9c

    :cond_9a
    const/16 v21, 0x0

    .line 97
    .local v21, "numCommas":I
    :goto_9c
    add-int v22, v20, v21

    .line 98
    .local v22, "unpadded_len":I
    if-nez v19, :cond_a6

    iget v15, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v15, v15, 0x6

    if-eqz v15, :cond_a8

    .line 99
    :cond_a6
    add-int/lit8 v22, v22, 0x1

    .line 101
    :cond_a8
    iget v15, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v23, v15, 0x8

    if-eqz v23, :cond_c4

    .line 103
    iget v14, v0, Lgnu/text/IntegerFormat;->base:I

    move-object/from16 v24, v4

    const/16 v4, 0x10

    .end local v4    # "args":[Ljava/lang/Object;
    .local v24, "args":[Ljava/lang/Object;
    if-ne v14, v4, :cond_b9

    .line 104
    add-int/lit8 v22, v22, 0x2

    goto :goto_c6

    .line 105
    :cond_b9
    const/16 v4, 0x8

    if-ne v14, v4, :cond_c6

    const/16 v4, 0x30

    if-eq v6, v4, :cond_c6

    .line 106
    add-int/lit8 v22, v22, 0x1

    goto :goto_c6

    .line 101
    .end local v24    # "args":[Ljava/lang/Object;
    .restart local v4    # "args":[Ljava/lang/Object;
    :cond_c4
    move-object/from16 v24, v4

    .line 108
    .end local v4    # "args":[Ljava/lang/Object;
    .restart local v24    # "args":[Ljava/lang/Object;
    :cond_c6
    :goto_c6
    and-int/lit8 v4, v15, 0x40

    if-eqz v4, :cond_dc

    .line 110
    move/from16 v22, v20

    .line 111
    const/4 v4, 0x1

    if-ne v13, v4, :cond_d9

    const/16 v14, 0x30

    if-ne v6, v14, :cond_d9

    if-nez v5, :cond_d9

    .line 112
    const/4 v13, 0x0

    move/from16 v14, v22

    goto :goto_df

    .line 114
    :cond_d9
    move/from16 v14, v22

    goto :goto_df

    .line 108
    :cond_dc
    const/4 v4, 0x1

    move/from16 v14, v22

    .line 114
    .end local v22    # "unpadded_len":I
    .local v14, "unpadded_len":I
    :goto_df
    if-nez v8, :cond_eb

    if-nez v16, :cond_eb

    .line 115
    :goto_e3
    if-le v5, v14, :cond_eb

    .line 116
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    .line 115
    add-int/lit8 v5, v5, -0x1

    goto :goto_e3

    .line 117
    :cond_eb
    const/4 v15, 0x0

    .line 118
    .local v15, "i":I
    if-eqz v19, :cond_fa

    .line 120
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    add-int/lit8 v13, v13, -0x1

    const/16 v4, 0x20

    goto :goto_114

    .line 124
    :cond_fa
    iget v4, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v22, v4, 0x2

    if-eqz v22, :cond_108

    .line 125
    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    const/16 v4, 0x20

    goto :goto_114

    .line 126
    :cond_108
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_112

    .line 127
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_114

    .line 126
    :cond_112
    const/16 v4, 0x20

    .line 128
    :goto_114
    iget v4, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 p1, v5

    .end local v5    # "minWidth":I
    .local p1, "minWidth":I
    const/16 v5, 0xa

    if-le v4, v5, :cond_127

    iget v5, v0, Lgnu/text/IntegerFormat;->flags:I

    const/16 v22, 0x20

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_127

    const/16 v17, 0x1

    goto :goto_129

    :cond_127
    const/16 v17, 0x0

    .line 129
    .local v17, "uppercase":Z
    :goto_129
    iget v5, v0, Lgnu/text/IntegerFormat;->flags:I

    const/16 v18, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_150

    .line 131
    const/16 v5, 0x10

    if-ne v4, v5, :cond_145

    .line 133
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 134
    if-eqz v17, :cond_13f

    const/16 v4, 0x58

    goto :goto_141

    :cond_13f
    const/16 v4, 0x78

    :goto_141
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_150

    .line 136
    :cond_145
    const/16 v5, 0x8

    if-ne v4, v5, :cond_150

    const/16 v4, 0x30

    if-eq v6, v4, :cond_150

    .line 137
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 139
    :cond_150
    :goto_150
    move/from16 v5, p1

    if-eqz v16, :cond_15c

    .line 140
    .end local p1    # "minWidth":I
    .restart local v5    # "minWidth":I
    :goto_154
    if-le v5, v14, :cond_15c

    .line 141
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    .line 140
    add-int/lit8 v5, v5, -0x1

    goto :goto_154

    .line 144
    :cond_15c
    :goto_15c
    if-nez v13, :cond_16a

    .line 145
    nop

    .line 154
    if-eqz v8, :cond_169

    .line 155
    :goto_161
    if-le v5, v14, :cond_169

    .line 156
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    .line 155
    add-int/lit8 v5, v5, -0x1

    goto :goto_161

    .line 157
    .end local v6    # "sarg0":C
    .end local v13    # "slen":I
    .end local v14    # "unpadded_len":I
    .end local v15    # "i":I
    .end local v17    # "uppercase":Z
    .end local v19    # "neg":Z
    .end local v20    # "ndigits":I
    .end local v21    # "numCommas":I
    :cond_169
    goto :goto_191

    .line 146
    .restart local v6    # "sarg0":C
    .restart local v13    # "slen":I
    .restart local v14    # "unpadded_len":I
    .restart local v15    # "i":I
    .restart local v17    # "uppercase":Z
    .restart local v19    # "neg":Z
    .restart local v20    # "ndigits":I
    .restart local v21    # "numCommas":I
    :cond_16a
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "i":I
    .local v4, "i":I
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 147
    .local v15, "ch":C
    if-eqz v17, :cond_176

    .line 148
    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    .line 149
    :cond_176
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    .line 150
    add-int/lit8 v13, v13, -0x1

    .line 151
    if-eqz v12, :cond_186

    if-lez v13, :cond_186

    rem-int v18, v13, v11

    if-nez v18, :cond_186

    .line 152
    invoke-virtual {v3, v10}, Ljava/io/Writer;->write(I)V

    .line 153
    .end local v15    # "ch":C
    :cond_186
    move v15, v4

    goto :goto_15c

    .line 159
    .end local v6    # "sarg0":C
    .end local v13    # "slen":I
    .end local v14    # "unpadded_len":I
    .end local v17    # "uppercase":Z
    .end local v19    # "neg":Z
    .end local v20    # "ndigits":I
    .end local v21    # "numCommas":I
    .end local v24    # "args":[Ljava/lang/Object;
    .local v4, "args":[Ljava/lang/Object;
    :cond_188
    move-object/from16 v24, v4

    .end local v4    # "args":[Ljava/lang/Object;
    .restart local v24    # "args":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lgnu/text/IntegerFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 160
    :goto_191
    add-int/lit8 v4, v2, 0x1

    return v4
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/IntegerFormat;->format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0
.end method

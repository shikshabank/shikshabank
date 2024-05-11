.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 31
    const/16 v0, 0x45

    iput-char v0, p0, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .registers 6
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "digStart"    # I
    .param p2, "digEnd"    # I

    .line 47
    move v0, p2

    .line 49
    .local v0, "j":I
    :goto_1
    if-ne v0, p1, :cond_a

    .line 51
    const/16 v1, 0x31

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 52
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_a
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 55
    .local v1, "ch":C
    const/16 v2, 0x39

    if-eq v1, v2, :cond_1c

    .line 57
    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 58
    const/4 v2, 0x0

    return v2

    .line 60
    :cond_1c
    const/16 v2, 0x30

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 61
    .end local v1    # "ch":C
    goto :goto_1
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 33
    .param p1, "value"    # D
    .param p3, "dstr"    # Ljava/lang/String;
    .param p4, "sbuf"    # Ljava/lang/StringBuffer;
    .param p5, "fpos"    # Ljava/text/FieldPosition;

    .line 81
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    iget v4, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 82
    .local v4, "k":I
    iget v5, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 83
    .local v5, "d":I
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmpg-double v10, v1, v8

    if-gez v10, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    .line 84
    .local v8, "negative":Z
    :goto_14
    if-eqz v8, :cond_17

    .line 85
    neg-double v1, v1

    .line 86
    .end local p1    # "value":D
    .local v1, "value":D
    :cond_17
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 87
    .local v9, "oldLen":I
    const/4 v10, 0x1

    .line 88
    .local v10, "signLen":I
    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eqz v8, :cond_28

    .line 90
    if-ltz v5, :cond_31

    .line 91
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 94
    :cond_28
    iget-boolean v13, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    if-eqz v13, :cond_30

    .line 95
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 97
    :cond_30
    const/4 v10, 0x0

    .line 100
    :cond_31
    :goto_31
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 102
    .local v13, "digStart":I
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_44

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_42

    goto :goto_44

    :cond_42
    const/4 v14, 0x0

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v14, 0x1

    .line 103
    .local v14, "nonFinite":Z
    :goto_45
    const/16 v15, 0x3e8

    const/16 v6, 0xa

    const/16 v17, 0x2

    if-ltz v5, :cond_85

    if-eqz v14, :cond_50

    goto :goto_85

    .line 140
    :cond_50
    if-lez v4, :cond_55

    const/16 v18, 0x1

    goto :goto_57

    :cond_55
    move/from16 v18, v4

    :goto_57
    add-int v18, v5, v18

    .line 141
    .local v18, "digits":I
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    sget-wide v21, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v19, v19, v21

    const-wide v21, 0x408f400000000000L    # 1000.0

    add-double v11, v19, v21

    double-to-int v11, v11

    .line 142
    .local v11, "log":I
    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_6f

    .line 143
    const/4 v11, 0x0

    goto :goto_70

    .line 145
    :cond_6f
    sub-int/2addr v11, v15

    .line 146
    :goto_70
    sub-int v12, v18, v11

    sub-int/2addr v12, v7

    .line 147
    .local v12, "scale":I
    invoke-static {v1, v2, v12}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v15

    invoke-virtual {v15, v6, v3}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    .line 148
    add-int/lit8 v15, v18, -0x1

    sub-int/2addr v15, v12

    move-object/from16 v11, p3

    move-wide/from16 v21, v1

    move/from16 v2, v18

    .local v15, "exponent":I
    goto/16 :goto_107

    .line 105
    .end local v11    # "log":I
    .end local v12    # "scale":I
    .end local v15    # "exponent":I
    .end local v18    # "digits":I
    :cond_85
    :goto_85
    if-nez p3, :cond_8c

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .end local p3    # "dstr":Ljava/lang/String;
    .local v11, "dstr":Ljava/lang/String;
    goto :goto_8e

    .line 105
    .end local v11    # "dstr":Ljava/lang/String;
    .restart local p3    # "dstr":Ljava/lang/String;
    :cond_8c
    move-object/from16 v11, p3

    .line 107
    .end local p3    # "dstr":Ljava/lang/String;
    .restart local v11    # "dstr":Ljava/lang/String;
    :goto_8e
    const/16 v12, 0x45

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 108
    .local v12, "indexE":I
    if-ltz v12, :cond_d7

    .line 110
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/2addr v12, v13

    .line 112
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x2d

    if-ne v15, v6, :cond_a6

    const/4 v15, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v15, 0x0

    .line 113
    .local v15, "negexp":Z
    :goto_a7
    const/16 v20, 0x0

    .line 114
    .local v20, "exponent":I
    if-eqz v15, :cond_ae

    const/16 v21, 0x2

    goto :goto_b0

    :cond_ae
    const/16 v21, 0x1

    :goto_b0
    add-int v21, v12, v21

    move/from16 v6, v20

    move/from16 v7, v21

    .end local v20    # "exponent":I
    .local v6, "exponent":I
    .local v7, "i":I
    :goto_b6
    move-wide/from16 v21, v1

    .end local v1    # "value":D
    .local v21, "value":D
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v7, v1, :cond_cf

    .line 115
    mul-int/lit8 v1, v6, 0xa

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v23, 0x30

    add-int/lit8 v2, v2, -0x30

    add-int v6, v1, v2

    .line 114
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v21

    goto :goto_b6

    .line 116
    .end local v7    # "i":I
    :cond_cf
    if-eqz v15, :cond_d2

    .line 117
    neg-int v6, v6

    .line 118
    :cond_d2
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 119
    .end local v15    # "negexp":Z
    move v15, v6

    goto :goto_de

    .line 121
    .end local v6    # "exponent":I
    .end local v21    # "value":D
    .restart local v1    # "value":D
    :cond_d7
    move-wide/from16 v21, v1

    .end local v1    # "value":D
    .restart local v21    # "value":D
    invoke-static {v11, v3}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    move v15, v1

    .line 122
    .local v15, "exponent":I
    :goto_de
    if-eqz v8, :cond_e2

    .line 123
    add-int/lit8 v13, v13, 0x1

    .line 124
    :cond_e2
    add-int/lit8 v1, v13, 0x1

    .line 126
    .local v1, "dot":I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v13

    .line 134
    .local v2, "digits":I
    const/4 v6, 0x1

    if-le v2, v6, :cond_101

    add-int v7, v13, v2

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_101

    .line 135
    add-int/lit8 v2, v2, -0x1

    add-int v6, v13, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    :cond_101
    sub-int v6, v2, v15

    const/4 v7, 0x1

    add-int/lit8 v12, v6, -0x1

    .line 137
    .end local v1    # "dot":I
    .local v12, "scale":I
    nop

    .line 151
    :goto_107
    add-int/lit8 v1, v4, -0x1

    sub-int/2addr v15, v1

    .line 152
    if-gez v15, :cond_10e

    neg-int v1, v15

    goto :goto_10f

    :cond_10e
    move v1, v15

    .line 153
    .local v1, "exponentAbs":I
    :goto_10f
    const/16 v7, 0x3e8

    if-lt v1, v7, :cond_115

    const/4 v7, 0x4

    goto :goto_122

    :cond_115
    const/16 v7, 0x64

    if-lt v1, v7, :cond_11b

    const/4 v7, 0x3

    goto :goto_122

    :cond_11b
    const/16 v7, 0xa

    if-lt v1, v7, :cond_121

    const/4 v7, 0x2

    goto :goto_122

    :cond_121
    const/4 v7, 0x1

    .line 155
    .local v7, "exponentLen":I
    :goto_122
    iget v6, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v6, v7, :cond_128

    .line 156
    iget v7, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 157
    :cond_128
    const/16 v19, 0x1

    .line 158
    .local v19, "showExponent":Z
    move/from16 v24, v8

    .end local v8    # "negative":Z
    .local v24, "negative":Z
    iget-boolean v8, v0, Lgnu/math/ExponentialFormat;->general:Z

    if-nez v8, :cond_132

    const/4 v6, 0x0

    goto :goto_138

    :cond_132
    if-lez v6, :cond_137

    add-int/lit8 v6, v6, 0x2

    goto :goto_138

    :cond_137
    const/4 v6, 0x4

    .line 159
    .local v6, "ee":I
    :goto_138
    if-gez v5, :cond_13d

    const/16 v17, 0x1

    goto :goto_13f

    :cond_13d
    const/16 v17, 0x0

    .line 160
    .local v17, "fracUnspecified":Z
    :goto_13f
    if-nez v8, :cond_147

    if-eqz v17, :cond_144

    goto :goto_147

    :cond_144
    move/from16 p3, v6

    goto :goto_186

    .line 162
    :cond_147
    :goto_147
    move/from16 v25, v5

    .end local v5    # "d":I
    .local v25, "d":I
    sub-int v5, v2, v12

    .line 163
    .local v5, "n":I
    if-eqz v17, :cond_157

    .line 165
    move/from16 p3, v6

    .end local v6    # "ee":I
    .local p3, "ee":I
    const/4 v6, 0x7

    if-ge v5, v6, :cond_153

    move v6, v5

    .line 166
    .end local v25    # "d":I
    .local v6, "d":I
    :cond_153
    if-le v2, v6, :cond_15b

    .line 167
    move v6, v2

    goto :goto_15b

    .line 163
    .end local p3    # "ee":I
    .local v6, "ee":I
    .restart local v25    # "d":I
    :cond_157
    move/from16 p3, v6

    .end local v6    # "ee":I
    .restart local p3    # "ee":I
    move/from16 v6, v25

    .line 169
    .end local v25    # "d":I
    .local v6, "d":I
    :cond_15b
    :goto_15b
    sub-int v25, v6, v5

    .line 170
    .local v25, "dd":I
    if-eqz v8, :cond_169

    if-ltz v5, :cond_169

    if-ltz v25, :cond_169

    .line 174
    move v2, v6

    .line 175
    move v4, v5

    .line 176
    const/16 v19, 0x0

    move v5, v6

    goto :goto_186

    .line 178
    :cond_169
    if-eqz v17, :cond_185

    .line 180
    iget v8, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v8, :cond_171

    .line 181
    move v2, v6

    goto :goto_17e

    .line 184
    :cond_171
    sub-int/2addr v8, v10

    sub-int/2addr v8, v7

    const/16 v18, 0x3

    add-int/lit8 v8, v8, -0x3

    .line 185
    .local v8, "avail":I
    move v2, v8

    .line 186
    if-gez v4, :cond_17b

    .line 187
    sub-int/2addr v2, v4

    .line 188
    :cond_17b
    if-le v2, v6, :cond_17e

    .line 189
    move v2, v6

    .line 191
    .end local v8    # "avail":I
    :cond_17e
    :goto_17e
    if-gtz v2, :cond_183

    .line 192
    const/4 v2, 0x1

    move v5, v6

    goto :goto_186

    .line 191
    :cond_183
    move v5, v6

    goto :goto_186

    .line 178
    :cond_185
    move v5, v6

    .line 196
    .end local v6    # "d":I
    .end local v25    # "dd":I
    .local v5, "d":I
    :goto_186
    add-int v6, v13, v2

    .line 197
    .local v6, "digEnd":I
    :goto_188
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v8, v6, :cond_194

    .line 198
    const/16 v8, 0x30

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_188

    .line 201
    :cond_194
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v6, v8, :cond_19d

    const/16 v8, 0x30

    goto :goto_1a1

    :cond_19d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    .line 202
    .local v8, "nextDigit":C
    :goto_1a1
    move/from16 v18, v2

    .end local v2    # "digits":I
    .restart local v18    # "digits":I
    const/16 v2, 0x35

    if-lt v8, v2, :cond_1aa

    const/16 v16, 0x1

    goto :goto_1ac

    :cond_1aa
    const/16 v16, 0x0

    :goto_1ac
    move/from16 v2, v16

    .line 205
    .local v2, "addOne":Z
    if-eqz v2, :cond_1b8

    invoke-static {v3, v13, v6}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v16

    if-eqz v16, :cond_1b8

    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 208
    :cond_1b8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    sub-int v16, v16, v6

    sub-int v12, v12, v16

    .line 209
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    move/from16 v16, v13

    .line 212
    .local v16, "dot":I
    if-gez v4, :cond_1de

    .line 215
    move/from16 v25, v4

    .local v25, "j":I
    :goto_1c9
    const/16 v20, 0x1

    add-int/lit8 v25, v25, 0x1

    if-gtz v25, :cond_1d9

    .line 216
    move/from16 v26, v2

    const/16 v2, 0x30

    .end local v2    # "addOne":Z
    .local v26, "addOne":Z
    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move/from16 v2, v26

    goto :goto_1c9

    .line 215
    .end local v26    # "addOne":Z
    .restart local v2    # "addOne":Z
    :cond_1d9
    move/from16 v26, v2

    .line 216
    .end local v2    # "addOne":Z
    .end local v25    # "j":I
    .restart local v26    # "addOne":Z
    move/from16 v2, v16

    goto :goto_1f0

    .line 212
    .end local v26    # "addOne":Z
    .restart local v2    # "addOne":Z
    :cond_1de
    move/from16 v26, v2

    .line 221
    .end local v2    # "addOne":Z
    .restart local v26    # "addOne":Z
    :goto_1e0
    add-int v2, v13, v4

    if-le v2, v6, :cond_1ec

    .line 222
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e0

    .line 223
    :cond_1ec
    add-int v16, v16, v4

    move/from16 v2, v16

    .line 225
    .end local v16    # "dot":I
    .local v2, "dot":I
    :goto_1f0
    if-eqz v14, :cond_1f7

    .line 226
    const/16 v19, 0x0

    move/from16 v16, v5

    goto :goto_1fe

    .line 228
    :cond_1f7
    move/from16 v16, v5

    .end local v5    # "d":I
    .local v16, "d":I
    const/16 v5, 0x2e

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 231
    :goto_1fe
    if-eqz v19, :cond_23d

    .line 234
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iget-boolean v5, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    if-nez v5, :cond_20b

    if-gez v15, :cond_215

    .line 236
    :cond_20b
    if-ltz v15, :cond_210

    const/16 v5, 0x2b

    goto :goto_212

    :cond_210
    const/16 v5, 0x2d

    :goto_212
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :cond_215
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 238
    .local v5, "i":I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    .line 240
    .local v20, "newLen":I
    move/from16 p1, v1

    .end local v1    # "exponentAbs":I
    .local p1, "exponentAbs":I
    iget v1, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    sub-int v25, v20, v5

    sub-int v1, v1, v25

    .line 241
    .local v1, "j":I
    if-lez v1, :cond_23c

    .line 243
    add-int v20, v20, v1

    .line 244
    :goto_22c
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_23a

    .line 245
    move/from16 p2, v1

    const/16 v1, 0x30

    .end local v1    # "j":I
    .local p2, "j":I
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move/from16 v1, p2

    goto :goto_22c

    .line 244
    .end local p2    # "j":I
    .restart local v1    # "j":I
    :cond_23a
    move/from16 p2, v1

    .line 247
    .end local v1    # "j":I
    :cond_23c
    goto :goto_240

    .line 250
    .end local v5    # "i":I
    .end local v20    # "newLen":I
    .end local p1    # "exponentAbs":I
    .local v1, "exponentAbs":I
    :cond_23d
    move/from16 p1, v1

    .end local v1    # "exponentAbs":I
    .restart local p1    # "exponentAbs":I
    const/4 v7, 0x0

    .line 252
    :goto_240
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 253
    .local v1, "newLen":I
    sub-int v5, v1, v9

    .line 254
    .local v5, "used":I
    move/from16 p2, v1

    .end local v1    # "newLen":I
    .local p2, "newLen":I
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    sub-int/2addr v1, v5

    .line 257
    .local v1, "i":I
    if-eqz v17, :cond_273

    move/from16 v20, v5

    .end local v5    # "used":I
    .local v20, "used":I
    add-int/lit8 v5, v2, 0x1

    move/from16 v25, v6

    .end local v6    # "digEnd":I
    .local v25, "digEnd":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eq v5, v6, :cond_263

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    iget-char v6, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    if-ne v5, v6, :cond_277

    :cond_263
    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v5, :cond_269

    if-lez v1, :cond_277

    .line 261
    :cond_269
    add-int/lit8 v1, v1, -0x1

    .line 262
    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x30

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_277

    .line 257
    .end local v20    # "used":I
    .end local v25    # "digEnd":I
    .restart local v5    # "used":I
    .restart local v6    # "digEnd":I
    :cond_273
    move/from16 v20, v5

    move/from16 v25, v6

    .line 265
    .end local v5    # "used":I
    .end local v6    # "digEnd":I
    .restart local v20    # "used":I
    .restart local v25    # "digEnd":I
    :cond_277
    :goto_277
    if-gez v1, :cond_27d

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v5, :cond_28a

    :cond_27d
    if-eqz v19, :cond_2a3

    iget v5, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v7, v5, :cond_2a3

    if-lez v5, :cond_2a3

    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-nez v5, :cond_28a

    goto :goto_2a3

    .line 289
    :cond_28a
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-eqz v5, :cond_2a0

    .line 291
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    :goto_293
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_29d

    .line 293
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_293

    .line 292
    :cond_29d
    move/from16 v6, p3

    goto :goto_2d2

    .line 289
    :cond_2a0
    move/from16 v6, p3

    goto :goto_2d2

    .line 270
    :cond_2a3
    :goto_2a3
    if-gtz v4, :cond_2b2

    if-gtz v1, :cond_2ab

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v5, :cond_2b2

    .line 272
    :cond_2ab
    const/16 v5, 0x30

    invoke-virtual {v3, v13, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 273
    add-int/lit8 v1, v1, -0x1

    .line 275
    :cond_2b2
    if-nez v19, :cond_2c6

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v5, :cond_2c6

    move/from16 v6, p3

    .line 282
    .end local p3    # "ee":I
    .local v6, "ee":I
    :goto_2ba
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2c8

    .line 283
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    add-int/lit8 v1, v1, -0x1

    goto :goto_2ba

    .line 286
    .end local v6    # "ee":I
    .restart local p3    # "ee":I
    :cond_2c6
    move/from16 v6, p3

    .end local p3    # "ee":I
    .restart local v6    # "ee":I
    :cond_2c8
    :goto_2c8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2d2

    .line 287
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->padChar:C

    invoke-virtual {v3, v9, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2c8

    .line 295
    :cond_2d2
    :goto_2d2
    return-object v3
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "value"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 74
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_9

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move-object v4, v0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 10
    .param p1, "value"    # F
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 67
    float-to-double v1, p1

    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_a

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move-object v3, v0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 300
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "num"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 306
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 311
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 315
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

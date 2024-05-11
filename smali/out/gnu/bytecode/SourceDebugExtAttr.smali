.class public Lgnu/bytecode/SourceDebugExtAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceDebugExtAttr.java"


# instance fields
.field curFileIndex:I

.field curFileName:Ljava/lang/String;

.field curLineIndex:I

.field data:[B

.field private defaultStratumId:Ljava/lang/String;

.field dlength:I

.field fileCount:I

.field fileIDs:[I

.field fileNames:[Ljava/lang/String;

.field lineCount:I

.field lines:[I

.field maxFileID:I

.field private outputFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .registers 3
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 193
    const-string v0, "SourceDebugExtension"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 38
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 194
    invoke-virtual {p0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 195
    return-void
.end method

.method private fixLine(II)I
    .registers 10
    .param p1, "sourceLine"    # I
    .param p2, "index"    # I

    .line 44
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v1, v0, p2

    .line 45
    .local v1, "sourceMin":I
    add-int/lit8 v2, p2, 0x2

    aget v2, v0, v2

    .line 46
    .local v2, "repeat":I
    const/4 v3, -0x1

    if-ge p1, v1, :cond_21

    .line 48
    if-lez p2, :cond_e

    .line 49
    return v3

    .line 50
    :cond_e
    add-int v4, v1, v2

    add-int/lit8 v4, v4, -0x1

    .line 51
    .local v4, "sourceMax":I
    aput p1, v0, p2

    .line 52
    add-int/lit8 v5, p2, 0x2

    sub-int v6, v4, p1

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    .line 53
    add-int/lit8 v5, p2, 0x3

    aput p1, v0, v5

    .line 54
    move v1, p1

    .line 56
    .end local v4    # "sourceMax":I
    :cond_21
    add-int/lit8 v4, p2, 0x3

    aget v4, v0, v4

    sub-int/2addr v4, v1

    .line 57
    .local v4, "delta":I
    add-int v5, v1, v2

    if-ge p1, v5, :cond_2d

    .line 58
    add-int v0, p1, v4

    return v0

    .line 59
    :cond_2d
    iget v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    if-eq p2, v5, :cond_3f

    if-nez p2, :cond_3e

    const/16 v5, 0x8

    aget v5, v0, v5

    if-ge p1, v5, :cond_3e

    goto :goto_3f

    .line 65
    :cond_3e
    return v3

    .line 62
    :cond_3f
    :goto_3f
    add-int/lit8 v3, p2, 0x2

    sub-int v5, p1, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v3

    .line 63
    add-int v0, p1, v4

    return v0
.end method


# virtual methods
.method addFile(Ljava/lang/String;)V
    .registers 10
    .param p1, "fname"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    if-eq v0, p1, :cond_b2

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_b2

    .line 129
    :cond_e
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 133
    .local v0, "slash":I
    if-ltz v0, :cond_3b

    .line 135
    move-object v1, p1

    .line 136
    .local v1, "fpath":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "fentry":Ljava/lang/String;
    goto :goto_3c

    .line 140
    .end local v1    # "fentry":Ljava/lang/String;
    :cond_3b
    move-object v1, p1

    .line 142
    .restart local v1    # "fentry":Ljava/lang/String;
    :goto_3c
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-ltz v2, :cond_4b

    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 143
    return-void

    .line 145
    :cond_4b
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 146
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    const/4 v4, -0x1

    if-ge v3, v2, :cond_67

    .line 148
    iget v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-eq v3, v5, :cond_64

    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 150
    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 151
    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 152
    return-void

    .line 146
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 156
    .end local v3    # "i":I
    :cond_67
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    if-nez v3, :cond_75

    .line 158
    const/4 v3, 0x5

    new-array v5, v3, [I

    iput-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 159
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    goto :goto_8d

    .line 161
    :cond_75
    array-length v5, v3

    if-lt v2, v5, :cond_8d

    .line 163
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [I

    .line 164
    .local v5, "newIDs":[I
    mul-int/lit8 v6, v2, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 165
    .local v6, "newNames":[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    invoke-static {v3, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 168
    iput-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    .line 172
    .end local v5    # "newIDs":[I
    .end local v6    # "newNames":[Ljava/lang/String;
    :cond_8d
    :goto_8d
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 173
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    .line 174
    .local v3, "id":I
    shl-int/lit8 v3, v3, 0x1

    .line 175
    if-ltz v0, :cond_9f

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    :cond_9f
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aput-object v1, v5, v2

    .line 178
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    if-nez v5, :cond_a9

    .line 179
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    .line 180
    :cond_a9
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aput v3, v5, v2

    .line 181
    iput v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 182
    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 183
    return-void

    .line 128
    .end local v0    # "slash":I
    .end local v1    # "fentry":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "id":I
    :cond_b2
    :goto_b2
    return-void
.end method

.method public addStratum(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .registers 16
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 206
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "SMAP\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    if-nez v2, :cond_1d

    const-string v2, "Java"

    .line 213
    .local v2, "stratum":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p0, v2, v0}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    const-string v3, "*S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    const-string v3, "*F\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_61

    .line 223
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aget v4, v4, v3

    .line 224
    .local v4, "id":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_42

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    .line 225
    .local v5, "with_path":Z
    :goto_43
    shr-int/lit8 v4, v4, 0x1

    .line 226
    if-eqz v5, :cond_4c

    .line 227
    const-string v6, "+ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_4c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    iget-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    .end local v4    # "id":I
    .end local v5    # "with_path":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 232
    .end local v3    # "i":I
    :cond_61
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lez v3, :cond_b9

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "prevFileID":I
    const-string v4, "*L\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v6, 0x0

    .line 239
    .local v6, "i5":I
    :cond_6d
    iget-object v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v8, v7, v6

    .line 240
    .local v8, "inputStartLine":I
    iget-object v9, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    aget v9, v9, v10

    shr-int/2addr v9, v5

    .line 241
    .local v9, "lineFileID":I
    add-int/lit8 v10, v6, 0x2

    aget v10, v7, v10

    .line 242
    .local v10, "repeatCount":I
    add-int/lit8 v11, v6, 0x3

    aget v11, v7, v11

    .line 243
    .local v11, "outputStartLine":I
    add-int/lit8 v12, v6, 0x4

    aget v7, v7, v12

    .line 244
    .local v7, "outputLineIncrement":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    if-eq v9, v3, :cond_94

    .line 247
    const/16 v12, 0x23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 249
    move v3, v9

    .line 251
    :cond_94
    const/16 v12, 0x2c

    if-eq v10, v5, :cond_9e

    .line 253
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    :cond_9e
    const/16 v13, 0x3a

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 258
    if-eq v7, v5, :cond_ae

    .line 260
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 263
    :cond_ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    nop

    .end local v7    # "outputLineIncrement":I
    .end local v8    # "inputStartLine":I
    .end local v9    # "lineFileID":I
    .end local v10    # "repeatCount":I
    .end local v11    # "outputStartLine":I
    add-int/lit8 v6, v6, 0x5

    .line 266
    add-int/2addr v4, v5

    iget v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lt v4, v7, :cond_6d

    .line 269
    .end local v3    # "prevFileID":I
    .end local v4    # "i":I
    .end local v6    # "i5":I
    :cond_b9
    const-string v1, "*E\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :try_start_be
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ca} :catch_cf

    .line 277
    nop

    .line 278
    array-length v1, v1

    iput v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    .line 279
    return-void

    .line 274
    :catch_cf
    move-exception v1

    .line 276
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :goto_da
    throw v3

    :goto_db
    goto :goto_da
.end method

.method fixLine(I)I
    .registers 9
    .param p1, "sourceLine"    # I

    .line 71
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-ltz v0, :cond_b

    .line 73
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v0

    .line 74
    .local v0, "outLine":I
    if-ltz v0, :cond_b

    .line 75
    return v0

    .line 77
    .end local v0    # "outLine":I
    :cond_b
    const/4 v0, 0x0

    .line 78
    .local v0, "i5":I
    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 79
    .local v1, "findex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-ge v2, v3, :cond_2d

    .line 81
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-eq v0, v3, :cond_28

    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v1, v3, :cond_28

    .line 83
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v3

    .line 84
    .local v3, "outLine":I
    if-ltz v3, :cond_28

    .line 86
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 87
    return v3

    .line 90
    .end local v3    # "outLine":I
    :cond_28
    add-int/lit8 v0, v0, 0x5

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 92
    .end local v2    # "i":I
    :cond_2d
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    if-nez v2, :cond_38

    .line 93
    const/16 v2, 0x14

    new-array v2, v2, [I

    iput-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    goto :goto_45

    .line 94
    :cond_38
    array-length v3, v2

    if-lt v0, v3, :cond_45

    .line 96
    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    .line 97
    .local v3, "newLines":[I
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    .line 101
    .end local v3    # "newLines":[I
    :cond_45
    :goto_45
    move v2, p1

    .line 102
    .local v2, "inputStartLine":I
    if-nez v0, :cond_4a

    .line 103
    move v3, p1

    .local v3, "outputStartLine":I
    goto :goto_65

    .line 106
    .end local v3    # "outputStartLine":I
    :cond_4a
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, v0, -0x5

    add-int/lit8 v4, v4, 0x3

    aget v4, v3, v4

    add-int/lit8 v5, v0, -0x5

    add-int/lit8 v5, v5, 0x2

    aget v3, v3, v5

    add-int/2addr v4, v3

    .line 107
    .local v4, "outputStartLine":I
    const/4 v3, 0x5

    if-ne v0, v3, :cond_63

    const/16 v3, 0x2710

    if-ge v4, v3, :cond_63

    .line 111
    const/16 v3, 0x2710

    .end local v4    # "outputStartLine":I
    .restart local v3    # "outputStartLine":I
    goto :goto_64

    .line 113
    .end local v3    # "outputStartLine":I
    .restart local v4    # "outputStartLine":I
    :cond_63
    move v3, v4

    .end local v4    # "outputStartLine":I
    .restart local v3    # "outputStartLine":I
    :goto_64
    move p1, v3

    .line 115
    :goto_65
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aput v2, v4, v0

    .line 116
    add-int/lit8 v5, v0, 0x1

    aput v1, v4, v5

    .line 117
    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 118
    add-int/lit8 v5, v0, 0x3

    aput v3, v4, v5

    .line 119
    add-int/lit8 v5, v0, 0x4

    aput v6, v4, v5

    .line 120
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 121
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/2addr v4, v6

    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    .line 122
    return p1
.end method

.method public getLength()I
    .registers 2

    .line 283
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    return v0
.end method

.method nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .line 199
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_16

    .line 200
    :cond_11
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    :cond_16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 7
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 295
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lgnu/bytecode/SourceDebugExtAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 301
    :try_start_16
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    .line 306
    goto :goto_34

    .line 303
    :catch_26
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "(Caught "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 307
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_34
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    if-lez v0, :cond_4d

    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4d

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4d

    .line 308
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 309
    :cond_4d
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    return-void
.end method

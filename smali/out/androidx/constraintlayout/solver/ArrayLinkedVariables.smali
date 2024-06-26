.class public Landroidx/constraintlayout/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroidx/constraintlayout/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V
    .registers 6
    .param p1, "arrayRow"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 48
    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 50
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 53
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 56
    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 59
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 81
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 101
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    .line 102
    iput-object p2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 108
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .registers 5
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 491
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method


# virtual methods
.method final add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V
    .registers 14
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F
    .param p3, "removeFromDefinition"    # Z

    .line 225
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    .line 226
    return-void

    .line 229
    :cond_6
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_43

    .line 230
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v2

    .line 232
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v1, v0, v2

    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v0, v1

    .line 234
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v4

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 237
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_42

    .line 239
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 240
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v2, v1

    if-lt v0, v2, :cond_42

    .line 241
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 242
    array-length v0, v1

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 245
    :cond_42
    return-void

    .line 247
    :cond_43
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 248
    .local v1, "current":I
    const/4 v5, -0x1

    .line 249
    .local v5, "previous":I
    const/4 v6, 0x0

    .line 250
    .local v6, "counter":I
    :goto_47
    if-eq v1, v3, :cond_99

    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_99

    .line 251
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v7, v7, v1

    .line 252
    .local v7, "idx":I
    iget v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v7, v8, :cond_89

    .line 253
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 255
    cmpl-float v0, v3, v0

    if-nez v0, :cond_88

    .line 256
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v1, v0, :cond_6b

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_71

    .line 259
    :cond_6b
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v0, v1

    aput v2, v0, v5

    .line 261
    :goto_71
    if-eqz p3, :cond_78

    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 264
    :cond_78
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v0, :cond_7e

    .line 266
    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 268
    :cond_7e
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    sub-int/2addr v0, v4

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 269
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 271
    :cond_88
    return-void

    .line 273
    :cond_89
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v1

    iget v9, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v8, v9, :cond_92

    .line 274
    move v5, v1

    .line 276
    :cond_92
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v8, v1

    .end local v7    # "idx":I
    add-int/lit8 v6, v6, 0x1

    .line 277
    goto :goto_47

    .line 282
    :cond_99
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v0, 0x1

    .line 283
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_ab

    .line 286
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v0, v8, v0

    if-ne v0, v3, :cond_aa

    .line 287
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_ab

    .line 289
    :cond_aa
    array-length v7, v8

    .line 292
    :cond_ab
    :goto_ab
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v0

    if-lt v7, v8, :cond_c4

    .line 293
    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v0, v0

    if-ge v8, v0, :cond_c4

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b6
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v0, v9, :cond_c4

    .line 296
    aget v8, v8, v0

    if-ne v8, v3, :cond_c1

    .line 297
    move v7, v0

    .line 298
    goto :goto_c4

    .line 295
    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 304
    .end local v0    # "i":I
    :cond_c4
    :goto_c4
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v0

    if-lt v7, v8, :cond_f2

    .line 305
    array-length v7, v0

    .line 306
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 307
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 308
    add-int/lit8 v2, v7, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 309
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 315
    :cond_f2
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v2, v0, v7

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v7

    .line 317
    if-eq v5, v3, :cond_107

    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v2, v0, v5

    aput v2, v0, v7

    .line 319
    aput v7, v0, v5

    goto :goto_10f

    .line 321
    :cond_107
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v2, v0, v7

    .line 322
    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 324
    :goto_10f
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v0, v4

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 326
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 327
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v0, :cond_127

    .line 329
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 331
    :cond_127
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v2

    if-lt v0, v3, :cond_134

    .line 332
    iput-boolean v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 333
    array-length v0, v2

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 335
    :cond_134
    return-void
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 18
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 507
    .local v2, "restrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 508
    .local v3, "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v4, 0x0

    .line 509
    .local v4, "unrestrictedCandidateAmount":F
    const/4 v5, 0x0

    .line 510
    .local v5, "restrictedCandidateAmount":F
    const/4 v6, 0x0

    .line 511
    .local v6, "unrestrictedCandidateIsNew":Z
    const/4 v7, 0x0

    .line 512
    .local v7, "restrictedCandidateIsNew":Z
    iget v8, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 513
    .local v8, "current":I
    const/4 v9, 0x0

    .line 514
    .local v9, "counter":I
    const/4 v10, 0x0

    .line 515
    .local v10, "candidateAmount":F
    :goto_e
    const/4 v11, -0x1

    if-eq v8, v11, :cond_a1

    iget v11, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v11, :cond_a1

    .line 516
    iget-object v11, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v11, v11, v8

    .line 517
    .local v11, "amount":F
    const v12, 0x3a83126f    # 0.001f

    .line 518
    .local v12, "epsilon":F
    iget-object v13, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v13, v13, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v14, v14, v8

    aget-object v13, v13, v14

    .line 519
    .local v13, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v14, 0x0

    cmpg-float v15, v11, v14

    if-gez v15, :cond_3b

    .line 520
    neg-float v15, v12

    cmpl-float v15, v11, v15

    if-lez v15, :cond_49

    .line 521
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v14, v15, v8

    .line 522
    const/4 v11, 0x0

    .line 523
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_49

    .line 526
    :cond_3b
    cmpg-float v15, v11, v12

    if-gez v15, :cond_49

    .line 527
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput v14, v15, v8

    .line 528
    const/4 v11, 0x0

    .line 529
    iget-object v15, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v13, v15}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 532
    :cond_49
    :goto_49
    cmpl-float v15, v11, v14

    if-eqz v15, :cond_99

    .line 533
    iget-object v15, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v15, v14, :cond_73

    .line 534
    if-nez v3, :cond_5c

    .line 535
    move-object v3, v13

    .line 536
    move v4, v11

    .line 537
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    goto :goto_99

    .line 538
    :cond_5c
    cmpl-float v14, v4, v11

    if-lez v14, :cond_67

    .line 539
    move-object v3, v13

    .line 540
    move v4, v11

    .line 541
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v6

    goto :goto_99

    .line 542
    :cond_67
    if-nez v6, :cond_99

    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_99

    .line 543
    move-object v3, v13

    .line 544
    move v4, v11

    .line 545
    const/4 v6, 0x1

    goto :goto_99

    .line 547
    :cond_73
    if-nez v3, :cond_99

    .line 548
    const/4 v14, 0x0

    cmpg-float v14, v11, v14

    if-gez v14, :cond_99

    .line 549
    if-nez v2, :cond_83

    .line 550
    move-object v2, v13

    .line 551
    move v5, v11

    .line 552
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_99

    .line 553
    :cond_83
    cmpl-float v14, v5, v11

    if-lez v14, :cond_8e

    .line 554
    move-object v2, v13

    .line 555
    move v5, v11

    .line 556
    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v7

    goto :goto_99

    .line 557
    :cond_8e
    if-nez v7, :cond_99

    invoke-direct {v0, v13, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v14

    if-eqz v14, :cond_99

    .line 558
    move-object v2, v13

    .line 559
    move v5, v11

    .line 560
    const/4 v7, 0x1

    .line 565
    :cond_99
    :goto_99
    iget-object v14, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v8, v14, v8

    .end local v11    # "amount":F
    .end local v12    # "epsilon":F
    .end local v13    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v9, v9, 0x1

    .line 566
    goto/16 :goto_e

    .line 567
    :cond_a1
    if-eqz v3, :cond_a4

    .line 568
    return-object v3

    .line 570
    :cond_a4
    return-object v2
.end method

.method public final clear()V
    .registers 5

    .line 385
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 386
    .local v0, "current":I
    const/4 v1, 0x0

    .line 387
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_22

    .line 388
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    .line 389
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_1b

    .line 390
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 392
    :cond_1b
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 393
    goto :goto_3

    .line 395
    :cond_22
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 396
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 397
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 398
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 399
    return-void
.end method

.method final containsKey(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .registers 8
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 408
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 409
    return v1

    .line 411
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 412
    .local v0, "current":I
    const/4 v3, 0x0

    .line 413
    .local v3, "counter":I
    :goto_a
    if-eq v0, v2, :cond_21

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_21

    .line 414
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1a

    .line 415
    const/4 v1, 0x1

    return v1

    .line 417
    :cond_1a
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 419
    :cond_21
    return v1
.end method

.method public display()V
    .registers 7

    .line 779
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 780
    .local v0, "count":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_3c

    .line 782
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 783
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v2, :cond_13

    .line 784
    goto :goto_39

    .line 786
    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 788
    .end local v1    # "i":I
    :cond_3c
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method divideByAmount(F)V
    .registers 6
    .param p1, "amount"    # F

    .line 458
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 459
    .local v0, "current":I
    const/4 v1, 0x0

    .line 460
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 461
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 462
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 464
    :cond_18
    return-void
.end method

.method public final get(Landroidx/constraintlayout/solver/SolverVariable;)F
    .registers 6
    .param p1, "v"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 759
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 760
    .local v0, "current":I
    const/4 v1, 0x0

    .line 761
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 762
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v2, v3, :cond_17

    .line 763
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 765
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 767
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method getPivotCandidate()Landroidx/constraintlayout/solver/SolverVariable;
    .registers 7

    .line 668
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_33

    .line 670
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 671
    .local v0, "current":I
    const/4 v1, 0x0

    .line 672
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 673
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_8
    const/4 v3, -0x1

    if-eq v0, v3, :cond_32

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_32

    .line 674
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    .line 678
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 679
    .local v3, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_2a

    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    iget v5, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    if-ge v4, v5, :cond_2b

    .line 680
    :cond_2a
    move-object v2, v3

    .line 683
    .end local v3    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2b
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 685
    :cond_32
    return-object v2

    .line 687
    .end local v0    # "current":I
    .end local v1    # "counter":I
    .end local v2    # "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_33
    return-object v0
.end method

.method getPivotCandidate([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 10
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 691
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 692
    .local v0, "current":I
    const/4 v1, 0x0

    .line 693
    .local v1, "counter":I
    const/4 v2, 0x0

    .line 694
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 695
    .local v3, "value":F
    :goto_5
    const/4 v4, -0x1

    if-eq v0, v4, :cond_46

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v4, :cond_46

    .line 696
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3f

    .line 700
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 701
    .local v4, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz p1, :cond_27

    iget v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v5, p1, v5

    if-nez v5, :cond_3f

    :cond_27
    if-eq v4, p2, :cond_3f

    .line 702
    iget-object v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v5, v6, :cond_35

    iget-object v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v5, v6, :cond_3f

    .line 704
    :cond_35
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v5, v5, v0

    .line 705
    .local v5, "currentValue":F
    cmpg-float v6, v5, v3

    if-gez v6, :cond_3f

    .line 706
    move v3, v5

    .line 707
    move-object v2, v4

    .line 712
    .end local v4    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "currentValue":F
    :cond_3f
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 714
    :cond_46
    return-object v2
.end method

.method final getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;
    .registers 6
    .param p1, "index"    # I

    .line 724
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 725
    .local v0, "current":I
    const/4 v1, 0x0

    .line 726
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1e

    .line 727
    if-ne v1, p1, :cond_17

    .line 728
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    return-object v2

    .line 730
    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 732
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method final getVariableValue(I)F
    .registers 5
    .param p1, "index"    # I

    .line 742
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 743
    .local v0, "current":I
    const/4 v1, 0x0

    .line 744
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_18

    .line 745
    if-ne v1, p1, :cond_11

    .line 746
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    return v2

    .line 748
    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 750
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method hasAtLeastOnePositiveVariable()Z
    .registers 5

    .line 428
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 429
    .local v0, "current":I
    const/4 v1, 0x0

    .line 430
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1c

    .line 431
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_15

    .line 432
    const/4 v2, 0x1

    return v2

    .line 434
    :cond_15
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 436
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method invert()V
    .registers 6

    .line 443
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 444
    .local v0, "current":I
    const/4 v1, 0x0

    .line 445
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v2, :cond_1b

    .line 446
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v0

    .line 447
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 449
    :cond_1b
    return-void
.end method

.method public final put(Landroidx/constraintlayout/solver/SolverVariable;F)V
    .registers 13
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_a

    .line 118
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 119
    return-void

    .line 122
    :cond_a
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_46

    .line 123
    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 124
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v1, v2

    .line 125
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v4, v1, v2

    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v1, v2

    .line 127
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v1, v0

    iput v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 128
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 129
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 130
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v1, :cond_45

    .line 132
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 133
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v3, v2

    if-lt v1, v3, :cond_45

    .line 134
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 135
    array-length v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 138
    :cond_45
    return-void

    .line 140
    :cond_46
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 141
    .local v1, "current":I
    const/4 v4, -0x1

    .line 142
    .local v4, "previous":I
    const/4 v5, 0x0

    .line 143
    .local v5, "counter":I
    :goto_4a
    if-eq v1, v3, :cond_6d

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_6d

    .line 144
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v1

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_5d

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v0, v1

    .line 146
    return-void

    .line 148
    :cond_5d
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v6, v1

    iget v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ge v6, v7, :cond_66

    .line 149
    move v4, v1

    .line 151
    :cond_66
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 157
    :cond_6d
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/lit8 v7, v6, 0x1

    .line 158
    .local v7, "availableIndice":I
    iget-boolean v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_7f

    .line 161
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v6, v8, v6

    if-ne v6, v3, :cond_7e

    .line 162
    iget v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    goto :goto_7f

    .line 164
    :cond_7e
    array-length v7, v8

    .line 167
    :cond_7f
    :goto_7f
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_98

    .line 168
    iget v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    array-length v6, v6

    if-ge v8, v6, :cond_98

    .line 170
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8a
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v8

    if-ge v6, v9, :cond_98

    .line 171
    aget v8, v8, v6

    if-ne v8, v3, :cond_95

    .line 172
    move v7, v6

    .line 173
    goto :goto_98

    .line 170
    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 179
    .end local v6    # "i":I
    :cond_98
    :goto_98
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v6

    if-lt v7, v8, :cond_c6

    .line 180
    array-length v7, v6

    .line 181
    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 182
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 183
    add-int/lit8 v2, v7, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 184
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 185
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 190
    :cond_c6
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput v6, v2, v7

    .line 191
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aput p2, v2, v7

    .line 192
    if-eq v4, v3, :cond_db

    .line 193
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v3, v2, v4

    aput v3, v2, v7

    .line 194
    aput v7, v2, v4

    goto :goto_e3

    .line 196
    :cond_db
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    aput v3, v2, v7

    .line 197
    iput v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 199
    :goto_e3
    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/2addr v2, v0

    iput v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 200
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 201
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 202
    iget-boolean v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v3, :cond_fb

    .line 204
    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    add-int/2addr v3, v0

    iput v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 206
    :cond_fb
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v6, v3

    if-lt v2, v6, :cond_102

    .line 207
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 209
    :cond_102
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    array-length v6, v3

    if-lt v2, v6, :cond_10d

    .line 210
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 211
    array-length v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 213
    :cond_10d
    return-void
.end method

.method public final remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F
    .registers 10
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "removeFromDefinition"    # Z

    .line 345
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v0, p1, :cond_7

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->candidate:Landroidx/constraintlayout/solver/SolverVariable;

    .line 348
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 349
    return v1

    .line 351
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 352
    .local v0, "current":I
    const/4 v3, -0x1

    .line 353
    .local v3, "previous":I
    const/4 v4, 0x0

    .line 354
    .local v4, "counter":I
    :goto_12
    if-eq v0, v2, :cond_5b

    iget v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_5b

    .line 355
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v0

    .line 356
    .local v5, "idx":I
    iget v6, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v5, v6, :cond_53

    .line 357
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    if-ne v0, v1, :cond_2b

    .line 358
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_31

    .line 360
    :cond_2b
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v6, v1, v0

    aput v6, v1, v3

    .line 363
    :goto_31
    if-eqz p2, :cond_38

    .line 364
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mRow:Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 366
    :cond_38
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 367
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    .line 368
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aput v2, v1, v0

    .line 369
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v1, :cond_4e

    .line 371
    iput v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mLast:I

    .line 373
    :cond_4e
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v1, v1, v0

    return v1

    .line 375
    :cond_53
    move v3, v0

    .line 376
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v6, v0

    .end local v5    # "idx":I
    add-int/lit8 v4, v4, 0x1

    .line 377
    goto :goto_12

    .line 378
    :cond_5b
    return v1
.end method

.method sizeInBytes()I
    .registers 3

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 774
    add-int/lit8 v0, v0, 0x24

    .line 775
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 798
    const-string v0, ""

    .line 799
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 800
    .local v1, "current":I
    const/4 v2, 0x0

    .line 801
    .local v2, "counter":I
    :goto_5
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5c

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v2, v3, :cond_5c

    .line 802
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 807
    :cond_5c
    return-object v0
.end method

.method final updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .registers 14
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .line 583
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 584
    .local v0, "current":I
    const/4 v1, 0x0

    .line 585
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5f

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_5f

    .line 586
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v3, v3, v0

    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-ne v3, v4, :cond_58

    .line 587
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v3, v3, v0

    .line 588
    .local v3, "value":F
    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 590
    iget-object v4, p2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 591
    .local v4, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v5, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 592
    .local v5, "definitionCurrent":I
    const/4 v6, 0x0

    .line 593
    .local v6, "definitionCounter":I
    :goto_24
    if-eq v5, v2, :cond_44

    iget v7, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_44

    .line 594
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v8, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v8, v8, v5

    aget-object v7, v7, v8

    .line 596
    .local v7, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v8, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v8, v8, v5

    .line 597
    .local v8, "definitionValue":F
    mul-float v9, v8, v3

    invoke-virtual {p0, v7, v9, p3}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 598
    iget-object v9, v4, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v5, v9, v5

    .end local v7    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "definitionValue":F
    add-int/lit8 v6, v6, 0x1

    .line 599
    goto :goto_24

    .line 600
    :cond_44
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v7, p2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 601
    if-eqz p3, :cond_54

    .line 602
    iget-object v2, p2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 608
    :cond_54
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 609
    const/4 v1, 0x0

    .line 610
    goto :goto_3

    .line 612
    .end local v3    # "value":F
    .end local v4    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v5    # "definitionCurrent":I
    .end local v6    # "definitionCounter":I
    :cond_58
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 614
    :cond_5f
    return-void
.end method

.method updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V
    .registers 16
    .param p1, "self"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "rows"    # [Landroidx/constraintlayout/solver/ArrayRow;

    .line 626
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 627
    .local v0, "current":I
    const/4 v1, 0x0

    .line 628
    .local v1, "counter":I
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_69

    iget v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v1, v3, :cond_69

    .line 629
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    .line 630
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    if-eq v4, v2, :cond_62

    .line 631
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v4, v4, v0

    .line 632
    .local v4, "value":F
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 634
    iget v6, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v6, p2, v6

    .line 635
    .local v6, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_50

    .line 636
    iget-object v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    check-cast v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    .line 637
    .local v7, "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    iget v8, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 638
    .local v8, "definitionCurrent":I
    const/4 v9, 0x0

    .line 639
    .local v9, "definitionCounter":I
    :goto_2f
    if-eq v8, v2, :cond_50

    iget v10, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v9, v10, :cond_50

    .line 640
    iget-object v10, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v10, v10, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayIndices:[I

    aget v11, v11, v8

    aget-object v10, v10, v11

    .line 642
    .local v10, "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v11, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayValues:[F

    aget v11, v11, v8

    .line 643
    .local v11, "definitionValue":F
    mul-float v12, v11, v4

    invoke-virtual {p0, v10, v12, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 644
    iget-object v12, v7, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v8, v12, v8

    .line 645
    nop

    .end local v10    # "definitionVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "definitionValue":F
    add-int/lit8 v9, v9, 0x1

    .line 646
    goto :goto_2f

    .line 648
    .end local v7    # "definitionVariables":Landroidx/constraintlayout/solver/ArrayLinkedVariables;
    .end local v8    # "definitionCurrent":I
    .end local v9    # "definitionCounter":I
    :cond_50
    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v5, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    iput v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 649
    iget-object v2, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 654
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mHead:I

    .line 655
    const/4 v1, 0x0

    .line 656
    goto :goto_3

    .line 658
    .end local v4    # "value":F
    .end local v6    # "definition":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_62
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    aget v0, v2, v0

    .end local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    .line 659
    goto :goto_3

    .line 660
    :cond_69
    return-void
.end method

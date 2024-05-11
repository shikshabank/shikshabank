.class public Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .registers 3
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 322
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 323
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 5
    .param p1, "n"    # Landroidx/core/graphics/PathParser$PathDataNode;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 327
    iget-object v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 328
    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .registers 30
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "current"    # [F
    .param p2, "previousCmd"    # C
    .param p3, "cmd"    # C
    .param p4, "val"    # [F

    .line 365
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x2

    .line 366
    .local v0, "incr":I
    const/4 v12, 0x0

    aget v1, p1, v12

    .line 367
    .local v1, "currentX":F
    const/4 v13, 0x1

    aget v2, p1, v13

    .line 368
    .local v2, "currentY":F
    const/4 v14, 0x2

    aget v3, p1, v14

    .line 369
    .local v3, "ctrlPointX":F
    const/4 v15, 0x3

    aget v4, p1, v15

    .line 370
    .local v4, "ctrlPointY":F
    const/16 v16, 0x4

    aget v5, p1, v16

    .line 371
    .local v5, "currentSegmentStartX":F
    const/16 v17, 0x5

    aget v6, p1, v17

    .line 375
    .local v6, "currentSegmentStartY":F
    sparse-switch p3, :sswitch_data_3ea

    move/from16 v18, v0

    goto :goto_3f

    .line 378
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    .line 382
    move v1, v5

    .line 383
    move v2, v6

    .line 384
    move v3, v5

    .line 385
    move v4, v6

    .line 386
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    move/from16 v18, v0

    goto :goto_3f

    .line 410
    :sswitch_2c
    const/4 v0, 0x4

    .line 411
    move/from16 v18, v0

    goto :goto_3f

    .line 394
    :sswitch_30
    const/4 v0, 0x2

    .line 395
    move/from16 v18, v0

    goto :goto_3f

    .line 400
    :sswitch_34
    const/4 v0, 0x1

    .line 401
    move/from16 v18, v0

    goto :goto_3f

    .line 404
    :sswitch_38
    const/4 v0, 0x6

    .line 405
    move/from16 v18, v0

    goto :goto_3f

    .line 414
    :sswitch_3c
    const/4 v0, 0x7

    move/from16 v18, v0

    .line 418
    .end local v0    # "incr":I
    .local v18, "incr":I
    :goto_3f
    const/4 v0, 0x0

    move/from16 v9, p2

    move v8, v0

    move v7, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move v6, v2

    .end local v1    # "currentX":F
    .end local v2    # "currentY":F
    .end local v3    # "ctrlPointX":F
    .end local v4    # "ctrlPointY":F
    .end local v5    # "currentSegmentStartX":F
    .end local p2    # "previousCmd":C
    .local v6, "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .local v9, "previousCmd":C
    .local v19, "ctrlPointX":F
    .local v20, "ctrlPointY":F
    .local v21, "currentSegmentStartX":F
    .local v22, "currentSegmentStartY":F
    :goto_4d
    array-length v0, v11

    if-ge v8, v0, :cond_3d6

    .line 419
    const/16 v0, 0x54

    const/16 v1, 0x53

    const/16 v2, 0x51

    const/16 v3, 0x43

    const/16 v4, 0x74

    const/16 v5, 0x73

    const/16 v15, 0x71

    const/16 v14, 0x63

    const/high16 v23, 0x40000000    # 2.0f

    const/4 v13, 0x0

    sparse-switch p3, :sswitch_data_43c

    move v12, v6

    move v14, v7

    move/from16 v24, v8

    move v15, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .local v12, "currentY":F
    .local v14, "currentX":F
    .local v15, "previousCmd":C
    .local v24, "k":I
    goto/16 :goto_3cc

    .line 467
    .end local v12    # "currentY":F
    .end local v14    # "currentX":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    :sswitch_6d
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    invoke-virtual {v10, v13, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 468
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v6, v0

    .line 469
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 539
    :sswitch_7e
    const/4 v1, 0x0

    .line 540
    .local v1, "reflectiveCtrlPointX":F
    const/4 v3, 0x0

    .line 541
    .local v3, "reflectiveCtrlPointY":F
    if-eq v9, v15, :cond_88

    if-eq v9, v4, :cond_88

    if-eq v9, v2, :cond_88

    if-ne v9, v0, :cond_8c

    .line 543
    :cond_88
    sub-float v1, v7, v19

    .line 544
    sub-float v3, v6, v20

    .line 546
    :cond_8c
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v2, v8, 0x1

    aget v2, v11, v2

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 548
    add-float v0, v7, v1

    .line 549
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-float v2, v6, v3

    .line 550
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v4, v8, 0x0

    aget v4, v11, v4

    add-float/2addr v7, v4

    .line 551
    add-int/lit8 v4, v8, 0x1

    aget v4, v11, v4

    add-float/2addr v6, v4

    .line 552
    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 493
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_ae
    const/4 v0, 0x0

    .line 494
    .local v0, "reflectiveCtrlPointX":F
    const/4 v2, 0x0

    .line 495
    .local v2, "reflectiveCtrlPointY":F
    if-eq v9, v14, :cond_bc

    if-eq v9, v5, :cond_bc

    if-eq v9, v3, :cond_bc

    if-ne v9, v1, :cond_b9

    goto :goto_bc

    :cond_b9
    move v13, v0

    move v14, v2

    goto :goto_c2

    .line 497
    :cond_bc
    :goto_bc
    sub-float v0, v7, v19

    .line 498
    sub-float v2, v6, v20

    move v13, v0

    move v14, v2

    .line 500
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v13, "reflectiveCtrlPointX":F
    .local v14, "reflectiveCtrlPointY":F
    :goto_c2
    add-int/lit8 v0, v8, 0x0

    aget v3, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v4, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v15, v11, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 504
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 505
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 506
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 507
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 508
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 525
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .end local v13    # "reflectiveCtrlPointX":F
    .end local v14    # "reflectiveCtrlPointY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_fa
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, v11, v2

    add-int/lit8 v3, v8, 0x3

    aget v3, v11, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 526
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 527
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 528
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x2

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 529
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 530
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 421
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_12d
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 422
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v12, v0

    .line 423
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    if-lez v8, :cond_14b

    .line 427
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 429
    :cond_14b
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 430
    move v0, v7

    .line 431
    .end local v21    # "currentSegmentStartX":F
    .local v0, "currentSegmentStartX":F
    move v1, v6

    .line 433
    .end local v22    # "currentSegmentStartY":F
    .local v1, "currentSegmentStartY":F
    move/from16 v21, v0

    move/from16 v22, v1

    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 449
    .end local v0    # "currentSegmentStartX":F
    .end local v1    # "currentSegmentStartY":F
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_161
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-int/lit8 v1, v8, 0x1

    aget v1, v11, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 450
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 451
    add-int/lit8 v0, v8, 0x1

    aget v0, v11, v0

    add-float v6, v12, v0

    .line 452
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 459
    :sswitch_17d
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    invoke-virtual {v10, v0, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 460
    add-int/lit8 v0, v8, 0x0

    aget v0, v11, v0

    add-float/2addr v7, v0

    .line 461
    move/from16 v24, v8

    move v15, v9

    goto/16 :goto_3cc

    .line 475
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    :sswitch_18f
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x0

    aget v1, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v2, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v3, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v4, v11, v0

    add-int/lit8 v0, v8, 0x4

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x5

    aget v6, v11, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 478
    add-int/lit8 v0, v8, 0x2

    aget v0, v11, v0

    add-float/2addr v0, v7

    .line 479
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v8, 0x3

    aget v1, v11, v1

    add-float v6, v12, v1

    .line 480
    .end local v20    # "ctrlPointY":F
    .local v6, "ctrlPointY":F
    add-int/lit8 v1, v8, 0x4

    aget v1, v11, v1

    add-float/2addr v7, v1

    .line 481
    add-int/lit8 v1, v8, 0x5

    aget v1, v11, v1

    add-float/2addr v1, v12

    .line 483
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v24, v8

    move v15, v9

    move v6, v1

    goto/16 :goto_3cc

    .line 570
    .end local v0    # "ctrlPointX":F
    .end local v1    # "currentY":F
    .local v6, "currentY":F
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_1cc
    move v12, v6

    .end local v6    # "currentY":F
    .restart local v12    # "currentY":F
    add-int/lit8 v0, v8, 0x5

    aget v0, v11, v0

    add-float v3, v0, v7

    add-int/lit8 v0, v8, 0x6

    aget v0, v11, v0

    add-float v4, v0, v12

    add-int/lit8 v0, v8, 0x0

    aget v5, v11, v0

    add-int/lit8 v0, v8, 0x1

    aget v6, v11, v0

    add-int/lit8 v0, v8, 0x2

    aget v14, v11, v0

    add-int/lit8 v0, v8, 0x3

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_1ef

    const/4 v15, 0x1

    goto :goto_1f0

    :cond_1ef
    const/4 v15, 0x0

    :goto_1f0
    add-int/lit8 v0, v8, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_1fa

    const/4 v13, 0x1

    goto :goto_1fb

    :cond_1fa
    const/4 v13, 0x0

    :goto_1fb
    move-object/from16 v0, p0

    move v1, v7

    move v2, v12

    move v10, v7

    .end local v7    # "currentX":F
    .local v10, "currentX":F
    move v7, v14

    move/from16 v24, v8

    .end local v8    # "k":I
    .restart local v24    # "k":I
    move v8, v15

    move v14, v9

    .end local v9    # "previousCmd":C
    .local v14, "previousCmd":C
    move v9, v13

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 580
    add-int/lit8 v8, v24, 0x5

    aget v0, v11, v8

    add-float v7, v10, v0

    .line 581
    .end local v10    # "currentX":F
    .restart local v7    # "currentX":F
    add-int/lit8 v8, v24, 0x6

    aget v0, v11, v8

    add-float v6, v12, v0

    .line 582
    .end local v12    # "currentY":F
    .restart local v6    # "currentY":F
    move v0, v7

    .line 583
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    move v1, v6

    .line 584
    .end local v20    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    move-object/from16 v10, p0

    move/from16 v19, v0

    move/from16 v20, v1

    move v15, v14

    goto/16 :goto_3cc

    .line 471
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v8    # "k":I
    .restart local v9    # "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_220
    move v12, v6

    move v10, v7

    move/from16 v24, v8

    move v14, v9

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .end local v9    # "previousCmd":C
    .restart local v10    # "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    move v9, v10

    move-object/from16 v10, p0

    .end local v10    # "currentX":F
    .local v9, "currentX":F
    invoke-virtual {v10, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 472
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 473
    .end local v12    # "currentY":F
    .local v0, "currentY":F
    move v6, v0

    move v7, v9

    move v15, v14

    goto/16 :goto_3cc

    .line 554
    .end local v0    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_238
    move v12, v6

    move/from16 v24, v8

    move v14, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v14    # "previousCmd":C
    .restart local v24    # "k":I
    move v1, v9

    .line 555
    .local v1, "reflectiveCtrlPointX":F
    move v3, v12

    .line 556
    .restart local v3    # "reflectiveCtrlPointY":F
    if-eq v14, v15, :cond_247

    if-eq v14, v4, :cond_247

    if-eq v14, v2, :cond_247

    if-ne v14, v0, :cond_24f

    .line 558
    :cond_247
    mul-float v7, v9, v23

    sub-float v1, v7, v19

    .line 559
    mul-float v6, v12, v23

    sub-float v3, v6, v20

    .line 561
    :cond_24f
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v2, v11, v8

    invoke-virtual {v10, v1, v3, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 563
    move v0, v1

    .line 564
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    move v2, v3

    .line 565
    .end local v20    # "ctrlPointY":F
    .local v2, "ctrlPointY":F
    add-int/lit8 v8, v24, 0x0

    aget v4, v11, v8

    .line 566
    .end local v9    # "currentX":F
    .local v4, "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v5, v11, v8

    .line 567
    .end local v12    # "currentY":F
    .local v5, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v2

    move v7, v4

    move v6, v5

    move v15, v14

    goto/16 :goto_3cc

    .line 510
    .end local v0    # "ctrlPointX":F
    .end local v1    # "reflectiveCtrlPointX":F
    .end local v2    # "ctrlPointY":F
    .end local v3    # "reflectiveCtrlPointY":F
    .end local v4    # "currentX":F
    .end local v5    # "currentY":F
    .end local v14    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_26d
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    move v0, v9

    .line 511
    .local v0, "reflectiveCtrlPointX":F
    move v2, v12

    .line 512
    .local v2, "reflectiveCtrlPointY":F
    if-eq v15, v14, :cond_280

    if-eq v15, v5, :cond_280

    if-eq v15, v3, :cond_280

    if-ne v15, v1, :cond_27d

    goto :goto_280

    :cond_27d
    move v7, v0

    move v8, v2

    goto :goto_28a

    .line 514
    :cond_280
    :goto_280
    mul-float v7, v9, v23

    sub-float v0, v7, v19

    .line 515
    mul-float v6, v12, v23

    sub-float v2, v6, v20

    move v7, v0

    move v8, v2

    .line 517
    .end local v0    # "reflectiveCtrlPointX":F
    .end local v2    # "reflectiveCtrlPointY":F
    .local v7, "reflectiveCtrlPointX":F
    .local v8, "reflectiveCtrlPointY":F
    :goto_28a
    add-int/lit8 v0, v24, 0x0

    aget v3, v11, v0

    add-int/lit8 v0, v24, 0x1

    aget v4, v11, v0

    add-int/lit8 v0, v24, 0x2

    aget v5, v11, v0

    add-int/lit8 v0, v24, 0x3

    aget v6, v11, v0

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    add-int/lit8 v0, v24, 0x0

    aget v0, v11, v0

    .line 520
    .end local v19    # "ctrlPointX":F
    .local v0, "ctrlPointX":F
    add-int/lit8 v1, v24, 0x1

    aget v1, v11, v1

    .line 521
    .end local v20    # "ctrlPointY":F
    .local v1, "ctrlPointY":F
    add-int/lit8 v2, v24, 0x2

    aget v2, v11, v2

    .line 522
    .end local v9    # "currentX":F
    .local v2, "currentX":F
    add-int/lit8 v3, v24, 0x3

    aget v3, v11, v3

    .line 523
    .end local v12    # "currentY":F
    .local v3, "currentY":F
    move/from16 v19, v0

    move/from16 v20, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_3cc

    .line 532
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .local v7, "currentX":F
    .local v8, "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2b9
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 533
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 534
    .end local v19    # "ctrlPointX":F
    .restart local v0    # "ctrlPointX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 535
    .end local v20    # "ctrlPointY":F
    .restart local v1    # "ctrlPointY":F
    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    .line 536
    .end local v9    # "currentX":F
    .restart local v2    # "currentX":F
    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    .line 537
    .end local v12    # "currentY":F
    .restart local v3    # "currentY":F
    move/from16 v19, v0

    move/from16 v20, v1

    move v7, v2

    move v6, v3

    goto/16 :goto_3cc

    .line 435
    .end local v0    # "ctrlPointX":F
    .end local v1    # "ctrlPointY":F
    .end local v2    # "currentX":F
    .end local v3    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_2e9
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 436
    .end local v9    # "currentX":F
    .local v0, "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 437
    .end local v12    # "currentY":F
    .local v1, "currentY":F
    if-lez v24, :cond_307

    .line 441
    add-int/lit8 v8, v24, 0x0

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v3, v11, v8

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v7, v0

    move v6, v1

    goto/16 :goto_3cc

    .line 443
    :cond_307
    add-int/lit8 v8, v24, 0x0

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v3, v11, v8

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 444
    move v2, v0

    .line 445
    .end local v21    # "currentSegmentStartX":F
    .local v2, "currentSegmentStartX":F
    move v3, v1

    .line 447
    .end local v22    # "currentSegmentStartY":F
    .local v3, "currentSegmentStartY":F
    move v7, v0

    move v6, v1

    move/from16 v21, v2

    move/from16 v22, v3

    goto/16 :goto_3cc

    .line 454
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "currentSegmentStartX":F
    .end local v3    # "currentSegmentStartY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v21    # "currentSegmentStartX":F
    .restart local v22    # "currentSegmentStartY":F
    :sswitch_31c
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 456
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x1

    aget v1, v11, v8

    .line 457
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move v7, v0

    move v6, v1

    goto/16 :goto_3cc

    .line 463
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_338
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    add-int/lit8 v8, v24, 0x0

    aget v0, v11, v8

    .line 465
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    move v7, v0

    goto/16 :goto_3cc

    .line 485
    .end local v0    # "currentX":F
    .end local v12    # "currentY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    :sswitch_34b
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x0

    aget v1, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v2, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v3, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v4, v11, v8

    add-int/lit8 v8, v24, 0x4

    aget v5, v11, v8

    add-int/lit8 v8, v24, 0x5

    aget v6, v11, v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 487
    add-int/lit8 v8, v24, 0x4

    aget v0, v11, v8

    .line 488
    .end local v9    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x5

    aget v1, v11, v8

    .line 489
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    add-int/lit8 v8, v24, 0x2

    aget v2, v11, v8

    .line 490
    .end local v19    # "ctrlPointX":F
    .local v2, "ctrlPointX":F
    add-int/lit8 v8, v24, 0x3

    aget v3, v11, v8

    .line 491
    .end local v20    # "ctrlPointY":F
    .local v3, "ctrlPointY":F
    move v7, v0

    move v6, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_3cc

    .line 586
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .end local v3    # "ctrlPointY":F
    .end local v15    # "previousCmd":C
    .end local v24    # "k":I
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v8    # "k":I
    .local v9, "previousCmd":C
    .restart local v19    # "ctrlPointX":F
    .restart local v20    # "ctrlPointY":F
    :sswitch_384
    move v12, v6

    move/from16 v24, v8

    move v15, v9

    move v9, v7

    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .local v9, "currentX":F
    .restart local v12    # "currentY":F
    .restart local v15    # "previousCmd":C
    .restart local v24    # "k":I
    add-int/lit8 v8, v24, 0x5

    aget v3, v11, v8

    add-int/lit8 v8, v24, 0x6

    aget v4, v11, v8

    add-int/lit8 v8, v24, 0x0

    aget v5, v11, v8

    add-int/lit8 v8, v24, 0x1

    aget v6, v11, v8

    add-int/lit8 v8, v24, 0x2

    aget v7, v11, v8

    add-int/lit8 v8, v24, 0x3

    aget v0, v11, v8

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3a7

    const/4 v8, 0x1

    goto :goto_3a8

    :cond_3a7
    const/4 v8, 0x0

    :goto_3a8
    add-int/lit8 v0, v24, 0x4

    aget v0, v11, v0

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3b2

    const/4 v13, 0x1

    goto :goto_3b3

    :cond_3b2
    const/4 v13, 0x0

    :goto_3b3
    move-object/from16 v0, p0

    move v1, v9

    move v2, v12

    move v14, v9

    .end local v9    # "currentX":F
    .local v14, "currentX":F
    move v9, v13

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 596
    add-int/lit8 v8, v24, 0x5

    aget v0, v11, v8

    .line 597
    .end local v14    # "currentX":F
    .restart local v0    # "currentX":F
    add-int/lit8 v8, v24, 0x6

    aget v1, v11, v8

    .line 598
    .end local v12    # "currentY":F
    .restart local v1    # "currentY":F
    move v2, v0

    .line 599
    .end local v19    # "ctrlPointX":F
    .restart local v2    # "ctrlPointX":F
    move v3, v1

    move v7, v0

    move v6, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 602
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v2    # "ctrlPointX":F
    .restart local v6    # "currentY":F
    .restart local v7    # "currentX":F
    .restart local v19    # "ctrlPointX":F
    :goto_3cc
    move/from16 v9, p3

    .line 418
    .end local v15    # "previousCmd":C
    .local v9, "previousCmd":C
    add-int v8, v24, v18

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v24    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_4d

    :cond_3d6
    move v12, v6

    move v14, v7

    .line 604
    .end local v6    # "currentY":F
    .end local v7    # "currentX":F
    .end local v8    # "k":I
    .restart local v12    # "currentY":F
    .restart local v14    # "currentX":F
    const/4 v0, 0x0

    aput v14, p1, v0

    .line 605
    const/4 v0, 0x1

    aput v12, p1, v0

    .line 606
    const/4 v0, 0x2

    aput v19, p1, v0

    .line 607
    const/4 v0, 0x3

    aput v20, p1, v0

    .line 608
    aput v21, p1, v16

    .line 609
    aput v22, p1, v17

    .line 610
    return-void

    nop

    :sswitch_data_3ea
    .sparse-switch
        0x41 -> :sswitch_3c
        0x43 -> :sswitch_38
        0x48 -> :sswitch_34
        0x4c -> :sswitch_30
        0x4d -> :sswitch_30
        0x51 -> :sswitch_2c
        0x53 -> :sswitch_2c
        0x54 -> :sswitch_30
        0x56 -> :sswitch_34
        0x5a -> :sswitch_1f
        0x61 -> :sswitch_3c
        0x63 -> :sswitch_38
        0x68 -> :sswitch_34
        0x6c -> :sswitch_30
        0x6d -> :sswitch_30
        0x71 -> :sswitch_2c
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_30
        0x76 -> :sswitch_34
        0x7a -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_43c
    .sparse-switch
        0x41 -> :sswitch_384
        0x43 -> :sswitch_34b
        0x48 -> :sswitch_338
        0x4c -> :sswitch_31c
        0x4d -> :sswitch_2e9
        0x51 -> :sswitch_2b9
        0x53 -> :sswitch_26d
        0x54 -> :sswitch_238
        0x56 -> :sswitch_220
        0x61 -> :sswitch_1cc
        0x63 -> :sswitch_18f
        0x68 -> :sswitch_17d
        0x6c -> :sswitch_161
        0x6d -> :sswitch_12d
        0x71 -> :sswitch_fa
        0x73 -> :sswitch_ae
        0x74 -> :sswitch_7e
        0x76 -> :sswitch_6d
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 81
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .line 717
    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 719
    .local v4, "numSegments":I
    move-wide/from16 v5, p15

    .line 720
    .local v5, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 721
    .local v7, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 722
    .local v9, "sinTheta":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 723
    .local v11, "cosEta1":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 724
    .local v13, "sinEta1":D
    neg-double v2, v0

    mul-double v2, v2, v7

    mul-double v2, v2, v13

    mul-double v17, p7, v9

    mul-double v17, v17, v11

    sub-double v2, v2, v17

    .line 725
    .local v2, "ep1x":D
    move-wide/from16 v17, v2

    .end local v2    # "ep1x":D
    .local v17, "ep1x":D
    neg-double v2, v0

    mul-double v2, v2, v9

    mul-double v2, v2, v13

    mul-double v19, p7, v7

    mul-double v19, v19, v11

    add-double v2, v2, v19

    .line 727
    .local v2, "ep1y":D
    move-wide/from16 v19, v2

    .end local v2    # "ep1y":D
    .local v19, "ep1y":D
    int-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, p17, v2

    .line 728
    .local v2, "anglePerSegment":D
    const/16 v21, 0x0

    move-wide/from16 v23, v5

    move/from16 v15, v21

    move-wide/from16 v5, p9

    move-wide/from16 v21, v17

    move-wide/from16 v17, p11

    .end local p9    # "e1x":D
    .end local p11    # "e1y":D
    .local v5, "e1x":D
    .local v15, "i":I
    .local v17, "e1y":D
    .local v21, "ep1x":D
    .local v23, "eta1":D
    :goto_53
    if-ge v15, v4, :cond_118

    .line 729
    add-double v27, v23, v2

    .line 730
    .local v27, "eta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v29

    .line 731
    .local v29, "sinEta2":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    .line 732
    .local v31, "cosEta2":D
    mul-double v33, v0, v7

    mul-double v33, v33, v31

    add-double v33, p1, v33

    mul-double v35, p7, v9

    mul-double v35, v35, v29

    move-wide/from16 v37, v2

    .end local v2    # "anglePerSegment":D
    .local v37, "anglePerSegment":D
    sub-double v2, v33, v35

    .line 733
    .local v2, "e2x":D
    mul-double v33, v0, v9

    mul-double v33, v33, v31

    add-double v33, p3, v33

    mul-double v35, p7, v7

    mul-double v35, v35, v29

    move-wide/from16 v39, v11

    .end local v11    # "cosEta1":D
    .local v39, "cosEta1":D
    add-double v11, v33, v35

    .line 734
    .local v11, "e2y":D
    move-wide/from16 v33, v13

    .end local v13    # "sinEta1":D
    .local v33, "sinEta1":D
    neg-double v13, v0

    mul-double v13, v13, v7

    mul-double v13, v13, v29

    mul-double v35, p7, v9

    mul-double v35, v35, v31

    sub-double v13, v13, v35

    .line 735
    .local v13, "ep2x":D
    move-wide/from16 p9, v11

    .end local v11    # "e2y":D
    .local p9, "e2y":D
    neg-double v11, v0

    mul-double v11, v11, v9

    mul-double v11, v11, v29

    mul-double v35, p7, v7

    mul-double v35, v35, v31

    add-double v11, v11, v35

    .line 736
    .local v11, "ep2y":D
    sub-double v35, v27, v23

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    div-double v35, v35, v41

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    .line 737
    .local v35, "tanDiff2":D
    sub-double v41, v27, v23

    .line 738
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sin(D)D

    move-result-wide v41

    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    mul-double v45, v35, v43

    mul-double v45, v45, v35

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    add-double v45, v45, v25

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v45, v45, v47

    mul-double v41, v41, v45

    div-double v41, v41, v43

    .line 739
    .local v41, "alpha":D
    mul-double v43, v41, v21

    add-double v0, v5, v43

    .line 740
    .local v0, "q1x":D
    mul-double v43, v41, v19

    move/from16 v16, v4

    move-wide/from16 p11, v5

    .end local v4    # "numSegments":I
    .end local v5    # "e1x":D
    .local v16, "numSegments":I
    .local p11, "e1x":D
    add-double v4, v17, v43

    .line 741
    .local v4, "q1y":D
    mul-double v43, v41, v13

    move-wide/from16 v45, v7

    .end local v7    # "cosTheta":D
    .local v45, "cosTheta":D
    sub-double v6, v2, v43

    .line 742
    .local v6, "q2x":D
    mul-double v43, v41, v11

    move-wide/from16 v47, v9

    move-wide/from16 v8, p9

    move-wide/from16 p9, v11

    .end local v9    # "sinTheta":D
    .end local v11    # "ep2y":D
    .local v8, "e2y":D
    .local v47, "sinTheta":D
    .local p9, "ep2y":D
    sub-double v10, v8, v43

    .line 745
    .local v10, "q2y":D
    const/4 v12, 0x0

    move/from16 v43, v15

    move-object/from16 v15, p0

    .end local v15    # "i":I
    .local v43, "i":I
    invoke-virtual {v15, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 747
    double-to-float v12, v0

    move-wide/from16 v56, v0

    .end local v0    # "q1x":D
    .local v56, "q1x":D
    double-to-float v0, v4

    double-to-float v1, v6

    move-wide/from16 v58, v4

    .end local v4    # "q1y":D
    .local v58, "q1y":D
    double-to-float v4, v10

    double-to-float v5, v2

    move-wide/from16 v60, v6

    .end local v6    # "q2x":D
    .local v60, "q2x":D
    double-to-float v6, v8

    move-object/from16 v49, p0

    move/from16 v50, v12

    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    invoke-virtual/range {v49 .. v55}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 753
    move-wide/from16 v23, v27

    .line 754
    move-wide v5, v2

    .line 755
    .end local p11    # "e1x":D
    .restart local v5    # "e1x":D
    move-wide/from16 v17, v8

    .line 756
    move-wide/from16 v21, v13

    .line 757
    move-wide/from16 v19, p9

    .line 728
    .end local v2    # "e2x":D
    .end local v8    # "e2y":D
    .end local v10    # "q2y":D
    .end local v13    # "ep2x":D
    .end local v27    # "eta2":D
    .end local v29    # "sinEta2":D
    .end local v31    # "cosEta2":D
    .end local v35    # "tanDiff2":D
    .end local v41    # "alpha":D
    .end local v56    # "q1x":D
    .end local v58    # "q1y":D
    .end local v60    # "q2x":D
    .end local p9    # "ep2y":D
    add-int/lit8 v0, v43, 0x1

    move v15, v0

    move/from16 v4, v16

    move-wide/from16 v13, v33

    move-wide/from16 v2, v37

    move-wide/from16 v11, v39

    move-wide/from16 v7, v45

    move-wide/from16 v9, v47

    move-wide/from16 v0, p5

    .end local v43    # "i":I
    .local v0, "i":I
    goto/16 :goto_53

    .line 759
    .end local v0    # "i":I
    .end local v16    # "numSegments":I
    .end local v33    # "sinEta1":D
    .end local v37    # "anglePerSegment":D
    .end local v39    # "cosEta1":D
    .end local v45    # "cosTheta":D
    .end local v47    # "sinTheta":D
    .local v2, "anglePerSegment":D
    .local v4, "numSegments":I
    .restart local v7    # "cosTheta":D
    .restart local v9    # "sinTheta":D
    .local v11, "cosEta1":D
    .local v13, "sinEta1":D
    :cond_118
    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 83
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .line 624
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v35

    .line 626
    .local v35, "thetaD":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 627
    .local v37, "cosTheta":D
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    .line 630
    .local v39, "sinTheta":D
    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v41, v0, v2

    .line 631
    .local v41, "x0p":D
    neg-float v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v43, v0, v2

    .line 632
    .local v43, "y0p":D
    float-to-double v0, v12

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v37

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v39

    add-double/2addr v0, v2

    float-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v45, v0, v2

    .line 633
    .local v45, "x1p":D
    neg-float v0, v12

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v39

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v47, v0, v2

    .line 636
    .local v47, "y1p":D
    sub-double v49, v41, v45

    .line 637
    .local v49, "dx":D
    sub-double v51, v43, v47

    .line 638
    .local v51, "dy":D
    add-double v0, v41, v45

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v53, v0, v2

    .line 639
    .local v53, "xm":D
    add-double v0, v43, v47

    div-double v55, v0, v2

    .line 641
    .local v55, "ym":D
    mul-double v0, v49, v49

    mul-double v2, v51, v51

    add-double v6, v0, v2

    .line 642
    .local v6, "dsq":D
    const-string v0, "PathParser"

    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-nez v3, :cond_8d

    .line 643
    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 646
    :cond_8d
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v6

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v57, v3, v16

    .line 647
    .local v57, "disc":D
    cmpg-double v3, v57, v1

    if-gez v3, :cond_da

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v5, v0

    .line 650
    .local v5, "adjust":F
    mul-float v16, v14, v5

    mul-float v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v5

    .end local v5    # "adjust":F
    .local v18, "adjust":F
    move/from16 v5, v16

    move-wide/from16 v59, v6

    .end local v6    # "dsq":D
    .local v59, "dsq":D
    move/from16 v6, v17

    move/from16 v7, p7

    move/from16 v8, p8

    move v12, v9

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 652
    return-void

    .line 654
    .end local v18    # "adjust":F
    .end local v59    # "dsq":D
    .restart local v6    # "dsq":D
    :cond_da
    move-wide/from16 v59, v6

    move v12, v9

    .end local v6    # "dsq":D
    .restart local v59    # "dsq":D
    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 655
    .local v3, "s":D
    mul-double v5, v3, v49

    .line 656
    .local v5, "sdx":D
    mul-double v7, v3, v51

    .line 659
    .local v7, "sdy":D
    move/from16 v0, p8

    if-ne v0, v12, :cond_ee

    .line 660
    sub-double v16, v53, v7

    .line 661
    .local v16, "cx":D
    add-double v18, v55, v5

    .local v18, "cy":D
    goto :goto_f2

    .line 663
    .end local v16    # "cx":D
    .end local v18    # "cy":D
    :cond_ee
    add-double v16, v53, v7

    .line 664
    .restart local v16    # "cx":D
    sub-double v18, v55, v5

    .line 667
    .restart local v18    # "cy":D
    :goto_f2
    sub-double v1, v43, v18

    move-wide/from16 v61, v3

    .end local v3    # "s":D
    .local v61, "s":D
    sub-double v3, v41, v16

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 669
    .local v1, "eta0":D
    sub-double v3, v47, v18

    move-wide/from16 v63, v5

    .end local v5    # "sdx":D
    .local v63, "sdx":D
    sub-double v5, v45, v16

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 671
    .local v3, "eta1":D
    sub-double v5, v3, v1

    .line 672
    .local v5, "sweep":D
    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-ltz v9, :cond_110

    const/4 v9, 0x1

    goto :goto_111

    :cond_110
    const/4 v9, 0x0

    :goto_111
    if-eq v12, v9, :cond_123

    .line 673
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/16 v20, 0x0

    cmpl-double v9, v5, v20

    if-lez v9, :cond_121

    .line 674
    sub-double v5, v5, v22

    goto :goto_123

    .line 676
    :cond_121
    add-double v5, v5, v22

    .line 680
    :cond_123
    :goto_123
    move-wide/from16 v65, v3

    .end local v3    # "eta1":D
    .local v65, "eta1":D
    float-to-double v3, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v16, v3

    .line 681
    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v18

    .line 682
    .end local v18    # "cy":D
    .local v3, "cy":D
    move-wide/from16 v67, v16

    .line 683
    .local v67, "tcx":D
    mul-double v18, v16, v37

    mul-double v20, v3, v39

    sub-double v69, v18, v20

    .end local v16    # "cx":D
    .local v69, "cx":D
    move-wide/from16 v17, v69

    .line 684
    mul-double v19, v67, v39

    mul-double v21, v3, v37

    add-double v3, v19, v21

    move-wide/from16 v19, v3

    .line 686
    move-wide/from16 v71, v3

    .end local v3    # "cy":D
    .local v71, "cy":D
    float-to-double v3, v14

    move-wide/from16 v21, v3

    float-to-double v3, v15

    move-wide/from16 v23, v3

    float-to-double v3, v10

    move-wide/from16 v25, v3

    float-to-double v3, v11

    move-wide/from16 v27, v3

    move-object/from16 v16, p0

    move-wide/from16 v29, v35

    move-wide/from16 v31, v1

    move-wide/from16 v33, v5

    invoke-static/range {v16 .. v34}, Landroidx/core/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    .line 687
    return-void
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .registers 7
    .param p0, "node"    # [Landroidx/core/graphics/PathParser$PathDataNode;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 337
    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 338
    .local v0, "current":[F
    const/16 v1, 0x6d

    .line 339
    .local v1, "previousCommand":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    .line 340
    aget-object v3, p0, v2

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroidx/core/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    .line 341
    aget-object v3, p0, v2

    iget-char v1, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 343
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V
    .registers 8
    .param p1, "nodeFrom"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p2, "nodeTo"    # Landroidx/core/graphics/PathParser$PathDataNode;
    .param p3, "fraction"    # F

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 357
    iget-object v2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

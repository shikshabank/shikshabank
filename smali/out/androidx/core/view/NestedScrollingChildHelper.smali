.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3
    .param p1, "type"    # I

    .line 383
    packed-switch p1, :pswitch_data_c

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 387
    :pswitch_5
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    .line 385
    :pswitch_8
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .line 393
    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 398
    :pswitch_4
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_a

    .line 395
    :pswitch_7
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 396
    nop

    .line 401
    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 327
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 328
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 329
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 330
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    return v1

    .line 334
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 347
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 348
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 349
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_14

    .line 350
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    return v1

    .line 354
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 264
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 21
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 278
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6f

    .line 279
    move/from16 v2, p5

    invoke-direct {p0, v2}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 280
    .local v10, "parent":Landroid/view/ViewParent;
    if-nez v10, :cond_13

    .line 281
    return v3

    .line 284
    :cond_13
    const/4 v11, 0x1

    if-nez p1, :cond_20

    if-eqz p2, :cond_19

    goto :goto_20

    .line 309
    :cond_19
    if-eqz v1, :cond_71

    .line 310
    aput v3, v1, v3

    .line 311
    aput v3, v1, v11

    goto :goto_71

    .line 285
    :cond_20
    :goto_20
    const/4 v4, 0x0

    .line 286
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 287
    .local v5, "startY":I
    if-eqz v1, :cond_30

    .line 288
    iget-object v6, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 289
    aget v4, v1, v3

    .line 290
    aget v5, v1, v11

    move v12, v4

    move v13, v5

    goto :goto_32

    .line 287
    :cond_30
    move v12, v4

    move v13, v5

    .line 293
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v12, "startX":I
    .local v13, "startY":I
    :goto_32
    if-nez p3, :cond_41

    .line 294
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_3d

    .line 295
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 297
    :cond_3d
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    move-object v14, v4

    .end local p3    # "consumed":[I
    .local v4, "consumed":[I
    goto :goto_43

    .line 293
    .end local v4    # "consumed":[I
    .restart local p3    # "consumed":[I
    :cond_41
    move-object/from16 v14, p3

    .line 299
    .end local p3    # "consumed":[I
    .local v14, "consumed":[I
    :goto_43
    aput v3, v14, v3

    .line 300
    aput v3, v14, v11

    .line 301
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v10

    move/from16 v6, p1

    move/from16 v7, p2

    move-object v8, v14

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 303
    if-eqz v1, :cond_65

    .line 304
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 305
    aget v4, v1, v3

    sub-int/2addr v4, v12

    aput v4, v1, v3

    .line 306
    aget v4, v1, v11

    sub-int/2addr v4, v13

    aput v4, v1, v11

    .line 308
    :cond_65
    aget v4, v14, v3

    if-nez v4, :cond_6d

    aget v4, v14, v11

    if-eqz v4, :cond_6e

    :cond_6d
    const/4 v3, 0x1

    :cond_6e
    return v3

    .line 278
    .end local v10    # "parent":Landroid/view/ViewParent;
    .end local v12    # "startX":I
    .end local v13    # "startY":I
    .end local v14    # "consumed":[I
    .restart local p3    # "consumed":[I
    :cond_6f
    move/from16 v2, p5

    .line 314
    :cond_71
    :goto_71
    return v3
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 13
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 204
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 22
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 220
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_58

    .line 221
    move/from16 v2, p6

    invoke-direct {p0, v2}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v11

    .line 222
    .local v11, "parent":Landroid/view/ViewParent;
    if-nez v11, :cond_13

    .line 223
    return v3

    .line 226
    :cond_13
    const/4 v12, 0x1

    if-nez p1, :cond_24

    if-nez p2, :cond_24

    if-nez p3, :cond_24

    if-eqz p4, :cond_1d

    goto :goto_24

    .line 244
    :cond_1d
    if-eqz v1, :cond_5a

    .line 246
    aput v3, v1, v3

    .line 247
    aput v3, v1, v12

    goto :goto_5a

    .line 227
    :cond_24
    :goto_24
    const/4 v4, 0x0

    .line 228
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 229
    .local v5, "startY":I
    if-eqz v1, :cond_34

    .line 230
    iget-object v6, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 231
    aget v4, v1, v3

    .line 232
    aget v5, v1, v12

    move v13, v4

    move v14, v5

    goto :goto_36

    .line 229
    :cond_34
    move v13, v4

    move v14, v5

    .line 235
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v13, "startX":I
    .local v14, "startY":I
    :goto_36
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move-object v4, v11

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 238
    if-eqz v1, :cond_57

    .line 239
    iget-object v4, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    aget v4, v1, v3

    sub-int/2addr v4, v13

    aput v4, v1, v3

    .line 241
    aget v3, v1, v12

    sub-int/2addr v3, v14

    aput v3, v1, v12

    .line 243
    :cond_57
    return v12

    .line 220
    .end local v11    # "parent":Landroid/view/ViewParent;
    .end local v13    # "startX":I
    .end local v14    # "startY":I
    :cond_58
    move/from16 v2, p6

    .line 250
    :cond_5a
    :goto_5a
    return v3
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 114
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 366
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 380
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 70
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_9
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 74
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 7
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 147
    return v1

    .line 149
    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 150
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    .local v0, "p":Landroid/view/ViewParent;
    iget-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 152
    .local v2, "child":Landroid/view/View;
    :goto_16
    if-eqz v0, :cond_35

    .line 153
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 154
    invoke-direct {p0, p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 156
    return v1

    .line 158
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_30

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_16

    .line 164
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v2    # "child":Landroid/view/View;
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 176
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4
    .param p1, "type"    # I

    .line 186
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    .line 188
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 191
    :cond_f
    return-void
.end method

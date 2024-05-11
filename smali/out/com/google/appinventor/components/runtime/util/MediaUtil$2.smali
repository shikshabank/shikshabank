.class Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$desiredHeight:I

.field final synthetic val$desiredWidth:I

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$mediaPath:Ljava/lang/String;

.field final synthetic val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V
    .registers 7

    .line 496
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput p5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .line 504
    move-object/from16 v1, p0

    const-string v2, "Unexpected error on close"

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v4, 0x0

    .line 506
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 507
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 511
    .local v6, "buf":[B
    const/4 v7, 0x0

    :try_start_2a
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    invoke-static {v0, v8, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smopenMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 512
    :goto_35
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v8, v0

    .local v8, "read":I
    const/4 v9, 0x0

    if-lez v0, :cond_41

    .line 513
    invoke-virtual {v5, v6, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_35

    .line 515
    :cond_41
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_45
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2a .. :try_end_45} :catch_1ef
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_45} :catch_193
    .catchall {:try_start_2a .. :try_end_45} :catchall_18f

    move-object v6, v0

    .line 532
    if-eqz v4, :cond_52

    .line 534
    :try_start_48
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 538
    goto :goto_52

    .line 535
    :catch_4c
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Ljava/io/IOException;
    :cond_52
    :goto_52
    const/4 v4, 0x0

    .line 542
    :try_start_53
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 545
    goto :goto_58

    .line 543
    :catch_57
    move-exception v0

    .line 546
    :goto_58
    const/4 v5, 0x0

    .line 547
    nop

    .line 548
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v0

    .line 549
    .local v10, "bis":Ljava/io/ByteArrayInputStream;
    array-length v8, v6

    .line 550
    const/4 v6, 0x0

    .line 552
    :try_start_62
    invoke-virtual {v10, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 553
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v11, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    invoke-static {v0, v10, v11}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smgetBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    move-object v11, v0

    .line 554
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 555
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 556
    invoke-static {v10, v7, v11}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smdecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v12, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v0

    .line 570
    .local v7, "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 571
    iget v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    const/4 v12, 0x1

    if-lez v0, :cond_99

    iget v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    if-ltz v0, :cond_99

    const/4 v0, 0x1

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    move v13, v0

    .line 572
    .local v13, "needsResize":Z
    if-nez v13, :cond_be

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v0, v12, :cond_ad

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v12

    if-nez v0, :cond_be

    .line 573
    :cond_ad
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_b2} :catch_168
    .catchall {:try_start_62 .. :try_end_b2} :catchall_165

    .line 597
    nop

    .line 599
    :try_start_b3
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 603
    goto :goto_bd

    .line 600
    :catch_b7
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 602
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v0    # "e":Ljava/io/IOException;
    :goto_bd
    return-void

    .line 576
    :cond_be
    :try_start_be
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 577
    iget v12, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    if-lez v12, :cond_c9

    goto :goto_cd

    :cond_c9
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v12

    :goto_cd
    int-to-float v12, v12

    mul-float v0, v0, v12

    float-to-int v0, v0

    .line 578
    .local v0, "scaledWidth":I
    iget-object v12, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v12

    .line 579
    iget v14, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    if-lez v14, :cond_dc

    goto :goto_e0

    :cond_dc
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v14

    :goto_e0
    int-to-float v14, v14

    mul-float v12, v12, v14

    float-to-int v12, v12

    .line 580
    .local v12, "scaledHeight":I
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form.deviceDensity() = "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    nop

    .line 582
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 581
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    nop

    .line 584
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 583
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v9, v0, v12, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 587
    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 588
    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 589
    .local v14, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 590
    const/4 v7, 0x0

    .line 591
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 592
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v15, v14}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_160} :catch_168
    .catchall {:try_start_be .. :try_end_160} :catchall_165

    .line 597
    .end local v0    # "scaledWidth":I
    .end local v7    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "scaledHeight":I
    .end local v13    # "needsResize":Z
    .end local v14    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    nop

    .line 599
    :try_start_161
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_17c

    goto :goto_17b

    .line 597
    :catchall_165
    move-exception v0

    move-object v7, v0

    goto :goto_184

    .line 593
    :catch_168
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    :try_start_169
    const-string v7, "Exception while loading media."

    invoke-static {v3, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_177
    .catchall {:try_start_169 .. :try_end_177} :catchall_165

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 599
    :try_start_178
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17b} :catch_17c

    .line 603
    :goto_17b
    goto :goto_183

    .line 600
    :catch_17c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 602
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_17b

    .line 606
    :goto_183
    return-void

    .line 599
    :goto_184
    :try_start_184
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_188

    .line 603
    goto :goto_18e

    .line 600
    :catch_188
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 602
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v0    # "e":Ljava/io/IOException;
    :goto_18e
    throw v7

    .line 532
    .end local v8    # "read":I
    .end local v10    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_18f
    move-exception v0

    move-object v7, v0

    goto/16 :goto_221

    .line 519
    :catch_193
    move-exception v0

    move-object v8, v0

    .line 520
    .local v8, "e":Ljava/io/IOException;
    :try_start_195
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    sget-object v9, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    if-ne v0, v9, :cond_1cd

    .line 522
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 523
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080066

    invoke-static {v10, v11, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v0

    .line 525
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_1b9
    .catchall {:try_start_195 .. :try_end_1b9} :catchall_18f

    .line 532
    if-eqz v4, :cond_1c5

    .line 534
    :try_start_1bb
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_1bf

    .line 538
    goto :goto_1c5

    .line 535
    :catch_1bf
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 537
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c5
    :goto_1c5
    const/4 v2, 0x0

    .line 542
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1c6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c9} :catch_1ca

    .line 545
    goto :goto_1cb

    .line 543
    :catch_1ca
    move-exception v0

    .line 546
    :goto_1cb
    const/4 v0, 0x0

    .line 526
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 528
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_1cd
    :try_start_1cd
    const-string v0, "IOException reading file."

    invoke-static {v3, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1cd .. :try_end_1db} :catchall_18f

    .line 532
    if-eqz v4, :cond_1e7

    .line 534
    :try_start_1dd
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e0} :catch_1e1

    .line 538
    goto :goto_1e7

    .line 535
    :catch_1e1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e7
    :goto_1e7
    const/4 v2, 0x0

    .line 542
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_1e8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_1ec

    .line 545
    goto :goto_1ed

    .line 543
    :catch_1ec
    move-exception v0

    .line 546
    :goto_1ed
    const/4 v0, 0x0

    .line 530
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 516
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1ef
    move-exception v0

    move-object v7, v0

    .line 517
    .local v7, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :try_start_1f1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PERMISSION_DENIED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_1f1 .. :try_end_20d} :catchall_18f

    .line 532
    if-eqz v4, :cond_219

    .line 534
    :try_start_20f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_212
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_212} :catch_213

    .line 538
    goto :goto_219

    .line 535
    :catch_213
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Ljava/io/IOException;
    :cond_219
    :goto_219
    const/4 v2, 0x0

    .line 542
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_21a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_21d} :catch_21e

    .line 545
    goto :goto_21f

    .line 543
    :catch_21e
    move-exception v0

    .line 546
    :goto_21f
    const/4 v0, 0x0

    .line 518
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 532
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v7    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_221
    if-eqz v4, :cond_22d

    .line 534
    :try_start_223
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_226} :catch_227

    .line 538
    goto :goto_22d

    .line 535
    :catch_227
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 537
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v0    # "e":Ljava/io/IOException;
    :cond_22d
    :goto_22d
    const/4 v2, 0x0

    .line 542
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_22e
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_231} :catch_232

    .line 545
    goto :goto_233

    .line 543
    :catch_232
    move-exception v0

    .line 546
    :goto_233
    const/4 v0, 0x0

    .line 547
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_236

    :goto_235
    throw v7

    :goto_236
    goto :goto_235
.end method

.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "ScreenDensityUtil.java"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenDensityUtil"

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .registers 18
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 47
    .local v1, "rawDims":Landroid/graphics/Point;
    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 49
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 50
    .local v3, "width":I
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 53
    .local v4, "height":I
    if-ge v3, v4, :cond_1b

    .line 54
    move v5, v3

    .line 55
    .local v5, "shortSize":I
    move v6, v4

    .local v6, "longSize":I
    goto :goto_1d

    .line 57
    .end local v5    # "shortSize":I
    .end local v6    # "longSize":I
    :cond_1b
    move v5, v4

    .line 58
    .restart local v5    # "shortSize":I
    move v6, v3

    .line 60
    .restart local v6    # "longSize":I
    :goto_1d
    const/high16 v7, 0x43a00000    # 320.0f

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v8, v7

    float-to-int v8, v8

    .line 61
    .local v8, "newShortSize":I
    int-to-float v9, v6

    int-to-float v10, v5

    div-float/2addr v9, v10

    .line 62
    .local v9, "aspect":F
    const v10, 0x3fe3bbbc

    cmpl-float v11, v9, v10

    if-lez v11, :cond_34

    .line 63
    const v9, 0x3fe3bbbc

    .line 65
    :cond_34
    int-to-float v11, v8

    mul-float v11, v11, v9

    add-float/2addr v11, v7

    float-to-int v7, v11

    .line 67
    .local v7, "newLongSize":I
    if-ge v3, v4, :cond_3e

    .line 68
    move v11, v8

    .line 69
    .local v11, "newWidth":I
    move v12, v7

    .local v12, "newHeight":I
    goto :goto_40

    .line 71
    .end local v11    # "newWidth":I
    .end local v12    # "newHeight":I
    :cond_3e
    move v11, v7

    .line 72
    .restart local v11    # "newWidth":I
    move v12, v8

    .line 75
    .restart local v12    # "newHeight":I
    :goto_40
    int-to-float v13, v3

    int-to-float v14, v11

    div-float/2addr v13, v14

    .line 76
    .local v13, "sw":F
    int-to-float v14, v4

    int-to-float v15, v12

    div-float/2addr v14, v15

    .line 78
    .local v14, "sh":F
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v16, v0

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .local v16, "dm":Landroid/util/DisplayMetrics;
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 90
    const-string v0, "Error reading raw screen size"

    const-string v1, "ScreenDensityUtil"

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 92
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 94
    .local v4, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v5

    .line 95
    .local v5, "sdkLevel":I
    const/16 v6, 0x18

    if-lt v5, v6, :cond_29

    .line 97
    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 99
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_89

    .line 100
    :cond_29
    const/16 v6, 0x11

    if-lt v5, v6, :cond_31

    .line 102
    invoke-static {v4, p1}, Lcom/google/appinventor/components/runtime/util/JellybeanUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_89

    .line 103
    :cond_31
    const/16 v6, 0xa

    if-le v5, v6, :cond_7d

    .line 108
    :try_start_35
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 109
    .local v6, "getRawH":Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v9, "getRawWidth"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_4a} :catch_78

    .line 111
    .local v7, "getRawW":Ljava/lang/reflect/Method;
    :try_start_4a
    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p1, Landroid/graphics/Point;->x:I

    .line 112
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p1, Landroid/graphics/Point;->y:I
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_66} :catch_72
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_66} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4a .. :try_end_66} :catch_67
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_66} :catch_78

    .line 119
    goto :goto_7c

    .line 117
    :catch_67
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_68
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 115
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6c
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    nop

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_7c

    .line 113
    :catch_72
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/lang/NoSuchMethodException; {:try_start_68 .. :try_end_76} :catch_78

    .line 119
    nop

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7c

    .line 120
    .end local v6    # "getRawH":Ljava/lang/reflect/Method;
    .end local v7    # "getRawW":Ljava/lang/reflect/Method;
    :catch_78
    move-exception v6

    .line 121
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :goto_7c
    goto :goto_89

    .line 126
    :cond_7d
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 127
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 130
    :goto_89
    return-void
.end method

.class synthetic Lcom/google/appinventor/components/runtime/Trendline$3;
.super Ljava/lang/Object;
.source "Trendline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Trendline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$common$BestFitModel:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$common$StrokeStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 547
    invoke-static {}, Lcom/google/appinventor/components/common/StrokeStyle;->values()[Lcom/google/appinventor/components/common/StrokeStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$StrokeStyle:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/appinventor/components/common/StrokeStyle;->Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/StrokeStyle;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$StrokeStyle:[I

    sget-object v3, Lcom/google/appinventor/components/common/StrokeStyle;->Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/StrokeStyle;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$StrokeStyle:[I

    sget-object v4, Lcom/google/appinventor/components/common/StrokeStyle;->Solid:Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/StrokeStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    .line 321
    :goto_2e
    invoke-static {}, Lcom/google/appinventor/components/common/BestFitModel;->values()[Lcom/google/appinventor/components/common/BestFitModel;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$BestFitModel:[I

    :try_start_37
    sget-object v4, Lcom/google/appinventor/components/common/BestFitModel;->Linear:Lcom/google/appinventor/components/common/BestFitModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/BestFitModel;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    sget-object v1, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$BestFitModel:[I

    sget-object v3, Lcom/google/appinventor/components/common/BestFitModel;->Quadratic:Lcom/google/appinventor/components/common/BestFitModel;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/BestFitModel;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    sget-object v0, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$BestFitModel:[I

    sget-object v1, Lcom/google/appinventor/components/common/BestFitModel;->Exponential:Lcom/google/appinventor/components/common/BestFitModel;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/BestFitModel;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v0

    :goto_59
    :try_start_59
    sget-object v0, Lcom/google/appinventor/components/runtime/Trendline$3;->$SwitchMap$com$google$appinventor$components$common$BestFitModel:[I

    sget-object v1, Lcom/google/appinventor/components/common/BestFitModel;->Logarithmic:Lcom/google/appinventor/components/common/BestFitModel;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/BestFitModel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v0

    :goto_66
    return-void
.end method

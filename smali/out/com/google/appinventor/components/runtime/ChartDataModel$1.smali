.class synthetic Lcom/google/appinventor/components/runtime/ChartDataModel$1;
.super Ljava/lang/Object;
.source "ChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ChartDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 245
    invoke-static {}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->values()[Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    :try_start_9
    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->XValue:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->YValue:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    return-void
.end method
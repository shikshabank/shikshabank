.class synthetic Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$common$MapType:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

.field static final synthetic $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1372
    invoke-static {}, Lcom/google/appinventor/components/common/ScaleUnits;->values()[Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

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
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    sget-object v3, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    .line 1360
    :goto_21
    invoke-static {}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->values()[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    :try_start_2a
    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v2

    .line 1345
    :goto_40
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    :try_start_49
    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    move-exception v2

    :goto_53
    :try_start_53
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception v2

    .line 422
    :goto_5f
    invoke-static {}, Lcom/google/appinventor/components/common/MapType;->values()[Lcom/google/appinventor/components/common/MapType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    :try_start_68
    sget-object v3, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v1

    :goto_72
    :try_start_72
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v2, Lcom/google/appinventor/components/common/MapType;->Aerial:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/common/MapType;->Terrain:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception v0

    :goto_8b
    return-void
.end method

.class synthetic Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;
.super Ljava/lang/Object;
.source "AlignmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 94
    invoke-static {}, Lcom/google/appinventor/components/common/VerticalAlignment;->values()[Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/VerticalAlignment;->ordinal()I

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
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I

    sget-object v3, Lcom/google/appinventor/components/common/VerticalAlignment;->Center:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/VerticalAlignment;->ordinal()I

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
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I

    sget-object v4, Lcom/google/appinventor/components/common/VerticalAlignment;->Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/VerticalAlignment;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    .line 53
    :goto_2e
    invoke-static {}, Lcom/google/appinventor/components/common/HorizontalAlignment;->values()[Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

    :try_start_37
    sget-object v4, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/HorizontalAlignment;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v1

    :goto_41
    :try_start_41
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

    sget-object v3, Lcom/google/appinventor/components/common/HorizontalAlignment;->Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/HorizontalAlignment;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

    sget-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Right:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/HorizontalAlignment;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v0

    :goto_59
    return-void
.end method

.class public final enum Lcom/google/appinventor/components/common/PointStyle;
.super Ljava/lang/Enum;
.source "PointStyle.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/PointStyle;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Circle:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Cross:Lcom/google/appinventor/components/common/PointStyle;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/PointStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Square:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum Triangle:Lcom/google/appinventor/components/common/PointStyle;

.field public static final enum X:Lcom/google/appinventor/components/common/PointStyle;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/PointStyle;

    const-string v1, "Circle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/PointStyle;->Circle:Lcom/google/appinventor/components/common/PointStyle;

    .line 13
    new-instance v1, Lcom/google/appinventor/components/common/PointStyle;

    const-string v3, "Square"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/appinventor/components/common/PointStyle;->Square:Lcom/google/appinventor/components/common/PointStyle;

    .line 14
    new-instance v3, Lcom/google/appinventor/components/common/PointStyle;

    const-string v5, "Triangle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/appinventor/components/common/PointStyle;->Triangle:Lcom/google/appinventor/components/common/PointStyle;

    .line 15
    new-instance v5, Lcom/google/appinventor/components/common/PointStyle;

    const-string v7, "Cross"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/appinventor/components/common/PointStyle;->Cross:Lcom/google/appinventor/components/common/PointStyle;

    .line 16
    new-instance v7, Lcom/google/appinventor/components/common/PointStyle;

    const-string v9, "X"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/appinventor/components/common/PointStyle;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/appinventor/components/common/PointStyle;->X:Lcom/google/appinventor/components/common/PointStyle;

    .line 11
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/appinventor/components/common/PointStyle;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/appinventor/components/common/PointStyle;->$VALUES:[Lcom/google/appinventor/components/common/PointStyle;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/PointStyle;->values()[Lcom/google/appinventor/components/common/PointStyle;

    move-result-object v0

    array-length v1, v0

    :goto_4d
    if-ge v2, v1, :cond_5d

    aget-object v3, v0, v2

    .line 22
    .local v3, "style":Lcom/google/appinventor/components/common/PointStyle;
    sget-object v4, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/PointStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .end local v3    # "style":Lcom/google/appinventor/components/common/PointStyle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 24
    :cond_5d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/appinventor/components/common/PointStyle;->value:I

    .line 30
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 38
    sget-object v0, Lcom/google/appinventor/components/common/PointStyle;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/PointStyle;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/PointStyle;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/PointStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/google/appinventor/components/common/PointStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/PointStyle;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/PointStyle;->$VALUES:[Lcom/google/appinventor/components/common/PointStyle;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/PointStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/PointStyle;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/appinventor/components/common/PointStyle;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/PointStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

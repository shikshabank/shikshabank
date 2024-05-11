.class public final enum Lcom/google/appinventor/components/common/MapType;
.super Ljava/lang/Enum;
.source "MapType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/MapType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/MapType;

.field public static final enum Aerial:Lcom/google/appinventor/components/common/MapType;

.field public static final enum Road:Lcom/google/appinventor/components/common/MapType;

.field public static final enum Terrain:Lcom/google/appinventor/components/common/MapType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/MapType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/MapType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Road"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    .line 16
    new-instance v2, Lcom/google/appinventor/components/common/MapType;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Aerial"

    invoke-direct {v2, v6, v1, v5}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/google/appinventor/components/common/MapType;->Aerial:Lcom/google/appinventor/components/common/MapType;

    .line 17
    new-instance v5, Lcom/google/appinventor/components/common/MapType;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Terrain"

    invoke-direct {v5, v8, v3, v7}, Lcom/google/appinventor/components/common/MapType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v5, Lcom/google/appinventor/components/common/MapType;->Terrain:Lcom/google/appinventor/components/common/MapType;

    .line 14
    new-array v6, v6, [Lcom/google/appinventor/components/common/MapType;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    aput-object v5, v6, v3

    sput-object v6, Lcom/google/appinventor/components/common/MapType;->$VALUES:[Lcom/google/appinventor/components/common/MapType;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/MapType;->lookup:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/google/appinventor/components/common/MapType;->values()[Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    array-length v1, v0

    :goto_41
    if-ge v4, v1, :cond_51

    aget-object v2, v0, v4

    .line 33
    .local v2, "type":Lcom/google/appinventor/components/common/MapType;
    sget-object v3, Lcom/google/appinventor/components/common/MapType;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .end local v2    # "type":Lcom/google/appinventor/components/common/MapType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 35
    :cond_51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/common/MapType;->value:Ljava/lang/Integer;

    .line 23
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;
    .registers 2
    .param p0, "type"    # Ljava/lang/Integer;

    .line 38
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/MapType;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/MapType;->$VALUES:[Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/appinventor/components/common/MapType;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

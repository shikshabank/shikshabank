.class public final enum Lcom/google/appinventor/components/common/BestFitModel;
.super Ljava/lang/Enum;
.source "BestFitModel.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/BestFitModel;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/BestFitModel;

.field public static final enum Exponential:Lcom/google/appinventor/components/common/BestFitModel;

.field public static final enum Linear:Lcom/google/appinventor/components/common/BestFitModel;

.field public static final enum Logarithmic:Lcom/google/appinventor/components/common/BestFitModel;

.field public static final enum Quadratic:Lcom/google/appinventor/components/common/BestFitModel;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/BestFitModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/BestFitModel;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/google/appinventor/components/common/BestFitModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/BestFitModel;->Linear:Lcom/google/appinventor/components/common/BestFitModel;

    .line 13
    new-instance v1, Lcom/google/appinventor/components/common/BestFitModel;

    const-string v3, "Quadratic"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/google/appinventor/components/common/BestFitModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/BestFitModel;->Quadratic:Lcom/google/appinventor/components/common/BestFitModel;

    .line 15
    new-instance v3, Lcom/google/appinventor/components/common/BestFitModel;

    const-string v5, "Exponential"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/google/appinventor/components/common/BestFitModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/BestFitModel;->Exponential:Lcom/google/appinventor/components/common/BestFitModel;

    .line 16
    new-instance v5, Lcom/google/appinventor/components/common/BestFitModel;

    const-string v7, "Logarithmic"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/google/appinventor/components/common/BestFitModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/BestFitModel;->Logarithmic:Lcom/google/appinventor/components/common/BestFitModel;

    .line 11
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/appinventor/components/common/BestFitModel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/appinventor/components/common/BestFitModel;->$VALUES:[Lcom/google/appinventor/components/common/BestFitModel;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/BestFitModel;->lookup:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/google/appinventor/components/common/BestFitModel;->values()[Lcom/google/appinventor/components/common/BestFitModel;

    move-result-object v0

    array-length v1, v0

    :goto_41
    if-ge v2, v1, :cond_51

    aget-object v3, v0, v2

    .line 22
    .local v3, "model":Lcom/google/appinventor/components/common/BestFitModel;
    sget-object v4, Lcom/google/appinventor/components/common/BestFitModel;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/BestFitModel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .end local v3    # "model":Lcom/google/appinventor/components/common/BestFitModel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 24
    :cond_51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/google/appinventor/components/common/BestFitModel;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/BestFitModel;
    .registers 2
    .param p0, "model"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/appinventor/components/common/BestFitModel;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/BestFitModel;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/BestFitModel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/google/appinventor/components/common/BestFitModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/BestFitModel;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/BestFitModel;
    .registers 1

    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/BestFitModel;->$VALUES:[Lcom/google/appinventor/components/common/BestFitModel;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/BestFitModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/BestFitModel;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/BestFitModel;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/common/BestFitModel;->value:Ljava/lang/String;

    return-object v0
.end method

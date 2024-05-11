.class public final enum Lcom/google/appinventor/components/common/LOBFValues;
.super Ljava/lang/Enum;
.source "LOBFValues.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/LOBFValues;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum AllValues:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum CorrCoef:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum ExponentialBase:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum ExponentialCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LinearCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LogarithmCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LogarithmConstant:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Predictions:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum QuadraticCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum RSquared:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Slope:Lcom/google/appinventor/components/common/LOBFValues;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum XIntercepts:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Yintercept:Lcom/google/appinventor/components/common/LOBFValues;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/LOBFValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lobfValues:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "CorrCoef"

    const/4 v2, 0x0

    const-string v3, "correlation coefficient"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->CorrCoef:Lcom/google/appinventor/components/common/LOBFValues;

    .line 17
    new-instance v1, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v3, "Slope"

    const/4 v4, 0x1

    const-string v5, "slope"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/LOBFValues;->Slope:Lcom/google/appinventor/components/common/LOBFValues;

    .line 19
    new-instance v3, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v6, "Yintercept"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v6}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/LOBFValues;->Yintercept:Lcom/google/appinventor/components/common/LOBFValues;

    .line 20
    new-instance v6, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v8, "Predictions"

    const/4 v9, 0x3

    const-string v10, "predictions"

    invoke-direct {v6, v8, v9, v10}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/common/LOBFValues;->Predictions:Lcom/google/appinventor/components/common/LOBFValues;

    .line 21
    new-instance v8, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v10, "AllValues"

    const/4 v11, 0x4

    const-string v12, "all values"

    invoke-direct {v8, v10, v11, v12}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/LOBFValues;->AllValues:Lcom/google/appinventor/components/common/LOBFValues;

    .line 22
    new-instance v10, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v12, "QuadraticCoefficient"

    const/4 v13, 0x5

    const-string v14, "Quadratic Coefficient"

    invoke-direct {v10, v12, v13, v14}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/common/LOBFValues;->QuadraticCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 23
    new-instance v12, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v14, "LinearCoefficient"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v5}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/common/LOBFValues;->LinearCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 24
    new-instance v5, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v14, "ExponentialCoefficient"

    const/4 v15, 0x7

    const-string v13, "a"

    invoke-direct {v5, v14, v15, v13}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 25
    new-instance v14, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v15, "ExponentialBase"

    const/16 v11, 0x8

    const-string v9, "b"

    invoke-direct {v14, v15, v11, v9}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialBase:Lcom/google/appinventor/components/common/LOBFValues;

    .line 26
    new-instance v15, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v11, "LogarithmCoefficient"

    const/16 v7, 0x9

    invoke-direct {v15, v11, v7, v9}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 27
    new-instance v9, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v11, "LogarithmConstant"

    const/16 v7, 0xa

    invoke-direct {v9, v11, v7, v13}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmConstant:Lcom/google/appinventor/components/common/LOBFValues;

    .line 28
    new-instance v11, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v13, "XIntercepts"

    const/16 v7, 0xb

    const-string v4, "Xintercepts"

    invoke-direct {v11, v13, v7, v4}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/LOBFValues;->XIntercepts:Lcom/google/appinventor/components/common/LOBFValues;

    .line 29
    new-instance v4, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v13, "RSquared"

    const/16 v7, 0xc

    const-string v2, "r^2"

    invoke-direct {v4, v13, v7, v2}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/LOBFValues;->RSquared:Lcom/google/appinventor/components/common/LOBFValues;

    .line 14
    const/16 v2, 0xd

    new-array v2, v2, [Lcom/google/appinventor/components/common/LOBFValues;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v5, v2, v0

    const/16 v0, 0x8

    aput-object v14, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v9, v2, v0

    const/16 v0, 0xb

    aput-object v11, v2, v0

    aput-object v4, v2, v7

    sput-object v2, Lcom/google/appinventor/components/common/LOBFValues;->$VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/appinventor/components/common/LOBFValues;->values()[Lcom/google/appinventor/components/common/LOBFValues;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d6
    if-ge v2, v1, :cond_e6

    aget-object v3, v0, v2

    .line 45
    .local v3, "value":Lcom/google/appinventor/components/common/LOBFValues;
    sget-object v4, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/LOBFValues;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v3    # "value":Lcom/google/appinventor/components/common/LOBFValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    .line 47
    :cond_e6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "lobfV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/common/LOBFValues;->lobfValues:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/LOBFValues;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LOBFValues;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/LOBFValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LOBFValues;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/LOBFValues;->$VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LOBFValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LOBFValues;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/common/LOBFValues;->lobfValues:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/google/appinventor/components/common/NxtMailbox;
.super Ljava/lang/Enum;
.source "NxtMailbox.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtMailbox;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box1:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box10:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box2:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box3:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box4:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box5:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box6:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box7:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box8:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box9:Lcom/google/appinventor/components/common/NxtMailbox;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtMailbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I

.field private value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Box1"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box1:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 20
    new-instance v2, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Box2"

    invoke-direct {v2, v6, v1, v5, v1}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v2, Lcom/google/appinventor/components/common/NxtMailbox;->Box2:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 21
    new-instance v5, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Box3"

    invoke-direct {v5, v8, v3, v7, v3}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v5, Lcom/google/appinventor/components/common/NxtMailbox;->Box3:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 22
    new-instance v7, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Box4"

    invoke-direct {v7, v10, v6, v9, v6}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v7, Lcom/google/appinventor/components/common/NxtMailbox;->Box4:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 23
    new-instance v9, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Box5"

    invoke-direct {v9, v12, v8, v11, v8}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v9, Lcom/google/appinventor/components/common/NxtMailbox;->Box5:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 24
    new-instance v11, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Box6"

    invoke-direct {v11, v14, v10, v13, v10}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v11, Lcom/google/appinventor/components/common/NxtMailbox;->Box6:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 25
    new-instance v13, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v10, "Box7"

    invoke-direct {v13, v10, v12, v15, v12}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v13, Lcom/google/appinventor/components/common/NxtMailbox;->Box7:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 26
    new-instance v10, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v8, "Box8"

    invoke-direct {v10, v8, v14, v12, v14}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v10, Lcom/google/appinventor/components/common/NxtMailbox;->Box8:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 27
    new-instance v8, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v6, "Box9"

    invoke-direct {v8, v6, v15, v14, v15}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v8, Lcom/google/appinventor/components/common/NxtMailbox;->Box9:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 28
    new-instance v6, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v3, "Box10"

    invoke-direct {v6, v3, v12, v15, v12}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v6, Lcom/google/appinventor/components/common/NxtMailbox;->Box10:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 14
    new-array v3, v14, [Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v10, v3, v0

    const/16 v0, 0x8

    aput-object v8, v3, v0

    aput-object v6, v3, v12

    sput-object v3, Lcom/google/appinventor/components/common/NxtMailbox;->$VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/google/appinventor/components/common/NxtMailbox;->values()[Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v0

    array-length v1, v0

    :goto_bc
    if-ge v4, v1, :cond_cc

    aget-object v2, v0, v4

    .line 50
    .local v2, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    sget-object v3, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/NxtMailbox;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v2    # "box":Lcom/google/appinventor/components/common/NxtMailbox;
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 52
    :cond_cc
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;I)V
    .registers 5
    .param p3, "box"    # Ljava/lang/Integer;
    .param p4, "intBox"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/common/NxtMailbox;->value:Ljava/lang/Integer;

    .line 35
    iput p4, p0, Lcom/google/appinventor/components/common/NxtMailbox;->intValue:I

    .line 36
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;
    .registers 2
    .param p0, "box"    # Ljava/lang/Integer;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMailbox;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/NxtMailbox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtMailbox;
    .registers 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->$VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtMailbox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .registers 2

    .line 43
    iget v0, p0, Lcom/google/appinventor/components/common/NxtMailbox;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/Integer;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/common/NxtMailbox;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtMailbox;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

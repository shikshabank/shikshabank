.class Lgnu/expr/ModuleInfo$ClassToInfoMap;
.super Lgnu/kawa/util/AbstractWeakHashTable;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassToInfoMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/AbstractWeakHashTable<",
        "Ljava/lang/Class;",
        "Lgnu/expr/ModuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 460
    invoke-direct {p0}, Lgnu/kawa/util/AbstractWeakHashTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;
    .registers 3
    .param p1, "minfo"    # Lgnu/expr/ModuleInfo;

    .line 464
    iget-object v0, p1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected bridge synthetic getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 460
    move-object v0, p1

    check-cast v0, Lgnu/expr/ModuleInfo;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->getKeyFromValue(Lgnu/expr/ModuleInfo;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected matches(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .param p1, "oldValue"    # Ljava/lang/Class;
    .param p2, "newValue"    # Ljava/lang/Class;

    .line 469
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

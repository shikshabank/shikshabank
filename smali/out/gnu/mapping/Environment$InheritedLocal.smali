.class Lgnu/mapping/Environment$InheritedLocal;
.super Ljava/lang/InheritableThreadLocal;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InheritedLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lgnu/mapping/Environment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;
    .registers 4
    .param p1, "parentValue"    # Lgnu/mapping/Environment;

    .line 489
    if-nez p1, :cond_6

    .line 490
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    .line 491
    :cond_6
    invoke-virtual {p1}, Lgnu/mapping/Environment;->cloneForThread()Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    .line 492
    .local v0, "env":Lgnu/mapping/SimpleEnvironment;
    iget v1, v0, Lgnu/mapping/SimpleEnvironment;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 493
    iget v1, v0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lgnu/mapping/SimpleEnvironment;->flags:I

    .line 494
    return-object v0
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 485
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Environment;

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment$InheritedLocal;->childValue(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

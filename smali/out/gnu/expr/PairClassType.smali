.class public Lgnu/expr/PairClassType;
.super Lgnu/bytecode/ClassType;
.source "PairClassType.java"


# instance fields
.field public instanceType:Lgnu/bytecode/ClassType;

.field staticLink:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .param p1, "reflectInterface"    # Ljava/lang/Class;
    .param p2, "reflectInstanceClass"    # Ljava/lang/Class;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/PairClassType;->setExisting(Z)V

    .line 39
    iput-object p1, p0, Lgnu/expr/PairClassType;->reflectClass:Ljava/lang/Class;

    .line 40
    invoke-static {p1, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 41
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 42
    return-void
.end method

.method public static extractStaticLink(Lgnu/bytecode/ClassType;)Ljava/lang/Object;
    .registers 2
    .param p0, "type"    # Lgnu/bytecode/ClassType;

    .line 68
    move-object v0, p0

    check-cast v0, Lgnu/expr/PairClassType;

    iget-object v0, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;)Lgnu/expr/PairClassType;
    .registers 3
    .param p0, "reflectInterface"    # Ljava/lang/Class;
    .param p1, "reflectInstanceClass"    # Ljava/lang/Class;

    .line 47
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static make(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lgnu/expr/PairClassType;
    .registers 4
    .param p0, "reflectInterface"    # Ljava/lang/Class;
    .param p1, "reflectInstanceClass"    # Ljava/lang/Class;
    .param p2, "staticLink"    # Ljava/lang/Object;

    .line 54
    new-instance v0, Lgnu/expr/PairClassType;

    invoke-direct {v0, p0, p1}, Lgnu/expr/PairClassType;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .local v0, "type":Lgnu/expr/PairClassType;
    iput-object p2, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    .line 57
    return-object v0
.end method


# virtual methods
.method public getStaticLink()Ljava/lang/Object;
    .registers 2

    .line 62
    iget-object v0, p0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    return-object v0
.end method

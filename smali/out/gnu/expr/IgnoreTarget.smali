.class public Lgnu/expr/IgnoreTarget;
.super Lgnu/expr/Target;
.source "IgnoreTarget.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .line 11
    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 12
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 13
    :cond_e
    return-void
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 7
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

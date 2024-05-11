.class public Lgnu/expr/StackTarget;
.super Lgnu/expr/Target;
.source "StackTarget.java"


# instance fields
.field type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .registers 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 11
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    iput-object p1, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method static compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .registers 7
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "stackType"    # Lgnu/bytecode/Type;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 29
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    .line 30
    return v0

    .line 31
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 32
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 34
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_22

    .line 37
    :cond_16
    instance-of v2, p1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_22

    instance-of v2, p2, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_22

    .line 39
    invoke-virtual {v1, p1, p2}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 40
    return v0

    .line 43
    :cond_22
    :goto_22
    instance-of v2, p1, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_37

    .line 45
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq p2, v2, :cond_36

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Cloneable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 47
    :cond_36
    return v0

    .line 51
    :cond_37
    invoke-virtual {p2, p1, v1}, Lgnu/bytecode/Type;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    .line 52
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 54
    :cond_3e
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public static convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .registers 4
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "stackType"    # Lgnu/bytecode/Type;
    .param p2, "targetType"    # Lgnu/bytecode/Type;

    .line 60
    invoke-static {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    invoke-static {p2, p0}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 62
    :cond_9
    return-void
.end method

.method protected static emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .registers 6
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 66
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 67
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    instance-of v1, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_21

    .line 70
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 71
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 72
    const-string v1, "gnu.bytecode.Type"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "coerceFromObject"

    invoke-virtual {v1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_27

    .line 77
    :cond_21
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 78
    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 80
    :goto_27
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .registers 2
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 17
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_15

    :cond_9
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_10

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_15

    :cond_10
    new-instance v0, Lgnu/expr/StackTarget;

    invoke-direct {v0, p0}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    :goto_15
    return-object v0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .line 84
    invoke-virtual {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 85
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {v0, p1}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 86
    :cond_b
    return-void
.end method

.method protected compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .line 24
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {p1, p2, v0}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 13
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

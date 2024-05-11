.class public Lgnu/expr/ConsumerTarget;
.super Lgnu/expr/Target;
.source "ConsumerTarget.java"


# instance fields
.field consumer:Lgnu/bytecode/Variable;

.field isContextTarget:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .registers 2
    .param p1, "consumer"    # Lgnu/bytecode/Variable;

    .line 18
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    .line 20
    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 47
    instance-of v0, p2, Lgnu/expr/ConsumerTarget;

    if-nez v0, :cond_1c

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 51
    :cond_9
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 52
    .local v0, "typeValues":Lgnu/bytecode/ClassType;
    const-string v1, "make"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    const-string v3, "canonicalize"

    invoke-virtual {v0, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-static {p0, p1, p2, v1, v2}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_1f

    .line 48
    .end local v0    # "typeValues":Lgnu/bytecode/ClassType;
    :cond_1c
    :goto_1c
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 56
    :goto_1f
    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V
    .registers 11
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "makeMethod"    # Lgnu/bytecode/Method;
    .param p4, "resultMethod"    # Lgnu/bytecode/Method;

    .line 63
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 64
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 66
    .local v1, "scope":Lgnu/bytecode/Scope;
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    if-ne v2, v3, :cond_1f

    .line 68
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 69
    .local v2, "cltype":Lgnu/bytecode/ClassType;
    move-object v3, v2

    .line 70
    .local v3, "ctype":Lgnu/bytecode/Type;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 71
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 72
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 73
    .end local v2    # "cltype":Lgnu/bytecode/ClassType;
    goto :goto_26

    .line 76
    .end local v3    # "ctype":Lgnu/bytecode/Type;
    :cond_1f
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 77
    .restart local v3    # "ctype":Lgnu/bytecode/Type;
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 79
    :goto_26
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 80
    .local v2, "consumer":Lgnu/bytecode/Variable;
    new-instance v4, Lgnu/expr/ConsumerTarget;

    invoke-direct {v4, v2}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 81
    .local v4, "ctarget":Lgnu/expr/ConsumerTarget;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 82
    invoke-virtual {p0, p1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 83
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 84
    if-eqz p4, :cond_3e

    .line 85
    invoke-virtual {v0, p4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 86
    :cond_3e
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 87
    if-nez p4, :cond_45

    move-object v5, v3

    goto :goto_49

    :cond_45
    invoke-virtual {p4}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    :goto_49
    invoke-virtual {p2, p1, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void
.end method

.method public static makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;
    .registers 6
    .param p0, "comp"    # Lgnu/expr/Compilation;

    .line 30
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 31
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 32
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v2, "consumer"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 34
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 35
    .local v1, "scope":Lgnu/bytecode/Scope;
    sget-object v2, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v3, "$result"

    invoke-virtual {v1, v0, v2, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 37
    .local v2, "result":Lgnu/bytecode/Variable;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 38
    new-instance v3, Lgnu/expr/ConsumerTarget;

    invoke-direct {v3, v2}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 39
    .local v3, "target":Lgnu/expr/ConsumerTarget;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    .line 40
    return-object v3
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    .line 95
    return-void
.end method

.method compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V
    .registers 14
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;
    .param p3, "consumerPushed"    # I

    .line 105
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 106
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    const/4 v1, 0x0

    .line 107
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "method":Lgnu/bytecode/Method;
    const/4 v3, 0x0

    .line 109
    .local v3, "methodArg":Lgnu/bytecode/Type;
    const/4 v4, 0x0

    .line 110
    .local v4, "islong":Z
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 112
    instance-of v5, p2, Lgnu/bytecode/PrimType;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_40

    .line 114
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 115
    .local v5, "sig":C
    sparse-switch v5, :sswitch_data_a4

    goto :goto_3f

    .line 145
    :sswitch_1e
    const-string v1, "writeBoolean"

    .line 146
    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .line 147
    goto :goto_3f

    .line 148
    :sswitch_23
    return-void

    .line 122
    :sswitch_24
    const-string v1, "writeLong"

    .line 123
    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .line 124
    const/4 v4, 0x1

    .line 125
    goto :goto_3f

    .line 127
    :sswitch_2a
    const-string v1, "writeFloat"

    .line 128
    sget-object v3, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    .line 129
    goto :goto_3f

    .line 131
    :sswitch_2f
    const-string v1, "writeDouble"

    .line 132
    sget-object v3, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 133
    const/4 v4, 0x1

    .line 134
    goto :goto_3f

    .line 137
    :sswitch_35
    const-string v1, "append"

    .line 138
    sget-object v3, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    .line 143
    goto :goto_3f

    .line 118
    :sswitch_3a
    const-string v1, "writeInt"

    .line 119
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 120
    nop

    .line 148
    :goto_3f
    goto :goto_65

    .line 153
    .end local v5    # "sig":C
    :cond_40
    const/4 v5, 0x0

    .line 154
    .restart local v5    # "sig":C
    if-eq p3, v7, :cond_61

    invoke-static {p2}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_4a

    goto :goto_61

    .line 161
    :cond_4a
    sget-object v6, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const/4 v7, 0x2

    const-string v8, "writeValues"

    invoke-virtual {v6, v8, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 163
    iget-object v6, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 164
    if-nez p3, :cond_5d

    .line 165
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 166
    :cond_5d
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 167
    return-void

    .line 156
    :cond_61
    :goto_61
    const-string v1, "writeObject"

    .line 157
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 170
    :goto_65
    if-ltz p3, :cond_68

    .line 171
    goto :goto_88

    .line 172
    :cond_68
    if-eqz v4, :cond_80

    .line 174
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 175
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 176
    .local v8, "temp":Lgnu/bytecode/Variable;
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 177
    iget-object v9, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 179
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 180
    .end local v8    # "temp":Lgnu/bytecode/Variable;
    goto :goto_88

    .line 183
    :cond_80
    iget-object v8, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 184
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 186
    :goto_88
    if-nez v2, :cond_97

    if-eqz v1, :cond_97

    .line 188
    new-array v8, v7, [Lgnu/bytecode/Type;

    aput-object v3, v8, v6

    move-object v6, v8

    .line 189
    .local v6, "methodArgs":[Lgnu/bytecode/Type;
    sget-object v8, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v1, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 192
    .end local v6    # "methodArgs":[Lgnu/bytecode/Type;
    :cond_97
    if-eqz v2, :cond_9c

    .line 193
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 194
    :cond_9c
    const/16 v6, 0x43

    if-ne v5, v6, :cond_a3

    .line 195
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 196
    :cond_a3
    return-void

    :sswitch_data_a4
    .sparse-switch
        0x42 -> :sswitch_3a
        0x43 -> :sswitch_35
        0x44 -> :sswitch_2f
        0x46 -> :sswitch_2a
        0x49 -> :sswitch_3a
        0x4a -> :sswitch_24
        0x53 -> :sswitch_3a
        0x56 -> :sswitch_23
        0x5a -> :sswitch_1e
    .end sparse-switch
.end method

.method public compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z
    .registers 7
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 200
    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 201
    .local v0, "stackType":Lgnu/bytecode/Type;
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 202
    .local v1, "implType":Lgnu/bytecode/Type;
    instance-of v2, v1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_12
    invoke-static {v1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 206
    :cond_18
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 207
    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    .line 208
    .local v2, "starget":Lgnu/expr/Target;
    invoke-virtual {p1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 209
    const/4 v3, 0x1

    invoke-virtual {p0, p2, v1, v3}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    .line 210
    return v3

    .line 212
    .end local v2    # "starget":Lgnu/expr/Target;
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method public getConsumerVariable()Lgnu/bytecode/Variable;
    .registers 2

    .line 22
    iget-object v0, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 215
    sget-object v0, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isContextTarget()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    return v0
.end method

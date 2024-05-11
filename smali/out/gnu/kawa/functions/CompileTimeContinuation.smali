.class Lgnu/kawa/functions/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 12
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 102
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 103
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 104
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    .line 105
    .local v2, "nargs":I
    iget-object v3, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v4, v3, Lgnu/expr/IgnoreTarget;

    const/4 v5, 0x1

    if-nez v4, :cond_17

    instance-of v3, v3, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v3, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v3, 0x1

    .line 107
    .local v3, "noStack":Z
    :goto_18
    if-eqz v3, :cond_1c

    const/4 v4, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 108
    .local v4, "typeNeeded":Lgnu/bytecode/Type;
    :goto_20
    if-nez v3, :cond_32

    if-ne v2, v5, :cond_25

    goto :goto_32

    .line 115
    :cond_25
    sget-object v5, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    .line 116
    .local v5, "app":Lgnu/kawa/functions/AppendValues;
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v5, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v5, v6, p2, v7}, Lgnu/kawa/functions/AppendValues;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_3f

    .line 110
    .end local v5    # "app":Lgnu/kawa/functions/AppendValues;
    :cond_32
    :goto_32
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    if-ge v5, v2, :cond_3f

    .line 111
    aget-object v6, v1, v5

    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 118
    .end local v5    # "i":I
    :cond_3f
    :goto_3f
    iget-object v5, p0, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v5}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 119
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 123
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

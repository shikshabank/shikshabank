.class public Lgnu/expr/ThisExp;
.super Lgnu/expr/ReferenceExp;
.source "ThisExp.java"


# static fields
.field static EVAL_TO_CONTEXT:I

.field public static final THIS_NAME:Ljava/lang/String;


# instance fields
.field context:Lgnu/expr/ScopeExp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/lang/String;

    const-string v1, "$this$"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    sput v0, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .line 57
    new-instance v0, Lgnu/expr/Declaration;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-direct {p0, v0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;)V
    .registers 3
    .param p1, "binding"    # Lgnu/expr/Declaration;

    .line 52
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .registers 3
    .param p1, "context"    # Lgnu/expr/ScopeExp;

    .line 46
    sget-object v0, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    .line 48
    return-void
.end method

.method public static makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;
    .registers 4
    .param p0, "context"    # Lgnu/expr/ScopeExp;

    .line 62
    new-instance v0, Lgnu/expr/ThisExp;

    invoke-direct {v0, p0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/ScopeExp;)V

    .line 63
    .local v0, "exp":Lgnu/expr/ThisExp;
    iget v1, v0, Lgnu/expr/ThisExp;->flags:I

    sget v2, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    or-int/2addr v1, v2

    iput v1, v0, Lgnu/expr/ThisExp;->flags:I

    .line 64
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_f

    .line 34
    :cond_c
    invoke-super {p0, p1}, Lgnu/expr/ReferenceExp;->apply(Lgnu/mapping/CallContext;)V

    .line 35
    :goto_f
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 69
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_5

    .line 70
    return-void

    .line 71
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 74
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 75
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 76
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_20

    .line 78
    :cond_1d
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 79
    :goto_20
    invoke-virtual {p0}, Lgnu/expr/ThisExp;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 80
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    goto :goto_2b

    .line 83
    :cond_28
    invoke-super {p0, p1, p2}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 85
    :goto_2b
    return-void
.end method

.method public getContextScope()Lgnu/expr/ScopeExp;
    .registers 2

    .line 37
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .registers 3

    .line 94
    iget-object v0, p0, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, p0, Lgnu/expr/ThisExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 96
    :cond_b
    iget-object v0, p0, Lgnu/expr/ThisExp;->context:Lgnu/expr/ScopeExp;

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_19

    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_16

    goto :goto_19

    .line 98
    :cond_16
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 97
    :cond_19
    :goto_19
    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isForContext()Z
    .registers 3

    .line 25
    iget v0, p0, Lgnu/expr/ThisExp;->flags:I

    sget v1, Lgnu/expr/ThisExp;->EVAL_TO_CONTEXT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 89
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

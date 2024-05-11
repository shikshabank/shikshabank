.class public Lkawa/standard/prim_throw;
.super Lgnu/mapping/Procedure1;
.source "prim_throw.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static javaThrowableType:Lgnu/bytecode/ClassType;

.field public static final primitiveThrow:Lkawa/standard/prim_throw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lkawa/standard/prim_throw;

    invoke-direct {v0}, Lkawa/standard/prim_throw;-><init>()V

    sput-object v0, Lkawa/standard/prim_throw;->primitiveThrow:Lkawa/standard/prim_throw;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static throw_it(Ljava/lang/Object;)V
    .registers 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    .line 20
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 28
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 29
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 30
    sget-object v1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_1d

    .line 31
    new-instance v1, Lgnu/bytecode/ClassType;

    const-string v2, "java.lang.Throwable"

    invoke-direct {v1, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    .line 32
    :cond_1d
    sget-object v1, Lkawa/standard/prim_throw;->javaThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 33
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 34
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 38
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

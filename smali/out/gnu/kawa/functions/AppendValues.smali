.class public Lgnu/kawa/functions/AppendValues;
.super Lgnu/mapping/MethodProc;
.source "AppendValues.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final appendValues:Lgnu/kawa/functions/AppendValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0}, Lgnu/kawa/functions/AppendValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyAppendValues"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/AppendValues;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 23
    sget-object v0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 26
    .local v0, "endMarker":Ljava/lang/Object;
    :goto_2
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "arg":Ljava/lang/Object;
    if-ne v1, v0, :cond_a

    .line 28
    nop

    .line 34
    .end local v1    # "arg":Ljava/lang/Object;
    return-void

    .line 29
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_a
    instance-of v2, v1, Lgnu/lists/Consumable;

    if-eqz v2, :cond_17

    .line 30
    move-object v2, v1

    check-cast v2, Lgnu/lists/Consumable;

    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v2, v3}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1a

    .line 32
    :cond_17
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 33
    .end local v1    # "arg":Ljava/lang/Object;
    :goto_1a
    goto :goto_2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 8
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 38
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 39
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    .line 40
    .local v1, "nargs":I
    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_12

    instance-of v2, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v2, :cond_e

    goto :goto_12

    .line 47
    :cond_e
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1d

    .line 42
    :cond_12
    :goto_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_1d

    .line 43
    aget-object v3, v0, v2

    invoke-virtual {v3, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 62
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 66
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

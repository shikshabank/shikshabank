.class public abstract Lgnu/expr/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final Ignore:Lgnu/expr/Target;

.field public static final pushObject:Lgnu/expr/Target;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lgnu/expr/IgnoreTarget;

    invoke-direct {v0}, Lgnu/expr/IgnoreTarget;-><init>()V

    sput-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 20
    new-instance v0, Lgnu/expr/StackTarget;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-direct {v0, v1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .registers 2
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 25
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_d

    :cond_9
    invoke-static {p0}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public abstract compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
.end method

.method public abstract getType()Lgnu/bytecode/Type;
.end method

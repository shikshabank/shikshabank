.class public final Lgnu/kawa/xml/Focus;
.super Lgnu/lists/TreePosition;
.source "Focus.java"


# static fields
.field public static final TYPE:Lgnu/bytecode/ClassType;

.field static current:Ljava/lang/ThreadLocal;

.field static final getCurrentFocusMethod:Lgnu/bytecode/Method;


# instance fields
.field contextPosition:Lgnu/math/IntNum;

.field public position:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    .line 47
    const-string v0, "gnu.kawa.xml.Focus"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->TYPE:Lgnu/bytecode/ClassType;

    .line 48
    const-string v1, "getCurrent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lgnu/lists/TreePosition;-><init>()V

    return-void
.end method

.method public static compileGetCurrent(Lgnu/expr/Compilation;)V
    .registers 3
    .param p0, "comp"    # Lgnu/expr/Compilation;

    .line 43
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 44
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    sget-object v1, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 45
    return-void
.end method

.method public static getCurrent()Lgnu/kawa/xml/Focus;
    .registers 2

    .line 24
    sget-object v0, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 27
    new-instance v1, Lgnu/kawa/xml/Focus;

    invoke-direct {v1}, Lgnu/kawa/xml/Focus;-><init>()V

    move-object v0, v1

    .line 28
    sget-object v1, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    :cond_13
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/Focus;

    return-object v1
.end method

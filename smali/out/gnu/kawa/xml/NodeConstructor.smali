.class public abstract Lgnu/kawa/xml/NodeConstructor;
.super Lgnu/mapping/MethodProc;
.source "NodeConstructor.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final popNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final popNodeContextMethod:Lgnu/bytecode/Method;

.field static final pushNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final pushNodeContextMethod:Lgnu/bytecode/Method;

.field static final typeKNode:Lgnu/bytecode/ClassType;

.field static final typeNodeConstructor:Lgnu/bytecode/ClassType;

.field static final typeXMLFilter:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 164
    const-string v0, "gnu.xml.XMLFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    .line 166
    const-string v0, "gnu.kawa.xml.KNode"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeKNode:Lgnu/bytecode/ClassType;

    .line 168
    const-string v0, "gnu.kawa.xml.NodeConstructor"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    .line 170
    const-string v1, "pushNodeContext"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    .line 172
    const-string v1, "popNodeContext"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    .line 174
    const-string v1, "pushNodeConsumer"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    .line 176
    const-string v1, "popNodeConsumer"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .registers 7
    .param p0, "arg"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/ConsumerTarget;

    .line 65
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_21

    .line 67
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    .line 68
    .local v0, "app":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 69
    .local v1, "func":Lgnu/expr/Expression;
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_21

    .line 71
    move-object v2, v1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 72
    .local v2, "proc":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/kawa/xml/NodeConstructor;

    if-eqz v3, :cond_21

    .line 74
    move-object v3, v2

    check-cast v3, Lgnu/kawa/xml/NodeConstructor;

    invoke-virtual {v3, v0, p1, p2}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 75
    return-void

    .line 79
    .end local v0    # "app":Lgnu/expr/ApplyExp;
    .end local v1    # "func":Lgnu/expr/Expression;
    .end local v2    # "proc":Ljava/lang/Object;
    :cond_21
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    return-void
.end method

.method public static compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 88
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "makeNode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 89
    .local v1, "makeMethod":Lgnu/bytecode/Method;
    const-string v2, "finishNode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 90
    .local v0, "makeKNodeMethod":Lgnu/bytecode/Method;
    invoke-static {p0, p1, p2, v1, v0}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    .line 92
    return-void
.end method

.method public static finishNode(Lgnu/xml/XMLFilter;)Lgnu/kawa/xml/KNode;
    .registers 2
    .param p0, "filter"    # Lgnu/xml/XMLFilter;

    .line 101
    iget-object v0, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-static {v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public static makeNode()Lgnu/xml/XMLFilter;
    .registers 2

    .line 96
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public static popNodeConsumer(Lgnu/lists/Consumer;Lgnu/lists/Consumer;)V
    .registers 3
    .param p0, "saved"    # Lgnu/lists/Consumer;
    .param p1, "current"    # Lgnu/lists/Consumer;

    .line 27
    if-eq p0, p1, :cond_16

    .line 28
    instance-of v0, p1, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lgnu/xml/XMLFilter;

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-static {v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, p1

    :goto_13
    invoke-interface {p0, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 31
    :cond_16
    return-void
.end method

.method public static popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V
    .registers 4
    .param p0, "saved"    # Lgnu/lists/Consumer;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 52
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 53
    .local v0, "current":Ljava/lang/Object;
    if-eq p0, v0, :cond_18

    .line 55
    instance-of v1, v0, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_13

    .line 56
    move-object v1, v0

    check-cast v1, Lgnu/xml/XMLFilter;

    iget-object v1, v1, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 57
    :cond_13
    invoke-interface {p0, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 58
    iput-object p0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    :cond_18
    return-void
.end method

.method public static pushNodeConsumer(Lgnu/lists/Consumer;)Lgnu/xml/XMLFilter;
    .registers 3
    .param p0, "out"    # Lgnu/lists/Consumer;

    .line 19
    instance-of v0, p0, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_8

    .line 20
    move-object v0, p0

    check-cast v0, Lgnu/xml/XMLFilter;

    return-object v0

    .line 22
    :cond_8
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public static pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;
    .registers 4
    .param p0, "ctx"    # Lgnu/mapping/CallContext;

    .line 35
    iget-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 36
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, v0, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_a

    .line 37
    move-object v1, v0

    check-cast v1, Lgnu/xml/XMLFilter;

    return-object v1

    .line 44
    :cond_a
    new-instance v1, Lgnu/xml/XMLFilter;

    new-instance v2, Lgnu/xml/NodeTree;

    invoke-direct {v2}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v1, v2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 45
    .local v1, "filter":Lgnu/xml/XMLFilter;
    iput-object v1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 46
    return-object v1
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 14
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 106
    instance-of v0, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_9

    .line 107
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_8c

    .line 108
    :cond_9
    instance-of v0, p3, Lgnu/expr/ConsumerTarget;

    if-nez v0, :cond_12

    .line 109
    invoke-static {p1, p2, p3}, Lgnu/kawa/xml/NodeConstructor;->compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_8c

    .line 112
    :cond_12
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConsumerTarget;

    .line 113
    .local v0, "ctarget":Lgnu/expr/ConsumerTarget;
    invoke-virtual {v0}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    .line 114
    .local v1, "cvar":Lgnu/bytecode/Variable;
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 115
    .local v2, "ctype":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    goto :goto_8c

    .line 119
    :cond_29
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 120
    .local v4, "args":[Lgnu/expr/Expression;
    array-length v5, v4

    .line 121
    .local v5, "nargs":I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 122
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v7

    .line 123
    .local v7, "scope":Lgnu/bytecode/Scope;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v3, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 125
    .local v3, "xvar":Lgnu/bytecode/Variable;
    invoke-virtual {v0}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 127
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 128
    sget-object v8, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_52

    .line 132
    :cond_4a
    invoke-virtual {v6, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 133
    sget-object v8, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 135
    :goto_52
    invoke-virtual {v6, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 136
    const/4 v8, 0x1

    sget-object v9, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v8, v9}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 137
    new-instance v8, Lgnu/expr/ConsumerTarget;

    invoke-direct {v8, v3}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 138
    .local v8, "xtarget":Lgnu/expr/ConsumerTarget;
    invoke-virtual {p0, p1, p2, v8}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 139
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 140
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 141
    invoke-virtual {v6, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 142
    invoke-virtual {v0}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 144
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 145
    sget-object v9, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_83

    .line 149
    :cond_7b
    invoke-virtual {v6, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    sget-object v9, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 152
    :goto_83
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 153
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 154
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 157
    .end local v0    # "ctarget":Lgnu/expr/ConsumerTarget;
    .end local v1    # "cvar":Lgnu/bytecode/Variable;
    .end local v2    # "ctype":Lgnu/bytecode/Type;
    .end local v3    # "xvar":Lgnu/bytecode/Variable;
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v5    # "nargs":I
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .end local v7    # "scope":Lgnu/bytecode/Scope;
    .end local v8    # "xtarget":Lgnu/expr/ConsumerTarget;
    :goto_8c
    return-void
.end method

.method public abstract compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 161
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

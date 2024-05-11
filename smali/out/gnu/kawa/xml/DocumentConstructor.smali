.class public Lgnu/kawa/xml/DocumentConstructor;
.super Lgnu/kawa/xml/NodeConstructor;
.source "DocumentConstructor.java"


# static fields
.field public static final documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

.field static final endDocumentMethod:Lgnu/bytecode/Method;

.field static final startDocumentMethod:Lgnu/bytecode/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 13
    new-instance v0, Lgnu/kawa/xml/DocumentConstructor;

    invoke-direct {v0}, Lgnu/kawa/xml/DocumentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->documentConstructor:Lgnu/kawa/xml/DocumentConstructor;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "startDocument"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    .line 59
    sget-object v0, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v1, "endDocument"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 18
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 19
    .local v0, "saved":Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/DocumentConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 22
    .local v1, "out":Lgnu/lists/Consumer;
    :try_start_6
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 23
    .local v2, "endMarker":Ljava/lang/Object;
    invoke-interface {v1}, Lgnu/lists/Consumer;->startDocument()V

    .line 26
    :goto_b
    invoke-virtual {p1, v2}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 27
    .local v3, "arg":Ljava/lang/Object;
    if-ne v3, v2, :cond_1a

    .line 28
    nop

    .line 34
    .end local v3    # "arg":Ljava/lang/Object;
    invoke-interface {v1}, Lgnu/lists/Consumer;->endDocument()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_29

    .line 38
    .end local v2    # "endMarker":Ljava/lang/Object;
    invoke-static {v0, p1}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 39
    nop

    .line 40
    return-void

    .line 29
    .restart local v2    # "endMarker":Ljava/lang/Object;
    .restart local v3    # "arg":Ljava/lang/Object;
    :cond_1a
    :try_start_1a
    instance-of v4, v3, Lgnu/lists/Consumable;

    if-eqz v4, :cond_25

    .line 30
    move-object v4, v3

    check-cast v4, Lgnu/lists/Consumable;

    invoke-interface {v4, v1}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_28

    .line 32
    :cond_25
    invoke-interface {v1, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    .line 33
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_28
    goto :goto_b

    .line 38
    .end local v2    # "endMarker":Ljava/lang/Object;
    :catchall_29
    move-exception v2

    invoke-static {v0, p1}, Lgnu/kawa/xml/DocumentConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .registers 10
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/ConsumerTarget;

    .line 45
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 46
    .local v0, "consumer":Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 47
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    .line 48
    .local v2, "nargs":I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 49
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 50
    sget-object v4, Lgnu/kawa/xml/DocumentConstructor;->startDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 51
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_20

    .line 52
    aget-object v5, v1, v4

    invoke-static {v5, p2, p3}, Lgnu/kawa/xml/DocumentConstructor;->compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 53
    .end local v4    # "i":I
    :cond_20
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 54
    sget-object v4, Lgnu/kawa/xml/DocumentConstructor;->endDocumentMethod:Lgnu/bytecode/Method;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 55
    return-void
.end method

.class public Lgnu/kawa/xml/ProcessingInstructionType;
.super Lgnu/kawa/xml/NodeType;
.source "ProcessingInstructionType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

.field public static final typeProcessingInstructionType:Lgnu/bytecode/ClassType;


# instance fields
.field target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lgnu/kawa/xml/ProcessingInstructionType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    .line 89
    const-string v0, "gnu.kawa.xml.ProcessingInstructionType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->typeProcessingInstructionType:Lgnu/bytecode/ClassType;

    .line 91
    const-string v1, "coerce"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    .line 93
    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 22
    if-nez p1, :cond_5

    const-string v0, "processing-instruction()"

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing-instruction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-direct {p0, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    .line 75
    .local v0, "pos":Lgnu/kawa/xml/KProcessingInstruction;
    if-eqz v0, :cond_7

    .line 77
    return-object v0

    .line 76
    :cond_7
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/lang/String;

    .line 66
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/KProcessingInstruction;

    .line 68
    .local v0, "pos":Lgnu/kawa/xml/KProcessingInstruction;
    if-eqz v0, :cond_18

    if-eqz p1, :cond_16

    invoke-virtual {v0}, Lgnu/kawa/xml/KProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    move-object v1, v0

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;
    .registers 2
    .param p0, "target"    # Ljava/lang/String;

    .line 29
    if-nez p0, :cond_5

    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->piNodeTest:Lgnu/kawa/xml/ProcessingInstructionType;

    goto :goto_a

    :cond_5
    new-instance v0, Lgnu/kawa/xml/ProcessingInstructionType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/ProcessingInstructionType;-><init>(Ljava/lang/String;)V

    :goto_a
    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {p1, v0}, Lgnu/kawa/xml/ProcessingInstructionType;->coerce(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 40
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lgnu/kawa/xml/ProcessingInstructionType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 42
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 82
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 83
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_9

    .line 84
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 85
    :cond_9
    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 87
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .registers 2

    .line 34
    const-string v0, "gnu.kawa.xml.KProcessingInstruction"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-static {p1, v0}, Lgnu/kawa/xml/ProcessingInstructionType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;)Lgnu/kawa/xml/KProcessingInstruction;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .registers 7
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 51
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 52
    .local v0, "kind":I
    const/4 v1, 0x0

    const/16 v2, 0x25

    if-ne v0, v2, :cond_19

    .line 53
    iget-object v2, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1

    .line 54
    :cond_19
    const/16 v2, 0x20

    if-ne v0, v2, :cond_26

    .line 55
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/ProcessingInstructionType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 56
    :cond_26
    return v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingInstructionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v1, "*"

    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lgnu/kawa/xml/ProcessingInstructionType;->target:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

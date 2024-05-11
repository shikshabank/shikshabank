.class public Lgnu/kawa/reflect/CompileArrays;
.super Ljava/lang/Object;
.source "CompileArrays.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field public code:C

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;C)V
    .registers 3
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "code"    # C

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    .line 15
    iput-char p2, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    .line 16
    return-void
.end method

.method public static compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 8
    .param p0, "proc"    # Lgnu/kawa/reflect/ArrayGet;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 60
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 61
    .local v0, "element_type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 62
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 63
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sget-object v3, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 65
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 66
    invoke-virtual {p3, p2, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 67
    return-void
.end method

.method public static compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p0, "proc"    # Lgnu/kawa/reflect/ArrayLength;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 94
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    .line 95
    .local v0, "element_type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 96
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 97
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 98
    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 99
    return-void
.end method

.method public static compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p0, "proc"    # Lgnu/kawa/reflect/ArrayNew;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 84
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    .line 85
    .local v0, "element_type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 86
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 87
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 88
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void
.end method

.method public static compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 8
    .param p0, "proc"    # Lgnu/kawa/reflect/ArraySet;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 72
    iget-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 73
    .local v0, "element_type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 74
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 75
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sget-object v3, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 76
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v2, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 77
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 78
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v2, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 79
    return-void
.end method

.method public static getForArrayGet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 20
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayLength(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/16 v2, 0x4c

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArrayNew(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 35
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static getForArraySet(Ljava/lang/Object;)Lgnu/kawa/reflect/CompileArrays;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 25
    new-instance v0, Lgnu/kawa/reflect/CompileArrays;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/CompileArrays;-><init>(Lgnu/mapping/Procedure;C)V

    return-object v0
.end method

.method public static validateArrayGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 120
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 121
    move-object v0, p3

    check-cast v0, Lgnu/kawa/reflect/ArrayGet;

    iget-object v0, v0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 122
    return-object p0
.end method

.method public static validateArrayLength(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 112
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 113
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 114
    return-object p0
.end method

.method public static validateArrayNew(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 104
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 105
    move-object v0, p3

    check-cast v0, Lgnu/kawa/reflect/ArrayNew;

    iget-object v0, v0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 106
    return-object p0
.end method

.method public static validateArraySet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 128
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 129
    sget-object v0, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 130
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 40
    iget-char v0, p0, Lgnu/kawa/reflect/CompileArrays;->code:C

    sparse-switch v0, :sswitch_data_26

    .line 52
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayLength;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayLength(Lgnu/kawa/reflect/ArrayLength;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 53
    return-void

    .line 49
    :sswitch_d
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArraySet;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArraySet(Lgnu/kawa/reflect/ArraySet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 50
    return-void

    .line 43
    :sswitch_15
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayNew;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayNew(Lgnu/kawa/reflect/ArrayNew;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    return-void

    .line 46
    :sswitch_1d
    iget-object v0, p0, Lgnu/kawa/reflect/CompileArrays;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/reflect/ArrayGet;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/CompileArrays;->compileArrayGet(Lgnu/kawa/reflect/ArrayGet;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 47
    return-void

    nop

    :sswitch_data_26
    .sparse-switch
        0x47 -> :sswitch_1d
        0x4e -> :sswitch_15
        0x53 -> :sswitch_d
    .end sparse-switch
.end method

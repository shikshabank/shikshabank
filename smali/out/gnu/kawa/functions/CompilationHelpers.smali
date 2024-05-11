.class public Lgnu/kawa/functions/CompilationHelpers;
.super Ljava/lang/Object;
.source "CompilationHelpers.java"


# static fields
.field public static final setterDecl:Lgnu/expr/Declaration;

.field static final setterField:Lgnu/bytecode/Field;

.field static final setterType:Lgnu/bytecode/ClassType;

.field static final typeList:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    const-string v0, "java.util.List"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    .line 103
    const-string v0, "gnu.kawa.functions.Setter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterType:Lgnu/bytecode/ClassType;

    .line 104
    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompilationHelpers;->setterField:Lgnu/bytecode/Field;

    .line 105
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    sput-object v2, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 106
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static nonNumeric(Lgnu/expr/Expression;)Z
    .registers 4
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 21
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 23
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "value":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/math/Numeric;

    if-nez v2, :cond_19

    instance-of v2, v0, Lgnu/text/Char;

    if-nez v2, :cond_19

    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-nez v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 27
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1a
    return v1
.end method

.method public static validateApplyToArgs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "applyToArgs"    # Lgnu/mapping/Procedure;

    .line 41
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 42
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 43
    .local v1, "nargs":I
    if-ltz v1, :cond_bf

    .line 45
    const/4 v3, 0x0

    aget-object v4, v0, v3

    .line 46
    .local v4, "proc":Lgnu/expr/Expression;
    invoke-virtual {v4, v2}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_30

    .line 48
    instance-of v5, v4, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_2a

    .line 50
    new-array v5, v1, [Lgnu/expr/Expression;

    .line 51
    .local v5, "rargs":[Lgnu/expr/Expression;
    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v2, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 54
    .end local v5    # "rargs":[Lgnu/expr/Expression;
    :cond_2a
    invoke-virtual {p1, v4, v6}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 55
    aput-object v4, v0, v3

    .line 57
    :cond_30
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getRealType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 58
    .local v5, "ptype":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    .line 59
    .local v7, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    .line 60
    .local v8, "language":Lgnu/expr/Language;
    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v9}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 62
    new-array v9, v1, [Lgnu/expr/Expression;

    .line 63
    .local v9, "rargs":[Lgnu/expr/Expression;
    invoke-static {v0, v2, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v4, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 65
    .local v2, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v2, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 66
    invoke-virtual {v4, v2, p1, p2, v6}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 70
    .end local v2    # "nexp":Lgnu/expr/ApplyExp;
    .end local v9    # "rargs":[Lgnu/expr/Expression;
    :cond_5a
    const/4 v6, 0x0

    .line 71
    .local v6, "result":Lgnu/expr/ApplyExp;
    invoke-static {v5, v7}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v9

    if-gez v9, :cond_62

    .line 72
    goto :goto_b5

    .line 73
    :cond_62
    sget-object v9, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v9}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v9

    if-nez v9, :cond_ad

    invoke-virtual {v8, v4, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v9

    if-eqz v9, :cond_71

    goto :goto_ad

    .line 78
    :cond_71
    instance-of v9, v5, Lgnu/bytecode/ArrayType;

    if-eqz v9, :cond_88

    .line 80
    move-object v2, v5

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 81
    .local v2, "elementType":Lgnu/bytecode/Type;
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v9, Lgnu/kawa/reflect/ArrayGet;

    invoke-direct {v9, v2}, Lgnu/kawa/reflect/ArrayGet;-><init>(Lgnu/bytecode/Type;)V

    invoke-direct {v3, v9, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v6, v3

    .line 82
    .end local v2    # "elementType":Lgnu/bytecode/Type;
    goto :goto_b5

    .line 83
    :cond_88
    instance-of v9, v5, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_b5

    move-object v9, v5

    check-cast v9, Lgnu/bytecode/ClassType;

    move-object v10, v9

    .local v10, "ctype":Lgnu/bytecode/ClassType;
    sget-object v11, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v11}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v9

    if-eqz v9, :cond_b5

    if-ne v1, v2, :cond_b5

    .line 90
    new-array v2, v2, [Lgnu/bytecode/Type;

    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v9, v2, v3

    const-string v3, "get"

    invoke-virtual {v10, v3, v2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 91
    .local v2, "get":Lgnu/bytecode/Method;
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v6, v3

    goto :goto_b5

    .line 76
    .end local v2    # "get":Lgnu/bytecode/Method;
    .end local v10    # "ctype":Lgnu/bytecode/ClassType;
    :cond_ad
    :goto_ad
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v6, v2

    .line 93
    :cond_b5
    :goto_b5
    if-eqz v6, :cond_bf

    .line 95
    invoke-virtual {v6, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 96
    invoke-virtual {p1, v6, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 99
    .end local v4    # "proc":Lgnu/expr/Expression;
    .end local v5    # "ptype":Lgnu/bytecode/Type;
    .end local v6    # "result":Lgnu/expr/ApplyExp;
    .end local v7    # "comp":Lgnu/expr/Compilation;
    .end local v8    # "language":Lgnu/expr/Language;
    :cond_bf
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 100
    return-object p0
.end method

.method public static validateIsEqv(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 160
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 161
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 162
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/CompilationHelpers;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1b

    .line 164
    :cond_1a
    return-object p0

    .line 163
    :cond_1b
    :goto_1b
    new-instance v1, Lgnu/expr/ApplyExp;

    move-object v2, p3

    check-cast v2, Lgnu/kawa/functions/IsEqv;

    iget-object v2, v2, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static validateSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 11
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 111
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 113
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_82

    .line 115
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 116
    .local v1, "arg":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 118
    .local v2, "argType":Lgnu/bytecode/Type;
    instance-of v3, v2, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_1f

    .line 120
    new-instance v3, Lgnu/kawa/functions/SetArrayExp;

    move-object v4, v2

    check-cast v4, Lgnu/bytecode/ArrayType;

    invoke-direct {v3, v1, v4}, Lgnu/kawa/functions/SetArrayExp;-><init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V

    return-object v3

    .line 122
    :cond_1f
    instance-of v3, v2, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_3e

    move-object v3, v2

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v4, v3

    .local v4, "ctype":Lgnu/bytecode/ClassType;
    sget-object v5, Lgnu/kawa/functions/CompilationHelpers;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v5}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 125
    instance-of v3, p0, Lgnu/kawa/functions/SetListExp;

    if-eqz v3, :cond_34

    .line 126
    return-object p0

    .line 128
    :cond_34
    new-instance v3, Lgnu/kawa/functions/SetListExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lgnu/kawa/functions/SetListExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v3

    .line 130
    .end local v4    # "ctype":Lgnu/bytecode/ClassType;
    :cond_3e
    instance-of v3, v1, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_4f

    .line 132
    move-object v3, v1

    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    .line 133
    .local v3, "decl":Lgnu/expr/Declaration;
    if-eqz v3, :cond_4f

    .line 134
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 136
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :cond_4f
    instance-of v3, v1, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_82

    .line 138
    move-object v3, v1

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_82

    .line 141
    move-object v4, v3

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-virtual {v4}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v4

    .line 142
    .local v4, "setter":Ljava/lang/Object;
    instance-of v5, v4, Lgnu/mapping/Procedure;

    if-eqz v5, :cond_82

    .line 144
    instance-of v5, v4, Ljava/io/Externalizable;

    if-eqz v5, :cond_73

    .line 145
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v5

    .line 146
    :cond_73
    move-object v5, v4

    check-cast v5, Lgnu/mapping/Procedure;

    invoke-static {v5}, Lgnu/expr/Declaration;->getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 148
    .local v5, "decl":Lgnu/expr/Declaration;
    if-eqz v5, :cond_82

    .line 149
    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    return-object v6

    .line 154
    .end local v1    # "arg":Lgnu/expr/Expression;
    .end local v2    # "argType":Lgnu/bytecode/Type;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "setter":Ljava/lang/Object;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_82
    return-object p0
.end method

.class public Lgnu/expr/QuoteExp;
.super Lgnu/expr/Expression;
.source "QuoteExp.java"


# static fields
.field public static final EXPLICITLY_TYPED:I = 0x2

.field public static final SHARED_CONSTANT:I = 0x4

.field public static abstractExp:Lgnu/expr/QuoteExp;

.field public static final classObjectExp:Lgnu/expr/QuoteExp;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static nullExp:Lgnu/expr/QuoteExp;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static undefined_exp:Lgnu/expr/QuoteExp;

.field public static voidExp:Lgnu/expr/QuoteExp;


# instance fields
.field protected type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    .line 55
    sget-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    .line 59
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 60
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 102
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/expr/QuoteExp;->setType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "position"    # Lgnu/text/SourceLocator;

    .line 69
    if-nez p0, :cond_5

    .line 70
    sget-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 71
    :cond_5
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_c

    .line 72
    sget-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 73
    :cond_c
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne p0, v0, :cond_13

    .line 74
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 75
    :cond_13
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1a

    .line 76
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 78
    :cond_1a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    .line 79
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_2c

    :cond_2a
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_2c
    return-object v0

    .line 80
    :cond_2d
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 81
    .local v0, "q":Lgnu/expr/QuoteExp;
    if-eqz p1, :cond_37

    .line 82
    invoke-virtual {v0, p1}, Lgnu/expr/QuoteExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 83
    :cond_37
    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 88
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 89
    .local v0, "exp":Lgnu/expr/QuoteExp;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 90
    return-object v0
.end method

.method static makeShared(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/QuoteExp;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 95
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 96
    .local v0, "exp":Lgnu/expr/QuoteExp;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 108
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 113
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_2c

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_2c

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    instance-of v1, v0, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2c

    .line 120
    :cond_1b
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 121
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_31

    .line 117
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 123
    :goto_31
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .registers 2
    .param p1, "mapper"    # Lgnu/kawa/util/IdentityHashTable;

    .line 127
    return-object p0
.end method

.method public final getRawType()Lgnu/bytecode/Type;
    .registers 2

    .line 23
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .registers 3

    .line 26
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_5

    .line 27
    return-object v0

    .line 28
    :cond_5
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_e

    .line 29
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 30
    :cond_e
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 31
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    return-object v0

    .line 32
    :cond_15
    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p0, v1, :cond_1c

    .line 33
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 35
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 15
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isExplicitlyTyped()Z
    .registers 2

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSharedConstant()Z
    .registers 2

    .line 51
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 7
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 211
    const-string v0, "(Quote"

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 213
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    .line 214
    .local v0, "val":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/expr/Expression;

    if-eqz v2, :cond_15

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_15
    iget-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 219
    .local v2, "saveFormat":Lgnu/lists/AbstractFormat;
    :try_start_17
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v3

    iput-object v3, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 220
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 221
    iget-object v3, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v3, :cond_37

    .line 223
    const-string v3, " ::"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_3e

    .line 236
    :cond_37
    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 237
    nop

    .line 238
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 239
    return-void

    .line 236
    :catchall_3e
    move-exception v1

    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v1
.end method

.method public setType(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 40
    iput-object p1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/QuoteExp;->setFlag(I)V

    .line 42
    return-void
.end method

.method public side_effects()Z
    .registers 2

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .registers 21
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;
    .param p3, "required"    # Lgnu/bytecode/Type;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v5, :cond_f

    .line 139
    return-object v1

    .line 140
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 141
    .local v5, "fval":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/mapping/Procedure;

    if-nez v6, :cond_4d

    .line 142
    if-eqz v4, :cond_46

    if-nez v5, :cond_1c

    goto :goto_46

    :cond_1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which is a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_48

    :cond_46
    :goto_46
    const-string v6, "called value is not a procedure"

    :goto_48
    invoke-virtual {v2, v6}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 145
    :cond_4d
    move-object v6, v5

    check-cast v6, Lgnu/mapping/Procedure;

    .line 146
    .local v6, "proc":Lgnu/mapping/Procedure;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v7

    .line 147
    .local v7, "nargs":I
    invoke-static {v6, v7}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "msg":Ljava/lang/String;
    if-eqz v8, :cond_5f

    .line 149
    invoke-virtual {v2, v8}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    return-object v9

    .line 150
    :cond_5f
    invoke-virtual {v2, v1, v3, v6}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v9

    .line 151
    .local v9, "inlined":Lgnu/expr/Expression;
    if-eqz v9, :cond_66

    .line 152
    return-object v9

    .line 153
    :cond_66
    iget-object v10, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 154
    .local v10, "args":[Lgnu/expr/Expression;
    instance-of v11, v6, Lgnu/mapping/MethodProc;

    const/4 v12, 0x0

    if-eqz v11, :cond_71

    move-object v11, v6

    check-cast v11, Lgnu/mapping/MethodProc;

    goto :goto_72

    :cond_71
    move-object v11, v12

    .line 155
    .local v11, "asMProc":Lgnu/mapping/MethodProc;
    :goto_72
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_73
    if-ge v13, v7, :cond_9b

    .line 157
    if-eqz v11, :cond_7c

    invoke-virtual {v11, v13}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v14

    goto :goto_7d

    :cond_7c
    move-object v14, v12

    .line 159
    .local v14, "ptype":Lgnu/bytecode/Type;
    :goto_7d
    add-int/lit8 v15, v7, -0x1

    if-ne v13, v15, :cond_90

    if-eqz v14, :cond_90

    invoke-virtual {v11}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v15

    if-gez v15, :cond_90

    invoke-virtual {v11}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v15

    if-ne v13, v15, :cond_90

    .line 161
    const/4 v14, 0x0

    .line 162
    :cond_90
    aget-object v15, v10, v13

    invoke-virtual {v2, v15, v14}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v15

    aput-object v15, v10, v13

    .line 155
    .end local v14    # "ptype":Lgnu/bytecode/Type;
    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    .line 164
    .end local v13    # "i":I
    :cond_9b
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 166
    invoke-virtual {v1, v6, v2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v12

    .line 167
    .local v12, "e":Lgnu/expr/Expression;
    if-eq v12, v1, :cond_ad

    .line 168
    invoke-virtual {v2, v12, v3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v13

    return-object v13

    .line 170
    .end local v12    # "e":Lgnu/expr/Expression;
    :cond_ad
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v12

    .line 171
    .local v12, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v12, v6}, Lgnu/expr/Compilation;->inlineOk(Lgnu/mapping/Procedure;)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 173
    invoke-static {v6}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v13

    if-eqz v13, :cond_d2

    .line 175
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    if-ne v13, v0, :cond_c4

    .line 176
    return-object v1

    .line 177
    :cond_c4
    new-instance v13, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v14

    invoke-direct {v13, v0, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v13, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    return-object v13

    .line 179
    :cond_d2
    iget-object v13, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v12}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    invoke-static {v6, v4, v13, v14}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v13

    .line 182
    .local v13, "mproc":Lgnu/expr/PrimProcedure;
    if-eqz v13, :cond_114

    .line 185
    invoke-virtual {v13}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v14

    if-nez v14, :cond_108

    if-nez v4, :cond_e7

    goto :goto_108

    .line 187
    :cond_e7
    iget-object v14, v4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v14, :cond_ec

    .line 188
    return-object v1

    .line 191
    :cond_ec
    add-int/lit8 v14, v7, 0x1

    new-array v14, v14, [Lgnu/expr/Expression;

    .line 192
    .local v14, "margs":[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v15

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v15, v0, v14, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    new-instance v2, Lgnu/expr/ReferenceExp;

    iget-object v15, v4, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-direct {v2, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v2, v14, v0

    .line 194
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v13, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .local v0, "nexp":Lgnu/expr/ApplyExp;
    goto :goto_10f

    .line 186
    .end local v0    # "nexp":Lgnu/expr/ApplyExp;
    .end local v14    # "margs":[Lgnu/expr/Expression;
    :cond_108
    :goto_108
    new-instance v0, Lgnu/expr/ApplyExp;

    iget-object v2, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-direct {v0, v13, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 196
    .restart local v0    # "nexp":Lgnu/expr/ApplyExp;
    :goto_10f
    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 199
    .end local v0    # "nexp":Lgnu/expr/ApplyExp;
    .end local v13    # "mproc":Lgnu/expr/PrimProcedure;
    :cond_114
    return-object v1
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .registers 2

    .line 17
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
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

    .line 132
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

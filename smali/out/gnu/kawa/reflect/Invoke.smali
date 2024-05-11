.class public Lgnu/kawa/reflect/Invoke;
.super Lgnu/mapping/ProcedureN;
.source "Invoke.java"


# static fields
.field public static final invoke:Lgnu/kawa/reflect/Invoke;

.field public static final invokeSpecial:Lgnu/kawa/reflect/Invoke;

.field public static final invokeStatic:Lgnu/kawa/reflect/Invoke;

.field public static final make:Lgnu/kawa/reflect/Invoke;


# instance fields
.field kind:C

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .line 29
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-static"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-special"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    .line 31
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "make"

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "kind"    # C

    .line 35
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;CLgnu/expr/Language;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLgnu/expr/Language;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "kind"    # C
    .param p3, "language"    # Lgnu/expr/Language;

    .line 40
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 41
    iput-char p2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 42
    iput-object p3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 43
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileInvoke:validateApplyInvoke"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/Invoke;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .registers 5
    .param p0, "type"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Lgnu/expr/Expression;

    const-class v0, Lgnu/kawa/reflect/Invoke;

    monitor-enter v0

    .line 310
    :try_start_3
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/CompileInvoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 310
    .end local p0    # "type":Lgnu/bytecode/ClassType;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "args":[Lgnu/expr/Expression;
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static invoke$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStatic$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static make$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .registers 8
    .param p0, "type"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Lgnu/expr/Expression;

    const-class v0, Lgnu/kawa/reflect/Invoke;

    monitor-enter v0

    .line 299
    :try_start_3
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/Invoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v1

    .line 300
    .local v1, "method":Lgnu/expr/PrimProcedure;
    if-eqz v1, :cond_10

    .line 303
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_37

    monitor-exit v0

    return-object v2

    .line 301
    :cond_10
    :try_start_10
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing or ambiguous method `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_37

    .line 298
    .end local v1    # "method":Lgnu/expr/PrimProcedure;
    .end local p0    # "type":Lgnu/bytecode/ClassType;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "args":[Lgnu/expr/Expression;
    :catchall_37
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "thisProc"    # Lgnu/kawa/reflect/Invoke;

    .line 64
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 65
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 66
    :cond_b
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_13

    .line 67
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ObjectType;

    return-object v0

    .line 68
    :cond_13
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_41

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_1c

    goto :goto_41

    .line 70
    :cond_1c
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2c

    .line 71
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    .line 72
    :cond_2c
    instance-of v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v0, :cond_38

    .line 73
    move-object v0, p0

    check-cast v0, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    .line 74
    :cond_38
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "class-specifier"

    invoke-direct {v0, p1, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_41
    :goto_41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 14
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "args":[Ljava/lang/Object;
    iget-char v1, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v2, 0x2a

    const/16 v3, 0x73

    const/16 v4, 0x56

    const/16 v5, 0x53

    if-eq v1, v5, :cond_1f

    if-eq v1, v4, :cond_1f

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    goto :goto_1f

    .line 99
    :cond_17
    invoke-virtual {p0, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_64

    .line 84
    :cond_1f
    :goto_1f
    array-length v1, v0

    .line 85
    .local v1, "nargs":I
    invoke-static {p0, v1}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 86
    const/4 v6, 0x0

    aget-object v7, v0, v6

    .line 87
    .local v7, "arg0":Ljava/lang/Object;
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-eq v8, v5, :cond_36

    if-ne v8, v3, :cond_2d

    goto :goto_36

    :cond_2d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_3a

    :cond_36
    :goto_36
    invoke-static {v7, p0}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v3

    :goto_3a
    check-cast v3, Lgnu/bytecode/ObjectType;

    check-cast v3, Lgnu/bytecode/ObjectType;

    .line 90
    .local v3, "dtype":Lgnu/bytecode/ObjectType;
    const/4 v8, 0x1

    aget-object v9, v0, v8

    invoke-virtual {p0, v3, v9}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v9

    .line 91
    .local v9, "proc":Lgnu/mapping/Procedure;
    iget-char v10, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/4 v11, 0x2

    if-ne v10, v5, :cond_4b

    const/4 v8, 0x2

    :cond_4b
    sub-int v5, v1, v8

    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    .local v5, "margs":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 93
    .local v8, "i":I
    if-eq v10, v4, :cond_54

    if-ne v10, v2, :cond_5b

    .line 94
    :cond_54
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .local v2, "i":I
    aget-object v4, v0, v6

    aput-object v4, v5, v8

    move v8, v2

    .line 95
    .end local v2    # "i":I
    .restart local v8    # "i":I
    :cond_5b
    add-int/lit8 v2, v1, -0x2

    invoke-static {v0, v11, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {v9, v5, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 97
    .end local v1    # "nargs":I
    .end local v3    # "dtype":Lgnu/bytecode/ObjectType;
    .end local v5    # "margs":[Ljava/lang/Object;
    .end local v7    # "arg0":Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v9    # "proc":Lgnu/mapping/Procedure;
    nop

    .line 100
    :goto_64
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-char v0, v1, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v3, 0x50

    if-eq v0, v3, :cond_1d1

    .line 108
    array-length v3, v2

    .line 109
    .local v3, "nargs":I
    invoke-static {v1, v3}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 110
    const/4 v0, 0x0

    aget-object v4, v2, v0

    .line 111
    .local v4, "arg0":Ljava/lang/Object;
    iget-char v5, v1, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v6, 0x2a

    const/16 v7, 0x56

    if-eq v5, v7, :cond_20

    if-eq v5, v6, :cond_20

    invoke-static {v4, v1}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v5

    goto :goto_2a

    :cond_20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ObjectType;

    .line 114
    .local v5, "dtype":Lgnu/bytecode/ObjectType;
    :goto_2a
    iget-char v8, v1, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v9, 0x4e

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v8, v9, :cond_105

    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, "mname":Ljava/lang/Object;
    instance-of v12, v5, Lgnu/expr/TypeValue;

    if-eqz v12, :cond_4c

    .line 119
    move-object v12, v5

    check-cast v12, Lgnu/expr/TypeValue;

    invoke-interface {v12}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v12

    .line 120
    .local v12, "constructor":Lgnu/mapping/Procedure;
    if-eqz v12, :cond_4c

    .line 122
    add-int/lit8 v3, v3, -0x1

    .line 123
    new-array v6, v3, [Ljava/lang/Object;

    .line 124
    .local v6, "xargs":[Ljava/lang/Object;
    invoke-static {v2, v11, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v12, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 128
    .end local v6    # "xargs":[Ljava/lang/Object;
    .end local v12    # "constructor":Lgnu/mapping/Procedure;
    :cond_4c
    instance-of v12, v5, Lgnu/expr/PairClassType;

    if-eqz v12, :cond_55

    .line 130
    move-object v12, v5

    check-cast v12, Lgnu/expr/PairClassType;

    .line 131
    .local v12, "ptype":Lgnu/expr/PairClassType;
    iget-object v5, v12, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 133
    .end local v12    # "ptype":Lgnu/expr/PairClassType;
    :cond_55
    instance-of v12, v5, Lgnu/bytecode/ArrayType;

    if-eqz v12, :cond_ff

    .line 135
    move-object v0, v5

    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 137
    .local v6, "elementType":Lgnu/bytecode/Type;
    array-length v0, v2

    add-int/lit8 v7, v0, -0x1

    .line 142
    .local v7, "len":I
    if-lt v7, v10, :cond_90

    aget-object v0, v2, v11

    instance-of v0, v0, Lgnu/expr/Keyword;

    if-eqz v0, :cond_90

    aget-object v0, v2, v11

    check-cast v0, Lgnu/expr/Keyword;

    invoke-virtual {v0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v9, "name":Ljava/lang/String;
    const-string v12, "length"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "size"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 146
    :cond_84
    aget-object v0, v2, v10

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 147
    .local v0, "length":I
    const/4 v10, 0x3

    .line 148
    .local v10, "i":I
    const/4 v12, 0x1

    move v9, v0

    .local v12, "lengthSpecified":Z
    goto :goto_94

    .line 152
    .end local v0    # "length":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "lengthSpecified":Z
    :cond_90
    move v0, v7

    .line 153
    .restart local v0    # "length":I
    const/4 v10, 0x1

    .line 154
    .restart local v10    # "i":I
    const/4 v12, 0x0

    move v9, v0

    .line 156
    .end local v0    # "length":I
    .local v9, "length":I
    .restart local v12    # "lengthSpecified":Z
    :goto_94
    invoke-virtual {v6}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v13

    .line 158
    .local v13, "arr":Ljava/lang/Object;
    const/4 v0, 0x0

    move v14, v10

    move v10, v0

    .line 159
    .local v10, "index":I
    .local v14, "i":I
    :goto_9f
    if-gt v14, v7, :cond_fe

    .line 161
    aget-object v15, v2, v14

    .line 162
    .local v15, "arg":Ljava/lang/Object;
    if-eqz v12, :cond_ea

    instance-of v0, v15, Lgnu/expr/Keyword;

    if-eqz v0, :cond_ea

    if-ge v14, v7, :cond_ea

    .line 164
    move-object v0, v15

    check-cast v0, Lgnu/expr/Keyword;

    invoke-virtual {v0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "kname":Ljava/lang/String;
    :try_start_b2
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_c1

    move v10, v0

    .line 172
    nop

    .line 173
    add-int/lit8 v14, v14, 0x1

    aget-object v15, v2, v14

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto :goto_ee

    .line 169
    :catchall_c1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 171
    .local v0, "ex":Ljava/lang/Throwable;
    nop

    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v16, "ex":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/RuntimeException;

    move-object/from16 v17, v4

    .end local v4    # "arg0":Ljava/lang/Object;
    .local v17, "arg0":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .local v18, "dtype":Lgnu/bytecode/ObjectType;
    const-string v5, "non-integer keyword \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in array constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v11    # "kname":Ljava/lang/String;
    .end local v16    # "ex":Ljava/lang/Throwable;
    .end local v17    # "arg0":Ljava/lang/Object;
    .end local v18    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v4    # "arg0":Ljava/lang/Object;
    .restart local v5    # "dtype":Lgnu/bytecode/ObjectType;
    :cond_ea
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 175
    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v17    # "arg0":Ljava/lang/Object;
    .restart local v18    # "dtype":Lgnu/bytecode/ObjectType;
    :goto_ee
    invoke-virtual {v6, v15}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v10, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 176
    const/4 v4, 0x1

    .end local v15    # "arg":Ljava/lang/Object;
    add-int/2addr v10, v4

    .line 159
    add-int/2addr v14, v4

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v11, 0x1

    goto :goto_9f

    .line 178
    .end local v17    # "arg0":Ljava/lang/Object;
    .end local v18    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v4    # "arg0":Ljava/lang/Object;
    .restart local v5    # "dtype":Lgnu/bytecode/ObjectType;
    :cond_fe
    return-object v13

    .line 133
    .end local v6    # "elementType":Lgnu/bytecode/Type;
    .end local v7    # "len":I
    .end local v9    # "length":I
    .end local v10    # "index":I
    .end local v12    # "lengthSpecified":Z
    .end local v13    # "arr":Ljava/lang/Object;
    .end local v14    # "i":I
    :cond_ff
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    const/4 v4, 0x1

    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v17    # "arg0":Ljava/lang/Object;
    .restart local v18    # "dtype":Lgnu/bytecode/ObjectType;
    goto :goto_10a

    .line 183
    .end local v8    # "mname":Ljava/lang/Object;
    .end local v17    # "arg0":Ljava/lang/Object;
    .end local v18    # "dtype":Lgnu/bytecode/ObjectType;
    .restart local v4    # "arg0":Ljava/lang/Object;
    .restart local v5    # "dtype":Lgnu/bytecode/ObjectType;
    :cond_105
    move-object/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "arg0":Ljava/lang/Object;
    .restart local v17    # "arg0":Ljava/lang/Object;
    aget-object v8, v2, v4

    .line 185
    .restart local v8    # "mname":Ljava/lang/Object;
    :goto_10a
    invoke-virtual {v1, v5, v8}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v4

    .line 186
    .local v4, "proc":Lgnu/mapping/MethodProc;
    iget-char v11, v1, Lgnu/kawa/reflect/Invoke;->kind:C

    if-eq v11, v9, :cond_13a

    .line 188
    const/16 v9, 0x53

    if-eq v11, v9, :cond_11e

    const/16 v9, 0x73

    if-ne v11, v9, :cond_11b

    goto :goto_11e

    :cond_11b
    const/16 v16, 0x1

    goto :goto_120

    :cond_11e
    :goto_11e
    const/16 v16, 0x2

    :goto_120
    sub-int v9, v3, v16

    new-array v9, v9, [Ljava/lang/Object;

    .line 189
    .local v9, "margs":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 190
    .local v12, "i":I
    if-eq v11, v7, :cond_129

    if-ne v11, v6, :cond_130

    .line 191
    :cond_129
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "i":I
    .local v6, "i":I
    aget-object v0, v2, v0

    aput-object v0, v9, v12

    move v12, v6

    .line 192
    .end local v6    # "i":I
    .restart local v12    # "i":I
    :cond_130
    add-int/lit8 v0, v3, -0x2

    invoke-static {v2, v10, v9, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    invoke-virtual {v4, v9}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 197
    .end local v9    # "margs":[Ljava/lang/Object;
    .end local v12    # "i":I
    :cond_13a
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    .line 198
    .local v6, "vars":Lgnu/mapping/CallContext;
    const/4 v7, 0x0

    .line 200
    .local v7, "keywordStart":I
    :goto_13f
    array-length v9, v2

    if-ge v7, v9, :cond_14b

    aget-object v9, v2, v7

    instance-of v9, v9, Lgnu/expr/Keyword;

    if-nez v9, :cond_14b

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_13f

    .line 204
    :cond_14b
    const/4 v9, -0x1

    .line 205
    .local v9, "err":I
    array-length v10, v2

    if-ne v7, v10, :cond_183

    .line 207
    invoke-virtual {v4, v2, v6}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    .line 208
    if-nez v9, :cond_15a

    .line 209
    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 211
    :cond_15a
    move-object v10, v5

    check-cast v10, Lgnu/bytecode/ClassType;

    iget-object v11, v1, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    const-string v12, "valueOf"

    invoke-static {v10, v12, v0, v11}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v10

    .line 213
    .local v10, "vproc":Lgnu/mapping/MethodProc;
    if-eqz v10, :cond_17c

    .line 215
    add-int/lit8 v11, v3, -0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 216
    .local v11, "margs":[Ljava/lang/Object;
    add-int/lit8 v12, v3, -0x1

    const/4 v13, 0x1

    invoke-static {v2, v13, v11, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    invoke-virtual {v10, v11, v6}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    .line 218
    if-nez v9, :cond_17c

    .line 219
    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 221
    .end local v11    # "margs":[Ljava/lang/Object;
    :cond_17c
    aget-object v11, v2, v0

    invoke-virtual {v4, v11}, Lgnu/mapping/MethodProc;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 222
    .local v10, "result":Ljava/lang/Object;
    goto :goto_18d

    .line 225
    .end local v10    # "result":Ljava/lang/Object;
    :cond_183
    new-array v10, v7, [Ljava/lang/Object;

    .line 226
    .local v10, "cargs":[Ljava/lang/Object;
    invoke-static {v2, v0, v10, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    invoke-virtual {v4, v10}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    .line 230
    .local v10, "result":Ljava/lang/Object;
    :goto_18d
    move v11, v7

    .line 232
    .local v11, "i":I
    :goto_18e
    add-int/lit8 v12, v11, 0x1

    array-length v13, v2

    if-ge v12, v13, :cond_1ab

    .line 234
    aget-object v12, v2, v11

    .line 235
    .local v12, "arg":Ljava/lang/Object;
    instance-of v13, v12, Lgnu/expr/Keyword;

    if-nez v13, :cond_19a

    .line 236
    goto :goto_1ab

    .line 237
    :cond_19a
    move-object v13, v12

    check-cast v13, Lgnu/expr/Keyword;

    .line 238
    .local v13, "key":Lgnu/expr/Keyword;
    add-int/lit8 v14, v11, 0x1

    aget-object v12, v2, v14

    .line 239
    invoke-virtual {v13}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v10, v14, v12}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .end local v12    # "arg":Ljava/lang/Object;
    .end local v13    # "key":Lgnu/expr/Keyword;
    add-int/lit8 v11, v11, 0x2

    goto :goto_18e

    .line 242
    :cond_1ab
    :goto_1ab
    array-length v12, v2

    if-ne v7, v12, :cond_1af

    .line 243
    const/4 v11, 0x1

    .line 244
    :cond_1af
    array-length v12, v2

    if-eq v11, v12, :cond_1d0

    .line 246
    move-object v12, v5

    check-cast v12, Lgnu/bytecode/ClassType;

    iget-object v13, v1, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    const-string v14, "add"

    invoke-static {v12, v14, v0, v13}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v0

    .line 248
    .local v0, "aproc":Lgnu/mapping/MethodProc;
    if-eqz v0, :cond_1cb

    .line 250
    :goto_1bf
    array-length v12, v2

    if-ge v11, v12, :cond_1d0

    .line 251
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    aget-object v11, v2, v11

    invoke-virtual {v0, v10, v11}, Lgnu/mapping/MethodProc;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v12

    goto :goto_1bf

    .line 249
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :cond_1cb
    invoke-static {v9, v4, v2}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v12

    throw v12

    .line 254
    .end local v0    # "aproc":Lgnu/mapping/MethodProc;
    :cond_1d0
    return-object v10

    .line 105
    .end local v3    # "nargs":I
    .end local v4    # "proc":Lgnu/mapping/MethodProc;
    .end local v5    # "dtype":Lgnu/bytecode/ObjectType;
    .end local v6    # "vars":Lgnu/mapping/CallContext;
    .end local v7    # "keywordStart":I
    .end local v8    # "mname":Ljava/lang/Object;
    .end local v9    # "err":I
    .end local v10    # "result":Ljava/lang/Object;
    .end local v11    # "i":I
    .end local v17    # "arg0":Ljava/lang/Object;
    :cond_1d1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invoke-special not allowed at run time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1ef

    :goto_1ee
    throw v0

    :goto_1ef
    goto :goto_1ee
.end method

.method protected lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .registers 8
    .param p1, "dtype"    # Lgnu/bytecode/ObjectType;
    .param p2, "name"    # Ljava/lang/Object;

    .line 266
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_9

    .line 267
    const-string v0, "<init>"

    .local v0, "mname":Ljava/lang/String;
    goto :goto_2e

    .line 270
    .end local v0    # "mname":Ljava/lang/String;
    :cond_9
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_26

    instance-of v0, p2, Lgnu/lists/FString;

    if-eqz v0, :cond_12

    goto :goto_26

    .line 272
    :cond_12
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1e

    .line 273
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mname":Ljava/lang/String;
    goto :goto_2a

    .line 275
    .end local v0    # "mname":Ljava/lang/String;
    :cond_1e
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v0

    .line 271
    :cond_26
    :goto_26
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "mname":Ljava/lang/String;
    :goto_2a
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_2e
    iget-char v1, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v2, 0x56

    const/16 v3, 0x50

    if-ne v1, v3, :cond_39

    const/16 v2, 0x50

    goto :goto_41

    :cond_39
    const/16 v3, 0x2a

    if-eq v1, v3, :cond_41

    if-ne v1, v2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :cond_41
    :goto_41
    iget-object v1, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p1, v0, v2, v1}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v1

    .line 283
    .local v1, "proc":Lgnu/mapping/MethodProc;
    if-eqz v1, :cond_4a

    .line 286
    return-object v1

    .line 284
    :cond_4a
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no method named `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public numArgs()I
    .registers 3

    .line 260
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x2

    :goto_9
    or-int/lit16 v0, v0, -0x1000

    return v0
.end method

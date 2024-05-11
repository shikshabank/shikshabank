.class public Lgnu/kawa/functions/CompileNamedPart;
.super Ljava/lang/Object;
.source "CompileNamedPart.java"


# static fields
.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 309
    const-string v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .registers 6
    .param p0, "part1"    # Lgnu/expr/Expression;
    .param p1, "part2"    # Lgnu/expr/Expression;

    .line 228
    invoke-virtual {p1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "name2":Ljava/lang/Object;
    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_3f

    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .local v2, "name1":Ljava/lang/String;
    if-nez v0, :cond_23

    .end local v2    # "name1":Ljava/lang/String;
    :cond_17
    instance-of v0, p0, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v0, :cond_3f

    move-object v0, p0

    check-cast v0, Lgnu/kawa/functions/GetNamedExp;

    iget-object v0, v0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    move-object v2, v0

    .restart local v2    # "name1":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 233
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    .end local v2    # "name1":Ljava/lang/String;
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 4
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "member"    # Ljava/lang/String;

    .line 244
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 11
    .param p0, "clas"    # Lgnu/expr/Expression;
    .param p1, "member"    # Lgnu/expr/Expression;

    .line 185
    invoke-static {p0, p1}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "combinedName":Ljava/lang/String;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 187
    .local v1, "env":Lgnu/mapping/Environment;
    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 189
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    .line 190
    .local v3, "tr":Lkawa/lang/Translator;
    sget-object v4, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v4, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 191
    .local v4, "symbol":Lgnu/mapping/Symbol;
    iget-object v5, v3, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v5, v4, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v5

    .line 192
    .local v5, "decl":Lgnu/expr/Declaration;
    invoke-static {v5}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 193
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    return-object v2

    .line 195
    :cond_29
    const/4 v6, 0x0

    .line 196
    .local v6, "property":Ljava/lang/Object;
    if-eqz v4, :cond_38

    invoke-virtual {v1, v4, v6}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 197
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 199
    .end local v3    # "tr":Lkawa/lang/Translator;
    .end local v4    # "symbol":Lgnu/mapping/Symbol;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "property":Ljava/lang/Object;
    :cond_38
    instance-of v3, p0, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_74

    move-object v3, p0

    check-cast v3, Lgnu/expr/ReferenceExp;

    move-object v4, v3

    .local v4, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 202
    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "rsym":Ljava/lang/Object;
    instance-of v5, v3, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_52

    move-object v5, v3

    check-cast v5, Lgnu/mapping/Symbol;

    goto :goto_5a

    :cond_52
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 205
    .local v5, "sym":Lgnu/mapping/Symbol;
    :goto_5a
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_74

    .line 207
    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "name":Ljava/lang/String;
    :try_start_65
    invoke-static {v6}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 211
    .local v7, "cl":Ljava/lang/Class;
    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v8
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_73

    move-object p0, v8

    .line 215
    .end local v7    # "cl":Ljava/lang/Class;
    goto :goto_74

    .line 213
    :catchall_73
    move-exception v7

    .line 218
    .end local v3    # "rsym":Ljava/lang/Object;
    .end local v4    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "name":Ljava/lang/String;
    :cond_74
    :goto_74
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object p0, v3, v2

    const/4 v2, 0x1

    aput-object p1, v3, v2

    move-object v2, v3

    .line 219
    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/kawa/functions/GetNamedExp;

    invoke-direct {v3, v2}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    .line 220
    .local v3, "exp":Lgnu/kawa/functions/GetNamedExp;
    iput-object v0, v3, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    .line 221
    return-object v3
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 3
    .param p0, "clas"    # Lgnu/expr/Expression;
    .param p1, "member"    # Ljava/lang/String;

    .line 239
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "member"    # Lgnu/expr/Expression;

    .line 315
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_1d

    .line 317
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 318
    .local v0, "val":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_1d

    .line 319
    new-instance v1, Lgnu/kawa/functions/GetNamedInstancePart;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0    # "val":Ljava/lang/Object;
    :cond_1d
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 322
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    new-instance v2, Lgnu/expr/QuoteExp;

    const-string v3, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 323
    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 324
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static validateGetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 12
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 330
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 331
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 334
    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p3

    check-cast v1, Lgnu/kawa/functions/GetNamedInstancePart;

    .line 335
    .local v1, "gproc":Lgnu/kawa/functions/GetNamedInstancePart;
    iget-boolean v2, v1, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_23

    .line 337
    new-array v2, v3, [Lgnu/expr/Expression;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    new-instance v3, Lgnu/expr/QuoteExp;

    iget-object v4, v1, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v5

    .line 338
    .local v2, "xargs":[Lgnu/expr/Expression;
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .local v3, "property":Lgnu/mapping/Procedure;
    goto :goto_3d

    .line 342
    .end local v2    # "xargs":[Lgnu/expr/Expression;
    .end local v3    # "property":Lgnu/mapping/Procedure;
    :cond_23
    array-length v2, v0

    .line 343
    .local v2, "nargs":I
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 344
    .local v6, "xargs":[Lgnu/expr/Expression;
    aget-object v7, v0, v4

    aput-object v7, v6, v4

    .line 345
    new-instance v4, Lgnu/expr/QuoteExp;

    iget-object v7, v1, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v4, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v6, v5

    .line 346
    add-int/lit8 v4, v2, -0x1

    invoke-static {v0, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    sget-object v3, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v2, v6

    .line 349
    .end local v6    # "xargs":[Lgnu/expr/Expression;
    .local v2, "xargs":[Lgnu/expr/Expression;
    .restart local v3    # "property":Lgnu/mapping/Procedure;
    :goto_3d
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v4, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4
.end method

.method public static validateGetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 26
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 15
    .local v3, "args":[Lgnu/expr/Expression;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f1

    const/4 v4, 0x1

    aget-object v6, v3, v4

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_1f1

    instance-of v6, v0, Lgnu/kawa/functions/GetNamedExp;

    if-nez v6, :cond_1e

    goto/16 :goto_1f1

    .line 18
    :cond_1e
    const/4 v6, 0x0

    aget-object v7, v3, v6

    .line 19
    .local v7, "context":Lgnu/expr/Expression;
    const/4 v8, 0x0

    .line 20
    .local v8, "decl":Lgnu/expr/Declaration;
    instance-of v9, v7, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_40

    .line 22
    move-object v9, v7

    check-cast v9, Lgnu/expr/ReferenceExp;

    .line 23
    .local v9, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 24
    aget-object v4, v3, v4

    invoke-static {v4}, Lgnu/kawa/functions/CompileNamedPart;->makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 25
    :cond_3c
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    .line 28
    .end local v9    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_40
    aget-object v9, v3, v4

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 29
    .local v9, "mname":Ljava/lang/String;
    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 30
    .local v10, "type":Lgnu/bytecode/Type;
    sget-object v11, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v7, v11, :cond_56

    const/4 v11, 0x1

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    .line 31
    .local v11, "isInstanceOperator":Z
    :goto_57
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v12

    .line 32
    .local v12, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v12}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    .line 33
    .local v13, "language":Lgnu/expr/Language;
    invoke-virtual {v13, v7, v6}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v14

    .line 34
    .local v14, "typeval":Lgnu/bytecode/Type;
    if-nez v12, :cond_67

    const/4 v15, 0x0

    goto :goto_70

    :cond_67
    iget-object v15, v12, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v15, :cond_6e

    iget-object v15, v12, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_70

    :cond_6e
    iget-object v15, v12, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 37
    .local v15, "caller":Lgnu/bytecode/ClassType;
    :goto_70
    move-object v5, v0

    check-cast v5, Lgnu/kawa/functions/GetNamedExp;

    .line 39
    .local v5, "nexp":Lgnu/kawa/functions/GetNamedExp;
    if-eqz v14, :cond_b4

    .line 41
    const-string v6, "<>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 42
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 44
    :cond_83
    instance-of v6, v14, Lgnu/bytecode/ObjectType;

    if-eqz v6, :cond_b4

    .line 46
    const-string v6, "new"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 47
    const/16 v4, 0x4e

    invoke-virtual {v5, v4}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v4

    return-object v4

    .line 48
    :cond_96
    const-string v6, "instance?"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 49
    const/16 v4, 0x49

    invoke-virtual {v5, v4}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v4

    return-object v4

    .line 50
    :cond_a5
    const-string v6, "@"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 51
    const/16 v4, 0x43

    invoke-virtual {v5, v4}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v4

    return-object v4

    .line 54
    :cond_b4
    instance-of v6, v14, Lgnu/bytecode/ObjectType;

    if-eqz v6, :cond_108

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_d6

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v4, 0x2e

    if-ne v6, v4, :cond_d6

    .line 61
    new-instance v4, Lgnu/expr/QuoteExp;

    new-instance v6, Lgnu/kawa/functions/NamedPart;

    move-object/from16 v18, v7

    .end local v7    # "context":Lgnu/expr/Expression;
    .local v18, "context":Lgnu/expr/Expression;
    const/16 v7, 0x44

    invoke-direct {v6, v14, v9, v7}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    invoke-direct {v4, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 56
    .end local v18    # "context":Lgnu/expr/Expression;
    .restart local v7    # "context":Lgnu/expr/Expression;
    :cond_d6
    move-object/from16 v18, v7

    .line 63
    .end local v7    # "context":Lgnu/expr/Expression;
    .restart local v18    # "context":Lgnu/expr/Expression;
    invoke-static {v14, v12}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v4

    if-gez v4, :cond_df

    .line 64
    return-object v0

    .line 65
    :cond_df
    move-object v4, v14

    check-cast v4, Lgnu/bytecode/ObjectType;

    invoke-static {v9}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v15, v13}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v4

    .line 69
    .local v4, "methods":[Lgnu/expr/PrimProcedure;
    if-eqz v4, :cond_f9

    array-length v6, v4

    if-lez v6, :cond_f9

    .line 71
    iput-object v4, v5, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 72
    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v6

    return-object v6

    .line 74
    :cond_f9
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v6, v7, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 75
    .local v6, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 76
    invoke-virtual {v1, v6, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    return-object v7

    .line 79
    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v6    # "aexp":Lgnu/expr/ApplyExp;
    .end local v18    # "context":Lgnu/expr/Expression;
    .restart local v7    # "context":Lgnu/expr/Expression;
    :cond_108
    move-object/from16 v18, v7

    .line 91
    .end local v7    # "context":Lgnu/expr/Expression;
    .restart local v18    # "context":Lgnu/expr/Expression;
    sget-object v6, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-nez v6, :cond_1ec

    sget-object v6, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_120

    move-object/from16 v17, v5

    move-object/from16 v16, v8

    goto/16 :goto_1f0

    .line 98
    :cond_120
    instance-of v6, v10, Lgnu/bytecode/ObjectType;

    if-eqz v6, :cond_1bb

    .line 100
    move-object v6, v10

    check-cast v6, Lgnu/bytecode/ObjectType;

    .line 101
    .local v6, "otype":Lgnu/bytecode/ObjectType;
    invoke-static {v9}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x56

    invoke-static {v6, v7, v4, v15, v13}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v4

    .line 104
    .restart local v4    # "methods":[Lgnu/expr/PrimProcedure;
    if-eqz v4, :cond_13f

    array-length v7, v4

    if-lez v7, :cond_13f

    .line 106
    iput-object v4, v5, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    .line 107
    const/16 v7, 0x4d

    invoke-virtual {v5, v7}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v7

    return-object v7

    .line 110
    :cond_13f
    sget-object v7, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v19

    if-eqz v19, :cond_194

    .line 113
    if-eqz v8, :cond_16d

    invoke-static {v8}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    .local v20, "val":Ljava/lang/Object;
    if-eqz v19, :cond_16a

    .line 116
    move-object/from16 v19, v4

    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .local v19, "methods":[Lgnu/expr/PrimProcedure;
    move-object/from16 v4, v20

    check-cast v4, Lgnu/mapping/HasNamedParts;

    .line 117
    .local v4, "value":Lgnu/mapping/HasNamedParts;
    invoke-interface {v4, v9}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_16f

    .line 119
    invoke-interface {v4, v9}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 120
    .end local v20    # "val":Ljava/lang/Object;
    .local v7, "val":Ljava/lang/Object;
    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v16

    return-object v16

    .line 113
    .end local v7    # "val":Ljava/lang/Object;
    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .local v4, "methods":[Lgnu/expr/PrimProcedure;
    .restart local v20    # "val":Ljava/lang/Object;
    :cond_16a
    move-object/from16 v19, v4

    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v19    # "methods":[Lgnu/expr/PrimProcedure;
    goto :goto_16f

    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v20    # "val":Ljava/lang/Object;
    .restart local v4    # "methods":[Lgnu/expr/PrimProcedure;
    :cond_16d
    move-object/from16 v19, v4

    .line 123
    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v19    # "methods":[Lgnu/expr/PrimProcedure;
    :cond_16f
    :goto_16f
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    const/16 v16, 0x0

    aget-object v17, v3, v16

    aput-object v17, v4, v16

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v16

    move-object/from16 v17, v5

    const/4 v5, 0x1

    .end local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .local v17, "nexp":Lgnu/kawa/functions/GetNamedExp;
    aput-object v16, v4, v5

    move-object v3, v4

    .line 124
    new-instance v4, Lgnu/expr/ApplyExp;

    move-object/from16 v16, v8

    .end local v8    # "decl":Lgnu/expr/Declaration;
    .local v16, "decl":Lgnu/expr/Declaration;
    const-string v8, "get"

    invoke-virtual {v7, v8, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    invoke-virtual {v4, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 128
    .end local v16    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .restart local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_194
    move-object/from16 v19, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v8

    .end local v4    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .restart local v16    # "decl":Lgnu/expr/Declaration;
    .restart local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v19    # "methods":[Lgnu/expr/PrimProcedure;
    invoke-static {v6, v9, v15}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v4

    .line 129
    .local v4, "part":Lgnu/bytecode/Member;
    if-nez v4, :cond_1ac

    const-string v5, "length"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    instance-of v5, v10, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_1bf

    .line 134
    :cond_1ac
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v5, v7, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 135
    .local v5, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v5, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 136
    invoke-virtual {v1, v5, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v7

    return-object v7

    .line 98
    .end local v4    # "part":Lgnu/bytecode/Member;
    .end local v6    # "otype":Lgnu/bytecode/ObjectType;
    .end local v16    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v19    # "methods":[Lgnu/expr/PrimProcedure;
    .local v5, "nexp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_1bb
    move-object/from16 v17, v5

    move-object/from16 v16, v8

    .line 140
    .end local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .restart local v16    # "decl":Lgnu/expr/Declaration;
    .restart local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    :cond_1bf
    invoke-virtual {v12}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v4

    if-eqz v4, :cond_1eb

    .line 141
    const/16 v4, 0x77

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no known slot \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 142
    :cond_1eb
    return-object v0

    .line 91
    .end local v16    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .restart local v8    # "decl":Lgnu/expr/Declaration;
    :cond_1ec
    move-object/from16 v17, v5

    move-object/from16 v16, v8

    .line 96
    .end local v5    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .restart local v16    # "decl":Lgnu/expr/Declaration;
    .restart local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    :goto_1f0
    return-object v0

    .line 17
    .end local v9    # "mname":Ljava/lang/String;
    .end local v10    # "type":Lgnu/bytecode/Type;
    .end local v11    # "isInstanceOperator":Z
    .end local v12    # "comp":Lgnu/expr/Compilation;
    .end local v13    # "language":Lgnu/expr/Language;
    .end local v14    # "typeval":Lgnu/bytecode/Type;
    .end local v15    # "caller":Lgnu/bytecode/ClassType;
    .end local v16    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "nexp":Lgnu/kawa/functions/GetNamedExp;
    .end local v18    # "context":Lgnu/expr/Expression;
    :cond_1f1
    :goto_1f1
    return-object v0
.end method

.method public static validateNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 12
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 250
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 251
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 252
    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p3

    check-cast v1, Lgnu/kawa/functions/NamedPart;

    .line 253
    .local v1, "namedPart":Lgnu/kawa/functions/NamedPart;
    iget-char v2, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v2, :pswitch_data_52

    .line 275
    return-object p0

    .line 256
    :pswitch_10
    iget-object v2, v1, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "fname":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 258
    .local v4, "xargs":[Lgnu/expr/Expression;
    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    aput-object v5, v4, v3

    .line 260
    array-length v3, v0

    const/4 v5, 0x0

    if-lez v3, :cond_3a

    .line 262
    aget-object v3, v0, v5

    new-instance v6, Lgnu/expr/QuoteExp;

    iget-object v7, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    aput-object v3, v4, v5

    .line 264
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .local v3, "slotProc":Lgnu/kawa/reflect/SlotGet;
    goto :goto_44

    .line 268
    .end local v3    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    :cond_3a
    iget-object v3, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    aput-object v3, v4, v5

    .line 269
    sget-object v3, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    .line 271
    .restart local v3    # "slotProc":Lgnu/kawa/reflect/SlotGet;
    :goto_44
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 272
    .local v5, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v5, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 273
    invoke-virtual {p1, v5, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_52
    .packed-switch 0x44
        :pswitch_10
    .end packed-switch
.end method

.method public static validateNamedPartSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 10
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 281
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 282
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/NamedPartSetter;

    invoke-virtual {v0}, Lgnu/kawa/functions/NamedPartSetter;->getGetter()Lgnu/mapping/Procedure;

    move-result-object v0

    check-cast v0, Lgnu/kawa/functions/NamedPart;

    .line 283
    .local v0, "get":Lgnu/kawa/functions/NamedPart;
    iget-char v1, v0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x44

    if-ne v1, v2, :cond_6a

    .line 285
    const/4 v1, 0x3

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 286
    .local v1, "xargs":[Lgnu/expr/Expression;
    iget-object v2, v0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    aput-object v2, v1, v3

    .line 287
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 289
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v2

    if-ne v2, v3, :cond_41

    .line 291
    iget-object v2, v0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    aput-object v2, v1, v4

    .line 292
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .local v2, "slotProc":Lgnu/kawa/reflect/SlotSet;
    goto :goto_5c

    .line 294
    .end local v2    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    :cond_41
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v2

    if-ne v2, v5, :cond_69

    .line 296
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    aget-object v2, v2, v4

    new-instance v3, Lgnu/expr/QuoteExp;

    iget-object v5, v0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    aput-object v2, v1, v4

    .line 298
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 302
    .restart local v2    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    :goto_5c
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 303
    .local v3, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v3, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 304
    invoke-virtual {p1, v3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 301
    .end local v2    # "slotProc":Lgnu/kawa/reflect/SlotSet;
    .end local v3    # "aexp":Lgnu/expr/ApplyExp;
    :cond_69
    return-object p0

    .line 306
    .end local v1    # "xargs":[Lgnu/expr/Expression;
    :cond_6a
    return-object p0
.end method

.method public static validateSetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 9
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 355
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 356
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 357
    .local v0, "args":[Lgnu/expr/Expression;
    move-object v1, p3

    check-cast v1, Lgnu/kawa/functions/SetNamedInstancePart;

    iget-object v1, v1, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    .line 358
    .local v1, "pname":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aput-object v4, v2, v3

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    aget-object v3, v0, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 360
    .local v2, "xargs":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v3, v4, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, v3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3
.end method

.method public static validateSetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 148
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 149
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 150
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6d

    const/4 v1, 0x1

    aget-object v2, v0, v1

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_13

    goto :goto_6d

    .line 152
    :cond_13
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 153
    .local v2, "context":Lgnu/expr/Expression;
    aget-object v1, v0, v1

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "mname":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 155
    .local v3, "type":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v4

    .line 156
    .local v4, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 157
    .local v5, "language":Lgnu/expr/Language;
    invoke-virtual {v5, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v6

    .line 158
    .local v6, "typeval":Lgnu/bytecode/Type;
    if-nez v4, :cond_36

    const/4 v7, 0x0

    goto :goto_3f

    :cond_36
    iget-object v7, v4, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_3d

    iget-object v7, v4, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_3f

    :cond_3d
    iget-object v7, v4, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 161
    .local v7, "caller":Lgnu/bytecode/ClassType;
    :goto_3f
    move-object v8, p0

    .line 162
    .local v8, "original":Lgnu/expr/ApplyExp;
    instance-of v9, v6, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_4d

    .line 164
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v9, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object p0, v9

    goto :goto_62

    .line 166
    :cond_4d
    instance-of v9, v3, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_62

    .line 168
    move-object v9, v3

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-static {v9, v1, v7}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v9

    .line 169
    .local v9, "part":Ljava/lang/Object;
    if-eqz v9, :cond_62

    .line 173
    new-instance v10, Lgnu/expr/ApplyExp;

    sget-object v11, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v10, v11, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object p0, v10

    .line 176
    .end local v9    # "part":Ljava/lang/Object;
    :cond_62
    :goto_62
    if-eq p0, v8, :cond_67

    .line 177
    invoke-virtual {p0, v8}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 178
    :cond_67
    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v9}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 179
    return-object p0

    .line 151
    .end local v1    # "mname":Ljava/lang/String;
    .end local v2    # "context":Lgnu/expr/Expression;
    .end local v3    # "type":Lgnu/bytecode/Type;
    .end local v4    # "comp":Lgnu/expr/Compilation;
    .end local v5    # "language":Lgnu/expr/Language;
    .end local v6    # "typeval":Lgnu/bytecode/Type;
    .end local v7    # "caller":Lgnu/bytecode/ClassType;
    .end local v8    # "original":Lgnu/expr/ApplyExp;
    :cond_6d
    :goto_6d
    return-object p0
.end method

.class public Lgnu/expr/PrimProcedure;
.super Lgnu/mapping/MethodProc;
.source "PrimProcedure.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field member:Ljava/lang/reflect/Member;

.field method:Lgnu/bytecode/Method;

.field mode:C

.field op_code:I

.field retType:Lgnu/bytecode/Type;

.field sideEffectFree:Z

.field source:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 756
    const-class v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .registers 9
    .param p1, "op_code"    # I
    .param p2, "classtype"    # Lgnu/bytecode/ClassType;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "retType"    # Lgnu/bytecode/Type;
    .param p5, "argTypes"    # [Lgnu/bytecode/Type;

    .line 428
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 429
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 430
    const/4 v0, 0x0

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_d

    const/16 v2, 0x8

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p2, p3, v2, p5, p4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 432
    iput-object p4, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 433
    iput-object p5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 434
    if-ne p1, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x56

    :goto_1d
    iput-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 435
    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "opcode"    # I
    .param p2, "retType"    # Lgnu/bytecode/Type;
    .param p3, "argTypes"    # [Lgnu/bytecode/Type;

    .line 403
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 404
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 405
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 406
    iput-object p3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 407
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .registers 4
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 308
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 309
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 310
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 312
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V
    .registers 11
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "mode"    # C
    .param p3, "language"    # Lgnu/expr/Language;

    .line 320
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 321
    iput-char p2, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 323
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 327
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 328
    .local v0, "pTypes":[Lgnu/bytecode/Type;
    array-length v1, v0

    .line 329
    .local v1, "nTypes":I
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 330
    move v2, v1

    .local v2, "i":I
    :goto_f
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2c

    .line 332
    aget-object v3, v0, v2

    .line 333
    .local v3, "javaType":Lgnu/bytecode/Type;
    invoke-virtual {p3, v3}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 334
    .local v4, "langType":Lgnu/bytecode/Type;
    if-eq v3, v4, :cond_2b

    .line 336
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_27

    .line 338
    new-array v5, v1, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 339
    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_27
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aput-object v4, v5, v2

    .line 343
    .end local v3    # "javaType":Lgnu/bytecode/Type;
    .end local v4    # "langType":Lgnu/bytecode/Type;
    :cond_2b
    goto :goto_f

    .line 344
    .end local v2    # "i":I
    :cond_2c
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v2, :cond_32

    .line 345
    iput-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 346
    :cond_32
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 347
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_62

    .line 348
    :cond_3f
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 349
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_62

    .line 352
    :cond_50
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p3, v2}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 357
    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_62

    .line 358
    sget-object v2, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    iput-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 360
    :cond_62
    :goto_62
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V
    .registers 4
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "source"    # Lgnu/expr/LambdaExp;

    .line 397
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 398
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 399
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    .line 400
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V
    .registers 4
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "language"    # Lgnu/expr/Language;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "numArgs"    # I

    .line 298
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Lgnu/expr/Language;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "language"    # Lgnu/expr/Language;

    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 305
    return-void
.end method

.method private compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .registers 25
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "startArg"    # I
    .param p3, "thisType"    # Lgnu/bytecode/Type;
    .param p4, "comp"    # Lgnu/expr/Compilation;

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v4

    .line 460
    .local v4, "variable":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->getName()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 462
    .local v6, "arg_type":Lgnu/bytecode/Type;
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 463
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v10, 0x1

    if-ne v2, v8, :cond_1c

    const/4 v8, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v8, 0x0

    .line 464
    .local v8, "skipArg":I
    :goto_1d
    iget-object v11, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v11, v11

    sub-int/2addr v11, v8

    .line 465
    .local v11, "arg_count":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 466
    add-int/lit8 v11, v11, -0x1

    .line 467
    :cond_29
    array-length v12, v1

    sub-int v12, v12, p2

    .line 468
    .local v12, "nargs":I
    if-eqz v2, :cond_33

    if-eqz v8, :cond_31

    goto :goto_33

    :cond_31
    const/4 v13, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v13, 0x1

    .line 474
    .local v13, "is_static":Z
    :goto_34
    const/4 v14, 0x0

    .line 475
    .local v14, "createVarargsArrayIfNeeded":Z
    if-eqz v4, :cond_77

    iget-object v15, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v15}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v15

    and-int/lit16 v15, v15, 0x80

    if-eqz v15, :cond_77

    if-lez v12, :cond_77

    iget-object v15, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v15, v15

    if-lez v15, :cond_77

    if-eqz v13, :cond_4c

    const/4 v15, 0x0

    goto :goto_4d

    :cond_4c
    const/4 v15, 0x1

    :goto_4d
    add-int/2addr v15, v11

    if-ne v12, v15, :cond_77

    .line 479
    array-length v15, v1

    sub-int/2addr v15, v10

    aget-object v15, v1, v15

    invoke-virtual {v15}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    .line 480
    .local v15, "lastType":Lgnu/bytecode/Type;
    iget-object v9, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v9

    sub-int/2addr v2, v10

    aget-object v2, v9, v2

    .line 481
    .local v2, "lastParam":Lgnu/bytecode/Type;
    instance-of v9, v15, Lgnu/bytecode/ObjectType;

    if-eqz v9, :cond_77

    instance-of v9, v2, Lgnu/bytecode/ArrayType;

    if-eqz v9, :cond_77

    move-object v9, v2

    check-cast v9, Lgnu/bytecode/ArrayType;

    invoke-virtual {v9}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    instance-of v9, v9, Lgnu/bytecode/ArrayType;

    if-nez v9, :cond_77

    .line 486
    instance-of v9, v15, Lgnu/bytecode/ArrayType;

    if-nez v9, :cond_76

    .line 487
    const/4 v14, 0x1

    .line 488
    :cond_76
    const/4 v4, 0x0

    .line 491
    .end local v2    # "lastParam":Lgnu/bytecode/Type;
    .end local v15    # "lastType":Lgnu/bytecode/Type;
    :cond_77
    if-eqz v4, :cond_81

    if-eqz v13, :cond_7d

    const/4 v2, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    sub-int v2, v11, v2

    goto :goto_84

    :cond_81
    array-length v2, v1

    sub-int v2, v2, p2

    .line 492
    .local v2, "fix_arg_count":I
    :goto_84
    iget-object v9, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    if-nez v9, :cond_8a

    const/4 v9, 0x0

    goto :goto_8e

    :cond_8a
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v9

    .line 493
    .local v9, "argDecl":Lgnu/expr/Declaration;
    :goto_8e
    if-eqz v9, :cond_9a

    invoke-virtual {v9}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v15

    if-eqz v15, :cond_9a

    .line 494
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    .line 495
    :cond_9a
    const/4 v15, 0x0

    .line 497
    .local v15, "i":I
    :goto_9b
    if-eqz v4, :cond_c8

    if-ne v15, v2, :cond_c8

    .line 499
    iget-object v10, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v16, v11, -0x1

    add-int v16, v16, v8

    aget-object v6, v10, v16

    .line 500
    sget-object v10, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    if-eq v6, v10, :cond_c2

    sget-object v10, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    if-ne v6, v10, :cond_b0

    goto :goto_c2

    .line 505
    :cond_b0
    array-length v10, v1

    sub-int v10, v10, p2

    sub-int/2addr v10, v2

    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 506
    move-object v10, v6

    check-cast v10, Lgnu/bytecode/ArrayType;

    invoke-virtual {v10}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 507
    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    goto :goto_c8

    .line 502
    :cond_c2
    :goto_c2
    add-int v10, p2, v15

    invoke-static {v1, v10, v3}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 503
    goto :goto_cb

    .line 509
    :cond_c8
    :goto_c8
    if-lt v15, v12, :cond_cc

    .line 510
    nop

    .line 553
    .end local v15    # "i":I
    :goto_cb
    return-void

    .line 511
    .restart local v15    # "i":I
    :cond_cc
    if-eqz v14, :cond_d4

    add-int/lit8 v10, v15, 0x1

    if-ne v10, v12, :cond_d4

    const/4 v10, 0x1

    goto :goto_d5

    :cond_d4
    const/4 v10, 0x0

    .line 512
    .local v10, "createVarargsNow":Z
    :goto_d5
    if-lt v15, v2, :cond_e3

    .line 514
    move/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "variable":Z
    .local v16, "variable":Z
    invoke-virtual {v7, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 515
    sub-int v4, v15, v2

    invoke-virtual {v7, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_105

    .line 518
    .end local v16    # "variable":Z
    .restart local v4    # "variable":Z
    :cond_e3
    move/from16 v16, v4

    .end local v4    # "variable":Z
    .restart local v16    # "variable":Z
    if-eqz v9, :cond_f0

    if-nez v13, :cond_eb

    if-lez v15, :cond_f0

    :cond_eb
    invoke-virtual {v9}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_104

    :cond_f0
    if-eqz v13, :cond_f9

    iget-object v4, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int v17, v15, v8

    aget-object v4, v4, v17

    goto :goto_104

    :cond_f9
    if-nez v15, :cond_fe

    move-object/from16 v4, p3

    goto :goto_104

    :cond_fe
    iget-object v4, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v17, v15, -0x1

    aget-object v4, v4, v17

    :goto_104
    move-object v6, v4

    .line 522
    :goto_105
    invoke-virtual {v3, v6}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 523
    if-eqz v10, :cond_10d

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_10e

    :cond_10d
    move-object v4, v6

    .line 524
    .local v4, "argTypeForTarget":Lgnu/bytecode/Type;
    :goto_10e
    move/from16 v17, v8

    .end local v8    # "skipArg":I
    .local v17, "skipArg":I
    iget-object v8, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    if-nez v8, :cond_11b

    add-int/lit8 v8, v15, 0x1

    invoke-static {v4, v5, v8}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v8

    goto :goto_11f

    :cond_11b
    invoke-static {v4, v8, v15}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;

    move-result-object v8

    .line 527
    .local v8, "target":Lgnu/expr/Target;
    :goto_11f
    add-int v18, p2, v15

    aget-object v0, v1, v18

    add-int v18, p2, v15

    move-object/from16 v19, v4

    .end local v4    # "argTypeForTarget":Lgnu/bytecode/Type;
    .local v19, "argTypeForTarget":Lgnu/bytecode/Type;
    aget-object v4, v1, v18

    invoke-virtual {v0, v3, v8, v4}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 528
    if-eqz v10, :cond_162

    .line 532
    move-object v0, v6

    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 533
    .local v0, "eltype":Lgnu/bytecode/Type;
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 534
    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 535
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 536
    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 537
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 538
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 539
    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 541
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 542
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 543
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 544
    invoke-virtual {v0, v7}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 545
    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 546
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_163

    .line 528
    .end local v0    # "eltype":Lgnu/bytecode/Type;
    :cond_162
    const/4 v4, 0x0

    .line 548
    :goto_163
    if-lt v15, v2, :cond_168

    .line 549
    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 550
    :cond_168
    if-eqz v9, :cond_173

    if-nez v13, :cond_16e

    if-lez v15, :cond_173

    .line 551
    :cond_16e
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move-object v9, v0

    .line 495
    .end local v8    # "target":Lgnu/expr/Target;
    .end local v10    # "createVarargsNow":Z
    .end local v19    # "argTypeForTarget":Lgnu/bytecode/Type;
    :cond_173
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    move/from16 v8, v17

    const/4 v10, 0x1

    goto/16 :goto_9b
.end method

.method public static compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V
    .registers 13
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "isTailCall"    # Z
    .param p4, "op_code"    # I
    .param p5, "stackType"    # Lgnu/bytecode/Type;

    .line 657
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 658
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 659
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 660
    invoke-static {p1}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 662
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    goto :goto_81

    .line 664
    :cond_1c
    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_85

    instance-of v1, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v1, :cond_2f

    move-object v1, p2

    check-cast v1, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v1}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_85

    .line 707
    :cond_2f
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 708
    sget-object p5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 709
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 710
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 711
    .local v1, "saveIndex":Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 712
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v4, "startFromContext"

    invoke-virtual {v3, v4, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 714
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 715
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitWithCleanupStart()V

    .line 716
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 717
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitWithCleanupCatch(Lgnu/bytecode/Variable;)V

    .line 718
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 719
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 720
    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v3, "cleanupFromContext"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 722
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitWithCleanupDone()V

    .line 723
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 724
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 725
    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v3, "getFromContext"

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 727
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 729
    .end local v1    # "saveIndex":Lgnu/bytecode/Variable;
    :goto_81
    invoke-virtual {p2, p0, p5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 730
    return-void

    .line 668
    :cond_85
    :goto_85
    const/4 v1, 0x0

    .line 669
    .local v1, "consumerFld":Lgnu/bytecode/Field;
    const/4 v3, 0x0

    .line 670
    .local v3, "saveCallContext":Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 671
    instance-of v4, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v4, :cond_bb

    .line 673
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 674
    .local v4, "typeCallContext":Lgnu/bytecode/ClassType;
    const-string v5, "consumer"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 678
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 679
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 680
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 681
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 682
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 683
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 684
    const-string v5, "gnu.lists.VoidConsumer"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    const-string v6, "instance"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 686
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 688
    .end local v4    # "typeCallContext":Lgnu/bytecode/ClassType;
    :cond_bb
    invoke-virtual {v0, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 689
    if-eqz p3, :cond_ce

    .line 691
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 692
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "runUntilDone"

    invoke-virtual {v4, v5, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 695
    :cond_ce
    instance-of v2, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v2, :cond_de

    .line 698
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 699
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 700
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 701
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 703
    :cond_de
    return-void
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V
    .registers 14
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "cwriter"    # Lgnu/bytecode/ClassTypeWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    instance-of v0, p0, Lgnu/expr/GenericProc;

    if-eqz v0, :cond_31

    .line 827
    move-object v0, p0

    check-cast v0, Lgnu/expr/GenericProc;

    .line 828
    .local v0, "gproc":Lgnu/expr/GenericProc;
    invoke-virtual {v0}, Lgnu/expr/GenericProc;->getMethodCount()I

    move-result v1

    .line 829
    .local v1, "n":I
    const-string v2, "Generic procedure with "

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 831
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const-string v2, " method."

    goto :goto_1b

    :cond_19
    const-string v2, "methods."

    :goto_1b
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 832
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_30

    .line 834
    invoke-virtual {v0, v2}, Lgnu/expr/GenericProc;->getMethod(I)Lgnu/mapping/MethodProc;

    move-result-object v3

    .line 835
    .local v3, "mproc":Lgnu/mapping/Procedure;
    if-eqz v3, :cond_2d

    .line 837
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 838
    invoke-static {v3, p1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 832
    .end local v3    # "mproc":Lgnu/mapping/Procedure;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 841
    .end local v2    # "i":I
    :cond_30
    return-void

    .line 843
    .end local v0    # "gproc":Lgnu/expr/GenericProc;
    .end local v1    # "n":I
    :cond_31
    const/4 v0, 0x0

    .line 844
    .local v0, "pname":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 845
    .local v1, "cl":Ljava/lang/Class;
    instance-of v2, p0, Lgnu/expr/ModuleMethod;

    if-eqz v2, :cond_44

    .line 846
    move-object v2, p0

    check-cast v2, Lgnu/expr/ModuleMethod;

    iget-object v2, v2, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5b

    .line 847
    :cond_44
    instance-of v2, p0, Lgnu/expr/PrimProcedure;

    if-eqz v2, :cond_5b

    .line 849
    move-object v2, p0

    check-cast v2, Lgnu/expr/PrimProcedure;

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 850
    .local v2, "pmethod":Lgnu/bytecode/Method;
    if-eqz v2, :cond_5b

    .line 852
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 853
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 856
    .end local v2    # "pmethod":Lgnu/bytecode/Method;
    :cond_5b
    :goto_5b
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 857
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, "rname":Ljava/lang/String;
    new-instance v5, Lgnu/bytecode/ClassType;

    invoke-direct {v5}, Lgnu/bytecode/ClassType;-><init>()V

    .line 860
    .local v5, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 861
    .local v6, "rin":Ljava/io/InputStream;
    if-eqz v6, :cond_d8

    .line 863
    new-instance v7, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v7, v5, v6}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 864
    .local v7, "cinput":Lgnu/bytecode/ClassFileInput;
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->setClass(Lgnu/bytecode/ClassType;)V

    .line 865
    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 866
    .local v8, "resource":Ljava/net/URL;
    const-string v9, "In class "

    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 868
    if-eqz v8, :cond_a7

    .line 870
    const-string v9, " at "

    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    .line 873
    :cond_a7
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 874
    if-nez v0, :cond_bc

    .line 876
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 877
    if-nez v0, :cond_b8

    .line 879
    const-string v9, "Anonymous function - unknown method."

    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 880
    return-void

    .line 882
    :cond_b8
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_bc
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v9

    .line 885
    .local v9, "method":Lgnu/bytecode/Method;
    :goto_c0
    if-eqz v9, :cond_d4

    .line 887
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 888
    .local v10, "mname":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 889
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 885
    .end local v10    # "mname":Ljava/lang/String;
    :cond_cf
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v9

    goto :goto_c0

    .line 892
    .end local v9    # "method":Lgnu/bytecode/Method;
    :cond_d4
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 893
    return-void

    .line 862
    .end local v7    # "cinput":Lgnu/bytecode/ClassFileInput;
    .end local v8    # "resource":Ljava/net/URL;
    :cond_d8
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "missing resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_f2

    :goto_f1
    throw v7

    :goto_f2
    goto :goto_f1
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V
    .registers 5
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 819
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, v0}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 820
    return-void
.end method

.method public static disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .registers 4
    .param p0, "pproc"    # Lgnu/mapping/Procedure;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 812
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 813
    .local v0, "cons":Lgnu/lists/Consumer;
    instance-of v1, v0, Ljava/io/Writer;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/io/Writer;

    goto :goto_f

    :cond_a
    new-instance v1, Lgnu/lists/ConsumerWriter;

    invoke-direct {v1, v0}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    :goto_f
    invoke-static {p0, v1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V

    .line 814
    return-void
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .registers 23
    .param p0, "procClass"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "atypes"    # [Lgnu/bytecode/Type;
    .param p4, "language"    # Lgnu/expr/Language;

    .line 936
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 937
    .local v3, "best":Lgnu/expr/PrimProcedure;
    const/4 v4, -0x1

    .line 938
    .local v4, "bestCode":I
    const/4 v5, 0x0

    .line 941
    .local v5, "bestIsApply":Z
    const/4 v0, 0x0

    if-nez v1, :cond_b

    .line 942
    return-object v0

    .line 943
    :cond_b
    :try_start_b
    invoke-static/range {p1 .. p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 944
    .local v6, "mangledName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 945
    .local v7, "mangledNameV":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$V$X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 946
    .local v8, "mangledNameVX":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$X"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 947
    .local v9, "mangledNameX":Ljava/lang/String;
    const/4 v10, 0x1

    .line 948
    .local v10, "applyOk":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v11

    .line 949
    .local v11, "meth":Lgnu/bytecode/Method;
    :goto_4d
    if-eqz v11, :cond_f3

    .line 951
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v12

    .line 952
    .local v12, "mods":I
    and-int/lit8 v13, v12, 0x9

    const/16 v14, 0x9

    if-eq v13, v14, :cond_60

    .line 955
    if-eqz v2, :cond_91

    iget-object v13, v2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v13, :cond_60

    .line 956
    goto :goto_91

    .line 958
    :cond_60
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 960
    .local v13, "mname":Ljava/lang/String;
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_98

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_98

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_98

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7d

    goto :goto_98

    .line 967
    :cond_7d
    if-eqz v10, :cond_91

    const-string v14, "apply"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8f

    const-string v14, "apply$V"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 970
    :cond_8f
    const/4 v14, 0x1

    .local v14, "isApply":Z
    goto :goto_99

    .line 949
    .end local v12    # "mods":I
    .end local v13    # "mname":Ljava/lang/String;
    .end local v14    # "isApply":Z
    :cond_91
    :goto_91
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v16, v0

    goto :goto_e0

    .line 965
    .restart local v12    # "mods":I
    .restart local v13    # "mname":Ljava/lang/String;
    :cond_98
    :goto_98
    const/4 v14, 0x0

    .line 974
    .restart local v14    # "isApply":Z
    :goto_99
    if-nez v14, :cond_a1

    .line 977
    const/4 v10, 0x0

    .line 978
    if-eqz v5, :cond_a1

    .line 980
    const/4 v3, 0x0

    .line 981
    const/4 v4, -0x1

    .line 982
    const/4 v5, 0x0

    .line 985
    :cond_a1
    new-instance v15, Lgnu/expr/PrimProcedure;
    :try_end_a3
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_a3} :catch_f8

    move-object/from16 v2, p4

    :try_start_a5
    invoke-direct {v15, v11, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 986
    .local v15, "prproc":Lgnu/expr/PrimProcedure;
    invoke-virtual {v15, v1}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_ab} :catch_ef

    .line 987
    move-object/from16 v1, p3

    :try_start_ad
    invoke-virtual {v15, v1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v16

    move/from16 v17, v16

    .line 988
    .local v17, "code":I
    move/from16 v0, v17

    .end local v17    # "code":I
    .local v0, "code":I
    if-ltz v0, :cond_de

    if-ge v0, v4, :cond_bc

    .line 989
    const/16 v16, 0x0

    goto :goto_e0

    .line 990
    :cond_bc
    if-le v0, v4, :cond_c2

    .line 992
    move-object v3, v15

    const/16 v16, 0x0

    goto :goto_db

    .line 994
    :cond_c2
    if-eqz v3, :cond_d9

    .line 996
    invoke-static {v3, v15}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v17

    check-cast v17, Lgnu/expr/PrimProcedure;

    move-object/from16 v3, v17

    .line 997
    if-nez v3, :cond_d6

    .line 999
    if-lez v4, :cond_d3

    .line 1000
    const/16 v16, 0x0

    return-object v16

    .line 999
    :cond_d3
    const/16 v16, 0x0

    goto :goto_db

    .line 997
    :cond_d6
    const/16 v16, 0x0

    goto :goto_db

    .line 994
    :cond_d9
    const/16 v16, 0x0

    .line 1003
    :goto_db
    move v4, v0

    .line 1004
    move v5, v14

    goto :goto_e0

    .line 988
    :cond_de
    const/16 v16, 0x0

    .line 949
    .end local v0    # "code":I
    .end local v12    # "mods":I
    .end local v13    # "mname":Ljava/lang/String;
    .end local v14    # "isApply":Z
    .end local v15    # "prproc":Lgnu/expr/PrimProcedure;
    :goto_e0
    invoke-virtual {v11}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v0
    :try_end_e4
    .catch Ljava/lang/SecurityException; {:try_start_ad .. :try_end_e4} :catch_ed

    move-object v11, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    goto/16 :goto_4d

    .line 1007
    .end local v6    # "mangledName":Ljava/lang/String;
    .end local v7    # "mangledNameV":Ljava/lang/String;
    .end local v8    # "mangledNameVX":Ljava/lang/String;
    .end local v9    # "mangledNameX":Ljava/lang/String;
    .end local v10    # "applyOk":Z
    .end local v11    # "meth":Lgnu/bytecode/Method;
    :catch_ed
    move-exception v0

    goto :goto_fd

    :catch_ef
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_fd

    .line 949
    .restart local v6    # "mangledName":Ljava/lang/String;
    .restart local v7    # "mangledNameV":Ljava/lang/String;
    .restart local v8    # "mangledNameVX":Ljava/lang/String;
    .restart local v9    # "mangledNameX":Ljava/lang/String;
    .restart local v10    # "applyOk":Z
    .restart local v11    # "meth":Lgnu/bytecode/Method;
    :cond_f3
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1009
    .end local v6    # "mangledName":Ljava/lang/String;
    .end local v7    # "mangledNameV":Ljava/lang/String;
    .end local v8    # "mangledNameVX":Ljava/lang/String;
    .end local v9    # "mangledNameX":Ljava/lang/String;
    .end local v10    # "applyOk":Z
    .end local v11    # "meth":Lgnu/bytecode/Method;
    goto :goto_fd

    .line 1007
    :catch_f8
    move-exception v0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1010
    :goto_fd
    return-object v3
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .registers 9
    .param p0, "procClass"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "args"    # [Lgnu/expr/Expression;
    .param p4, "language"    # Lgnu/expr/Language;

    .line 926
    array-length v0, p3

    .line 927
    .local v0, "nargs":I
    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 928
    .local v1, "atypes":[Lgnu/bytecode/Type;
    move v2, v0

    .local v2, "i":I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_11

    aget-object v3, p3, v2

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_4

    .line 929
    .end local v2    # "i":I
    :cond_11
    invoke-static {p0, p1, p2, v1, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v2

    return-object v2
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .registers 9
    .param p0, "pproc"    # Lgnu/mapping/Procedure;
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "atypes"    # [Lgnu/bytecode/Type;
    .param p3, "language"    # Lgnu/expr/Language;

    .line 779
    instance-of v0, p0, Lgnu/expr/GenericProc;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 781
    move-object v0, p0

    check-cast v0, Lgnu/expr/GenericProc;

    .line 782
    .local v0, "gproc":Lgnu/expr/GenericProc;
    iget-object v2, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 783
    .local v2, "methods":[Lgnu/mapping/MethodProc;
    const/4 p0, 0x0

    .line 784
    iget v3, v0, Lgnu/expr/GenericProc;->count:I

    .local v3, "i":I
    :goto_d
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_20

    .line 786
    aget-object v4, v2, v3

    invoke-virtual {v4, p2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v4

    .line 787
    .local v4, "applic":I
    if-gez v4, :cond_1a

    .line 788
    goto :goto_d

    .line 789
    :cond_1a
    if-eqz p0, :cond_1d

    .line 790
    return-object v1

    .line 791
    :cond_1d
    aget-object p0, v2, v3

    .line 792
    .end local v4    # "applic":I
    goto :goto_d

    .line 793
    .end local v3    # "i":I
    :cond_20
    if-nez p0, :cond_23

    .line 794
    return-object v1

    .line 796
    .end local v0    # "gproc":Lgnu/expr/GenericProc;
    .end local v2    # "methods":[Lgnu/mapping/MethodProc;
    :cond_23
    instance-of v0, p0, Lgnu/expr/PrimProcedure;

    if-eqz v0, :cond_31

    .line 798
    move-object v0, p0

    check-cast v0, Lgnu/expr/PrimProcedure;

    .line 799
    .local v0, "prproc":Lgnu/expr/PrimProcedure;
    invoke-virtual {v0, p2}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v2

    if-ltz v2, :cond_31

    .line 800
    return-object v0

    .line 802
    .end local v0    # "prproc":Lgnu/expr/PrimProcedure;
    :cond_31
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 803
    .local v0, "pclass":Ljava/lang/Class;
    if-nez v0, :cond_38

    .line 804
    return-object v1

    .line 805
    :cond_38
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, p2, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v1

    return-object v1
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .registers 8
    .param p0, "pproc"    # Lgnu/mapping/Procedure;
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "language"    # Lgnu/expr/Language;

    .line 770
    array-length v0, p2

    .line 771
    .local v0, "nargs":I
    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 772
    .local v1, "atypes":[Lgnu/bytecode/Type;
    move v2, v0

    .local v2, "i":I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_11

    aget-object v3, p2, v2

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_4

    .line 773
    .end local v2    # "i":I
    :cond_11
    invoke-static {p0, p1, v1, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v2

    return-object v2
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .registers 4
    .param p0, "pproc"    # Lgnu/mapping/Procedure;
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 761
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodFor(Ljava/lang/Class;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .registers 6
    .param p0, "procClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "args"    # [Lgnu/expr/Expression;
    .param p4, "language"    # Lgnu/expr/Language;

    .line 918
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-static {v0, p1, p2, p3, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 4
    .param p0, "pproc"    # Ljava/lang/Object;

    .line 898
    instance-of v0, p0, Lgnu/expr/ModuleMethod;

    if-eqz v0, :cond_e

    .line 899
    move-object v0, p0

    check-cast v0, Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "procClass":Ljava/lang/Class;
    goto :goto_12

    .line 901
    .end local v0    # "procClass":Ljava/lang/Class;
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 904
    .restart local v0    # "procClass":Ljava/lang/Class;
    :goto_12
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_18} :catch_1c

    if-ne v1, v2, :cond_1b

    .line 905
    return-object v0

    .line 909
    :cond_1b
    goto :goto_1d

    .line 907
    :catch_1c
    move-exception v1

    .line 910
    :goto_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private init(Lgnu/bytecode/Method;)V
    .registers 8
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 364
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 365
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    .line 366
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_f

    .line 367
    const/16 v1, 0xb8

    iput v1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_42

    .line 370
    :cond_f
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 371
    .local v1, "mclass":Lgnu/bytecode/ClassType;
    iget-char v2, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v3, 0x50

    const/16 v4, 0xb7

    if-ne v2, v3, :cond_1e

    .line 372
    iput v4, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_42

    .line 375
    :cond_1e
    const/16 v2, 0x56

    iput-char v2, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 376
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 377
    iput v4, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_42

    .line 378
    :cond_31
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3e

    .line 379
    const/16 v2, 0xb9

    iput v2, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_42

    .line 381
    :cond_3e
    const/16 v2, 0xb6

    iput v2, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 384
    .end local v1    # "mclass":Lgnu/bytecode/ClassType;
    :goto_42
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v1

    .line 385
    .local v1, "mtypes":[Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 387
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 388
    .local v2, "len":I
    new-array v4, v2, [Lgnu/bytecode/Type;

    .line 389
    .local v4, "types":[Lgnu/bytecode/Type;
    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move-object v1, v4

    .line 392
    .end local v2    # "len":I
    .end local v4    # "types":[Lgnu/bytecode/Type;
    :cond_60
    iput-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 393
    return-void
.end method

.method public static makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .registers 4
    .param p0, "opcode"    # I
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 420
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 421
    .local v0, "args":[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 422
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 423
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .registers 4
    .param p0, "opcode"    # I
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 412
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 413
    .local v0, "args":[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 414
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static takesContext(Lgnu/bytecode/Method;)Z
    .registers 3
    .param p0, "method"    # Lgnu/bytecode/Method;

    .line 75
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 12
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v0

    .line 241
    .local v0, "arg_count":I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v1

    .line 242
    .local v1, "is_constructor":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    iget-object v4, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    .line 246
    .local v4, "slink":Z
    :goto_1a
    :try_start_1a
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    if-nez v5, :cond_73

    .line 248
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v5

    .line 249
    .local v5, "clas":Ljava/lang/Class;
    if-eqz v4, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    :goto_2d
    add-int/2addr v6, v0

    new-array v6, v6, [Ljava/lang/Class;

    .line 250
    .local v6, "paramTypes":[Ljava/lang/Class;
    move v7, v0

    .local v7, "i":I
    :goto_31
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_46

    .line 251
    if-eqz v4, :cond_39

    const/4 v8, 0x1

    goto :goto_3a

    :cond_39
    const/4 v8, 0x0

    :goto_3a
    add-int/2addr v8, v7

    iget-object v9, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v6, v8

    goto :goto_31

    .line 252
    .end local v7    # "i":I
    :cond_46
    if-eqz v4, :cond_58

    .line 253
    iget-object v7, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    .line 254
    :cond_58
    if-eqz v1, :cond_61

    .line 255
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    iput-object v7, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    goto :goto_73

    .line 256
    :cond_61
    iget-object v7, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v8, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-eq v7, v8, :cond_73

    .line 257
    iget-object v7, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    .line 260
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "paramTypes":[Ljava/lang/Class;
    :cond_73
    :goto_73
    if-eqz v1, :cond_94

    .line 262
    iget-object v5, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 263
    .local v5, "args":[Ljava/lang/Object;
    if-eqz v4, :cond_8b

    .line 265
    array-length v6, v5

    add-int/2addr v6, v2

    .line 266
    .local v6, "nargs":I
    new-array v7, v6, [Ljava/lang/Object;

    .line 267
    .local v7, "xargs":[Ljava/lang/Object;
    add-int/lit8 v8, v6, -0x1

    invoke-static {v5, v3, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v2, Lgnu/expr/PairClassType;

    iget-object v2, v2, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    aput-object v2, v7, v3

    .line 269
    move-object v5, v7

    .line 272
    .end local v6    # "nargs":I
    .end local v7    # "xargs":[Ljava/lang/Object;
    :cond_8b
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v2, Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .end local v5    # "args":[Ljava/lang/Object;
    .local v2, "result":Ljava/lang/Object;
    goto :goto_c3

    .line 275
    .end local v2    # "result":Ljava/lang/Object;
    :cond_94
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    sget-object v5, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    if-ne v2, v5, :cond_b1

    .line 278
    iget-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 279
    .local v2, "arr":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 280
    .local v5, "elClass":Ljava/lang/Class;
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 281
    .local v6, "n":I
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 282
    .local v7, "result":Ljava/lang/Object;
    invoke-static {v2, v3, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    .end local v2    # "arr":Ljava/lang/Object;
    .end local v5    # "elClass":Ljava/lang/Class;
    .end local v6    # "n":I
    move-object v2, v7

    goto :goto_c3

    .line 285
    .end local v7    # "result":Ljava/lang/Object;
    :cond_b1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    check-cast v3, Ljava/lang/reflect/Method;

    iget-object v5, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v6, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 287
    .local v2, "result":Ljava/lang/Object;
    :goto_c3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v3

    if-nez v3, :cond_ce

    .line 288
    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v3, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V
    :try_end_ce
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_ce} :catch_d0

    .line 293
    .end local v2    # "result":Ljava/lang/Object;
    :cond_ce
    nop

    .line 294
    return-void

    .line 290
    :catch_d0
    move-exception v2

    .line 292
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_d7

    :goto_d6
    throw v3

    :goto_d7
    goto :goto_d6
.end method

.method compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 15
    .param p1, "thisType"    # Lgnu/bytecode/Type;
    .param p2, "exp"    # Lgnu/expr/ApplyExp;
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .line 603
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 604
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 605
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    iget-object v8, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 606
    .local v8, "stackType":Lgnu/bytecode/Type;
    const/4 v2, 0x0

    .line 607
    .local v2, "startArg":I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 609
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v3, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    :goto_1b
    move-object v3, v4

    .line 610
    .local v3, "mclass":Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 612
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4, v3, p3}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 614
    :cond_28
    const/4 p1, 0x0

    .line 615
    const/4 v2, 0x1

    .line 616
    .end local v3    # "mclass":Lgnu/bytecode/ClassType;
    move v9, v2

    goto :goto_7d

    .line 619
    :cond_2c
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v3

    const/16 v5, 0xb7

    if-ne v3, v5, :cond_6b

    iget-char v3, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v5, 0x50

    if-ne v3, v5, :cond_6b

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<init>"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 622
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v3, :cond_4d

    goto :goto_51

    :cond_4d
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    :goto_51
    move-object v3, v4

    .line 623
    .restart local v3    # "mclass":Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 625
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 627
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 628
    const/4 p1, 0x0

    .line 629
    const/4 v2, 0x1

    .line 631
    .end local v3    # "mclass":Lgnu/bytecode/ClassType;
    :cond_69
    move v9, v2

    goto :goto_7d

    .line 632
    :cond_6b
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 633
    const/4 v2, 0x1

    move v9, v2

    goto :goto_7d

    .line 635
    :cond_7c
    move v9, v2

    .end local v2    # "startArg":I
    .local v9, "startArg":I
    :goto_7d
    invoke-direct {p0, v0, v9, p1, p3}, Lgnu/expr/PrimProcedure;->compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 637
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v3, :cond_92

    .line 639
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v2

    array-length v3, v0

    iget-object v4, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v1, v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPrimop(IILgnu/bytecode/Type;)V

    .line 640
    invoke-virtual {p4, p3, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_9e

    .line 644
    :cond_92
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v5

    iget v6, p0, Lgnu/expr/PrimProcedure;->op_code:I

    move-object v2, p3

    move-object v4, p4

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    .line 647
    :goto_9e
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 14
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 557
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 558
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    move-object v1, v2

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 559
    .local v1, "mclass":Lgnu/bytecode/ClassType;
    :goto_f
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 560
    .local v3, "args":[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 562
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 575
    array-length v4, v3

    .line 576
    .local v4, "nargs":I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letStart()V

    .line 577
    new-array v5, v4, [Lgnu/expr/Expression;

    .line 578
    .local v5, "xargs":[Lgnu/expr/Expression;
    const/4 v6, 0x0

    aget-object v7, v3, v6

    aput-object v7, v5, v6

    .line 579
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2d
    if-ge v6, v4, :cond_47

    .line 581
    aget-object v7, v3, v6

    .line 582
    .local v7, "argi":Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {p2, v2, v8, v7}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v8

    .line 583
    .local v8, "d":Lgnu/expr/Declaration;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 584
    new-instance v9, Lgnu/expr/ReferenceExp;

    invoke-direct {v9, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v9, v5, v6

    .line 579
    .end local v7    # "argi":Lgnu/expr/Expression;
    .end local v8    # "d":Lgnu/expr/Declaration;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 586
    .end local v6    # "i":I
    :cond_47
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letEnter()V

    .line 587
    new-instance v2, Lgnu/expr/ApplyExp;

    iget-object v6, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-direct {v2, v6, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v2}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v2

    .line 588
    .local v2, "let":Lgnu/expr/LetExp;
    invoke-virtual {v2, p2, p3}, Lgnu/expr/LetExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 589
    return-void

    .line 591
    .end local v2    # "let":Lgnu/expr/LetExp;
    .end local v4    # "nargs":I
    .end local v5    # "xargs":[Lgnu/expr/Expression;
    :cond_59
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 592
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 594
    :cond_5f
    array-length v4, v3

    invoke-static {p0, v4}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "arg_error":Ljava/lang/String;
    if-eqz v4, :cond_6b

    .line 596
    const/16 v5, 0x65

    invoke-virtual {p2, v5, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 598
    :cond_6b
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_73

    :cond_72
    move-object v2, v1

    :goto_73
    invoke-virtual {p0, v2, p1, p2, p3}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 599
    return-void
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .registers 2

    .line 43
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1015
    invoke-super {p0}, Lgnu/mapping/MethodProc;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 1017
    return-object v0

    .line 1018
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-virtual {p0, v0}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    .line 1020
    return-object v0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .registers 6
    .param p1, "index"    # I

    .line 734
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 736
    if-nez p1, :cond_18

    .line 737
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    :goto_17
    return-object v0

    .line 739
    :cond_18
    add-int/lit8 p1, p1, -0x1

    .line 741
    :cond_1a
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v1, v0

    .line 742
    .local v1, "lenTypes":I
    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_24

    .line 743
    aget-object v0, v0, p1

    return-object v0

    .line 744
    :cond_24
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v0

    .line 745
    .local v0, "varArgs":Z
    if-ge p1, v1, :cond_31

    if-nez v0, :cond_31

    .line 746
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, p1

    return-object v2

    .line 748
    :cond_31
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    .line 749
    .local v2, "restType":Lgnu/bytecode/Type;
    instance-of v3, v2, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_43

    .line 750
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    return-object v3

    .line 752
    :cond_43
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v3
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .registers 2

    .line 445
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType()Lgnu/bytecode/Type;
    .registers 2

    .line 36
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 41
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .registers 2

    .line 440
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public getVerboseName()Ljava/lang/String;
    .registers 4

    .line 1025
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1026
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v1, :cond_1b

    .line 1028
    const-string v1, "<op "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1029
    iget v1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1030
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 1034
    :cond_1b
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1036
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    :goto_34
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_54

    .line 1041
    if-lez v1, :cond_46

    .line 1042
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_46
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1045
    .end local v1    # "i":I
    :cond_54
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .registers 7
    .param p1, "argTypes"    # [Lgnu/bytecode/Type;

    .line 80
    invoke-super {p0, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 81
    .local v0, "app":I
    array-length v1, p1

    .line 82
    .local v1, "nargs":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_39

    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_39

    if-lez v1, :cond_39

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_39

    .line 88
    new-array v2, v1, [Lgnu/bytecode/Type;

    .line 89
    .local v2, "tmp":[Lgnu/bytecode/Type;
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p1, v4

    check-cast v4, Lgnu/bytecode/ArrayType;

    invoke-virtual {v4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-super {p0, v2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    return v3

    .line 93
    .end local v2    # "tmp":[Lgnu/bytecode/Type;
    :cond_39
    return v0
.end method

.method public final isConstructor()Z
    .registers 3

    .line 99
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_10

    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isSideEffectFree()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    return v0
.end method

.method public isSpecial()Z
    .registers 3

    .line 39
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 132
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 138
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 144
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 150
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p4}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 157
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p5}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 15

    .line 162
    array-length v0, p1

    .line 163
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    .line 164
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v2

    .line 165
    if-ge v0, v2, :cond_f

    .line 166
    const/high16 p1, -0xf0000

    or-int/2addr p1, v2

    return p1

    .line 167
    :cond_f
    if-nez v1, :cond_17

    if-le v0, v2, :cond_17

    .line 168
    const/high16 p1, -0xe0000

    or-int/2addr p1, v2

    return p1

    .line 169
    :cond_17
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    .line 170
    nop

    .line 171
    nop

    .line 172
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2d

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v4, 0x1

    .line 173
    :goto_2e
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v7

    .line 174
    new-array v8, v3, [Ljava/lang/Object;

    .line 175
    if-eqz v7, :cond_3a

    .line 176
    add-int/lit8 v3, v3, -0x1

    aput-object p2, v8, v3

    .line 178
    :cond_3a
    const/4 v7, 0x0

    if-eqz v1, :cond_6c

    .line 180
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int/2addr v3, v6

    aget-object v1, v1, v3

    .line 181
    sget-object v9, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    if-eq v1, v9, :cond_61

    sget-object v9, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    if-ne v1, v9, :cond_4b

    goto :goto_61

    .line 189
    :cond_4b
    check-cast v1, Lgnu/bytecode/ArrayType;

    .line 190
    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    .line 192
    sub-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 194
    aput-object v0, v8, v3

    goto :goto_6e

    .line 183
    :cond_61
    :goto_61
    invoke-static {p1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    aput-object v0, v8, v3

    .line 184
    nop

    .line 185
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    goto :goto_6e

    .line 178
    :cond_6c
    move-object v0, v7

    move-object v1, v0

    .line 197
    :goto_6e
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 198
    aget-object v7, p1, v5

    goto :goto_8c

    .line 199
    :cond_77
    if-eqz v4, :cond_8b

    .line 203
    :try_start_79
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    aget-object v7, p1, v5

    invoke-virtual {v3, v7}, Lgnu/bytecode/ClassType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_79 .. :try_end_85} :catch_86

    .line 208
    goto :goto_8c

    .line 205
    :catch_86
    move-exception p1

    .line 207
    const p1, -0xbffff

    return p1

    .line 211
    :cond_8b
    nop

    .line 212
    :goto_8c
    move v3, v4

    :goto_8d
    array-length v9, p1

    if-ge v3, v9, :cond_bb

    .line 214
    aget-object v9, p1, v3

    .line 215
    if-ge v3, v2, :cond_9b

    iget-object v10, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int v11, v3, v4

    aget-object v10, v10, v11

    goto :goto_9c

    :cond_9b
    move-object v10, v1

    .line 216
    :goto_9c
    sget-object v11, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v10, v11, :cond_ab

    .line 220
    :try_start_a0
    invoke-virtual {v10, v9}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_a4
    .catch Ljava/lang/ClassCastException; {:try_start_a0 .. :try_end_a4} :catch_a5

    .line 225
    goto :goto_ab

    .line 222
    :catch_a5
    move-exception p1

    .line 224
    const/high16 p1, -0xc0000

    add-int/2addr v3, v6

    or-int/2addr p1, v3

    return p1

    .line 227
    :cond_ab
    :goto_ab
    if-ge v3, v2, :cond_b2

    .line 228
    sub-int v10, v3, v4

    aput-object v9, v8, v10

    goto :goto_b8

    .line 229
    :cond_b2
    if-eqz v0, :cond_b8

    .line 230
    sub-int v10, v3, v2

    aput-object v9, v0, v10

    .line 212
    :cond_b8
    :goto_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 232
    :cond_bb
    iput-object v7, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 233
    iput-object v8, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 234
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 235
    return v5
.end method

.method public numArgs()I
    .registers 3

    .line 122
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v0

    .line 123
    .local v0, "num":I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_b
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 127
    :cond_13
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, -0x1

    add-int/lit16 v1, v1, -0x1000

    goto :goto_21

    :cond_1e
    shl-int/lit8 v1, v0, 0xc

    add-int/2addr v1, v0

    :goto_21
    return v1
.end method

.method public final opcode()I
    .registers 2

    .line 34
    iget v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .line 1061
    const-string v0, "#<primitive procedure "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1064
    return-void
.end method

.method public setReturnType(Lgnu/bytecode/Type;)V
    .registers 2
    .param p1, "retType"    # Lgnu/bytecode/Type;

    .line 37
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public setSideEffectFree()V
    .registers 2

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    .line 53
    return-void
.end method

.method public takesContext()Z
    .registers 2

    .line 70
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public takesTarget()Z
    .registers 2

    .line 112
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public takesVarArgs()Z
    .registers 5

    .line 58
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 60
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 61
    return v2

    .line 62
    :cond_f
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    const-string v3, "$V"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "$V$X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1

    .line 65
    .end local v0    # "name":Ljava/lang/String;
    :cond_27
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1052
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1053
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    if-nez v1, :cond_e

    const-string v1, "<unknown>"

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1054
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1055
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

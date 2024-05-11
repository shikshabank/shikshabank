.class public Lgnu/kawa/functions/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field static final CONVERT:I = 0x2

.field static final NOT:I = 0x3

.field static coerceMethod:Lgnu/bytecode/Method;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field code:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 308
    const-string v0, "kawa.lang.Continuation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .registers 3
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "code"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    .line 21
    return-void
.end method

.method private static canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;

    .line 381
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 383
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v3, v1

    .local v3, "arg0":Lgnu/expr/Expression;
    instance-of v1, v1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_26

    .line 385
    move-object v1, v3

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 386
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    iget v4, v1, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v4, v2, :cond_26

    iget v4, v1, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v2, :cond_26

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v2

    if-nez v2, :cond_26

    .line 389
    return-object v1

    .line 392
    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    .end local v3    # "arg0":Lgnu/expr/Expression;
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public static compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .registers 19
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 313
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 314
    .local v2, "lambda":Lgnu/expr/LambdaExp;
    if-nez v2, :cond_e

    .line 316
    invoke-static/range {p0 .. p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 317
    return-void

    .line 319
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 320
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 321
    .local v4, "param":Lgnu/expr/Declaration;
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_63

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v5

    if-nez v5, :cond_63

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v5

    if-nez v5, :cond_63

    .line 323
    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->setCanCall(Z)V

    .line 324
    new-instance v5, Lgnu/kawa/functions/CompileTimeContinuation;

    invoke-direct {v5}, Lgnu/kawa/functions/CompileTimeContinuation;-><init>()V

    .line 325
    .local v5, "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    instance-of v9, v1, Lgnu/expr/StackTarget;

    if-eqz v9, :cond_3b

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 326
    .local v8, "rtype":Lgnu/bytecode/Type;
    :cond_3b
    iget-object v9, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v4, v9}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v9

    .line 328
    .local v9, "runFinallyBlocks":Z
    invoke-virtual {v3, v8, v9}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v10

    .line 329
    .local v10, "bl":Lgnu/bytecode/ExitableBlock;
    iput-object v10, v5, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 330
    iput-object v1, v5, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 331
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v11}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    new-instance v11, Lgnu/expr/ApplyExp;

    new-array v7, v7, [Lgnu/expr/Expression;

    sget-object v12, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v12, v7, v6

    invoke-direct {v11, v2, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v11, v0, v1}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 333
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 334
    return-void

    .line 337
    .end local v5    # "contProxy":Lgnu/kawa/functions/CompileTimeContinuation;
    .end local v8    # "rtype":Lgnu/bytecode/Type;
    .end local v9    # "runFinallyBlocks":Z
    .end local v10    # "bl":Lgnu/bytecode/ExitableBlock;
    :cond_63
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 338
    .local v5, "sc":Lgnu/bytecode/Scope;
    sget-object v9, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v3, v9, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v10

    .line 339
    .local v10, "contVar":Lgnu/bytecode/Variable;
    new-instance v11, Lgnu/expr/Declaration;

    invoke-direct {v11, v10}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .line 340
    .local v11, "contDecl":Lgnu/expr/Declaration;
    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 341
    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 342
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 343
    const-string v12, "<init>"

    invoke-virtual {v9, v12, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v3, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 344
    invoke-virtual {v3, v10}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 345
    instance-of v12, v1, Lgnu/expr/IgnoreTarget;

    if-nez v12, :cond_93

    instance-of v12, v1, Lgnu/expr/ConsumerTarget;

    if-eqz v12, :cond_90

    goto :goto_93

    :cond_90
    sget-object v12, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_94

    :cond_93
    :goto_93
    move-object v12, v8

    :goto_94
    invoke-virtual {v3, v6, v12}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 346
    new-instance v12, Lgnu/expr/ApplyExp;

    new-array v13, v7, [Lgnu/expr/Expression;

    new-instance v14, Lgnu/expr/ReferenceExp;

    invoke-direct {v14, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v14, v13, v6

    invoke-direct {v12, v2, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v6, v12

    .line 347
    .local v6, "app":Lgnu/expr/ApplyExp;
    invoke-virtual {v6, v0, v1}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v12

    if-eqz v12, :cond_be

    .line 351
    invoke-virtual {v3, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 352
    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 353
    const-string v7, "invoked"

    invoke-virtual {v9, v7}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v7

    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 355
    :cond_be
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 358
    invoke-virtual {v3, v8}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 359
    invoke-virtual {v3, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    instance-of v7, v1, Lgnu/expr/ConsumerTarget;

    if-eqz v7, :cond_d9

    .line 362
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 363
    const/4 v7, 0x3

    const-string v8, "handleException$X"

    invoke-virtual {v9, v8, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    .line 364
    .local v7, "handleMethod":Lgnu/bytecode/Method;
    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 365
    .end local v7    # "handleMethod":Lgnu/bytecode/Method;
    goto :goto_e8

    .line 368
    :cond_d9
    const/4 v7, 0x2

    const-string v8, "handleException"

    invoke-virtual {v9, v8, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    .line 369
    .restart local v7    # "handleMethod":Lgnu/bytecode/Method;
    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 370
    sget-object v8, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 372
    .end local v7    # "handleMethod":Lgnu/bytecode/Method;
    :goto_e8
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 374
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 375
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 376
    return-void
.end method

.method public static compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p0, "proc"    # Lgnu/kawa/functions/Convert;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 232
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 233
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_60

    .line 235
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 236
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 237
    .local v3, "type":Lgnu/bytecode/Type;
    const/4 v4, 0x1

    if-eqz v3, :cond_29

    .line 239
    aget-object v2, v0, v4

    invoke-static {v3}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 240
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 241
    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_5f

    .line 245
    :cond_29
    sget-object v5, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    if-nez v5, :cond_35

    .line 247
    const-string v5, "gnu.bytecode.Type"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    .line 249
    :cond_35
    sget-object v5, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    if-nez v5, :cond_47

    .line 251
    sget-object v5, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    sget-object v6, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const-string v8, "coerceFromObject"

    invoke-virtual {v5, v8, v6, v7, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    .line 256
    :cond_47
    aget-object v2, v0, v2

    sget-object v5, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v2, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 257
    aget-object v2, v0, v4

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    sget-object v2, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 259
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 261
    :cond_5f
    :goto_5f
    return-void

    .line 234
    .end local v1    # "code":Lgnu/bytecode/CodeAttr;
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_60
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong number of arguments to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forConvert(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static forNot(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .registers 4
    .param p0, "proc"    # Ljava/lang/Object;

    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    move-object v1, p0

    check-cast v1, Lgnu/mapping/Procedure;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static validateApplyAppendValues(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 139
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 140
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 141
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 142
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 143
    :cond_f
    array-length v1, v0

    if-nez v1, :cond_15

    .line 144
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v1

    .line 145
    :cond_15
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v1

    .line 146
    .local v1, "folded":Lgnu/expr/Expression;
    if-eq v1, p0, :cond_1c

    .line 147
    return-object v1

    .line 148
    :cond_1c
    return-object p0
.end method

.method public static validateApplyCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 294
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 295
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_23

    .line 297
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 298
    iput-object p0, v0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 299
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    iput-object v1, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 300
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 301
    .local v1, "contDecl":Lgnu/expr/Declaration;
    const-wide/16 v2, 0x2000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_23

    .line 302
    sget-object v2, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 304
    .end local v1    # "contDecl":Lgnu/expr/Declaration;
    :cond_23
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 305
    return-object p0
.end method

.method public static validateApplyConstantFunction0(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 50
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 51
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v0

    .line 52
    .local v0, "nargs":I
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 54
    invoke-static {p3, v0}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 57
    .end local v1    # "message":Ljava/lang/String;
    :cond_14
    move-object v1, p3

    check-cast v1, Lgnu/kawa/functions/ConstantFunction0;

    iget-object v1, v1, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    return-object v1
.end method

.method public static validateApplyConvert(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 10
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 63
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 64
    .local v0, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 65
    .local v1, "language":Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 66
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 68
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    .line 69
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 70
    .local v4, "type":Lgnu/bytecode/Type;
    instance-of v5, v4, Lgnu/bytecode/Type;

    if-eqz v5, :cond_3b

    .line 72
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 73
    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-virtual {p1, v5, v4}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v2, v3

    .line 74
    invoke-static {v4, v0}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 75
    invoke-virtual {p0, v4}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 76
    return-object p0

    .line 79
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_3b
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 80
    return-object p0
.end method

.method public static validateApplyFormat(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 16
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 97
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 98
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 99
    .local v0, "retType":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 100
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    if-lez v2, :cond_a0

    .line 102
    const-string v2, "gnu.kawa.functions.Format"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 103
    .local v2, "typeFormat":Lgnu/bytecode/ClassType;
    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v4

    .line 104
    .local v4, "f":Ljava/lang/Object;
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 105
    .local v5, "ftype":Lgnu/bytecode/Type;
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x1

    if-eq v4, v6, :cond_70

    sget-object v6, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_70

    .line 115
    :cond_2d
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_4d

    const-string v6, "java.io.Writer"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_4d

    .line 129
    :cond_3e
    const-string v3, "java.io.OutputStream"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v5, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 130
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_a0

    .line 118
    :cond_4d
    :goto_4d
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_5e

    .line 120
    array-length v6, v1

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 121
    .local v6, "xargs":[Lgnu/expr/Expression;
    sget-object v8, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v8, v6, v3

    .line 122
    array-length v3, v1

    sub-int/2addr v3, v7

    invoke-static {v1, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object v1, v6

    .line 125
    .end local v6    # "xargs":[Lgnu/expr/Expression;
    :cond_5e
    new-instance v3, Lgnu/expr/ApplyExp;

    const/4 v6, 0x3

    const-string v7, "formatToWriter"

    invoke-virtual {v2, v7, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 126
    .local v3, "ae":Lgnu/expr/ApplyExp;
    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v6}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 127
    return-object v3

    .line 107
    .end local v3    # "ae":Lgnu/expr/ApplyExp;
    :cond_70
    :goto_70
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_76

    const/4 v6, 0x1

    goto :goto_77

    :cond_76
    const/4 v6, 0x0

    .line 108
    .local v6, "skip":I
    :goto_77
    array-length v8, v1

    add-int/2addr v8, v7

    sub-int/2addr v8, v6

    new-array v8, v8, [Lgnu/expr/Expression;

    .line 109
    .local v8, "xargs":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct {v9, v10, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    aput-object v9, v8, v3

    .line 110
    array-length v3, v8

    sub-int/2addr v3, v7

    invoke-static {v1, v6, v8, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v3, Lgnu/expr/ApplyExp;

    const/4 v7, 0x2

    const-string v9, "formatToString"

    invoke-virtual {v2, v9, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-direct {v3, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 112
    .restart local v3    # "ae":Lgnu/expr/ApplyExp;
    sget-object v7, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v7}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 113
    return-object v3

    .line 132
    .end local v2    # "typeFormat":Lgnu/bytecode/ClassType;
    .end local v3    # "ae":Lgnu/expr/ApplyExp;
    .end local v4    # "f":Ljava/lang/Object;
    .end local v5    # "ftype":Lgnu/bytecode/Type;
    .end local v6    # "skip":I
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    :cond_a0
    :goto_a0
    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 133
    const/4 v2, 0x0

    return-object v2
.end method

.method public static validateApplyMakeProcedure(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 19
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 154
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 155
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 156
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    .line 157
    .local v1, "alen":I
    const/4 v2, 0x0

    .line 158
    .local v2, "method":Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 159
    .local v3, "countMethods":I
    const/4 v4, 0x0

    .line 160
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    const-string v6, "method"

    const-string v7, "name"

    const/4 v8, 0x1

    if-ge v5, v1, :cond_4d

    .line 162
    aget-object v9, v0, v5

    .line 164
    .local v9, "arg":Lgnu/expr/Expression;
    instance-of v10, v9, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_48

    move-object v10, v9

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    .local v11, "key":Ljava/lang/Object;
    instance-of v10, v10, Lgnu/expr/Keyword;

    if-eqz v10, :cond_48

    .line 167
    move-object v10, v11

    check-cast v10, Lgnu/expr/Keyword;

    invoke-virtual {v10}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "keyword":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    aget-object v12, v0, v5

    .line 169
    .local v12, "next":Lgnu/expr/Expression;
    if-ne v10, v7, :cond_42

    .line 171
    instance-of v6, v12, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_47

    .line 172
    move-object v6, v12

    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_47

    .line 174
    :cond_42
    if-ne v10, v6, :cond_47

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    move-object v2, v12

    .line 181
    .end local v10    # "keyword":Ljava/lang/String;
    .end local v12    # "next":Lgnu/expr/Expression;
    :cond_47
    :goto_47
    goto :goto_4b

    .line 184
    .end local v11    # "key":Ljava/lang/Object;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 185
    move-object v2, v9

    .line 160
    .end local v9    # "arg":Lgnu/expr/Expression;
    :goto_4b
    add-int/2addr v5, v8

    goto :goto_c

    .line 188
    .end local v5    # "i":I
    :cond_4d
    if-ne v3, v8, :cond_8b

    instance-of v5, v2, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_8b

    .line 190
    move-object v5, v2

    check-cast v5, Lgnu/expr/LambdaExp;

    .line 191
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_57
    if-ge v9, v1, :cond_8a

    .line 193
    aget-object v10, v0, v9

    .line 195
    .local v10, "arg":Lgnu/expr/Expression;
    instance-of v11, v10, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_88

    move-object v11, v10

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    .local v12, "key":Ljava/lang/Object;
    instance-of v11, v11, Lgnu/expr/Keyword;

    if-eqz v11, :cond_88

    .line 198
    move-object v11, v12

    check-cast v11, Lgnu/expr/Keyword;

    invoke-virtual {v11}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "keyword":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    aget-object v13, v0, v9

    .line 200
    .local v13, "next":Lgnu/expr/Expression;
    if-ne v11, v7, :cond_7c

    .line 201
    invoke-virtual {v5, v4}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    goto :goto_88

    .line 202
    :cond_7c
    if-ne v11, v6, :cond_7f

    .line 203
    goto :goto_88

    .line 205
    :cond_7f
    sget-object v14, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v14, v11}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v14

    invoke-virtual {v5, v14, v13}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .end local v10    # "arg":Lgnu/expr/Expression;
    .end local v11    # "keyword":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/Object;
    .end local v13    # "next":Lgnu/expr/Expression;
    :cond_88
    :goto_88
    add-int/2addr v9, v8

    goto :goto_57

    .line 208
    .end local v9    # "i":I
    :cond_8a
    return-object v2

    .line 210
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    :cond_8b
    return-object p0
.end method

.method public static validateApplyMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 37
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "xproc"    # Lgnu/mapping/Procedure;

    .line 431
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    check-cast v1, Lgnu/kawa/functions/Map;

    .line 432
    .local v1, "mproc":Lgnu/kawa/functions/Map;
    iget-boolean v2, v1, Lgnu/kawa/functions/Map;->collect:Z

    .line 435
    .local v2, "collect":Z
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 437
    .local v3, "args":[Lgnu/expr/Expression;
    array-length v4, v3

    .line 438
    .local v4, "nargs":I
    const/4 v5, 0x2

    if-ge v4, v5, :cond_14

    .line 439
    return-object p0

    .line 441
    :cond_14
    add-int/lit8 v4, v4, -0x1

    .line 443
    const/4 v6, 0x0

    aget-object v7, v3, v6

    .line 447
    .local v7, "proc":Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/Expression;->side_effects()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 450
    .local v8, "procSafeForMultipleEvaluation":Z
    new-array v10, v9, [Lgnu/expr/Expression;

    .line 451
    .local v10, "inits1":[Lgnu/expr/Expression;
    aput-object v7, v10, v6

    .line 452
    new-instance v11, Lgnu/expr/LetExp;

    invoke-direct {v11, v10}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 453
    .local v11, "let1":Lgnu/expr/LetExp;
    sget-object v12, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v13, "%proc"

    invoke-virtual {v11, v13, v12}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v12

    .line 455
    .local v12, "procDecl":Lgnu/expr/Declaration;
    aget-object v13, v3, v6

    invoke-virtual {v12, v13}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 458
    new-array v13, v9, [Lgnu/expr/Expression;

    .line 459
    .local v13, "inits2":[Lgnu/expr/Expression;
    new-instance v14, Lgnu/expr/LetExp;

    invoke-direct {v14, v13}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 460
    .local v14, "let2":Lgnu/expr/LetExp;
    invoke-virtual {v11, v14}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 461
    new-instance v15, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_48

    add-int/lit8 v16, v4, 0x1

    move/from16 v9, v16

    goto :goto_49

    :cond_48
    move v9, v4

    :goto_49
    invoke-direct {v15, v9}, Lgnu/expr/LambdaExp;-><init>(I)V

    move-object v9, v15

    .line 462
    .local v9, "lexp":Lgnu/expr/LambdaExp;
    aput-object v9, v13, v6

    .line 463
    const-string v15, "%loop"

    invoke-virtual {v14, v15}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v15

    .line 464
    .local v15, "loopDecl":Lgnu/expr/Declaration;
    invoke-virtual {v15, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 467
    new-array v5, v4, [Lgnu/expr/Expression;

    .line 468
    .local v5, "inits3":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/LetExp;

    invoke-direct {v6, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 470
    .local v6, "let3":Lgnu/expr/LetExp;
    move-object/from16 v18, v7

    .end local v7    # "proc":Lgnu/expr/Expression;
    .local v18, "proc":Lgnu/expr/Expression;
    new-array v7, v4, [Lgnu/expr/Declaration;

    .line 471
    .local v7, "largs":[Lgnu/expr/Declaration;
    move-object/from16 v19, v10

    .end local v10    # "inits1":[Lgnu/expr/Expression;
    .local v19, "inits1":[Lgnu/expr/Expression;
    new-array v10, v4, [Lgnu/expr/Declaration;

    .line 472
    .local v10, "pargs":[Lgnu/expr/Declaration;
    const/16 v20, 0x0

    move-object/from16 v21, v13

    move/from16 v13, v20

    .local v13, "i":I
    .local v21, "inits2":[Lgnu/expr/Expression;
    :goto_6d
    if-ge v13, v4, :cond_ad

    .line 474
    move-object/from16 v20, v11

    .end local v11    # "let1":Lgnu/expr/LetExp;
    .local v20, "let1":Lgnu/expr/LetExp;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v14

    .end local v14    # "let2":Lgnu/expr/LetExp;
    .local v22, "let2":Lgnu/expr/LetExp;
    const-string v14, "arg"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 475
    .local v11, "argName":Ljava/lang/String;
    invoke-virtual {v9, v11}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v14

    aput-object v14, v7, v13

    .line 476
    sget-object v14, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v11, v14}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v14

    aput-object v14, v10, v13

    .line 477
    new-instance v14, Lgnu/expr/ReferenceExp;

    move-object/from16 v23, v11

    .end local v11    # "argName":Ljava/lang/String;
    .local v23, "argName":Ljava/lang/String;
    aget-object v11, v7, v13

    invoke-direct {v14, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v14, v5, v13

    .line 478
    aget-object v11, v10, v13

    aget-object v14, v5, v13

    invoke-virtual {v11, v14}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 472
    .end local v23    # "argName":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v20

    move-object/from16 v14, v22

    goto :goto_6d

    .end local v20    # "let1":Lgnu/expr/LetExp;
    .end local v22    # "let2":Lgnu/expr/LetExp;
    .local v11, "let1":Lgnu/expr/LetExp;
    .restart local v14    # "let2":Lgnu/expr/LetExp;
    :cond_ad
    move-object/from16 v20, v11

    move-object/from16 v22, v14

    .line 480
    .end local v11    # "let1":Lgnu/expr/LetExp;
    .end local v13    # "i":I
    .end local v14    # "let2":Lgnu/expr/LetExp;
    .restart local v20    # "let1":Lgnu/expr/LetExp;
    .restart local v22    # "let2":Lgnu/expr/LetExp;
    if-eqz v2, :cond_ba

    const-string v13, "result"

    invoke-virtual {v9, v13}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v13

    goto :goto_bb

    :cond_ba
    const/4 v13, 0x0

    .line 481
    .local v13, "resultDecl":Lgnu/expr/Declaration;
    :goto_bb
    add-int/lit8 v14, v4, 0x1

    new-array v14, v14, [Lgnu/expr/Expression;

    .line 482
    .local v14, "doArgs":[Lgnu/expr/Expression;
    if-eqz v2, :cond_c6

    add-int/lit8 v23, v4, 0x1

    move/from16 v11, v23

    goto :goto_c7

    :cond_c6
    move v11, v4

    :goto_c7
    new-array v11, v11, [Lgnu/expr/Expression;

    .line 483
    .local v11, "recArgs":[Lgnu/expr/Expression;
    const/16 v24, 0x0

    move-object/from16 v25, v5

    move/from16 v5, v24

    .local v5, "i":I
    .local v25, "inits3":[Lgnu/expr/Expression;
    :goto_cf
    if-ge v5, v4, :cond_106

    .line 485
    add-int/lit8 v24, v5, 0x1

    move-object/from16 v26, v3

    .end local v3    # "args":[Lgnu/expr/Expression;
    .local v26, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ReferenceExp;

    move-object/from16 v27, v7

    .end local v7    # "largs":[Lgnu/expr/Declaration;
    .local v27, "largs":[Lgnu/expr/Declaration;
    aget-object v7, v10, v5

    invoke-direct {v3, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v7, "car"

    invoke-static {v3, v7}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v14, v24

    .line 486
    new-instance v3, Lgnu/expr/ReferenceExp;

    aget-object v7, v10, v5

    invoke-direct {v3, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v7, "cdr"

    invoke-static {v3, v7}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v11, v5

    .line 483
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v26

    move-object/from16 v7, v27

    goto :goto_cf

    .end local v26    # "args":[Lgnu/expr/Expression;
    .end local v27    # "largs":[Lgnu/expr/Declaration;
    .restart local v3    # "args":[Lgnu/expr/Expression;
    .restart local v7    # "largs":[Lgnu/expr/Declaration;
    :cond_106
    move-object/from16 v26, v3

    move-object/from16 v27, v7

    .line 488
    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v5    # "i":I
    .end local v7    # "largs":[Lgnu/expr/Declaration;
    .restart local v26    # "args":[Lgnu/expr/Expression;
    .restart local v27    # "largs":[Lgnu/expr/Declaration;
    if-nez v8, :cond_113

    .line 489
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v12}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v7, v3

    .end local v18    # "proc":Lgnu/expr/Expression;
    .local v7, "proc":Lgnu/expr/Expression;
    goto :goto_115

    .line 488
    .end local v7    # "proc":Lgnu/expr/Expression;
    .restart local v18    # "proc":Lgnu/expr/Expression;
    :cond_113
    move-object/from16 v7, v18

    .line 490
    .end local v18    # "proc":Lgnu/expr/Expression;
    .restart local v7    # "proc":Lgnu/expr/Expression;
    :goto_115
    const/4 v3, 0x0

    aput-object v7, v14, v3

    .line 491
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object/from16 v18, v7

    .end local v7    # "proc":Lgnu/expr/Expression;
    .restart local v18    # "proc":Lgnu/expr/Expression;
    iget-object v7, v1, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v5, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v3, v5, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    .line 492
    .local v3, "doit":Lgnu/expr/Expression;
    if-eqz v2, :cond_149

    .line 494
    const/4 v5, 0x2

    new-array v7, v5, [Lgnu/expr/Expression;

    .line 495
    .local v7, "consArgs":[Lgnu/expr/Expression;
    const/4 v5, 0x0

    aput-object v3, v7, v5

    .line 496
    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v16, 0x1

    aput-object v5, v7, v16

    .line 497
    sget-object v5, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v10

    .end local v10    # "pargs":[Lgnu/expr/Declaration;
    .local v24, "pargs":[Lgnu/expr/Declaration;
    const-string v10, "make"

    invoke-static {v5, v10, v7}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    aput-object v5, v11, v4

    goto :goto_14b

    .line 492
    .end local v7    # "consArgs":[Lgnu/expr/Expression;
    .end local v24    # "pargs":[Lgnu/expr/Declaration;
    .restart local v10    # "pargs":[Lgnu/expr/Declaration;
    :cond_149
    move-object/from16 v24, v10

    .line 500
    .end local v10    # "pargs":[Lgnu/expr/Declaration;
    .restart local v24    # "pargs":[Lgnu/expr/Declaration;
    :goto_14b
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v5, v7, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    .line 501
    .local v5, "rec":Lgnu/expr/Expression;
    if-eqz v2, :cond_15e

    move-object v7, v5

    goto :goto_163

    :cond_15e
    new-instance v7, Lgnu/expr/BeginExp;

    invoke-direct {v7, v3, v5}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    :goto_163
    iput-object v7, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 502
    iget-object v7, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v6, v7}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 503
    iput-object v6, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    if-eqz v2, :cond_171

    add-int/lit8 v7, v4, 0x1

    goto :goto_172

    :cond_171
    move v7, v4

    :goto_172
    new-array v7, v7, [Lgnu/expr/Expression;

    .line 505
    .local v7, "initArgs":[Lgnu/expr/Expression;
    new-instance v10, Lgnu/expr/QuoteExp;

    move-object/from16 v28, v3

    .end local v3    # "doit":Lgnu/expr/Expression;
    .local v28, "doit":Lgnu/expr/Expression;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v10, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v3, v10

    .line 506
    .local v3, "empty":Lgnu/expr/QuoteExp;
    move v10, v4

    .local v10, "i":I
    :goto_17f
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_1cd

    .line 508
    move-object/from16 v29, v5

    move-object/from16 v17, v6

    const/4 v5, 0x2

    .end local v5    # "rec":Lgnu/expr/Expression;
    .end local v6    # "let3":Lgnu/expr/LetExp;
    .local v17, "let3":Lgnu/expr/LetExp;
    .local v29, "rec":Lgnu/expr/Expression;
    new-array v6, v5, [Lgnu/expr/Expression;

    .line 509
    .local v6, "compArgs":[Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object/from16 v30, v11

    .end local v11    # "recArgs":[Lgnu/expr/Expression;
    .local v30, "recArgs":[Lgnu/expr/Expression;
    aget-object v11, v27, v10

    invoke-direct {v5, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v11, 0x0

    aput-object v5, v6, v11

    .line 510
    const/4 v5, 0x1

    aput-object v3, v6, v5

    .line 511
    if-eqz v2, :cond_1a1

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v13}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_1a3

    :cond_1a1
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 514
    .local v5, "result":Lgnu/expr/Expression;
    :goto_1a3
    new-instance v11, Lgnu/expr/IfExp;

    move-object/from16 v31, v12

    .end local v12    # "procDecl":Lgnu/expr/Declaration;
    .local v31, "procDecl":Lgnu/expr/Declaration;
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v32, v13

    .end local v13    # "resultDecl":Lgnu/expr/Declaration;
    .local v32, "resultDecl":Lgnu/expr/Declaration;
    iget-object v13, v1, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v12, v13, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v12

    iget-object v13, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v11, v12, v5, v13}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v11, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 516
    add-int/lit8 v11, v10, 0x1

    aget-object v11, v26, v11

    aput-object v11, v7, v10

    .line 517
    .end local v5    # "result":Lgnu/expr/Expression;
    .end local v6    # "compArgs":[Lgnu/expr/Expression;
    move-object/from16 v6, v17

    move-object/from16 v5, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    goto :goto_17f

    .line 506
    .end local v17    # "let3":Lgnu/expr/LetExp;
    .end local v29    # "rec":Lgnu/expr/Expression;
    .end local v30    # "recArgs":[Lgnu/expr/Expression;
    .end local v31    # "procDecl":Lgnu/expr/Declaration;
    .end local v32    # "resultDecl":Lgnu/expr/Declaration;
    .local v5, "rec":Lgnu/expr/Expression;
    .local v6, "let3":Lgnu/expr/LetExp;
    .restart local v11    # "recArgs":[Lgnu/expr/Expression;
    .restart local v12    # "procDecl":Lgnu/expr/Declaration;
    .restart local v13    # "resultDecl":Lgnu/expr/Declaration;
    :cond_1cd
    move-object/from16 v29, v5

    move-object/from16 v17, v6

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    .line 518
    .end local v5    # "rec":Lgnu/expr/Expression;
    .end local v6    # "let3":Lgnu/expr/LetExp;
    .end local v10    # "i":I
    .end local v11    # "recArgs":[Lgnu/expr/Expression;
    .end local v12    # "procDecl":Lgnu/expr/Declaration;
    .end local v13    # "resultDecl":Lgnu/expr/Declaration;
    .restart local v17    # "let3":Lgnu/expr/LetExp;
    .restart local v29    # "rec":Lgnu/expr/Expression;
    .restart local v30    # "recArgs":[Lgnu/expr/Expression;
    .restart local v31    # "procDecl":Lgnu/expr/Declaration;
    .restart local v32    # "resultDecl":Lgnu/expr/Declaration;
    if-eqz v2, :cond_1db

    .line 519
    aput-object v3, v7, v4

    .line 521
    :cond_1db
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    .line 522
    .local v5, "body":Lgnu/expr/Expression;
    if-eqz v2, :cond_1fa

    .line 524
    const/4 v6, 0x1

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 525
    .local v6, "reverseArgs":[Lgnu/expr/Expression;
    const/4 v10, 0x0

    aput-object v5, v6, v10

    .line 526
    sget-object v10, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v11, "reverseInPlace"

    invoke-static {v10, v11, v6}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    .line 529
    .end local v6    # "reverseArgs":[Lgnu/expr/Expression;
    :cond_1fa
    move-object/from16 v6, v22

    .end local v22    # "let2":Lgnu/expr/LetExp;
    .local v6, "let2":Lgnu/expr/LetExp;
    invoke-virtual {v6, v5}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 531
    if-eqz v8, :cond_202

    .line 532
    return-object v6

    .line 534
    :cond_202
    return-object v20
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 86
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 87
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .registers 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 216
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 217
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/ValuesMap;

    invoke-static {p0, v0}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 218
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_18

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 221
    iput-object p0, v0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 222
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    iput-object v1, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 224
    :cond_18
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 35
    iget v0, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    packed-switch v0, :pswitch_data_1c

    .line 43
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 41
    :pswitch_b
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Not;

    invoke-virtual {p0, v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    return-void

    .line 38
    :pswitch_13
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Convert;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 39
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method public compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p1, "proc"    # Lgnu/kawa/functions/Not;
    .param p2, "exp"    # Lgnu/expr/ApplyExp;
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .line 265
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 266
    .local v0, "arg":Lgnu/expr/Expression;
    iget-object v2, p1, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 267
    .local v2, "language":Lgnu/expr/Language;
    instance-of v3, p4, Lgnu/expr/ConditionalTarget;

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    .line 269
    move-object v1, p4

    check-cast v1, Lgnu/expr/ConditionalTarget;

    .line 270
    .local v1, "ctarget":Lgnu/expr/ConditionalTarget;
    new-instance v3, Lgnu/expr/ConditionalTarget;

    iget-object v5, v1, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    iget-object v6, v1, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-direct {v3, v5, v6, v2}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 272
    .local v3, "sub_target":Lgnu/expr/ConditionalTarget;
    iget-boolean v5, v1, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v3, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 273
    invoke-virtual {v0, p3, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 274
    return-void

    .line 276
    .end local v1    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v3    # "sub_target":Lgnu/expr/ConditionalTarget;
    :cond_23
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 277
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 278
    .local v5, "type":Lgnu/bytecode/Type;
    instance-of v6, p4, Lgnu/expr/StackTarget;

    if-eqz v6, :cond_46

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_46

    .line 280
    invoke-virtual {v0, p3, p4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 281
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    goto :goto_59

    .line 285
    :cond_46
    invoke-virtual {v2, v4}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    .line 286
    .local v4, "trueExp":Lgnu/expr/QuoteExp;
    invoke-virtual {v2, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .line 287
    .local v1, "falseExp":Lgnu/expr/QuoteExp;
    invoke-static {v0, v1, v4, p3, p4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 289
    .end local v1    # "falseExp":Lgnu/expr/QuoteExp;
    .end local v4    # "trueExp":Lgnu/expr/QuoteExp;
    :goto_59
    return-void
.end method

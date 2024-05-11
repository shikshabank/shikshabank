.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpExpVisitor;
.source "FindCapturedVars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backJumpPossible:I

.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 427
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method static checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;
    .registers 7
    .param p0, "current"    # Lgnu/expr/LambdaExp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "Ljava/util/Set<",
            "Lgnu/expr/LambdaExp;",
            ">;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .line 227
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v0, v1, :cond_9

    .line 228
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    return-object v0

    .line 229
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    return-object v0

    .line 231
    :cond_12
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_82

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v0, v1, :cond_25

    goto :goto_82

    .line 238
    :cond_25
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 240
    .local v0, "r":Lgnu/expr/Expression;
    iget-object v1, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-eqz v1, :cond_81

    .line 242
    iget-object v1, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 244
    .local v2, "p":Lgnu/expr/LambdaExp;
    invoke-static {v2, p1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v3

    .line 245
    .local v3, "t":Lgnu/expr/Expression;
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v3, v4, :cond_59

    .line 247
    if-eqz v0, :cond_54

    iget-object v4, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v0, v4, :cond_4f

    goto :goto_54

    .line 254
    :cond_4f
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 255
    return-object v3

    .line 249
    :cond_54
    :goto_54
    iget-object v0, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 250
    iput-object v2, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_80

    .line 258
    :cond_59
    if-nez v0, :cond_6d

    .line 260
    move-object v0, v3

    .line 261
    iget-object v4, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v4, :cond_80

    .line 262
    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->nestedIn(Lgnu/expr/ScopeExp;)Z

    move-result v4

    if-eqz v4, :cond_68

    move-object v4, v2

    goto :goto_6a

    :cond_68
    iget-object v4, v2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    :goto_6a
    iput-object v4, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_80

    .line 264
    :cond_6d
    if-eqz v3, :cond_71

    if-ne v0, v3, :cond_79

    :cond_71
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 267
    :cond_79
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 268
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-object v4

    .line 270
    .end local v2    # "p":Lgnu/expr/LambdaExp;
    .end local v3    # "t":Lgnu/expr/Expression;
    :cond_80
    :goto_80
    goto :goto_34

    .line 272
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_81
    return-object v0

    .line 235
    .end local v0    # "r":Lgnu/expr/Expression;
    :cond_82
    :goto_82
    sget-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    sget-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-object v0
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .registers 4
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 15
    new-instance v0, Lgnu/expr/FindCapturedVars;

    invoke-direct {v0}, Lgnu/expr/FindCapturedVars;-><init>()V

    .line 16
    .local v0, "visitor":Lgnu/expr/FindCapturedVars;
    invoke-virtual {v0, p1}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    .line 17
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .registers 8
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "function"    # Z

    .line 432
    move-object v0, p1

    .line 433
    .local v0, "key":Ljava/lang/Object;
    if-eqz p2, :cond_22

    instance-of v1, p1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_22

    .line 435
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-nez v1, :cond_17

    .line 436
    const/4 p2, 0x0

    goto :goto_22

    .line 438
    :cond_17
    new-instance v1, Lgnu/mapping/KeyPair;

    move-object v2, p1

    check-cast v2, Lgnu/mapping/Symbol;

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    move-object v0, v1

    .line 440
    :cond_22
    :goto_22
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v1, :cond_31

    .line 442
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 443
    const/4 v1, 0x0

    .local v1, "decl":Lgnu/expr/Declaration;
    goto :goto_37

    .line 446
    .end local v1    # "decl":Lgnu/expr/Declaration;
    :cond_31
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 447
    .restart local v1    # "decl":Lgnu/expr/Declaration;
    :goto_37
    if-nez v1, :cond_6d

    .line 449
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v2, p1}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 450
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 451
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 452
    if-eqz p2, :cond_4c

    .line 453
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 454
    :cond_4c
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 455
    const-wide/16 v3, 0x800

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 456
    :cond_59
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 457
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 462
    const-wide/32 v3, 0x50000

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 463
    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 464
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_6d
    return-object v1
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .registers 21
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v2

    if-nez v2, :cond_11

    .line 295
    return-void

    .line 296
    :cond_11
    iget-object v2, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 297
    return-void

    .line 300
    :cond_1e
    iget-object v2, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    iget-boolean v2, v2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 301
    return-void

    .line 303
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 304
    .local v2, "curLambda":Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v3

    .line 305
    .local v3, "sc":Lgnu/expr/ScopeExp;
    const-string v4, " curL:"

    if-eqz v3, :cond_1e8

    .line 306
    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 322
    .local v5, "declLambda":Lgnu/expr/LambdaExp;
    const/4 v6, 0x0

    .line 323
    .local v6, "oldParent":Lgnu/expr/LambdaExp;
    const/4 v7, 0x0

    .line 324
    .local v7, "chain":Lgnu/expr/LambdaExp;
    :goto_3d
    if-eq v2, v5, :cond_61

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v8

    if-eqz v8, :cond_61

    .line 326
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    .line 327
    .local v8, "curParent":Lgnu/expr/LambdaExp;
    if-eq v8, v6, :cond_4e

    .line 330
    iget-object v7, v8, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 331
    move-object v6, v8

    .line 333
    :cond_4e
    if-eqz v7, :cond_5c

    iget-object v9, v2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v9, :cond_55

    goto :goto_5c

    .line 339
    :cond_55
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 340
    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 341
    .end local v8    # "curParent":Lgnu/expr/LambdaExp;
    goto :goto_3d

    .line 336
    .restart local v8    # "curParent":Lgnu/expr/LambdaExp;
    :cond_5c
    :goto_5c
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    .line 337
    return-void

    .line 342
    .end local v8    # "curParent":Lgnu/expr/LambdaExp;
    :cond_61
    iget-object v8, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v8}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 344
    instance-of v8, v2, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_71

    .line 345
    return-void

    .line 348
    :cond_6e
    if-ne v2, v5, :cond_71

    .line 349
    return-void

    .line 352
    :cond_71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    .line 354
    .local v8, "value":Lgnu/expr/Expression;
    if-eqz v8, :cond_97

    instance-of v9, v8, Lgnu/expr/LambdaExp;

    if-nez v9, :cond_7c

    goto :goto_97

    .line 358
    :cond_7c
    move-object v9, v8

    check-cast v9, Lgnu/expr/LambdaExp;

    .line 359
    .local v9, "declValue":Lgnu/expr/LambdaExp;
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v10

    if-eqz v10, :cond_86

    .line 360
    return-void

    .line 361
    :cond_86
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 362
    const/4 v9, 0x0

    goto :goto_98

    .line 363
    :cond_8e
    if-ne v9, v2, :cond_98

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v10

    if-nez v10, :cond_98

    .line 364
    return-void

    .line 355
    .end local v9    # "declValue":Lgnu/expr/LambdaExp;
    :cond_97
    :goto_97
    const/4 v9, 0x0

    .line 367
    .restart local v9    # "declValue":Lgnu/expr/LambdaExp;
    :cond_98
    :goto_98
    const-wide/32 v10, 0x10000

    invoke-virtual {v1, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    const-wide/16 v11, 0x800

    if-eqz v10, :cond_bc

    .line 370
    move-object v10, v2

    .line 372
    .local v10, "parent":Lgnu/expr/LambdaExp;
    :goto_a4
    if-ne v10, v5, :cond_a7

    .line 373
    goto :goto_bc

    .line 374
    :cond_a7
    iget-object v13, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v13, :cond_b7

    iget-object v13, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v13, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 377
    invoke-virtual {v1, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 378
    goto :goto_bc

    .line 370
    :cond_b7
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    goto :goto_a4

    .line 382
    .end local v10    # "parent":Lgnu/expr/LambdaExp;
    :cond_bc
    :goto_bc
    iget-object v10, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v10, :cond_d1

    .line 384
    iget-object v4, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 385
    iget-object v4, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0, v4}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_1e7

    .line 387
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v10

    if-nez v10, :cond_e6

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v10

    if-nez v10, :cond_e6

    if-nez v9, :cond_e0

    goto :goto_e6

    :cond_e0
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_1e7

    .line 389
    :cond_e6
    :goto_e6
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v10

    if-nez v10, :cond_19f

    .line 391
    move-object v10, v2

    .line 392
    .local v10, "heapLambda":Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v13

    if-nez v13, :cond_f6

    .line 393
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 394
    :cond_f6
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    .line 395
    .local v13, "parent":Lgnu/expr/LambdaExp;
    move-object v14, v13

    .local v14, "outer":Lgnu/expr/LambdaExp;
    :goto_fb
    if-eq v14, v5, :cond_19a

    if-eqz v14, :cond_19a

    .line 397
    move-object v10, v14

    .line 398
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v15

    if-nez v15, :cond_10e

    if-ne v9, v14, :cond_10e

    .line 399
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_1a3

    .line 400
    :cond_10e
    iget-object v15, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 401
    .local v15, "heapDecl":Lgnu/expr/Declaration;
    if-eqz v15, :cond_147

    invoke-virtual {v15, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v16

    if-eqz v16, :cond_147

    .line 404
    iget-object v11, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "sc":Lgnu/expr/ScopeExp;
    .local v17, "sc":Lgnu/expr/ScopeExp;
    const-string v3, "static "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " references non-static "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x65

    invoke-virtual {v11, v12, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_149

    .line 401
    .end local v17    # "sc":Lgnu/expr/ScopeExp;
    .restart local v3    # "sc":Lgnu/expr/ScopeExp;
    :cond_147
    move-object/from16 v17, v3

    .line 407
    .end local v3    # "sc":Lgnu/expr/ScopeExp;
    .restart local v17    # "sc":Lgnu/expr/ScopeExp;
    :goto_149
    instance-of v3, v10, Lgnu/expr/ClassExp;

    if-eqz v3, :cond_187

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_187

    move-object v3, v10

    check-cast v3, Lgnu/expr/ClassExp;

    invoke-virtual {v3}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_187

    .line 410
    iget-object v3, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    iget-object v12, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " requiring lexical link (because of reference to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ") - use define-class instead"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "simple class "

    move-object/from16 v18, v6

    const/16 v6, 0x77

    .end local v6    # "oldParent":Lgnu/expr/LambdaExp;
    .local v18, "oldParent":Lgnu/expr/LambdaExp;
    invoke-virtual {v3, v6, v12, v11, v0}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_189

    .line 407
    .end local v18    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v6    # "oldParent":Lgnu/expr/LambdaExp;
    :cond_187
    move-object/from16 v18, v6

    .line 412
    .end local v6    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v18    # "oldParent":Lgnu/expr/LambdaExp;
    :goto_189
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 413
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v14

    .line 414
    .end local v15    # "heapDecl":Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const-wide/16 v11, 0x800

    goto/16 :goto_fb

    .line 395
    .end local v17    # "sc":Lgnu/expr/ScopeExp;
    .end local v18    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v3    # "sc":Lgnu/expr/ScopeExp;
    .restart local v6    # "oldParent":Lgnu/expr/LambdaExp;
    :cond_19a
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "sc":Lgnu/expr/ScopeExp;
    .end local v6    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v17    # "sc":Lgnu/expr/ScopeExp;
    .restart local v18    # "oldParent":Lgnu/expr/LambdaExp;
    goto :goto_1a3

    .line 389
    .end local v10    # "heapLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "parent":Lgnu/expr/LambdaExp;
    .end local v14    # "outer":Lgnu/expr/LambdaExp;
    .end local v17    # "sc":Lgnu/expr/ScopeExp;
    .end local v18    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v3    # "sc":Lgnu/expr/ScopeExp;
    .restart local v6    # "oldParent":Lgnu/expr/LambdaExp;
    :cond_19f
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 416
    .end local v3    # "sc":Lgnu/expr/ScopeExp;
    .end local v6    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v17    # "sc":Lgnu/expr/ScopeExp;
    .restart local v18    # "oldParent":Lgnu/expr/LambdaExp;
    :goto_1a3
    if-nez v5, :cond_1e4

    .line 417
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null declLambda for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 419
    .local v0, "c":Lgnu/expr/ScopeExp;
    :goto_1c7
    if-eqz v0, :cond_1e4

    .line 420
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- context:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1c7

    .line 422
    .end local v0    # "c":Lgnu/expr/ScopeExp;
    :cond_1e4
    invoke-virtual {v5, v1}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    .line 424
    :goto_1e7
    return-void

    .line 305
    .end local v5    # "declLambda":Lgnu/expr/LambdaExp;
    .end local v7    # "chain":Lgnu/expr/LambdaExp;
    .end local v8    # "value":Lgnu/expr/Expression;
    .end local v9    # "declValue":Lgnu/expr/LambdaExp;
    .end local v17    # "sc":Lgnu/expr/ScopeExp;
    .end local v18    # "oldParent":Lgnu/expr/LambdaExp;
    .restart local v3    # "sc":Lgnu/expr/ScopeExp;
    :cond_1e8
    move-object/from16 v17, v3

    .end local v3    # "sc":Lgnu/expr/ScopeExp;
    .restart local v17    # "sc":Lgnu/expr/ScopeExp;
    new-instance v0, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null context for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_20c

    :goto_20b
    throw v0

    :goto_20c
    goto :goto_20b
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .registers 6
    .param p1, "containing"    # Lgnu/expr/Declaration;
    .param p2, "decl"    # Lgnu/expr/Declaration;

    .line 490
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_24

    .line 492
    iget-object v0, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 493
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v1, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 494
    .local v1, "orig":Lgnu/expr/Declaration;
    if-eqz v1, :cond_24

    if-eqz p1, :cond_1c

    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-nez v2, :cond_24

    .line 497
    :cond_1c
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 498
    return-void

    .line 501
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v1    # "orig":Lgnu/expr/Declaration;
    :cond_24
    :goto_24
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/FluidLetExp;

    if-eqz v0, :cond_33

    .line 503
    iget-object p2, p2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    goto :goto_24

    .line 505
    :cond_33
    if-eqz p1, :cond_3f

    invoke-virtual {p2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 506
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_42

    .line 508
    :cond_3f
    invoke-virtual {p0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 509
    :goto_42
    return-void
.end method

.method maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "location"    # Lgnu/text/SourceLocator;

    .line 158
    invoke-virtual {p2}, Lgnu/expr/Compilation;->warnUndefinedVariable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 159
    const/16 v0, 0x77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no declaration seen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 160
    :cond_1e
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 16
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 24
    iget v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 25
    .local v0, "oldBackJumpPossible":I
    const/4 v1, 0x0

    .line 26
    .local v1, "skipFunc":Z
    const/4 v2, 0x0

    .line 36
    .local v2, "skipArgs":Z
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/ReferenceExp;

    const-wide/16 v4, 0x1000

    const/4 v6, 0x1

    if-eqz v3, :cond_42

    sget v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-gt v3, v6, :cond_42

    .line 39
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v3, Lgnu/expr/ReferenceExp;

    iget-object v3, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 41
    .local v3, "decl":Lgnu/expr/Declaration;
    if-eqz v3, :cond_41

    iget-object v6, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_41

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v6

    if-nez v6, :cond_41

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-nez v4, :cond_41

    .line 45
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    .line 46
    .local v4, "value":Lgnu/expr/Expression;
    instance-of v5, v4, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_41

    .line 48
    move-object v5, v4

    check-cast v5, Lgnu/expr/LambdaExp;

    .line 49
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v6

    if-nez v6, :cond_41

    .line 50
    const/4 v1, 0x1

    .line 53
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "value":Lgnu/expr/Expression;
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    :cond_41
    goto :goto_a6

    .line 56
    :cond_42
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_a6

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v3

    if-lez v3, :cond_a6

    .line 58
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, "val":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v7

    .line 60
    .local v7, "arg0":Lgnu/expr/Expression;
    instance-of v8, v3, Lgnu/expr/PrimProcedure;

    if-eqz v8, :cond_a6

    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_a6

    .line 62
    move-object v8, v3

    check-cast v8, Lgnu/expr/PrimProcedure;

    .line 63
    .local v8, "pproc":Lgnu/expr/PrimProcedure;
    move-object v9, v7

    check-cast v9, Lgnu/expr/ReferenceExp;

    iget-object v9, v9, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v9}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 65
    .local v9, "decl":Lgnu/expr/Declaration;
    if-eqz v9, :cond_a6

    iget-object v10, v9, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_a6

    invoke-virtual {v9, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 68
    invoke-virtual {v9}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    .line 69
    .restart local v4    # "value":Lgnu/expr/Expression;
    instance-of v5, v4, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_a6

    .line 71
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 72
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v10, v4

    check-cast v10, Lgnu/expr/LambdaExp;

    .line 73
    .local v10, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v11

    if-nez v11, :cond_a6

    .line 75
    iget-object v11, v9, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    iput-object v11, p1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 76
    iput-object p1, v9, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 77
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_99
    array-length v12, v5

    if-ge v11, v12, :cond_a4

    .line 78
    aget-object v12, v5, v11

    invoke-virtual {v12, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_99

    .line 79
    .end local v11    # "i":I
    :cond_a4
    move v2, v6

    move v1, v6

    .line 85
    .end local v3    # "val":Ljava/lang/Object;
    .end local v4    # "value":Lgnu/expr/Expression;
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .end local v8    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v9    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "lexp":Lgnu/expr/LambdaExp;
    :cond_a6
    :goto_a6
    if-nez v1, :cond_b2

    .line 86
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v3, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    iput-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 87
    :cond_b2
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_c0

    if-nez v2, :cond_c0

    .line 88
    iget-object v3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p0, v3, p2}, Lgnu/expr/FindCapturedVars;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 89
    :cond_c0
    iget v3, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    if-le v3, v0, :cond_c9

    .line 90
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 91
    :cond_c9
    return-object p1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/ClassExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 120
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 121
    .local v0, "ret":Lgnu/expr/Expression;
    iget-boolean v1, p1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v1, :cond_18

    iget-object v1, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-nez v1, :cond_18

    .line 123
    iget-object v1, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v1, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    goto :goto_35

    .line 124
    :cond_18
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 126
    iget-object v1, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v1, "child":Lgnu/expr/LambdaExp;
    :goto_20
    if-eqz v1, :cond_35

    .line 129
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*init*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 127
    :cond_32
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_20

    .line 133
    .end local v1    # "child":Lgnu/expr/LambdaExp;
    :cond_35
    :goto_35
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_56

    iget-object v1, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_56

    .line 135
    iget-object v1, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v2, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 136
    :cond_56
    return-object v0
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ClassExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V

    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V
    .registers 6
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 96
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v0, :cond_5

    .line 97
    return-void

    .line 99
    :cond_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 108
    .local v0, "param":Lgnu/expr/Declaration;
    :goto_c
    if-eqz v0, :cond_20

    .line 110
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 112
    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-virtual {p1, v1, v2}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    .line 113
    goto :goto_20

    .line 108
    :cond_1b
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_c

    .line 116
    .end local v0    # "param":Lgnu/expr/Declaration;
    :cond_20
    :goto_20
    return-void
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/FluidLetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 164
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_22

    .line 166
    iget-object v1, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v1, :cond_1d

    .line 168
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "name":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 170
    .local v2, "bind":Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1, v3, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 171
    invoke-virtual {p0, v2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 172
    iput-object v2, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 164
    .end local v1    # "name":Ljava/lang/Object;
    .end local v2    # "bind":Lgnu/expr/Declaration;
    :cond_1d
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 175
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_22
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/FluidLetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 277
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 279
    .local v0, "seen":Ljava/util/Set;, "Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    invoke-static {p1, v0}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v1

    .line 280
    .local v1, "caller":Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v1, v2, :cond_20

    iget-object v2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_17

    iget-object v2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_20

    .line 286
    :cond_17
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 287
    iget v3, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    add-int/2addr v3, v2

    iput v3, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 289
    :cond_20
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    return-object v2
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 13
    .param p1, "exp"    # Lgnu/expr/LetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 180
    iget-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_52

    .line 190
    iget-object v0, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 191
    .local v0, "inits":[Lgnu/expr/Expression;
    array-length v1, v0

    .line 192
    .local v1, "len":I
    iget-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/BeginExp;

    iget-object v2, v2, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 193
    .local v2, "exps":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 194
    .local v3, "init_index":I
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 195
    .local v4, "decl":Lgnu/expr/Declaration;
    const/4 v5, 0x0

    .line 196
    .local v5, "begin_index":I
    :goto_15
    array-length v6, v2

    if-ge v5, v6, :cond_52

    if-ge v3, v1, :cond_52

    .line 199
    aget-object v6, v2, v5

    .line 200
    .local v6, "st":Lgnu/expr/Expression;
    instance-of v7, v6, Lgnu/expr/SetExp;

    if-eqz v7, :cond_4f

    .line 202
    move-object v7, v6

    check-cast v7, Lgnu/expr/SetExp;

    .line 203
    .local v7, "set":Lgnu/expr/SetExp;
    iget-object v8, v7, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-ne v8, v4, :cond_4f

    aget-object v8, v0, v3

    sget-object v9, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v8, v9, :cond_4f

    invoke-virtual {v7}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 207
    iget-object v8, v7, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 208
    .local v8, "new_value":Lgnu/expr/Expression;
    instance-of v9, v8, Lgnu/expr/QuoteExp;

    if-nez v9, :cond_3d

    instance-of v9, v8, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_49

    :cond_3d
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    if-ne v9, v8, :cond_49

    .line 212
    aput-object v8, v0, v3

    .line 213
    sget-object v9, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v9, v2, v5

    .line 215
    :cond_49
    add-int/lit8 v3, v3, 0x1

    .line 216
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 197
    .end local v6    # "st":Lgnu/expr/Expression;
    .end local v7    # "set":Lgnu/expr/SetExp;
    .end local v8    # "new_value":Lgnu/expr/Expression;
    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 221
    .end local v0    # "inits":[Lgnu/expr/Expression;
    .end local v1    # "len":I
    .end local v2    # "exps":[Lgnu/expr/Expression;
    .end local v3    # "init_index":I
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "begin_index":I
    :cond_52
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/LetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "exp"    # Lgnu/expr/ModuleExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 141
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 142
    .local v0, "saveModule":Lgnu/expr/ModuleExp;
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 143
    .local v1, "saveDecls":Ljava/util/Hashtable;
    iput-object p1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 147
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    .line 151
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    return-object v2

    .line 151
    :catchall_12
    move-exception v2

    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    throw v2
.end method

.method protected bridge synthetic visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ModuleExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 471
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 472
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_15

    .line 474
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 478
    :cond_15
    const-wide/32 v1, 0x10000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_37

    .line 481
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1, v2, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 484
    :cond_37
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 485
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "exp"    # Lgnu/expr/SetExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 526
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 527
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_12

    .line 529
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 530
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 532
    :cond_12
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_29

    .line 534
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_22

    .line 535
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 536
    :cond_22
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 538
    :cond_29
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    return-object v1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/SetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ThisExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 513
    invoke-virtual {p1}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 517
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 518
    return-object p1

    .line 521
    :cond_e
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lgnu/expr/ThisExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindCapturedVars;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.class public Lkawa/lang/Quote;
.super Lkawa/lang/Syntax;
.source "Quote.java"


# static fields
.field private static final CYCLE:Ljava/lang/Object;

.field protected static final QUOTE_DEPTH:I = -0x1

.field private static final WORKING:Ljava/lang/Object;

.field static final appendMethod:Lgnu/bytecode/Method;

.field static final consXMethod:Lgnu/bytecode/Method;

.field static final makePairMethod:Lgnu/bytecode/Method;

.field static final makeVectorMethod:Lgnu/bytecode/Method;

.field public static final plainQuote:Lkawa/lang/Quote;

.field public static final quasiQuote:Lkawa/lang/Quote;

.field static final quoteType:Lgnu/bytecode/ClassType;

.field static final vectorAppendMethod:Lgnu/bytecode/Method;


# instance fields
.field protected isQuasi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    .line 22
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quasiquote"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->quasiQuote:Lkawa/lang/Quote;

    .line 289
    new-instance v0, Ljava/lang/String;

    const-string v1, "(working)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/lang/String;

    const-string v1, "(cycle)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    .line 475
    const-string v0, "kawa.standard.vector_append"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "apply$V"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    .line 478
    const-string v0, "kawa.lang.Quote"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    .line 479
    const-string v1, "consX$V"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    .line 480
    const-string v1, "append$V"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 481
    sget-object v0, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    .line 482
    const-string v0, "gnu.lists.FVector"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isQuasi"    # Z

    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/lang/Quote;->isQuasi:Z

    .line 28
    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "args"    # [Ljava/lang/Object;

    .line 435
    array-length v0, p0

    .line 436
    .local v0, "count":I
    if-nez v0, :cond_6

    .line 437
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v1

    .line 438
    :cond_6
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    .line 439
    .local v1, "result":Ljava/lang/Object;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_55

    .line 441
    aget-object v3, p0, v2

    .line 442
    .local v3, "list":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 443
    .local v4, "copy":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 444
    .local v5, "last":Lgnu/lists/Pair;
    const/4 v6, 0x0

    .line 447
    .local v6, "syntax":Lkawa/lang/SyntaxForm;
    :goto_15
    instance-of v7, v3, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_21

    .line 449
    move-object v6, v3

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 450
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_15

    .line 452
    :cond_21
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v7, :cond_2d

    .line 453
    nop

    .line 466
    if-eqz v5, :cond_2c

    .line 468
    invoke-virtual {v5, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 469
    move-object v1, v4

    .line 471
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "copy":Ljava/lang/Object;
    .end local v5    # "last":Lgnu/lists/Pair;
    .end local v6    # "syntax":Lkawa/lang/SyntaxForm;
    :cond_2c
    goto :goto_c

    .line 454
    .restart local v3    # "list":Ljava/lang/Object;
    .restart local v4    # "copy":Ljava/lang/Object;
    .restart local v5    # "last":Lgnu/lists/Pair;
    .restart local v6    # "syntax":Lkawa/lang/SyntaxForm;
    :cond_2d
    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    .line 455
    .local v7, "list_pair":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 456
    .local v8, "car":Ljava/lang/Object;
    if-eqz v6, :cond_42

    instance-of v9, v8, Lkawa/lang/SyntaxForm;

    if-nez v9, :cond_42

    .line 457
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    .line 458
    :cond_42
    new-instance v9, Lgnu/lists/Pair;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .local v9, "new_pair":Lgnu/lists/Pair;
    if-nez v5, :cond_4c

    .line 460
    move-object v4, v9

    goto :goto_4f

    .line 462
    :cond_4c
    invoke-virtual {v5, v9}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 463
    :goto_4f
    move-object v5, v9

    .line 464
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 465
    .end local v7    # "list_pair":Lgnu/lists/Pair;
    .end local v8    # "car":Ljava/lang/Object;
    .end local v9    # "new_pair":Lgnu/lists/Pair;
    goto :goto_15

    .line 472
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "copy":Ljava/lang/Object;
    .end local v5    # "last":Lgnu/lists/Pair;
    .end local v6    # "syntax":Lkawa/lang/SyntaxForm;
    :cond_55
    return-object v1
.end method

.method public static consX$V([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 429
    invoke-static {p0}, Lgnu/lists/LList;->consX([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .registers 3
    .param p0, "args"    # [Lgnu/expr/Expression;

    .line 414
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1, p0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public static makeSymbol(Lgnu/mapping/Namespace;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "ns"    # Lgnu/mapping/Namespace;
    .param p1, "local"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 80
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_f

    .line 86
    .end local v0    # "name":Ljava/lang/String;
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 87
    .restart local v0    # "name":Ljava/lang/String;
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 57
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 50
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 62
    instance-of v0, p1, Lgnu/expr/Expression;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgnu/expr/Expression;

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .registers 27
    .param p1, "template"    # Ljava/lang/Object;
    .param p2, "depth"    # I
    .param p3, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p4, "seen"    # Ljava/lang/Object;
    .param p5, "tr"    # Lkawa/lang/Translator;

    .line 305
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    check-cast v10, Ljava/util/IdentityHashMap;

    .line 306
    .local v10, "map":Ljava/util/IdentityHashMap;
    invoke-virtual {v10, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 307
    .local v11, "old":Ljava/lang/Object;
    sget-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    if-ne v11, v0, :cond_1a

    .line 309
    sget-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    invoke-virtual {v10, v7, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object v11

    .line 312
    :cond_1a
    sget-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v11, v0, :cond_1f

    .line 314
    return-object v11

    .line 316
    :cond_1f
    if-eqz v11, :cond_22

    .line 317
    return-object v11

    .line 320
    :cond_22
    instance-of v0, v7, Lgnu/lists/Pair;

    if-eqz v0, :cond_3b

    .line 321
    move-object v1, v7

    check-cast v1, Lgnu/lists/Pair;

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v11

    .local v0, "result":Ljava/lang/Object;
    goto/16 :goto_192

    .line 322
    .end local v0    # "result":Ljava/lang/Object;
    :cond_3b
    instance-of v0, v7, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_57

    .line 324
    move-object v8, v7

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 325
    .end local p3    # "syntax":Lkawa/lang/SyntaxForm;
    .local v8, "syntax":Lkawa/lang/SyntaxForm;
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object v3, v8

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v11

    .restart local v0    # "result":Ljava/lang/Object;
    goto/16 :goto_192

    .line 327
    .end local v0    # "result":Ljava/lang/Object;
    .end local v8    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local p3    # "syntax":Lkawa/lang/SyntaxForm;
    :cond_57
    instance-of v0, v7, Lgnu/lists/FVector;

    if-eqz v0, :cond_18c

    .line 329
    move-object v12, v7

    check-cast v12, Lgnu/lists/FVector;

    .line 330
    .local v12, "vector":Lgnu/lists/FVector;
    invoke-virtual {v12}, Lgnu/lists/FVector;->size()I

    move-result v13

    .line 331
    .local v13, "n":I
    new-array v14, v13, [Ljava/lang/Object;

    .line 337
    .local v14, "buffer":[Ljava/lang/Object;
    new-array v15, v13, [B

    .line 338
    .local v15, "state":[B
    const/4 v0, 0x0

    .line 339
    .local v0, "max_state":B
    const/4 v1, 0x0

    move v5, v0

    move v4, v1

    .end local v0    # "max_state":B
    .local v4, "i":I
    .local v5, "max_state":B
    :goto_6a
    const/16 v16, 0x0

    if-ge v4, v13, :cond_11d

    .line 341
    invoke-virtual {v12, v4}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 342
    .local v1, "element":Ljava/lang/Object;
    move/from16 v17, p2

    .line 344
    .local v17, "element_depth":I
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_dd

    const/4 v2, -0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_dd

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    move-object/from16 v18, v2

    .local v18, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "unquote-splicing"

    invoke-virtual {v9, v2, v8, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dd

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_dd

    .line 350
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_bb

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    move-object v3, v2

    .local v3, "pair_cdr":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v0, :cond_aa

    goto :goto_bb

    .line 354
    :cond_aa
    invoke-virtual {v9, v3, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v14, v4

    .line 355
    const/4 v0, 0x3

    aput-byte v0, v15, v4

    .line 356
    .end local v3    # "pair_cdr":Lgnu/lists/Pair;
    move-object v8, v1

    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v18, v11

    goto :goto_10a

    .line 352
    :cond_bb
    :goto_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid used of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in quasiquote template"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 359
    .end local v18    # "pair":Lgnu/lists/Pair;
    :cond_dd
    move-object/from16 v0, p0

    move-object v3, v1

    .end local v1    # "element":Ljava/lang/Object;
    .local v3, "element":Ljava/lang/Object;
    const/4 v8, 0x1

    move/from16 v2, v17

    move-object v8, v3

    move-object/from16 v18, v11

    const/4 v11, 0x2

    .end local v3    # "element":Ljava/lang/Object;
    .end local v11    # "old":Ljava/lang/Object;
    .local v8, "element":Ljava/lang/Object;
    .local v18, "old":Ljava/lang/Object;
    move-object/from16 v3, p3

    move/from16 v19, v4

    .end local v4    # "i":I
    .local v19, "i":I
    move-object/from16 v4, p4

    move/from16 v20, v5

    .end local v5    # "max_state":B
    .local v20, "max_state":B
    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v19

    .line 360
    aget-object v0, v14, v19

    if-ne v0, v8, :cond_fe

    .line 361
    aput-byte v16, v15, v19

    goto :goto_10a

    .line 362
    :cond_fe
    aget-object v0, v14, v19

    instance-of v0, v0, Lgnu/expr/Expression;

    if-eqz v0, :cond_107

    .line 363
    aput-byte v11, v15, v19

    goto :goto_10a

    .line 365
    :cond_107
    const/4 v0, 0x1

    aput-byte v0, v15, v19

    .line 367
    :goto_10a
    aget-byte v0, v15, v19

    move/from16 v1, v20

    .end local v20    # "max_state":B
    .local v1, "max_state":B
    if-le v0, v1, :cond_114

    .line 368
    aget-byte v0, v15, v19

    move v5, v0

    .end local v1    # "max_state":B
    .restart local v0    # "max_state":B
    goto :goto_115

    .line 367
    .end local v0    # "max_state":B
    .restart local v1    # "max_state":B
    :cond_114
    move v5, v1

    .line 339
    .end local v1    # "max_state":B
    .end local v8    # "element":Ljava/lang/Object;
    .end local v17    # "element_depth":I
    .restart local v5    # "max_state":B
    :goto_115
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v8, p3

    move-object/from16 v11, v18

    .end local v19    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_6a

    .end local v18    # "old":Ljava/lang/Object;
    .restart local v11    # "old":Ljava/lang/Object;
    :cond_11d
    move/from16 v19, v4

    move v1, v5

    move-object/from16 v18, v11

    const/4 v11, 0x2

    .line 370
    .end local v4    # "i":I
    .end local v5    # "max_state":B
    .end local v11    # "old":Ljava/lang/Object;
    .restart local v1    # "max_state":B
    .restart local v18    # "old":Ljava/lang/Object;
    if-nez v1, :cond_127

    .line 371
    move-object v0, v12

    .local v0, "result":Ljava/lang/Object;
    goto :goto_189

    .line 372
    .end local v0    # "result":Ljava/lang/Object;
    :cond_127
    const/4 v0, 0x1

    if-ne v1, v0, :cond_130

    .line 373
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, v14}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_189

    .line 376
    .end local v0    # "result":Ljava/lang/Object;
    :cond_130
    new-array v0, v13, [Lgnu/expr/Expression;

    .line 377
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_133
    if-ge v2, v13, :cond_178

    .line 379
    aget-byte v3, v15, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_142

    .line 380
    aget-object v3, v14, v2

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v0, v2

    const/4 v3, 0x1

    goto :goto_175

    .line 381
    :cond_142
    if-ge v1, v4, :cond_14e

    .line 382
    aget-object v3, v14, v2

    invoke-virtual {v6, v3, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    goto :goto_175

    .line 383
    :cond_14e
    aget-byte v3, v15, v2

    if-ge v3, v11, :cond_166

    .line 385
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 386
    .local v4, "arg1":[Ljava/lang/Object;
    aget-object v3, v14, v2

    aput-object v3, v4, v16

    .line 387
    new-instance v3, Lgnu/lists/FVector;

    invoke-direct {v3, v4}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v9}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    .line 388
    .end local v4    # "arg1":[Ljava/lang/Object;
    const/4 v3, 0x1

    goto :goto_175

    .line 391
    :cond_166
    const/4 v3, 0x1

    new-array v4, v3, [Lgnu/expr/Expression;

    .line 392
    .local v4, "arg1":[Lgnu/expr/Expression;
    aget-object v5, v14, v2

    check-cast v5, Lgnu/expr/Expression;

    aput-object v5, v4, v16

    .line 393
    invoke-static {v4}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    aput-object v5, v0, v2

    .line 377
    .end local v4    # "arg1":[Lgnu/expr/Expression;
    :goto_175
    add-int/lit8 v2, v2, 0x1

    goto :goto_133

    .line 396
    .end local v2    # "i":I
    :cond_178
    const/4 v2, 0x3

    if-ge v1, v2, :cond_181

    .line 397
    invoke-static {v0}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    move-object v0, v2

    .local v2, "result":Ljava/lang/Object;
    goto :goto_189

    .line 399
    .end local v2    # "result":Ljava/lang/Object;
    :cond_181
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v2

    .line 401
    .end local v1    # "max_state":B
    .end local v12    # "vector":Lgnu/lists/FVector;
    .end local v13    # "n":I
    .end local v14    # "buffer":[Ljava/lang/Object;
    .end local v15    # "state":[B
    .local v0, "result":Ljava/lang/Object;
    :goto_189
    move-object/from16 v8, p3

    goto :goto_192

    .line 403
    .end local v0    # "result":Ljava/lang/Object;
    .end local v18    # "old":Ljava/lang/Object;
    .restart local v11    # "old":Ljava/lang/Object;
    :cond_18c
    move-object/from16 v18, v11

    .end local v11    # "old":Ljava/lang/Object;
    .restart local v18    # "old":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 405
    .end local p3    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local v0    # "result":Ljava/lang/Object;
    .local v8, "syntax":Lkawa/lang/SyntaxForm;
    :goto_192
    if-eq v7, v0, :cond_1a3

    invoke-virtual {v10, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v1, v2, :cond_1a3

    .line 406
    const/16 v1, 0x65

    const-string v2, "cycle in non-literal data"

    invoke-virtual {v9, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 407
    :cond_1a3
    invoke-virtual {v10, v7, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-object v0
.end method

.method protected expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;
    .registers 10
    .param p1, "template"    # Ljava/lang/Object;
    .param p2, "depth"    # I
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 39
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 43
    .local v4, "seen":Ljava/util/IdentityHashMap;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected expandColonForms()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .registers 27
    .param p1, "list"    # Lgnu/lists/Pair;
    .param p2, "depth"    # I
    .param p3, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p4, "seen"    # Ljava/lang/Object;
    .param p5, "tr"    # Lkawa/lang/Translator;

    .line 93
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v0, p1

    move-object v10, v0

    move/from16 v0, p2

    .line 101
    .end local p2    # "depth":I
    .local v0, "depth":I
    .local v10, "pair":Lgnu/lists/Pair;
    :goto_d
    move-object v11, v10

    .line 107
    .local v11, "rest":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Quote;->expandColonForms()Z

    move-result v1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_103

    if-ne v10, v7, :cond_103

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v1, v8, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_103

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    move-object v2, v1

    .local v2, "p1":Lgnu/lists/Pair;
    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_103

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    move-object v3, v1

    .local v3, "p2":Lgnu/lists/Pair;
    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_101

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v4, :cond_101

    .line 115
    invoke-virtual {v9, v2, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 116
    .local v1, "part1":Lgnu/expr/Expression;
    invoke-virtual {v9, v3, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v4

    .line 117
    .local v4, "part2":Lgnu/expr/Expression;
    invoke-virtual {v9, v1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v5

    .line 118
    .local v5, "ns":Lgnu/mapping/Namespace;
    invoke-virtual {v9, v5, v4}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v15

    .line 120
    .local v15, "sym":Lgnu/mapping/Symbol;
    if-eqz v15, :cond_63

    .line 121
    move-object/from16 v16, v15

    move-object/from16 v3, v16

    .local v16, "cdr":Ljava/lang/Object;
    goto/16 :goto_2d1

    .line 122
    .end local v16    # "cdr":Ljava/lang/Object;
    :cond_63
    if-eqz v5, :cond_87

    if-ne v0, v14, :cond_87

    .line 123
    new-instance v14, Lgnu/expr/ApplyExp;

    sget-object v13, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    move-object/from16 v17, v3

    .end local v3    # "p2":Lgnu/lists/Pair;
    .local v17, "p2":Lgnu/lists/Pair;
    const-string v3, "makeSymbol"

    invoke-virtual {v13, v3, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v13, v12, [Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v13, v16

    const/16 v18, 0x1

    aput-object v4, v13, v18

    invoke-direct {v14, v3, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v3, v14

    .local v3, "cdr":Ljava/lang/Object;
    goto/16 :goto_2d1

    .line 122
    .end local v17    # "p2":Lgnu/lists/Pair;
    .local v3, "p2":Lgnu/lists/Pair;
    :cond_87
    move-object/from16 v17, v3

    .line 126
    .end local v3    # "p2":Lgnu/lists/Pair;
    .restart local v17    # "p2":Lgnu/lists/Pair;
    instance-of v3, v1, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_c4

    instance-of v3, v4, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_c4

    .line 128
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    check-cast v14, Lgnu/expr/ReferenceExp;

    invoke-virtual {v14}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    check-cast v14, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .local v3, "cdr":Ljava/lang/Object;
    goto/16 :goto_2d1

    .line 129
    .end local v3    # "cdr":Ljava/lang/Object;
    :cond_c4
    invoke-static {v1, v4}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .local v13, "combinedName":Ljava/lang/String;
    if-eqz v3, :cond_d5

    .line 130
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v3, v13}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .restart local v3    # "cdr":Ljava/lang/Object;
    goto/16 :goto_2d1

    .line 133
    .end local v3    # "cdr":Ljava/lang/Object;
    :cond_d5
    invoke-virtual {v9, v10}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 134
    .local v3, "save":Ljava/lang/Object;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\'"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\' is not a valid prefix"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x65

    invoke-virtual {v9, v14, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 135
    invoke-virtual {v9, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 136
    move-object v3, v15

    .line 138
    .local v3, "cdr":Ljava/lang/Object;
    goto/16 :goto_2d1

    .line 107
    .end local v1    # "part1":Lgnu/expr/Expression;
    .end local v4    # "part2":Lgnu/expr/Expression;
    .end local v5    # "ns":Lgnu/mapping/Namespace;
    .end local v13    # "combinedName":Ljava/lang/String;
    .end local v15    # "sym":Lgnu/mapping/Symbol;
    .end local v17    # "p2":Lgnu/lists/Pair;
    .local v3, "p2":Lgnu/lists/Pair;
    :cond_101
    move-object/from16 v17, v3

    .line 140
    .end local v2    # "p1":Lgnu/lists/Pair;
    .end local v3    # "p2":Lgnu/lists/Pair;
    :cond_103
    const-string v1, "unquote-splicing"

    const-string v2, "unquote"

    if-gez v0, :cond_10b

    goto/16 :goto_195

    .line 143
    :cond_10b
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "quasiquote"

    invoke-virtual {v9, v3, v8, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 144
    add-int/lit8 v0, v0, 0x1

    move v12, v0

    goto/16 :goto_196

    .line 145
    :cond_11c
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3, v8, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    const-string v4, " in quasiquote template"

    const-string v5, "invalid used of "

    if-eqz v3, :cond_16d

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 149
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_14f

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    move-object v12, v3

    .local v12, "pair_cdr":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v13, :cond_144

    goto :goto_14f

    .line 153
    :cond_144
    if-nez v0, :cond_14d

    .line 155
    invoke-virtual {v9, v12, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v1

    .line 156
    .local v1, "cdr":Ljava/lang/Object;
    move-object v3, v1

    goto/16 :goto_2d1

    .line 158
    .end local v1    # "cdr":Ljava/lang/Object;
    .end local v12    # "pair_cdr":Lgnu/lists/Pair;
    :cond_14d
    move v12, v0

    goto :goto_196

    .line 151
    :cond_14f
    :goto_14f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 159
    :cond_16d
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3, v8, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 162
    :cond_195
    :goto_195
    move v12, v0

    .end local v0    # "depth":I
    .local v12, "depth":I
    :goto_196
    const/4 v0, 0x1

    if-ne v12, v0, :cond_25d

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_25d

    .line 164
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "form":Ljava/lang/Object;
    move-object/from16 v3, p3

    .line 166
    .local v3, "subsyntax":Lkawa/lang/SyntaxForm;
    :goto_1a7
    instance-of v4, v0, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_1b3

    .line 168
    move-object v3, v0

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 169
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a7

    .line 171
    :cond_1b3
    const/4 v4, -0x1

    .line 172
    .local v4, "splicing":I
    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_1d1

    .line 174
    move-object v5, v0

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 175
    .local v5, "op":Ljava/lang/Object;
    invoke-virtual {v9, v5, v3, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 176
    const/4 v4, 0x0

    move v13, v4

    goto :goto_1d2

    .line 177
    :cond_1c8
    invoke-virtual {v9, v5, v3, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 178
    const/4 v4, 0x1

    move v13, v4

    goto :goto_1d2

    .line 180
    .end local v5    # "op":Ljava/lang/Object;
    :cond_1d1
    move v13, v4

    .end local v4    # "splicing":I
    .local v13, "splicing":I
    :goto_1d2
    if-ltz v13, :cond_25d

    .line 182
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object v14, v1

    .line 184
    .local v14, "vec":Ljava/util/Vector;
    const/4 v15, 0x0

    .line 189
    .local v15, "cdr":Ljava/lang/Object;
    :goto_1e2
    instance-of v1, v0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1f0

    .line 191
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 192
    .end local v3    # "subsyntax":Lkawa/lang/SyntaxForm;
    .local v1, "subsyntax":Lkawa/lang/SyntaxForm;
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    move-object v4, v1

    goto :goto_1f2

    .line 189
    .end local v1    # "subsyntax":Lkawa/lang/SyntaxForm;
    .restart local v3    # "subsyntax":Lkawa/lang/SyntaxForm;
    :cond_1f0
    move-object v5, v0

    move-object v4, v3

    .line 194
    .end local v0    # "form":Ljava/lang/Object;
    .end local v3    # "subsyntax":Lkawa/lang/SyntaxForm;
    .local v4, "subsyntax":Lkawa/lang/SyntaxForm;
    .local v5, "form":Ljava/lang/Object;
    :goto_1f2
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v0, :cond_238

    .line 195
    nop

    .line 204
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v3, v0, 0x1

    .line 205
    .local v3, "nargs":I
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v19, v3

    .end local v3    # "nargs":I
    .local v19, "nargs":I
    move-object/from16 v3, p3

    move-object/from16 v20, v4

    .end local v4    # "subsyntax":Lkawa/lang/SyntaxForm;
    .local v20, "subsyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v4, p4

    move-object v8, v5

    .end local v5    # "form":Ljava/lang/Object;
    .local v8, "form":Ljava/lang/Object;
    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .end local v15    # "cdr":Ljava/lang/Object;
    .local v0, "cdr":Ljava/lang/Object;
    move/from16 v1, v19

    const/4 v2, 0x1

    .end local v19    # "nargs":I
    .local v1, "nargs":I
    if-le v1, v2, :cond_233

    .line 208
    new-array v2, v1, [Lgnu/expr/Expression;

    .line 209
    .local v2, "args":[Lgnu/expr/Expression;
    invoke-virtual {v14, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v6, v0, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    .line 211
    if-nez v13, :cond_22b

    sget-object v3, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    goto :goto_22d

    :cond_22b
    sget-object v3, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 212
    .local v3, "method":Lgnu/bytecode/Method;
    :goto_22d
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .line 214
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v3    # "method":Lgnu/bytecode/Method;
    :cond_233
    move-object v11, v10

    .line 215
    move-object v3, v0

    move v0, v12

    goto/16 :goto_2d1

    .line 196
    .end local v0    # "cdr":Ljava/lang/Object;
    .end local v1    # "nargs":I
    .end local v8    # "form":Ljava/lang/Object;
    .end local v20    # "subsyntax":Lkawa/lang/SyntaxForm;
    .restart local v4    # "subsyntax":Lkawa/lang/SyntaxForm;
    .restart local v5    # "form":Ljava/lang/Object;
    .restart local v15    # "cdr":Ljava/lang/Object;
    :cond_238
    move-object/from16 v20, v4

    move-object v8, v5

    .end local v4    # "subsyntax":Lkawa/lang/SyntaxForm;
    .end local v5    # "form":Ljava/lang/Object;
    .restart local v8    # "form":Ljava/lang/Object;
    .restart local v20    # "subsyntax":Lkawa/lang/SyntaxForm;
    instance-of v0, v8, Lgnu/lists/Pair;

    if-eqz v0, :cond_256

    .line 198
    move-object v0, v8

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v1, v20

    .end local v20    # "subsyntax":Lkawa/lang/SyntaxForm;
    .local v1, "subsyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual {v9, v0, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    move-object v0, v8

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v8, p3

    move-object v3, v1

    .end local v8    # "form":Ljava/lang/Object;
    .local v0, "form":Ljava/lang/Object;
    goto :goto_1e2

    .line 202
    .end local v0    # "form":Ljava/lang/Object;
    .end local v1    # "subsyntax":Lkawa/lang/SyntaxForm;
    .restart local v8    # "form":Ljava/lang/Object;
    .restart local v20    # "subsyntax":Lkawa/lang/SyntaxForm;
    :cond_256
    const-string v0, "improper list argument to unquote"

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 218
    .end local v8    # "form":Ljava/lang/Object;
    .end local v13    # "splicing":I
    .end local v14    # "vec":Ljava/util/Vector;
    .end local v15    # "cdr":Ljava/lang/Object;
    .end local v20    # "subsyntax":Lkawa/lang/SyntaxForm;
    :cond_25d
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v8

    .line 219
    .local v8, "car":Ljava/lang/Object;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_295

    .line 221
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 222
    instance-of v0, v11, Lgnu/lists/Pair;

    if-eqz v0, :cond_284

    .line 224
    move-object v10, v11

    check-cast v10, Lgnu/lists/Pair;

    .line 225
    move-object/from16 v8, p3

    move v0, v12

    goto/16 :goto_d

    .line 227
    :cond_284
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "cdr":Ljava/lang/Object;
    move-object v3, v0

    move v0, v12

    goto :goto_2d1

    .line 230
    .end local v0    # "cdr":Ljava/lang/Object;
    :cond_295
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    move v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .restart local v0    # "cdr":Ljava/lang/Object;
    instance-of v1, v8, Lgnu/expr/Expression;

    if-nez v1, :cond_2b6

    instance-of v1, v0, Lgnu/expr/Expression;

    if-eqz v1, :cond_2af

    goto :goto_2b6

    .line 239
    :cond_2af
    invoke-static {v10, v8, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .line 240
    move-object v3, v0

    move v0, v12

    goto :goto_2d1

    .line 233
    :cond_2b6
    :goto_2b6
    const/4 v1, 0x2

    new-array v2, v1, [Lgnu/expr/Expression;

    .line 234
    .restart local v2    # "args":[Lgnu/expr/Expression;
    invoke-virtual {v6, v8, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 235
    invoke-virtual {v6, v0, v9}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 236
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v3, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v0, v1

    .line 237
    .end local v2    # "args":[Lgnu/expr/Expression;
    move-object v3, v0

    move v0, v12

    .line 245
    .end local v8    # "car":Ljava/lang/Object;
    .end local v12    # "depth":I
    .local v0, "depth":I
    .local v3, "cdr":Ljava/lang/Object;
    :goto_2d1
    if-ne v7, v11, :cond_2d4

    .line 246
    return-object v3

    .line 247
    :cond_2d4
    move-object/from16 v1, p1

    .line 248
    .local v1, "p":Lgnu/lists/Pair;
    const/16 v2, 0x14

    new-array v2, v2, [Lgnu/lists/Pair;

    .line 249
    .local v2, "pairs":[Lgnu/lists/Pair;
    const/4 v4, 0x0

    .line 252
    .local v4, "npairs":I
    :goto_2db
    array-length v5, v2

    if-lt v4, v5, :cond_2e7

    .line 254
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [Lgnu/lists/Pair;

    .line 255
    .local v5, "tmp":[Lgnu/lists/Pair;
    const/4 v8, 0x0

    invoke-static {v2, v8, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    move-object v2, v5

    .line 258
    .end local v5    # "tmp":[Lgnu/lists/Pair;
    :cond_2e7
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "npairs":I
    .local v5, "npairs":I
    aput-object v1, v2, v4

    .line 259
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_33b

    .line 260
    nop

    .line 263
    instance-of v4, v3, Lgnu/expr/Expression;

    if-eqz v4, :cond_2f9

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_2fa

    :cond_2f9
    move-object v4, v3

    .line 264
    .local v4, "result":Ljava/lang/Object;
    :goto_2fa
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_309

    .line 266
    aget-object v1, v2, v5

    .line 267
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v8, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_2fa

    .line 270
    :cond_309
    instance-of v8, v3, Lgnu/expr/Expression;

    if-eqz v8, :cond_33a

    .line 272
    const/4 v8, 0x2

    new-array v8, v8, [Lgnu/expr/Expression;

    .line 273
    .local v8, "args":[Lgnu/expr/Expression;
    move-object v12, v3

    check-cast v12, Lgnu/expr/Expression;

    const/4 v13, 0x1

    aput-object v12, v8, v13

    .line 274
    if-ne v5, v13, :cond_32b

    .line 277
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12, v9}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v8, v14

    .line 278
    new-instance v12, Lgnu/expr/ApplyExp;

    sget-object v13, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v12, v13, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v12

    .line 282
    :cond_32b
    const/4 v14, 0x0

    invoke-virtual {v6, v4, v9}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v12

    aput-object v12, v8, v14

    .line 283
    new-instance v12, Lgnu/expr/ApplyExp;

    sget-object v13, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    invoke-direct {v12, v13, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v12

    .line 286
    .end local v8    # "args":[Lgnu/expr/Expression;
    :cond_33a
    return-object v4

    .line 261
    .end local v4    # "result":Ljava/lang/Object;
    :cond_33b
    const/4 v8, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lgnu/lists/Pair;

    move v4, v5

    goto :goto_2db
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 67
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 420
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v2, :cond_11

    goto :goto_25

    .line 423
    :cond_11
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    iget-boolean v2, p0, Lkawa/lang/Quote;->isQuasi:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, -0x1

    :goto_1c
    invoke-virtual {p0, v0, v2, p2}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 422
    .end local v1    # "pair":Lgnu/lists/Pair;
    :cond_25
    :goto_25
    const-string v0, "wrong number of arguments to quote"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

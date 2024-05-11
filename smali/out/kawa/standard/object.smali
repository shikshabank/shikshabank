.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lkawa/standard/object;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    .line 15
    const-string v1, "object"

    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    .line 18
    const-string v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    .line 19
    const-string v0, "class-name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    .line 20
    const-string v0, "interface"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    .line 21
    const-string v0, "throws"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    .line 22
    const-string v0, "type"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    .line 23
    const-string v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    .line 24
    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    .line 25
    const-string v0, "initform"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    .line 26
    const-string v0, "init-form"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    .line 27
    const-string v0, "init-value"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    .line 28
    const-string v0, "init-keyword"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .registers 2
    .param p1, "lambda"    # Lkawa/lang/Lambda;

    .line 33
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    iput-object p1, p0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    .line 35
    return-void
.end method

.method static addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J
    .registers 15
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "previous"    # J
    .param p3, "allowed"    # J
    .param p5, "kind"    # Ljava/lang/String;
    .param p6, "tr"    # Lkawa/lang/Translator;

    .line 625
    invoke-static {p0, p6}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    .line 626
    .local v0, "flags":J
    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_23

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown access specifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_74

    .line 628
    :cond_23
    const-wide/16 v5, -0x1

    xor-long/2addr v5, p3

    and-long/2addr v5, v0

    cmp-long v7, v5, v3

    if-eqz v7, :cond_4c

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access specifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_74

    .line 630
    :cond_4c
    and-long v5, p1, v0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_74

    .line 631
    const/16 v2, 0x77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access specifiers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 632
    :cond_74
    :goto_74
    or-long v2, p1, v0

    return-wide v2
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 637
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 638
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 639
    :cond_c
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_26

    .line 641
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    .line 642
    .local v0, "p":Lgnu/lists/Pair;
    move-object v1, p0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {p1, v1}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object p0

    .line 643
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_26

    .line 644
    move-object v1, p0

    check-cast v1, Lgnu/lists/Pair;

    invoke-static {v1, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v1

    return-wide v1

    .line 646
    .end local v0    # "p":Lgnu/lists/Pair;
    :cond_26
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 666
    instance-of v0, p0, Lgnu/expr/Keyword;

    if-eqz v0, :cond_c

    .line 667
    move-object v0, p0

    check-cast v0, Lgnu/expr/Keyword;

    invoke-virtual {v0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 668
    :cond_c
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_18

    .line 669
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    invoke-virtual {v0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    .line 670
    :cond_18
    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_20

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 672
    :cond_20
    :goto_20
    const-string v0, "private"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 673
    const-wide/32 v0, 0x1000000

    return-wide v0

    .line 674
    :cond_2c
    const-string v0, "protected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 675
    const-wide/32 v0, 0x2000000

    return-wide v0

    .line 676
    :cond_38
    const-string v0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 677
    const-wide/32 v0, 0x4000000

    return-wide v0

    .line 678
    :cond_44
    const-string v0, "package"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 679
    const-wide/32 v0, 0x8000000

    return-wide v0

    .line 680
    :cond_50
    const-string v0, "volatile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 681
    const-wide v0, 0x80000000L

    return-wide v0

    .line 682
    :cond_5e
    const-string v0, "transient"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 683
    const-wide v0, 0x100000000L

    return-wide v0

    .line 684
    :cond_6c
    const-string v0, "enum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 685
    const-wide v0, 0x200000000L

    return-wide v0

    .line 686
    :cond_7a
    const-string v0, "final"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 687
    const-wide v0, 0x400000000L

    return-wide v0

    .line 688
    :cond_88
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J
    .registers 10
    .param p0, "pair"    # Lgnu/lists/Pair;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 651
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    .line 652
    .local v0, "icar":J
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 653
    .local v2, "cdr":Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_2a

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_17

    goto :goto_2a

    .line 655
    :cond_17
    instance-of v5, v2, Lgnu/lists/Pair;

    if-eqz v5, :cond_29

    .line 657
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;

    invoke-static {v5, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v5

    .line 658
    .local v5, "icdr":J
    cmp-long v7, v5, v3

    if-eqz v7, :cond_29

    .line 659
    or-long v3, v0, v5

    return-wide v3

    .line 661
    .end local v5    # "icdr":J
    :cond_29
    return-wide v3

    .line 654
    :cond_2a
    :goto_2a
    return-wide v0
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .registers 6
    .param p0, "exp"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 610
    instance-of v0, p0, Lgnu/expr/Keyword;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 611
    move-object v0, p0

    check-cast v0, Lgnu/expr/Keyword;

    invoke-virtual {v0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_2d

    .line 612
    .end local v0    # "value":Ljava/lang/String;
    :cond_d
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_19

    .line 613
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    invoke-virtual {v0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_2d

    .line 614
    .end local v0    # "value":Ljava/lang/String;
    :cond_19
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_37

    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "qvalue":Ljava/lang/Object;
    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_37

    .line 616
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .end local v2    # "qvalue":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/String;
    :goto_2d
    if-eqz p1, :cond_35

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    return v1

    .line 618
    .end local v0    # "value":Ljava/lang/String;
    :cond_37
    return v1
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .registers 12
    .param p0, "d"    # Ljava/lang/Object;
    .param p1, "oexp"    # Lgnu/expr/ClassExp;
    .param p2, "initPair"    # Lgnu/lists/Pair;
    .param p3, "tr"    # Lkawa/lang/Translator;
    .param p4, "initSyntax"    # Lkawa/lang/SyntaxForm;

    .line 558
    instance-of v0, p0, Lgnu/expr/Declaration;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lgnu/expr/Declaration;

    const-wide/16 v2, 0x800

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    goto :goto_16

    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 561
    .local v0, "isStatic":Z
    :goto_16
    if-eqz v0, :cond_1b

    iget-object v2, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    goto :goto_1d

    :cond_1b
    iget-object v2, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 562
    .local v2, "initMethod":Lgnu/expr/LambdaExp;
    :goto_1d
    const/4 v3, 0x0

    if-nez v2, :cond_54

    .line 564
    new-instance v4, Lgnu/expr/LambdaExp;

    new-instance v5, Lgnu/expr/BeginExp;

    invoke-direct {v5}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v4, v5}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    move-object v2, v4

    .line 565
    invoke-virtual {v2, v1}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 566
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v1}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 567
    if-eqz v0, :cond_3d

    .line 569
    const-string v1, "$clinit$"

    invoke-virtual {v2, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 570
    iput-object v2, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    goto :goto_4e

    .line 574
    :cond_3d
    const-string v1, "$finit$"

    invoke-virtual {v2, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 575
    iput-object v2, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 578
    new-instance v1, Lgnu/expr/Declaration;

    sget-object v4, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v1, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v1}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 580
    :goto_4e
    iget-object v1, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, v2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 581
    iput-object v2, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 583
    :cond_54
    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 584
    iget-object v1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 585
    .local v1, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v2, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 586
    invoke-virtual {p3, p2, p4}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 587
    .local v4, "initValue":Lgnu/expr/Expression;
    instance-of v5, p0, Lgnu/expr/Declaration;

    if-eqz v5, :cond_73

    .line 589
    move-object v5, p0

    check-cast v5, Lgnu/expr/Declaration;

    .line 590
    .local v5, "decl":Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/SetExp;

    invoke-direct {v6, v5, v4}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 591
    .local v6, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v6, v5}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 592
    invoke-virtual {v5, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 593
    move-object v3, v6

    .line 594
    .end local v4    # "initValue":Lgnu/expr/Expression;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "sexp":Lgnu/expr/SetExp;
    .local v3, "initValue":Lgnu/expr/Expression;
    goto :goto_7e

    .line 596
    .end local v3    # "initValue":Lgnu/expr/Expression;
    .restart local v4    # "initValue":Lgnu/expr/Expression;
    :cond_73
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v3}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    .line 597
    .end local v4    # "initValue":Lgnu/expr/Expression;
    .restart local v3    # "initValue":Lgnu/expr/Expression;
    :goto_7e
    iget-object v4, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v4, Lgnu/expr/BeginExp;

    invoke-virtual {v4, v3}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 598
    iput-object v1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 599
    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 600
    return-void
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .registers 35
    .param p1, "saved"    # [Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 326
    move-object/from16 v7, p2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    move-object v8, v1

    check-cast v8, Lgnu/expr/ClassExp;

    .line 327
    .local v8, "oexp":Lgnu/expr/ClassExp;
    const/4 v9, 0x1

    aget-object v10, p1, v9

    .line 328
    .local v10, "components":Ljava/lang/Object;
    const/4 v1, 0x2

    aget-object v1, p1, v1

    move-object v11, v1

    check-cast v11, Ljava/util/Vector;

    .line 329
    .local v11, "inits":Ljava/util/Vector;
    const/4 v1, 0x3

    aget-object v1, p1, v1

    move-object v12, v1

    check-cast v12, Lgnu/expr/LambdaExp;

    .line 330
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    const/4 v1, 0x4

    aget-object v1, p1, v1

    .line 331
    .local v1, "superlist":Ljava/lang/Object;
    const/4 v2, 0x5

    aget-object v13, p1, v2

    .line 332
    .local v13, "classNamePair":Ljava/lang/Object;
    iput-object v12, v8, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 334
    invoke-static {v1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v2

    .line 335
    .local v2, "num_supers":I
    const/16 v3, 0x65

    if-gez v2, :cond_2f

    .line 337
    const-string v4, "object superclass specification not a list"

    invoke-virtual {v7, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 338
    const/4 v2, 0x0

    move v14, v2

    goto :goto_30

    .line 335
    :cond_2f
    move v14, v2

    .line 340
    .end local v2    # "num_supers":I
    .local v14, "num_supers":I
    :goto_30
    new-array v15, v14, [Lgnu/expr/Expression;

    .line 341
    .local v15, "supers":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    move-object/from16 v16, v1

    .end local v1    # "superlist":Ljava/lang/Object;
    .local v2, "i":I
    .local v16, "superlist":Ljava/lang/Object;
    :goto_35
    if-ge v2, v14, :cond_7d

    move-object/from16 v1, v16

    .line 343
    .end local v16    # "superlist":Ljava/lang/Object;
    .restart local v1    # "superlist":Ljava/lang/Object;
    :goto_39
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_45

    .line 346
    move-object v4, v1

    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_39

    .line 348
    :cond_45
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    .line 349
    .local v4, "superpair":Lgnu/lists/Pair;
    invoke-virtual {v7, v4, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v15, v2

    .line 350
    aget-object v5, v15, v2

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_75

    .line 352
    aget-object v5, v15, v2

    check-cast v5, Lgnu/expr/ReferenceExp;

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 354
    .local v5, "decl":Lgnu/expr/Declaration;
    if-eqz v5, :cond_75

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    move-object/from16 v16, v6

    .local v16, "svalue":Lgnu/expr/Expression;
    instance-of v6, v6, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_75

    .line 355
    move-object/from16 v6, v16

    check-cast v6, Lgnu/expr/ClassExp;

    const/high16 v9, 0x20000

    invoke-virtual {v6, v9}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 357
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v16    # "svalue":Lgnu/expr/Expression;
    :cond_75
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .line 341
    .end local v1    # "superlist":Ljava/lang/Object;
    .end local v4    # "superpair":Lgnu/lists/Pair;
    .local v16, "superlist":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x1

    goto :goto_35

    .line 360
    .end local v2    # "i":I
    :cond_7d
    if-eqz v13, :cond_a8

    .line 362
    move-object v1, v13

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v7, v1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 363
    .local v1, "classNameExp":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    .line 367
    .local v2, "classNameVal":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/CharSequence;

    .line 371
    .local v4, "isString":Z
    if-eqz v4, :cond_9c

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "classNameSpecifier":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9c

    .line 373
    iput-object v6, v8, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    goto :goto_a8

    .line 376
    .end local v6    # "classNameSpecifier":Ljava/lang/String;
    :cond_9c
    invoke-virtual {v7, v13}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 377
    .local v5, "savedPos":Ljava/lang/Object;
    const-string v6, "class-name specifier must be a non-empty string literal"

    invoke-virtual {v7, v3, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 378
    invoke-virtual {v7, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 381
    .end local v1    # "classNameExp":Lgnu/expr/Expression;
    .end local v2    # "classNameVal":Ljava/lang/Object;
    .end local v4    # "isString":Z
    .end local v5    # "savedPos":Ljava/lang/Object;
    :cond_a8
    :goto_a8
    iput-object v15, v8, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 383
    invoke-virtual {v8, v7}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 387
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v9

    .line 388
    .local v9, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b2
    const/4 v6, 0x0

    if-ge v1, v9, :cond_ca

    .line 390
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v11, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 391
    .local v2, "init":Ljava/lang/Object;
    if-eqz v2, :cond_c7

    .line 392
    invoke-virtual {v11, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    invoke-static {v3, v8, v4, v7, v6}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    .line 388
    .end local v2    # "init":Ljava/lang/Object;
    :cond_c7
    add-int/lit8 v1, v1, 0x2

    goto :goto_b2

    .line 395
    .end local v1    # "i":I
    :cond_ca
    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 398
    move-object v1, v12

    .line 399
    .local v1, "meth":Lgnu/expr/LambdaExp;
    const/4 v2, 0x0

    .line 400
    .local v2, "init_index":I
    const/4 v3, 0x0

    .line 401
    .local v3, "componentsSyntax":Lkawa/lang/SyntaxForm;
    move-object v4, v10

    move-object v5, v1

    move-object v1, v4

    move v4, v2

    .end local v2    # "init_index":I
    .local v1, "obj":Ljava/lang/Object;
    .local v4, "init_index":I
    .local v5, "meth":Lgnu/expr/LambdaExp;
    :goto_d4
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_477

    move-object/from16 v17, v3

    .line 403
    .end local v3    # "componentsSyntax":Lkawa/lang/SyntaxForm;
    .local v17, "componentsSyntax":Lkawa/lang/SyntaxForm;
    :goto_da
    instance-of v2, v1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_e7

    .line 405
    move-object/from16 v17, v1

    check-cast v17, Lkawa/lang/SyntaxForm;

    .line 406
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_da

    .line 408
    :cond_e7
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 409
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v7, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    .local v3, "savedPos1":Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    .line 411
    .local v18, "pair_car":Ljava/lang/Object;
    move-object/from16 v19, v17

    move-object/from16 v6, v18

    .line 412
    .end local v18    # "pair_car":Ljava/lang/Object;
    .local v6, "pair_car":Ljava/lang/Object;
    .local v19, "memberSyntax":Lkawa/lang/SyntaxForm;
    :goto_f6
    instance-of v0, v6, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_104

    .line 414
    move-object/from16 v19, v6

    check-cast v19, Lkawa/lang/SyntaxForm;

    .line 415
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    const/4 v0, 0x0

    goto :goto_f6

    .line 419
    :cond_104
    :try_start_104
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_464

    move-object v1, v0

    .line 420
    :try_start_109
    instance-of v0, v6, Lgnu/expr/Keyword;
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_452

    if-eqz v0, :cond_131

    :try_start_10d
    instance-of v0, v1, Lgnu/lists/Pair;

    if-eqz v0, :cond_131

    .line 424
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0
    :try_end_118
    .catchall {:try_start_10d .. :try_end_118} :catchall_121

    move-object v1, v0

    .line 541
    invoke-virtual {v7, v3}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v3, v17

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_d4

    :catchall_121
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    goto/16 :goto_473

    .line 427
    :cond_131
    :try_start_131
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_452

    move-object v2, v0

    .line 428
    :try_start_135
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0
    :try_end_139
    .catchall {:try_start_135 .. :try_end_139} :catchall_43e

    .line 429
    .end local v6    # "pair_car":Ljava/lang/Object;
    .local v0, "pair_car":Ljava/lang/Object;
    move-object/from16 v6, v19

    move-object/from16 v31, v6

    move-object v6, v0

    move-object/from16 v0, v31

    .line 430
    .local v0, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    :goto_140
    move-object/from16 v21, v1

    .end local v1    # "obj":Ljava/lang/Object;
    .local v21, "obj":Ljava/lang/Object;
    :try_start_142
    instance-of v1, v6, Lkawa/lang/SyntaxForm;
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_428

    if-eqz v1, :cond_164

    .line 432
    :try_start_146
    move-object v1, v6

    check-cast v1, Lkawa/lang/SyntaxForm;

    move-object v0, v1

    .line 433
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1
    :try_end_14e
    .catchall {:try_start_146 .. :try_end_14e} :catchall_152

    move-object v6, v1

    move-object/from16 v1, v21

    goto :goto_140

    .line 541
    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_152
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v1, v21

    move-object v9, v3

    goto/16 :goto_473

    .line 435
    .restart local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :cond_164
    :try_start_164
    instance-of v1, v6, Ljava/lang/String;
    :try_end_166
    .catchall {:try_start_164 .. :try_end_166} :catchall_428

    if-nez v1, :cond_2ba

    :try_start_168
    instance-of v1, v6, Lgnu/mapping/Symbol;

    if-nez v1, :cond_2ba

    instance-of v1, v6, Lgnu/expr/Keyword;

    if-eqz v1, :cond_186

    move-object/from16 v23, v0

    move-object/from16 v22, v2

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    const/16 v20, 0x0

    move-object v9, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    goto/16 :goto_2ce

    .line 511
    :cond_186
    instance-of v1, v6, Lgnu/lists/Pair;

    if-eqz v1, :cond_278

    .line 513
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1
    :try_end_18e
    .catchall {:try_start_168 .. :try_end_18e} :catchall_2a4

    .line 518
    .local v1, "save_scope":Lgnu/expr/ScopeExp;
    if-eqz v19, :cond_19a

    .line 519
    move-object/from16 v22, v1

    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    .local v22, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_192
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    invoke-virtual {v7, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V
    :try_end_199
    .catchall {:try_start_192 .. :try_end_199} :catchall_152

    goto :goto_19c

    .line 518
    .end local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .restart local v1    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_19a
    move-object/from16 v22, v1

    .line 520
    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    .restart local v22    # "save_scope":Lgnu/expr/ScopeExp;
    :goto_19c
    :try_start_19c
    const-string v1, "*init*"
    :try_end_19e
    .catchall {:try_start_19c .. :try_end_19e} :catchall_2a4

    move-object/from16 v23, v3

    .end local v3    # "savedPos1":Ljava/lang/Object;
    .local v23, "savedPos1":Ljava/lang/Object;
    :try_start_1a0
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a8
    .catchall {:try_start_1a0 .. :try_end_1a8} :catchall_261

    if-eqz v1, :cond_1c3

    .line 521
    :try_start_1aa
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v1}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_1b0

    goto :goto_1c3

    .line 541
    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v22    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_1b0
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v1, v21

    move-object/from16 v9, v23

    goto/16 :goto_473

    .line 522
    .restart local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v22    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_1c3
    :goto_1c3
    :try_start_1c3
    invoke-static {v5, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 523
    iget-object v1, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object v3, v1

    .line 524
    .local v3, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v5, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 525
    move-object/from16 v1, p0

    move-object/from16 v24, v3

    .end local v3    # "saveLambda":Lgnu/expr/LambdaExp;
    .local v24, "saveLambda":Lgnu/expr/LambdaExp;
    iget-object v3, v1, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v25, v6

    check-cast v25, Lgnu/lists/Pair;

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26
    :try_end_1dd
    .catchall {:try_start_1c3 .. :try_end_1dd} :catchall_261

    if-eqz v0, :cond_221

    if-eqz v19, :cond_203

    :try_start_1e1
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1
    :try_end_1e5
    .catchall {:try_start_1e1 .. :try_end_1e5} :catchall_1ee

    move-object/from16 v27, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .local v27, "pair":Lgnu/lists/Pair;
    :try_start_1e7
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    if-eq v1, v2, :cond_223

    goto :goto_205

    .line 541
    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v24    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v27    # "pair":Lgnu/lists/Pair;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    :catchall_1ee
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v1, v21

    move/from16 v27, v9

    move-object/from16 v9, v23

    .end local v2    # "pair":Lgnu/lists/Pair;
    .restart local v27    # "pair":Lgnu/lists/Pair;
    goto/16 :goto_473

    .line 525
    .end local v27    # "pair":Lgnu/lists/Pair;
    .restart local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .restart local v24    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_203
    move-object/from16 v27, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .restart local v27    # "pair":Lgnu/lists/Pair;
    :goto_205
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1
    :try_end_209
    .catchall {:try_start_1e7 .. :try_end_209} :catchall_20c

    move-object/from16 v28, v1

    goto :goto_225

    .line 541
    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v24    # "saveLambda":Lgnu/expr/LambdaExp;
    :catchall_20c
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v27, v9

    move-object/from16 v9, v23

    goto/16 :goto_473

    .line 525
    .end local v27    # "pair":Lgnu/lists/Pair;
    .restart local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .restart local v24    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_221
    move-object/from16 v27, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .restart local v27    # "pair":Lgnu/lists/Pair;
    :cond_223
    const/16 v28, 0x0

    :goto_225
    move-object/from16 v2, v22

    .end local v22    # "save_scope":Lgnu/expr/ScopeExp;
    .local v2, "save_scope":Lgnu/expr/ScopeExp;
    move-object v1, v3

    move-object v3, v2

    move-object/from16 v22, v27

    .end local v2    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v27    # "pair":Lgnu/lists/Pair;
    .local v3, "save_scope":Lgnu/expr/ScopeExp;
    .local v22, "pair":Lgnu/lists/Pair;
    move-object v2, v5

    move/from16 v27, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v0

    move-object v0, v3

    move-object/from16 v31, v24

    move-object/from16 v24, v10

    move-object/from16 v10, v31

    .end local v3    # "save_scope":Lgnu/expr/ScopeExp;
    .local v0, "save_scope":Lgnu/expr/ScopeExp;
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v10, "saveLambda":Lgnu/expr/LambdaExp;
    .local v23, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .local v24, "components":Ljava/lang/Object;
    .local v27, "len":I
    move-object/from16 v3, v25

    move-object/from16 v25, v12

    move v12, v4

    .end local v4    # "init_index":I
    .local v12, "init_index":I
    .local v25, "method_list":Lgnu/expr/LambdaExp;
    move-object/from16 v4, v26

    move-object/from16 v26, v13

    move-object v13, v5

    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .local v26, "classNamePair":Ljava/lang/Object;
    move-object/from16 v5, p2

    move/from16 v29, v14

    const/16 v20, 0x0

    move-object v14, v6

    .end local v6    # "pair_car":Ljava/lang/Object;
    .local v14, "pair_car":Ljava/lang/Object;
    .local v29, "num_supers":I
    move-object/from16 v6, v28

    :try_start_24c
    invoke-virtual/range {v1 .. v6}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 531
    iput-object v10, v7, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 532
    if-eqz v19, :cond_256

    .line 533
    invoke-virtual {v7, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 534
    :cond_256
    iget-object v1, v13, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v0, v1

    .line 535
    .end local v10    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v13    # "meth":Lgnu/expr/LambdaExp;
    .local v0, "meth":Lgnu/expr/LambdaExp;
    move-object v5, v0

    move v4, v12

    move-object/from16 v30, v14

    move-object/from16 v2, v22

    goto/16 :goto_403

    .line 541
    .end local v0    # "meth":Lgnu/expr/LambdaExp;
    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v29    # "num_supers":I
    .local v2, "pair":Lgnu/lists/Pair;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .local v10, "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .local v13, "classNamePair":Ljava/lang/Object;
    .local v14, "num_supers":I
    .local v23, "savedPos1":Ljava/lang/Object;
    :catchall_261
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v9, v23

    move v12, v4

    move-object v14, v6

    move-object/from16 v28, v5

    move-object/from16 v1, v21

    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v23    # "savedPos1":Ljava/lang/Object;
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .local v14, "pair_car":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v29    # "num_supers":I
    goto/16 :goto_473

    .line 537
    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v29    # "num_supers":I
    .local v0, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .local v3, "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .local v13, "classNamePair":Ljava/lang/Object;
    .local v14, "num_supers":I
    :cond_278
    move-object/from16 v23, v0

    move-object/from16 v22, v2

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    const/16 v20, 0x0

    move-object v9, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .local v14, "pair_car":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .local v23, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v29    # "num_supers":I
    const-string v0, "invalid field/method definition"

    invoke-virtual {v7, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_291
    .catchall {:try_start_24c .. :try_end_291} :catchall_299

    move v4, v12

    move-object v5, v13

    move-object/from16 v30, v14

    move-object/from16 v2, v22

    goto/16 :goto_403

    .line 541
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_299
    move-exception v0

    move v4, v12

    move-object/from16 v28, v13

    move-object v6, v14

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_473

    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v29    # "num_supers":I
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v3    # "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .local v13, "classNamePair":Ljava/lang/Object;
    .local v14, "num_supers":I
    :catchall_2a4
    move-exception v0

    move-object/from16 v22, v2

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    move v12, v4

    move-object v14, v6

    move-object/from16 v28, v5

    move-object/from16 v1, v21

    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .local v14, "pair_car":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v29    # "num_supers":I
    goto/16 :goto_473

    .line 435
    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v29    # "num_supers":I
    .restart local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v3    # "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .local v13, "classNamePair":Ljava/lang/Object;
    .local v14, "num_supers":I
    :cond_2ba
    move-object/from16 v23, v0

    move-object/from16 v22, v2

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    const/16 v20, 0x0

    move-object v9, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    .line 438
    .end local v0    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .local v14, "pair_car":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v29    # "num_supers":I
    :goto_2ce
    const/4 v0, 0x0

    .line 439
    .local v0, "type":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 440
    .local v1, "nKeywords":I
    :try_start_2d0
    instance-of v2, v14, Lgnu/expr/Keyword;

    if-eqz v2, :cond_2d7

    move-object/from16 v2, v22

    goto :goto_2db

    :cond_2d7
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 441
    .local v2, "args":Ljava/lang/Object;
    :goto_2db
    const/4 v3, 0x0

    .line 442
    .local v3, "initPair":Lgnu/lists/Pair;
    const/4 v4, 0x0

    .line 443
    .local v4, "initSyntax":Lkawa/lang/SyntaxForm;
    :goto_2dd
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v5, :cond_3bd

    .line 445
    :goto_2e1
    instance-of v5, v2, Lkawa/lang/SyntaxForm;
    :try_end_2e3
    .catchall {:try_start_2d0 .. :try_end_2e3} :catchall_41a

    if-eqz v5, :cond_2f0

    .line 447
    :try_start_2e5
    move-object v5, v2

    check-cast v5, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v5

    .line 448
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5
    :try_end_2ee
    .catchall {:try_start_2e5 .. :try_end_2ee} :catchall_299

    move-object v2, v5

    goto :goto_2e1

    .line 450
    :cond_2f0
    :try_start_2f0
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_41a

    .line 451
    .end local v22    # "pair":Lgnu/lists/Pair;
    .local v5, "pair":Lgnu/lists/Pair;
    :try_start_2f3
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 452
    .local v6, "key":Ljava/lang/Object;
    :goto_2f7
    instance-of v10, v6, Lkawa/lang/SyntaxForm;
    :try_end_2f9
    .catchall {:try_start_2f3 .. :try_end_2f9} :catchall_3b0

    if-eqz v10, :cond_30e

    .line 453
    :try_start_2fb
    move-object v10, v6

    check-cast v10, Lkawa/lang/SyntaxForm;

    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v10
    :try_end_302
    .catchall {:try_start_2fb .. :try_end_302} :catchall_304

    move-object v6, v10

    goto :goto_2f7

    .line 541
    .end local v0    # "type":Ljava/lang/Object;
    .end local v1    # "nKeywords":I
    .end local v2    # "args":Ljava/lang/Object;
    .end local v3    # "initPair":Lgnu/lists/Pair;
    .end local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_304
    move-exception v0

    move-object v2, v5

    move v4, v12

    move-object/from16 v28, v13

    move-object v6, v14

    move-object/from16 v1, v21

    goto/16 :goto_473

    .line 454
    .restart local v0    # "type":Ljava/lang/Object;
    .restart local v1    # "nKeywords":I
    .restart local v2    # "args":Ljava/lang/Object;
    .restart local v3    # "initPair":Lgnu/lists/Pair;
    .restart local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v6    # "key":Ljava/lang/Object;
    .restart local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :cond_30e
    :try_start_30e
    invoke-virtual {v7, v5}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 455
    .local v10, "savedPos2":Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22
    :try_end_316
    .catchall {:try_start_30e .. :try_end_316} :catchall_3b0

    move-object/from16 v2, v22

    .line 456
    move-object/from16 v28, v13

    .end local v13    # "meth":Lgnu/expr/LambdaExp;
    .local v28, "meth":Lgnu/expr/LambdaExp;
    :try_start_31a
    sget-object v13, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;
    :try_end_31c
    .catchall {:try_start_31a .. :try_end_31c} :catchall_3a5

    if-eq v6, v13, :cond_325

    move-object/from16 v30, v14

    .end local v14    # "pair_car":Ljava/lang/Object;
    .local v30, "pair_car":Ljava/lang/Object;
    :try_start_320
    instance-of v14, v6, Lgnu/expr/Keyword;

    if-eqz v14, :cond_35a

    goto :goto_327

    .end local v30    # "pair_car":Ljava/lang/Object;
    .restart local v14    # "pair_car":Ljava/lang/Object;
    :cond_325
    move-object/from16 v30, v14

    .end local v14    # "pair_car":Ljava/lang/Object;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    :goto_327
    instance-of v14, v2, Lgnu/lists/Pair;

    if-eqz v14, :cond_35a

    .line 459
    add-int/lit8 v1, v1, 0x1

    .line 460
    move-object v14, v2

    check-cast v14, Lgnu/lists/Pair;

    move-object v5, v14

    .line 461
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    .line 462
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v2, v22

    .line 463
    if-eq v6, v13, :cond_356

    sget-object v13, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    if-ne v6, v13, :cond_342

    goto :goto_356

    .line 465
    :cond_342
    sget-object v13, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    if-eq v6, v13, :cond_352

    sget-object v13, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    if-eq v6, v13, :cond_352

    sget-object v13, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    if-eq v6, v13, :cond_352

    sget-object v13, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    if-ne v6, v13, :cond_357

    .line 470
    :cond_352
    move-object v3, v5

    .line 471
    move-object/from16 v4, v19

    goto :goto_357

    .line 464
    :cond_356
    :goto_356
    move-object v0, v14

    .line 477
    .end local v14    # "value":Ljava/lang/Object;
    :cond_357
    :goto_357
    move-object/from16 v22, v5

    goto :goto_387

    .line 478
    :cond_35a
    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v13, :cond_366

    if-nez v3, :cond_366

    .line 481
    move-object v3, v5

    .line 482
    move-object/from16 v4, v19

    move-object/from16 v22, v5

    goto :goto_387

    .line 484
    :cond_366
    instance-of v13, v2, Lgnu/lists/Pair;

    if-eqz v13, :cond_39a

    if-nez v1, :cond_39a

    if-nez v3, :cond_39a

    if-nez v0, :cond_39a

    move-object v13, v2

    check-cast v13, Lgnu/lists/Pair;

    move-object v5, v13

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v13, v14, :cond_39a

    .line 489
    move-object v0, v6

    .line 490
    move-object v3, v5

    .line 491
    move-object/from16 v4, v19

    .line 492
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13
    :try_end_384
    .catchall {:try_start_320 .. :try_end_384} :catchall_39c

    move-object v2, v13

    move-object/from16 v22, v5

    .line 499
    .end local v5    # "pair":Lgnu/lists/Pair;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    :goto_387
    :try_start_387
    invoke-virtual {v7, v10}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V
    :try_end_38a
    .catchall {:try_start_387 .. :try_end_38a} :catchall_390

    .line 500
    .end local v6    # "key":Ljava/lang/Object;
    .end local v10    # "savedPos2":Ljava/lang/Object;
    move-object/from16 v13, v28

    move-object/from16 v14, v30

    goto/16 :goto_2dd

    .line 541
    .end local v0    # "type":Ljava/lang/Object;
    .end local v1    # "nKeywords":I
    .end local v2    # "args":Ljava/lang/Object;
    .end local v3    # "initPair":Lgnu/lists/Pair;
    .end local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_390
    move-exception v0

    move v4, v12

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v6, v30

    goto/16 :goto_473

    .line 496
    .end local v22    # "pair":Lgnu/lists/Pair;
    .restart local v0    # "type":Ljava/lang/Object;
    .restart local v1    # "nKeywords":I
    .restart local v2    # "args":Ljava/lang/Object;
    .restart local v3    # "initPair":Lgnu/lists/Pair;
    .restart local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v5    # "pair":Lgnu/lists/Pair;
    .restart local v6    # "key":Ljava/lang/Object;
    .restart local v10    # "savedPos2":Ljava/lang/Object;
    .restart local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :cond_39a
    const/4 v2, 0x0

    .line 497
    goto :goto_3c3

    .line 541
    .end local v0    # "type":Ljava/lang/Object;
    .end local v1    # "nKeywords":I
    .end local v2    # "args":Ljava/lang/Object;
    .end local v3    # "initPair":Lgnu/lists/Pair;
    .end local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v10    # "savedPos2":Ljava/lang/Object;
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_39c
    move-exception v0

    move-object v2, v5

    move v4, v12

    move-object/from16 v1, v21

    move-object/from16 v6, v30

    goto/16 :goto_473

    .end local v30    # "pair_car":Ljava/lang/Object;
    .local v14, "pair_car":Ljava/lang/Object;
    :catchall_3a5
    move-exception v0

    move-object/from16 v30, v14

    move-object v2, v5

    move v4, v12

    move-object/from16 v1, v21

    move-object/from16 v6, v30

    .end local v14    # "pair_car":Ljava/lang/Object;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    goto/16 :goto_473

    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v30    # "pair_car":Ljava/lang/Object;
    .restart local v13    # "meth":Lgnu/expr/LambdaExp;
    .restart local v14    # "pair_car":Ljava/lang/Object;
    :catchall_3b0
    move-exception v0

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move-object v2, v5

    move v4, v12

    move-object/from16 v1, v21

    move-object/from16 v6, v30

    .end local v13    # "meth":Lgnu/expr/LambdaExp;
    .end local v14    # "pair_car":Ljava/lang/Object;
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    goto/16 :goto_473

    .line 443
    .end local v5    # "pair":Lgnu/lists/Pair;
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v30    # "pair_car":Ljava/lang/Object;
    .restart local v0    # "type":Ljava/lang/Object;
    .restart local v1    # "nKeywords":I
    .restart local v2    # "args":Ljava/lang/Object;
    .restart local v3    # "initPair":Lgnu/lists/Pair;
    .restart local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v13    # "meth":Lgnu/expr/LambdaExp;
    .restart local v14    # "pair_car":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :cond_3bd
    move-object/from16 v28, v13

    move-object/from16 v30, v14

    .end local v13    # "meth":Lgnu/expr/LambdaExp;
    .end local v14    # "pair_car":Ljava/lang/Object;
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    move-object/from16 v5, v22

    .line 501
    .end local v22    # "pair":Lgnu/lists/Pair;
    .restart local v5    # "pair":Lgnu/lists/Pair;
    :goto_3c3
    if-eqz v3, :cond_3ff

    .line 503
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "init_index":I
    .local v6, "init_index":I
    :try_start_3c7
    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 504
    .local v10, "d":Ljava/lang/Object;
    instance-of v12, v10, Lgnu/expr/Declaration;

    if-eqz v12, :cond_3d9

    move-object v12, v10

    check-cast v12, Lgnu/expr/Declaration;

    const-wide/16 v13, 0x800

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v12

    goto :goto_3e0

    :cond_3d9
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3db
    .catchall {:try_start_3c7 .. :try_end_3db} :catchall_3f6

    if-ne v10, v12, :cond_3df

    const/4 v12, 0x1

    goto :goto_3e0

    :cond_3df
    const/4 v12, 0x0

    .line 507
    .local v12, "isStatic":Z
    :goto_3e0
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "init_index":I
    .local v13, "init_index":I
    :try_start_3e2
    invoke-virtual {v11, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3eb

    .line 508
    invoke-static {v10, v8, v3, v7, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_3eb
    .catchall {:try_start_3e2 .. :try_end_3eb} :catchall_3ed

    .line 510
    .end local v0    # "type":Ljava/lang/Object;
    .end local v1    # "nKeywords":I
    .end local v2    # "args":Ljava/lang/Object;
    .end local v3    # "initPair":Lgnu/lists/Pair;
    .end local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v10    # "d":Ljava/lang/Object;
    .end local v12    # "isStatic":Z
    :cond_3eb
    move v4, v13

    goto :goto_400

    .line 541
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :catchall_3ed
    move-exception v0

    move-object v2, v5

    move v4, v13

    move-object/from16 v1, v21

    move-object/from16 v6, v30

    goto/16 :goto_473

    .end local v13    # "init_index":I
    .restart local v6    # "init_index":I
    :catchall_3f6
    move-exception v0

    move-object v2, v5

    move v4, v6

    move-object/from16 v1, v21

    move-object/from16 v6, v30

    goto/16 :goto_473

    .line 501
    .end local v6    # "init_index":I
    .restart local v0    # "type":Ljava/lang/Object;
    .restart local v1    # "nKeywords":I
    .restart local v2    # "args":Ljava/lang/Object;
    .restart local v3    # "initPair":Lgnu/lists/Pair;
    .restart local v4    # "initSyntax":Lkawa/lang/SyntaxForm;
    .local v12, "init_index":I
    .restart local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :cond_3ff
    move v4, v12

    .line 510
    .end local v0    # "type":Ljava/lang/Object;
    .end local v1    # "nKeywords":I
    .end local v2    # "args":Ljava/lang/Object;
    .end local v3    # "initPair":Lgnu/lists/Pair;
    .end local v12    # "init_index":I
    .local v4, "init_index":I
    :goto_400
    move-object v2, v5

    move-object/from16 v5, v28

    .line 541
    .end local v23    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .local v2, "pair":Lgnu/lists/Pair;
    .local v5, "meth":Lgnu/expr/LambdaExp;
    :goto_403
    invoke-virtual {v7, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 542
    nop

    .line 544
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v9    # "savedPos1":Ljava/lang/Object;
    .end local v19    # "memberSyntax":Lkawa/lang/SyntaxForm;
    .end local v30    # "pair_car":Ljava/lang/Object;
    move-object/from16 v3, v17

    move-object/from16 v6, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move/from16 v9, v27

    move/from16 v14, v29

    const/4 v0, 0x0

    goto/16 :goto_d4

    .line 541
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v9    # "savedPos1":Ljava/lang/Object;
    .restart local v12    # "init_index":I
    .local v13, "meth":Lgnu/expr/LambdaExp;
    .restart local v14    # "pair_car":Ljava/lang/Object;
    .restart local v19    # "memberSyntax":Lkawa/lang/SyntaxForm;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    :catchall_41a
    move-exception v0

    move-object/from16 v28, v13

    move-object/from16 v30, v14

    move v4, v12

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v6, v30

    .end local v13    # "meth":Lgnu/expr/LambdaExp;
    .end local v14    # "pair_car":Ljava/lang/Object;
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    goto/16 :goto_473

    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v29    # "num_supers":I
    .end local v30    # "pair_car":Ljava/lang/Object;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .local v3, "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .local v6, "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .local v10, "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .local v13, "classNamePair":Ljava/lang/Object;
    .local v14, "num_supers":I
    :catchall_428
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    move v12, v4

    move-object/from16 v1, v21

    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v13    # "classNamePair":Ljava/lang/Object;
    .end local v14    # "num_supers":I
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v29    # "num_supers":I
    .restart local v30    # "pair_car":Ljava/lang/Object;
    goto :goto_473

    .end local v21    # "obj":Ljava/lang/Object;
    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v29    # "num_supers":I
    .end local v30    # "pair_car":Ljava/lang/Object;
    .local v1, "obj":Ljava/lang/Object;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v3    # "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .restart local v6    # "pair_car":Ljava/lang/Object;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .restart local v13    # "classNamePair":Ljava/lang/Object;
    .restart local v14    # "num_supers":I
    :catchall_43e
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    move v12, v4

    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v13    # "classNamePair":Ljava/lang/Object;
    .end local v14    # "num_supers":I
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .restart local v21    # "obj":Ljava/lang/Object;
    .restart local v22    # "pair":Lgnu/lists/Pair;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v29    # "num_supers":I
    goto :goto_473

    .end local v21    # "obj":Ljava/lang/Object;
    .end local v22    # "pair":Lgnu/lists/Pair;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v29    # "num_supers":I
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    .restart local v3    # "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .restart local v13    # "classNamePair":Ljava/lang/Object;
    .restart local v14    # "num_supers":I
    :catchall_452
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    move v12, v4

    .end local v1    # "obj":Ljava/lang/Object;
    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v13    # "classNamePair":Ljava/lang/Object;
    .end local v14    # "num_supers":I
    .local v9, "savedPos1":Ljava/lang/Object;
    .local v12, "init_index":I
    .restart local v21    # "obj":Ljava/lang/Object;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v29    # "num_supers":I
    goto :goto_473

    .end local v21    # "obj":Ljava/lang/Object;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v29    # "num_supers":I
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v3    # "savedPos1":Ljava/lang/Object;
    .restart local v4    # "init_index":I
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "method_list":Lgnu/expr/LambdaExp;
    .restart local v13    # "classNamePair":Ljava/lang/Object;
    .restart local v14    # "num_supers":I
    :catchall_464
    move-exception v0

    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v9, v3

    move v12, v4

    .end local v3    # "savedPos1":Ljava/lang/Object;
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v12    # "method_list":Lgnu/expr/LambdaExp;
    .end local v13    # "classNamePair":Ljava/lang/Object;
    .end local v14    # "num_supers":I
    .local v9, "savedPos1":Ljava/lang/Object;
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v29    # "num_supers":I
    :goto_473
    invoke-virtual {v7, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0

    .line 401
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v6    # "pair_car":Ljava/lang/Object;
    .end local v17    # "componentsSyntax":Lkawa/lang/SyntaxForm;
    .end local v19    # "memberSyntax":Lkawa/lang/SyntaxForm;
    .end local v24    # "components":Ljava/lang/Object;
    .end local v25    # "method_list":Lgnu/expr/LambdaExp;
    .end local v26    # "classNamePair":Ljava/lang/Object;
    .end local v27    # "len":I
    .end local v28    # "meth":Lgnu/expr/LambdaExp;
    .end local v29    # "num_supers":I
    .local v3, "componentsSyntax":Lkawa/lang/SyntaxForm;
    .restart local v5    # "meth":Lgnu/expr/LambdaExp;
    .local v9, "len":I
    .restart local v10    # "components":Ljava/lang/Object;
    .restart local v12    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v13    # "classNamePair":Ljava/lang/Object;
    .restart local v14    # "num_supers":I
    :cond_477
    move-object/from16 v28, v5

    move/from16 v27, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v29, v14

    move v12, v4

    .line 547
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v4    # "init_index":I
    .end local v5    # "meth":Lgnu/expr/LambdaExp;
    .end local v9    # "len":I
    .end local v10    # "components":Ljava/lang/Object;
    .end local v13    # "classNamePair":Ljava/lang/Object;
    .end local v14    # "num_supers":I
    .local v12, "init_index":I
    .restart local v24    # "components":Ljava/lang/Object;
    .restart local v25    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v26    # "classNamePair":Ljava/lang/Object;
    .restart local v27    # "len":I
    .restart local v28    # "meth":Lgnu/expr/LambdaExp;
    .restart local v29    # "num_supers":I
    iget-object v0, v8, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_48c

    .line 548
    iget-object v0, v8, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    iput-object v8, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 549
    :cond_48c
    iget-object v0, v8, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_494

    .line 550
    iget-object v0, v8, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    iput-object v8, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 551
    :cond_494
    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 552
    invoke-virtual {v8, v7}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 553
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 39
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_f

    .line 40
    const-string v0, "missing superclass specification in object"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 41
    :cond_f
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 42
    .local v0, "pair":Lgnu/lists/Pair;
    new-instance v1, Lgnu/expr/ObjectExp;

    invoke-direct {v1}, Lgnu/expr/ObjectExp;-><init>()V

    .line 43
    .local v1, "oexp":Lgnu/expr/ObjectExp;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/FString;

    if-eqz v2, :cond_38

    .line 46
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-nez v2, :cond_31

    .line 47
    const-string v2, "missing superclass specification after object class name"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 48
    :cond_31
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    .line 50
    :cond_38
    invoke-virtual {p0, v0, v1, p2}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "saved":[Ljava/lang/Object;
    if-eqz v2, :cond_41

    .line 52
    invoke-virtual {p0, v2, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 53
    :cond_41
    return-object v1
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .registers 45
    .param p1, "pair"    # Lgnu/lists/Pair;
    .param p2, "oexp"    # Lgnu/expr/ClassExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 61
    move-object/from16 v0, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 63
    .local v9, "superlist":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 64
    .local v10, "components":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 65
    .local v1, "classNamePair":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 66
    .local v2, "method_list":Lgnu/expr/LambdaExp;
    const/4 v3, 0x0

    .line 67
    .local v3, "last_method":Lgnu/expr/LambdaExp;
    const-wide/16 v4, 0x0

    .line 69
    .local v4, "classAccessFlag":J
    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    move-object v11, v6

    .line 70
    .local v11, "inits":Ljava/util/Vector;
    move-object v6, v10

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v2, v6

    move-object/from16 v1, p1

    move-wide v6, v4

    .end local v3    # "last_method":Lgnu/expr/LambdaExp;
    .end local v4    # "classAccessFlag":J
    .end local p1    # "pair":Lgnu/lists/Pair;
    .local v1, "pair":Lgnu/lists/Pair;
    .local v2, "obj":Ljava/lang/Object;
    .local v6, "classAccessFlag":J
    .local v12, "classNamePair":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    :goto_24
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_5c6

    .line 74
    :goto_28
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_34

    .line 75
    move-object v3, v2

    check-cast v3, Lkawa/lang/SyntaxForm;

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_28

    .line 76
    :cond_34
    instance-of v3, v2, Lgnu/lists/Pair;

    const-string v5, "object member not a list"

    const/16 v17, 0x0

    const/16 v15, 0x65

    if-nez v3, :cond_42

    .line 78
    invoke-virtual {v8, v15, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 79
    return-object v17

    .line 81
    :cond_42
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    .line 82
    .end local v1    # "pair":Lgnu/lists/Pair;
    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "pair_car":Ljava/lang/Object;
    :goto_49
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_55

    .line 84
    move-object v4, v1

    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_49

    .line 85
    :cond_55
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 86
    invoke-virtual {v8, v3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "savedPos1":Ljava/lang/Object;
    instance-of v15, v1, Lgnu/expr/Keyword;

    if-eqz v15, :cond_11c

    move-object v15, v2

    .line 89
    .end local v2    # "obj":Ljava/lang/Object;
    .local v15, "obj":Ljava/lang/Object;
    :goto_62
    nop

    instance-of v2, v15, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_6f

    .line 90
    move-object v2, v15

    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    goto :goto_62

    .line 91
    :cond_6f
    instance-of v2, v15, Lgnu/lists/Pair;

    if-eqz v2, :cond_110

    .line 93
    sget-object v2, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    if-ne v1, v2, :cond_9b

    .line 95
    move-object v2, v15

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 96
    .local v2, "val":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v5, :cond_88

    .line 97
    const/high16 v5, 0x10000

    invoke-virtual {v0, v5}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_8e

    .line 99
    :cond_88
    const v5, 0x8000

    invoke-virtual {v0, v5}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_8e
    move-object v5, v15

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 101
    .end local v15    # "obj":Ljava/lang/Object;
    .local v5, "obj":Ljava/lang/Object;
    invoke-virtual {v8, v4}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 102
    move-object v1, v3

    move-object v2, v5

    goto :goto_24

    .line 104
    .end local v2    # "val":Ljava/lang/Object;
    .end local v5    # "obj":Ljava/lang/Object;
    .restart local v15    # "obj":Ljava/lang/Object;
    :cond_9b
    sget-object v2, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    if-ne v1, v2, :cond_b6

    .line 106
    if-eqz v12, :cond_a8

    .line 107
    const-string v2, "duplicate class-name specifiers"

    const/16 v5, 0x65

    invoke-virtual {v8, v5, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_a8
    move-object v12, v15

    .line 109
    move-object v2, v15

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 110
    .end local v15    # "obj":Ljava/lang/Object;
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v8, v4}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 111
    move-object v1, v3

    goto/16 :goto_24

    .line 113
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v15    # "obj":Ljava/lang/Object;
    :cond_b6
    sget-object v2, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    if-ne v1, v2, :cond_104

    .line 115
    invoke-virtual {v8, v15}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    .local v5, "savedPos2":Ljava/lang/Object;
    move-object v2, v15

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    const-wide v16, 0x603000000L

    const-string v18, "class"

    move-object/from16 v19, v1

    .end local v1    # "pair_car":Ljava/lang/Object;
    .local v19, "pair_car":Ljava/lang/Object;
    move-object v1, v2

    move-object/from16 v20, v3

    .end local v3    # "pair":Lgnu/lists/Pair;
    .local v20, "pair":Lgnu/lists/Pair;
    move-wide v2, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    move-object v12, v4

    move-object v9, v5

    .end local v4    # "savedPos1":Ljava/lang/Object;
    .end local v5    # "savedPos2":Ljava/lang/Object;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v21, "classNamePair":Ljava/lang/Object;
    .local v22, "superlist":Ljava/lang/Object;
    move-wide/from16 v4, v16

    move-wide/from16 v23, v6

    .end local v6    # "classAccessFlag":J
    .local v23, "classAccessFlag":J
    move-object/from16 v6, v18

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v6

    .line 120
    .end local v23    # "classAccessFlag":J
    .restart local v6    # "classAccessFlag":J
    iget-object v1, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v1, :cond_ef

    .line 121
    const-string v1, "access specifier for anonymous class"

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 122
    :cond_ef
    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 123
    move-object v1, v15

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 124
    .end local v15    # "obj":Ljava/lang/Object;
    .restart local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v8, v12}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 125
    move-object/from16 v1, v20

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    goto/16 :goto_24

    .line 113
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v19    # "pair_car":Ljava/lang/Object;
    .end local v20    # "pair":Lgnu/lists/Pair;
    .end local v21    # "classNamePair":Ljava/lang/Object;
    .end local v22    # "superlist":Ljava/lang/Object;
    .restart local v1    # "pair_car":Ljava/lang/Object;
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v4    # "savedPos1":Ljava/lang/Object;
    .local v9, "superlist":Ljava/lang/Object;
    .local v12, "classNamePair":Ljava/lang/Object;
    .restart local v15    # "obj":Ljava/lang/Object;
    :cond_104
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-wide/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    move-object v12, v4

    .end local v1    # "pair_car":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "savedPos1":Ljava/lang/Object;
    .end local v6    # "classAccessFlag":J
    .end local v9    # "superlist":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .restart local v19    # "pair_car":Ljava/lang/Object;
    .restart local v20    # "pair":Lgnu/lists/Pair;
    .restart local v21    # "classNamePair":Ljava/lang/Object;
    .restart local v22    # "superlist":Ljava/lang/Object;
    .restart local v23    # "classAccessFlag":J
    goto :goto_128

    .line 91
    .end local v19    # "pair_car":Ljava/lang/Object;
    .end local v20    # "pair":Lgnu/lists/Pair;
    .end local v21    # "classNamePair":Ljava/lang/Object;
    .end local v22    # "superlist":Ljava/lang/Object;
    .end local v23    # "classAccessFlag":J
    .restart local v1    # "pair_car":Ljava/lang/Object;
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v4    # "savedPos1":Ljava/lang/Object;
    .restart local v6    # "classAccessFlag":J
    .restart local v9    # "superlist":Ljava/lang/Object;
    .local v12, "classNamePair":Ljava/lang/Object;
    :cond_110
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-wide/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    move-object v12, v4

    .end local v1    # "pair_car":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "savedPos1":Ljava/lang/Object;
    .end local v6    # "classAccessFlag":J
    .end local v9    # "superlist":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .restart local v19    # "pair_car":Ljava/lang/Object;
    .restart local v20    # "pair":Lgnu/lists/Pair;
    .restart local v21    # "classNamePair":Ljava/lang/Object;
    .restart local v22    # "superlist":Ljava/lang/Object;
    .restart local v23    # "classAccessFlag":J
    goto :goto_128

    .line 87
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v19    # "pair_car":Ljava/lang/Object;
    .end local v20    # "pair":Lgnu/lists/Pair;
    .end local v21    # "classNamePair":Ljava/lang/Object;
    .end local v22    # "superlist":Ljava/lang/Object;
    .end local v23    # "classAccessFlag":J
    .restart local v1    # "pair_car":Ljava/lang/Object;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v4    # "savedPos1":Ljava/lang/Object;
    .restart local v6    # "classAccessFlag":J
    .restart local v9    # "superlist":Ljava/lang/Object;
    .local v12, "classNamePair":Ljava/lang/Object;
    :cond_11c
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-wide/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v21, v12

    move-object v12, v4

    .end local v1    # "pair_car":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "savedPos1":Ljava/lang/Object;
    .end local v6    # "classAccessFlag":J
    .end local v9    # "superlist":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .restart local v19    # "pair_car":Ljava/lang/Object;
    .restart local v20    # "pair":Lgnu/lists/Pair;
    .restart local v21    # "classNamePair":Ljava/lang/Object;
    .restart local v22    # "superlist":Ljava/lang/Object;
    .restart local v23    # "classAccessFlag":J
    move-object v15, v2

    .line 129
    .end local v2    # "obj":Ljava/lang/Object;
    .restart local v15    # "obj":Ljava/lang/Object;
    :goto_128
    move-object/from16 v1, v19

    .end local v19    # "pair_car":Ljava/lang/Object;
    .restart local v1    # "pair_car":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/Pair;

    if-nez v2, :cond_134

    .line 131
    const/16 v2, 0x65

    invoke-virtual {v8, v2, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 132
    return-object v17

    .line 134
    :cond_134
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 135
    .end local v20    # "pair":Lgnu/lists/Pair;
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    .line 136
    .end local v1    # "pair_car":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    :goto_13c
    nop

    instance-of v1, v9, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_149

    .line 137
    move-object v1, v9

    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_13c

    .line 138
    :cond_149
    instance-of v1, v9, Ljava/lang/String;

    if-nez v1, :cond_1a2

    instance-of v1, v9, Lgnu/mapping/Symbol;

    if-nez v1, :cond_1a2

    instance-of v1, v9, Lgnu/expr/Keyword;

    if-eqz v1, :cond_156

    goto :goto_1a2

    .line 287
    :cond_156
    instance-of v1, v9, Lgnu/lists/Pair;

    if-eqz v1, :cond_190

    .line 289
    move-object v1, v9

    check-cast v1, Lgnu/lists/Pair;

    .line 290
    .local v1, "mpair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "mname":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_171

    instance-of v4, v3, Lgnu/mapping/Symbol;

    if-nez v4, :cond_171

    .line 294
    const-string v4, "missing method name"

    const/16 v5, 0x65

    invoke-virtual {v8, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 295
    return-object v17

    .line 297
    :cond_171
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4}, Lgnu/expr/LambdaExp;-><init>()V

    .line 298
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v0, v4, v3}, Lgnu/expr/ClassExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 299
    .local v5, "decl":Lgnu/expr/Declaration;
    invoke-static {v5, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 300
    if-nez v14, :cond_181

    .line 301
    move-object v13, v4

    goto :goto_183

    .line 303
    :cond_181
    iput-object v4, v14, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 304
    :goto_183
    move-object v1, v4

    .line 305
    .end local v3    # "mname":Ljava/lang/Object;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v14    # "last_method":Lgnu/expr/LambdaExp;
    .local v1, "last_method":Lgnu/expr/LambdaExp;
    move-object v14, v1

    move-object v1, v2

    move-object/from16 v30, v9

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 p1, v15

    goto/16 :goto_5b3

    .line 307
    .end local v1    # "last_method":Lgnu/expr/LambdaExp;
    .restart local v14    # "last_method":Lgnu/expr/LambdaExp;
    :cond_190
    const-string v1, "invalid field/method definition"

    const/16 v3, 0x65

    invoke-virtual {v8, v3, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v1, v2

    move-object/from16 v30, v9

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 p1, v15

    goto/16 :goto_5b3

    .line 141
    :cond_1a2
    :goto_1a2
    const/4 v1, 0x0

    .line 142
    .local v1, "typePair":Lgnu/lists/Pair;
    move-object v7, v9

    .line 145
    .local v7, "sname":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 146
    .local v3, "allocationFlag":I
    const-wide/16 v4, 0x0

    .line 147
    .local v4, "accessFlag":J
    instance-of v6, v7, Lgnu/expr/Keyword;

    if-eqz v6, :cond_1b5

    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object/from16 v19, v2

    move-wide/from16 v39, v4

    move-object/from16 v4, v19

    move-wide/from16 v19, v39

    .local v19, "args":Ljava/lang/Object;
    goto :goto_1cc

    .line 154
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "args":Ljava/lang/Object;
    :cond_1b5
    invoke-virtual {v0, v7}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 155
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    move-wide/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "accessFlag":J
    .local v19, "accessFlag":J
    invoke-virtual {v6, v4}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 156
    const-wide/32 v4, 0x100000

    invoke-virtual {v6, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 157
    invoke-static {v6, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 160
    .local v4, "args":Ljava/lang/Object;
    :goto_1cc
    const/4 v5, 0x0

    .line 161
    .local v5, "nKeywords":I
    const/16 v25, 0x0

    .line 162
    .local v25, "seenInit":Z
    const/16 v26, 0x0

    move-object/from16 v27, v26

    move-object/from16 v39, v4

    move-object v4, v1

    move-object/from16 v1, v39

    move/from16 v40, v5

    move v5, v3

    move/from16 v3, v40

    .line 163
    .local v1, "args":Ljava/lang/Object;
    .local v3, "nKeywords":I
    .local v4, "typePair":Lgnu/lists/Pair;
    .local v5, "allocationFlag":I
    .local v27, "initPair":Lgnu/lists/Pair;
    :goto_1dd
    move-object/from16 v26, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .local v26, "pair":Lgnu/lists/Pair;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_514

    .line 165
    :goto_1e3
    instance-of v2, v1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_1ef

    .line 166
    move-object v2, v1

    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1e3

    .line 167
    :cond_1ef
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 168
    .end local v26    # "pair":Lgnu/lists/Pair;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    move-object/from16 v26, v2

    .line 169
    .local v26, "keyPair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v4

    move-object/from16 v4, v28

    .line 170
    .local v4, "key":Ljava/lang/Object;
    .local v29, "typePair":Lgnu/lists/Pair;
    :goto_1fc
    move-object/from16 v28, v1

    .end local v1    # "args":Ljava/lang/Object;
    .local v28, "args":Ljava/lang/Object;
    instance-of v1, v4, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_20c

    .line 171
    move-object v1, v4

    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, v28

    goto :goto_1fc

    .line 172
    :cond_20c
    invoke-virtual {v8, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "savedPos2":Ljava/lang/Object;
    move-object/from16 v30, v1

    .end local v1    # "savedPos2":Ljava/lang/Object;
    .local v30, "savedPos2":Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 174
    .end local v28    # "args":Ljava/lang/Object;
    .local v1, "args":Ljava/lang/Object;
    move-object/from16 v28, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .local v28, "pair":Lgnu/lists/Pair;
    sget-object v2, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    if-eq v4, v2, :cond_23e

    move-object/from16 v31, v6

    .end local v6    # "decl":Lgnu/expr/Declaration;
    .local v31, "decl":Lgnu/expr/Declaration;
    instance-of v6, v4, Lgnu/expr/Keyword;

    if-eqz v6, :cond_223

    goto :goto_240

    :cond_223
    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move v15, v5

    move-object v12, v7

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_4bf

    .end local v31    # "decl":Lgnu/expr/Declaration;
    .restart local v6    # "decl":Lgnu/expr/Declaration;
    :cond_23e
    move-object/from16 v31, v6

    .end local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v31    # "decl":Lgnu/expr/Declaration;
    :goto_240
    instance-of v6, v1, Lgnu/lists/Pair;

    if-eqz v6, :cond_4a6

    .line 177
    add-int/lit8 v32, v3, 0x1

    .line 178
    .end local v3    # "nKeywords":I
    .local v32, "nKeywords":I
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    .line 179
    .end local v28    # "pair":Lgnu/lists/Pair;
    .local v6, "pair":Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v28

    .line 181
    .end local v1    # "args":Ljava/lang/Object;
    .local v28, "args":Ljava/lang/Object;
    if-eq v4, v2, :cond_47e

    sget-object v1, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    if-ne v4, v1, :cond_276

    move-object/from16 v37, v3

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move v15, v5

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_49b

    .line 183
    :cond_276
    sget-object v1, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    const-string v2, "\'"

    if-ne v4, v1, :cond_31e

    .line 185
    if-eqz v5, :cond_288

    .line 186
    const-string v1, "duplicate allocation: specification"

    move/from16 v33, v5

    const/16 v5, 0x65

    .end local v5    # "allocationFlag":I
    .local v33, "allocationFlag":I
    invoke-virtual {v8, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_28a

    .line 185
    .end local v33    # "allocationFlag":I
    .restart local v5    # "allocationFlag":I
    :cond_288
    move/from16 v33, v5

    .line 187
    .end local v5    # "allocationFlag":I
    .restart local v33    # "allocationFlag":I
    :goto_28a
    const-string v1, "class"

    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-nez v1, :cond_2fe

    const-string v1, "static"

    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-eqz v1, :cond_29c

    goto/16 :goto_2fe

    .line 190
    :cond_29c
    const-string v1, "instance"

    invoke-static {v3, v1, v8}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v1

    if-eqz v1, :cond_2c4

    .line 191
    const/16 v5, 0x1000

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v39, v13

    move-object v13, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v39

    move-object/from16 v40, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v40

    .end local v33    # "allocationFlag":I
    .restart local v5    # "allocationFlag":I
    goto/16 :goto_49e

    .line 193
    .end local v5    # "allocationFlag":I
    .restart local v33    # "allocationFlag":I
    :cond_2c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown allocation kind \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_447

    .line 189
    :cond_2fe
    :goto_2fe
    const/16 v5, 0x800

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v39, v13

    move-object v13, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v39

    move-object/from16 v40, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v40

    .end local v33    # "allocationFlag":I
    .restart local v5    # "allocationFlag":I
    goto/16 :goto_49e

    .line 195
    :cond_31e
    move/from16 v33, v5

    .end local v5    # "allocationFlag":I
    .restart local v33    # "allocationFlag":I
    sget-object v1, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    if-eq v4, v1, :cond_44b

    sget-object v5, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    if-eq v4, v5, :cond_44b

    sget-object v5, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    if-eq v4, v5, :cond_44b

    sget-object v5, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    if-ne v4, v5, :cond_350

    move-object/from16 v37, v3

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_469

    .line 209
    :cond_350
    sget-object v1, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    const/16 v5, 0x77

    if-ne v4, v1, :cond_3cd

    .line 211
    instance-of v1, v3, Lgnu/expr/Keyword;

    if-nez v1, :cond_37f

    .line 212
    const-string v1, "invalid \'init-keyword\' - not a keyword"

    const/16 v2, 0x65

    invoke-virtual {v8, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_447

    .line 213
    :cond_37f
    move-object v1, v3

    check-cast v1, Lgnu/expr/Keyword;

    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_3af

    .line 215
    const-string v1, "init-keyword option ignored"

    invoke-virtual {v8, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_447

    .line 213
    :cond_3af
    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    goto/16 :goto_447

    .line 217
    :cond_3cd
    sget-object v1, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    if-ne v4, v1, :cond_40f

    .line 219
    invoke-virtual {v8, v6}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 220
    .local v5, "savedPos3":Ljava/lang/Object;
    const-wide v34, 0x78f000000L

    const-string v36, "field"

    move-object/from16 v2, v30

    .end local v30    # "savedPos2":Ljava/lang/Object;
    .local v2, "savedPos2":Ljava/lang/Object;
    move-object v1, v3

    move-object/from16 v37, v3

    move-object/from16 v30, v9

    move-object v9, v2

    .end local v2    # "savedPos2":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v30, "pair_car":Ljava/lang/Object;
    .local v37, "value":Ljava/lang/Object;
    move-wide/from16 v2, v19

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move/from16 v15, v33

    const/4 v0, 0x1

    const/16 v16, 0x0

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object v10, v5

    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "savedPos3":Ljava/lang/Object;
    .local v10, "savedPos3":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v33, "components":Ljava/lang/Object;
    .local v38, "last_method":Lgnu/expr/LambdaExp;
    .local p1, "obj":Ljava/lang/Object;
    move-wide/from16 v4, v34

    move-object/from16 v0, v31

    move-object/from16 v31, v6

    .end local v6    # "pair":Lgnu/lists/Pair;
    .local v0, "decl":Lgnu/expr/Declaration;
    .local v31, "pair":Lgnu/lists/Pair;
    move-object/from16 v6, v36

    move-object/from16 v35, v12

    move-object v12, v7

    .end local v7    # "sname":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v35, "savedPos1":Ljava/lang/Object;
    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v19

    .line 223
    invoke-virtual {v8, v10}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 224
    .end local v10    # "savedPos3":Ljava/lang/Object;
    move-object v4, v14

    move v5, v15

    goto/16 :goto_49e

    .line 227
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v6    # "pair":Lgnu/lists/Pair;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .local v10, "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v29, "typePair":Lgnu/lists/Pair;
    .local v30, "savedPos2":Ljava/lang/Object;
    .local v31, "decl":Lgnu/expr/Declaration;
    .local v33, "allocationFlag":I
    :cond_40f
    move-object/from16 v37, v3

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v6    # "pair":Lgnu/lists/Pair;
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v30, "pair_car":Ljava/lang/Object;
    .local v31, "pair":Lgnu/lists/Pair;
    .local v33, "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown slot keyword \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 229
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v6    # "pair":Lgnu/lists/Pair;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v29, "typePair":Lgnu/lists/Pair;
    .local v30, "savedPos2":Ljava/lang/Object;
    .local v31, "decl":Lgnu/expr/Declaration;
    .local v33, "allocationFlag":I
    :goto_447
    move-object v4, v14

    move v5, v15

    .end local v4    # "key":Ljava/lang/Object;
    .end local v6    # "pair":Lgnu/lists/Pair;
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v30, "pair_car":Ljava/lang/Object;
    .local v31, "pair":Lgnu/lists/Pair;
    .local v33, "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    goto/16 :goto_49e

    .line 195
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v6    # "pair":Lgnu/lists/Pair;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v29, "typePair":Lgnu/lists/Pair;
    .local v30, "savedPos2":Ljava/lang/Object;
    .local v31, "decl":Lgnu/expr/Declaration;
    .local v33, "allocationFlag":I
    :cond_44b
    move-object/from16 v37, v3

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    move/from16 v15, v33

    const/16 v16, 0x0

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v33, v10

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    .line 200
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v6    # "pair":Lgnu/lists/Pair;
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v30, "pair_car":Ljava/lang/Object;
    .local v31, "pair":Lgnu/lists/Pair;
    .local v33, "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_469
    if-eqz v25, :cond_472

    .line 201
    const-string v2, "duplicate initialization"

    const/16 v3, 0x65

    invoke-virtual {v8, v3, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 202
    :cond_472
    const/16 v25, 0x1

    .line 206
    if-eq v13, v1, :cond_47b

    .line 207
    move-object/from16 v27, v31

    move-object v4, v14

    move v5, v15

    goto :goto_49e

    .line 206
    :cond_47b
    move-object v4, v14

    move v5, v15

    goto :goto_49e

    .line 181
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v33    # "components":Ljava/lang/Object;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v37    # "value":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "key":Ljava/lang/Object;
    .local v5, "allocationFlag":I
    .restart local v6    # "pair":Lgnu/lists/Pair;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v29, "typePair":Lgnu/lists/Pair;
    .local v30, "savedPos2":Ljava/lang/Object;
    .local v31, "decl":Lgnu/expr/Declaration;
    :cond_47e
    move-object/from16 v37, v3

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move v15, v5

    move-object/from16 v31, v6

    move-object v12, v7

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    .line 182
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "allocationFlag":I
    .end local v6    # "pair":Lgnu/lists/Pair;
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v30, "pair_car":Ljava/lang/Object;
    .local v31, "pair":Lgnu/lists/Pair;
    .restart local v33    # "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v37    # "value":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_49b
    move-object/from16 v4, v31

    move v5, v15

    .line 229
    .end local v14    # "typePair":Lgnu/lists/Pair;
    .end local v15    # "allocationFlag":I
    .end local v37    # "value":Ljava/lang/Object;
    .local v4, "typePair":Lgnu/lists/Pair;
    .restart local v5    # "allocationFlag":I
    :goto_49e
    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_4f9

    .line 174
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v32    # "nKeywords":I
    .end local v33    # "components":Ljava/lang/Object;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "args":Ljava/lang/Object;
    .local v3, "nKeywords":I
    .local v4, "key":Ljava/lang/Object;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v28, "pair":Lgnu/lists/Pair;
    .local v29, "typePair":Lgnu/lists/Pair;
    .local v30, "savedPos2":Ljava/lang/Object;
    .local v31, "decl":Lgnu/expr/Declaration;
    :cond_4a6
    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    move-object/from16 v14, v29

    move-object/from16 v0, v31

    const/16 v16, 0x0

    move v15, v5

    move-object v12, v7

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v39, v30

    move-object/from16 v30, v9

    move-object/from16 v9, v39

    .line 230
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "allocationFlag":I
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v31    # "decl":Lgnu/expr/Declaration;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v9, "savedPos2":Ljava/lang/Object;
    .local v12, "sname":Ljava/lang/Object;
    .local v13, "key":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .local v29, "method_list":Lgnu/expr/LambdaExp;
    .local v30, "pair_car":Ljava/lang/Object;
    .restart local v33    # "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    :goto_4bf
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_4d1

    if-nez v25, :cond_4d1

    .line 233
    move-object/from16 v2, v26

    .line 234
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .local v2, "initPair":Lgnu/lists/Pair;
    const/4 v4, 0x1

    move-object/from16 v27, v2

    move/from16 v25, v4

    move-object v4, v14

    move v5, v15

    move-object/from16 v2, v28

    .end local v25    # "seenInit":Z
    .local v4, "seenInit":Z
    goto :goto_4f9

    .line 236
    .end local v2    # "initPair":Lgnu/lists/Pair;
    .end local v4    # "seenInit":Z
    .restart local v25    # "seenInit":Z
    .restart local v27    # "initPair":Lgnu/lists/Pair;
    :cond_4d1
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_510

    if-nez v3, :cond_510

    if-nez v25, :cond_510

    if-nez v14, :cond_510

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    move-object v4, v2

    .end local v28    # "pair":Lgnu/lists/Pair;
    .local v4, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v5, :cond_50e

    .line 241
    move-object/from16 v2, v26

    .line 242
    .end local v14    # "typePair":Lgnu/lists/Pair;
    .local v2, "typePair":Lgnu/lists/Pair;
    move-object v5, v4

    .line 243
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .local v5, "initPair":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 244
    const/4 v6, 0x1

    move-object/from16 v27, v5

    move/from16 v25, v6

    move v5, v15

    move-object/from16 v39, v4

    move-object v4, v2

    move-object/from16 v2, v39

    .line 251
    .end local v15    # "allocationFlag":I
    .local v2, "pair":Lgnu/lists/Pair;
    .local v4, "typePair":Lgnu/lists/Pair;
    .local v5, "allocationFlag":I
    .restart local v27    # "initPair":Lgnu/lists/Pair;
    :goto_4f9
    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 252
    .end local v9    # "savedPos2":Ljava/lang/Object;
    .end local v13    # "key":Ljava/lang/Object;
    .end local v26    # "keyPair":Lgnu/lists/Pair;
    move-object/from16 v15, p1

    move-object v6, v0

    move-object v7, v12

    move-object/from16 v13, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v33

    move-object/from16 v12, v35

    move-object/from16 v14, v38

    move-object/from16 v0, p2

    goto/16 :goto_1dd

    .line 236
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v5    # "allocationFlag":I
    .local v4, "pair":Lgnu/lists/Pair;
    .restart local v9    # "savedPos2":Ljava/lang/Object;
    .restart local v13    # "key":Ljava/lang/Object;
    .restart local v14    # "typePair":Lgnu/lists/Pair;
    .restart local v15    # "allocationFlag":I
    .restart local v26    # "keyPair":Lgnu/lists/Pair;
    :cond_50e
    move-object v2, v4

    goto :goto_512

    .line 248
    .end local v4    # "pair":Lgnu/lists/Pair;
    .restart local v28    # "pair":Lgnu/lists/Pair;
    :cond_510
    move-object/from16 v2, v28

    .end local v28    # "pair":Lgnu/lists/Pair;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    :goto_512
    const/4 v1, 0x0

    .line 249
    goto :goto_528

    .line 163
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v29    # "method_list":Lgnu/expr/LambdaExp;
    .end local v30    # "pair_car":Ljava/lang/Object;
    .end local v33    # "components":Ljava/lang/Object;
    .end local v35    # "savedPos1":Ljava/lang/Object;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .end local p1    # "obj":Ljava/lang/Object;
    .local v4, "typePair":Lgnu/lists/Pair;
    .restart local v5    # "allocationFlag":I
    .local v6, "decl":Lgnu/expr/Declaration;
    .restart local v7    # "sname":Ljava/lang/Object;
    .local v9, "pair_car":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "savedPos1":Ljava/lang/Object;
    .local v13, "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    .local v15, "obj":Ljava/lang/Object;
    .local v26, "pair":Lgnu/lists/Pair;
    :cond_514
    move-object v0, v6

    move-object/from16 v30, v9

    move-object/from16 v33, v10

    move-object/from16 v35, v12

    move-object/from16 v29, v13

    move-object/from16 v38, v14

    move-object/from16 p1, v15

    const/16 v16, 0x0

    move-object v14, v4

    move v15, v5

    move-object v12, v7

    .end local v4    # "typePair":Lgnu/lists/Pair;
    .end local v5    # "allocationFlag":I
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .end local v7    # "sname":Ljava/lang/Object;
    .end local v9    # "pair_car":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v13    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    .local v12, "sname":Ljava/lang/Object;
    .local v14, "typePair":Lgnu/lists/Pair;
    .local v15, "allocationFlag":I
    .restart local v29    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v30    # "pair_car":Ljava/lang/Object;
    .restart local v33    # "components":Ljava/lang/Object;
    .restart local v35    # "savedPos1":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    .restart local p1    # "obj":Ljava/lang/Object;
    move-object/from16 v2, v26

    .line 253
    .end local v26    # "pair":Lgnu/lists/Pair;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    :goto_528
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v4, :cond_562

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid argument list for slot \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " args:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_54c

    const-string v5, "null"

    goto :goto_554

    :cond_54c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_554
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v8, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 257
    return-object v17

    .line 259
    :cond_562
    if-eqz v25, :cond_57f

    .line 261
    const/16 v4, 0x800

    if-ne v15, v4, :cond_56a

    const/4 v4, 0x1

    goto :goto_56b

    :cond_56a
    const/4 v4, 0x0

    .line 263
    .local v4, "isStatic":Z
    :goto_56b
    if-eqz v0, :cond_56f

    move-object v6, v0

    goto :goto_576

    :cond_56f
    if-eqz v4, :cond_574

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_576

    :cond_574
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_576
    invoke-virtual {v11, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v5, v27

    .end local v27    # "initPair":Lgnu/lists/Pair;
    .local v5, "initPair":Lgnu/lists/Pair;
    invoke-virtual {v11, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_581

    .line 259
    .end local v4    # "isStatic":Z
    .end local v5    # "initPair":Lgnu/lists/Pair;
    .restart local v27    # "initPair":Lgnu/lists/Pair;
    :cond_57f
    move-object/from16 v5, v27

    .line 267
    .end local v27    # "initPair":Lgnu/lists/Pair;
    .restart local v5    # "initPair":Lgnu/lists/Pair;
    :goto_581
    if-nez v0, :cond_58d

    .line 269
    if-nez v25, :cond_5ae

    .line 271
    const-string v4, "missing field name"

    const/16 v6, 0x65

    invoke-virtual {v8, v6, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 272
    return-object v17

    .line 277
    :cond_58d
    if-eqz v14, :cond_596

    .line 278
    invoke-virtual {v8, v14}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 279
    :cond_596
    if-eqz v15, :cond_59c

    .line 280
    int-to-long v6, v15

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 281
    :cond_59c
    move-wide/from16 v6, v19

    const-wide/16 v9, 0x0

    .end local v19    # "accessFlag":J
    .local v6, "accessFlag":J
    cmp-long v4, v6, v9

    if-eqz v4, :cond_5a7

    .line 282
    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 283
    :cond_5a7
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 284
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 286
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v1    # "args":Ljava/lang/Object;
    .end local v3    # "nKeywords":I
    .end local v5    # "initPair":Lgnu/lists/Pair;
    .end local v6    # "accessFlag":J
    .end local v12    # "sname":Ljava/lang/Object;
    .end local v14    # "typePair":Lgnu/lists/Pair;
    .end local v15    # "allocationFlag":I
    .end local v25    # "seenInit":Z
    :cond_5ae
    move-object v1, v2

    move-object/from16 v13, v29

    move-object/from16 v14, v38

    .line 308
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v29    # "method_list":Lgnu/expr/LambdaExp;
    .end local v38    # "last_method":Lgnu/expr/LambdaExp;
    .local v1, "pair":Lgnu/lists/Pair;
    .restart local v13    # "method_list":Lgnu/expr/LambdaExp;
    .local v14, "last_method":Lgnu/expr/LambdaExp;
    :goto_5b3
    move-object/from16 v0, v35

    .end local v35    # "savedPos1":Ljava/lang/Object;
    .local v0, "savedPos1":Ljava/lang/Object;
    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 309
    .end local v0    # "savedPos1":Ljava/lang/Object;
    .end local v30    # "pair_car":Ljava/lang/Object;
    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v12, v21

    move-object/from16 v9, v22

    move-wide/from16 v6, v23

    move-object/from16 v10, v33

    goto/16 :goto_24

    .line 70
    .end local v21    # "classNamePair":Ljava/lang/Object;
    .end local v22    # "superlist":Ljava/lang/Object;
    .end local v23    # "classAccessFlag":J
    .end local v33    # "components":Ljava/lang/Object;
    .end local p1    # "obj":Ljava/lang/Object;
    .local v2, "obj":Ljava/lang/Object;
    .local v6, "classAccessFlag":J
    .local v9, "superlist":Ljava/lang/Object;
    .restart local v10    # "components":Ljava/lang/Object;
    .local v12, "classNamePair":Ljava/lang/Object;
    :cond_5c6
    move-wide/from16 v23, v6

    move-object/from16 v22, v9

    move-object/from16 v33, v10

    move-object/from16 v21, v12

    move-object/from16 v29, v13

    move-object/from16 v38, v14

    const/4 v4, 0x1

    const/16 v16, 0x0

    .line 310
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v6    # "classAccessFlag":J
    .end local v9    # "superlist":Ljava/lang/Object;
    .end local v10    # "components":Ljava/lang/Object;
    .end local v12    # "classNamePair":Ljava/lang/Object;
    .end local v13    # "method_list":Lgnu/expr/LambdaExp;
    .end local v14    # "last_method":Lgnu/expr/LambdaExp;
    .restart local v21    # "classNamePair":Ljava/lang/Object;
    .restart local v22    # "superlist":Ljava/lang/Object;
    .restart local v23    # "classAccessFlag":J
    .restart local v29    # "method_list":Lgnu/expr/LambdaExp;
    .restart local v33    # "components":Ljava/lang/Object;
    .restart local v38    # "last_method":Lgnu/expr/LambdaExp;
    const-wide/16 v2, 0x0

    .end local v23    # "classAccessFlag":J
    .restart local v6    # "classAccessFlag":J
    cmp-long v0, v6, v2

    if-eqz v0, :cond_5e4

    .line 311
    move-object/from16 v0, p2

    const/4 v2, 0x1

    iget-object v3, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v3, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_5e7

    .line 310
    :cond_5e4
    move-object/from16 v0, p2

    const/4 v2, 0x1

    .line 313
    :goto_5e7
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v16

    aput-object v33, v3, v2

    const/4 v2, 0x2

    aput-object v11, v3, v2

    const/4 v2, 0x3

    aput-object v29, v3, v2

    const/4 v2, 0x4

    aput-object v22, v3, v2

    const/4 v2, 0x5

    aput-object v21, v3, v2

    move-object v2, v3

    .line 321
    .local v2, "result":[Ljava/lang/Object;
    return-object v2
.end method

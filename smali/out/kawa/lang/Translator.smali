.class public Lkawa/lang/Translator;
.super Lgnu/expr/Compilation;
.source "Translator.java"


# static fields
.field private static errorExp:Lgnu/expr/Expression;

.field public static final getNamedPartDecl:Lgnu/expr/Declaration;


# instance fields
.field public curMethodLambda:Lgnu/expr/LambdaExp;

.field public currentMacroDefinition:Lkawa/lang/Macro;

.field currentSyntax:Lkawa/lang/Syntax;

.field private env:Lgnu/mapping/Environment;

.field public firstForm:I

.field public formStack:Ljava/util/Stack;

.field macroContext:Lgnu/expr/Declaration;

.field public matchArray:Lgnu/expr/Declaration;

.field notedAccess:Ljava/util/Vector;

.field public patternScope:Lkawa/lang/PatternScope;

.field public pendingForm:Ljava/lang/Object;

.field positionPair:Lgnu/lists/PairWithPosition;

.field renamedAliasStack:Ljava/util/Stack;

.field public templateScopeDecl:Lgnu/expr/Declaration;

.field public xmlElementNamespaces:Lgnu/xml/NamespaceBinding;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    const-string v0, "gnu.kawa.functions.GetNamedPart"

    .line 65
    .local v0, "cname":Ljava/lang/String;
    const-string v1, "getNamedPart"

    .line 66
    .local v1, "fname":Ljava/lang/String;
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    .line 67
    sget-object v3, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v3, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 70
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "fname":Ljava/lang/String;
    new-instance v0, Lgnu/expr/ErrorExp;

    const-string v1, "unknown syntax error"

    invoke-direct {v0, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .registers 5
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    .line 57
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 75
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    .line 76
    return-void
.end method

.method static getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;
    .registers 3
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .line 147
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 149
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 150
    .local v0, "value":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_1a

    .line 151
    move-object v1, v0

    check-cast v1, Lgnu/expr/ReferenceExp;

    return-object v1

    .line 153
    .end local v0    # "value":Lgnu/expr/Expression;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listLength(Ljava/lang/Object;)I
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "n":I
    move-object v1, p0

    .line 502
    .local v1, "slow":Ljava/lang/Object;
    move-object v2, p0

    .line 506
    .local v2, "fast":Ljava/lang/Object;
    :goto_3
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_f

    .line 507
    move-object v3, v2

    check-cast v3, Lkawa/lang/SyntaxForm;

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 508
    :cond_f
    :goto_f
    instance-of v3, v1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_1b

    .line 509
    move-object v3, v1

    check-cast v3, Lkawa/lang/SyntaxForm;

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    .line 510
    :cond_1b
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_20

    .line 511
    return v0

    .line 512
    :cond_20
    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_27

    .line 513
    rsub-int/lit8 v3, v0, -0x1

    return v3

    .line 514
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 515
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 516
    .local v3, "next":Ljava/lang/Object;
    :goto_30
    instance-of v4, v3, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_3c

    .line 517
    move-object v4, v3

    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_30

    .line 518
    :cond_3c
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_41

    .line 519
    return v0

    .line 520
    :cond_41
    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_48

    .line 521
    rsub-int/lit8 v4, v0, -0x1

    return v4

    .line 522
    :cond_48
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 523
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 525
    if-ne v2, v1, :cond_5d

    .line 526
    const/high16 v4, -0x80000000

    return v4

    .line 527
    .end local v3    # "next":Ljava/lang/Object;
    :cond_5d
    goto :goto_3
.end method

.method private makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .registers 8
    .param p1, "first"    # I
    .param p2, "scope"    # Lgnu/expr/ScopeExp;

    .line 1237
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 1238
    .local v0, "nforms":I
    if-nez v0, :cond_c

    .line 1239
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v1

    .line 1240
    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1242
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    return-object v1

    .line 1246
    :cond_18
    new-array v1, v0, [Lgnu/expr/Expression;

    .line 1247
    .local v1, "exps":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2c

    .line 1248
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    add-int v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v1, v2

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1249
    .end local v2    # "i":I
    :cond_2c
    iget-object v2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->setSize(I)V

    .line 1250
    instance-of v2, p2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_3d

    .line 1251
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v2

    .line 1254
    :cond_3d
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    check-cast v2, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v2, v1}, Lgnu/kawa/lispexpr/LispLanguage;->makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method public static makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .registers 5
    .param p0, "pair"    # Lgnu/lists/Pair;
    .param p1, "car"    # Ljava/lang/Object;
    .param p2, "cdr"    # Ljava/lang/Object;

    .line 1169
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_d

    .line 1170
    new-instance v0, Lgnu/lists/PairWithPosition;

    move-object v1, p0

    check-cast v1, Lgnu/lists/PairWithPosition;

    invoke-direct {v0, v1, p1, p2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1171
    :cond_d
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p1, p2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private rewriteBody(Lgnu/lists/LList;)V
    .registers 5
    .param p1, "forms"    # Lgnu/lists/LList;

    .line 1218
    :goto_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v0, :cond_23

    .line 1220
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 1221
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1224
    .local v1, "saved":Ljava/lang/Object;
    :try_start_b
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1e

    .line 1228
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1229
    nop

    .line 1230
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lgnu/lists/LList;

    .line 1231
    .end local v0    # "pair":Lgnu/lists/Pair;
    .end local v1    # "saved":Ljava/lang/Object;
    goto :goto_0

    .line 1228
    .restart local v0    # "pair":Lgnu/lists/Pair;
    .restart local v1    # "saved":Ljava/lang/Object;
    :catchall_1e
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v2

    .line 1232
    .end local v0    # "pair":Lgnu/lists/Pair;
    .end local v1    # "saved":Ljava/lang/Object;
    :cond_23
    return-void
.end method

.method public static safeCar(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 475
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 476
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 477
    :cond_c
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_12

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_12
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static safeCdr(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 484
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 485
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 486
    :cond_c
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_12

    .line 487
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_12
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V
    .registers 3
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "location"    # Ljava/lang/Object;

    .line 816
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_a

    .line 817
    move-object v0, p1

    check-cast v0, Lgnu/text/SourceLocator;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 818
    :cond_a
    return-void
.end method

.method public static setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V
    .registers 3
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "location"    # Ljava/lang/Object;

    .line 810
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_a

    .line 811
    move-object v0, p1

    check-cast v0, Lgnu/text/SourceLocator;

    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 812
    :cond_a
    return-void
.end method

.method public static stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 468
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 469
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 470
    :cond_c
    return-object p0
.end method

.method static vectorReverse(Ljava/util/Vector;II)V
    .registers 9
    .param p0, "vec"    # Ljava/util/Vector;
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 1347
    div-int/lit8 v0, p2, 0x2

    .line 1348
    .local v0, "j":I
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 1349
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 1351
    add-int v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1352
    .local v3, "tmp":Ljava/lang/Object;
    sub-int v4, v1, v2

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    add-int v5, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1353
    sub-int v4, v1, v2

    invoke-virtual {p0, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1349
    .end local v3    # "tmp":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1355
    .end local v2    # "i":I
    :cond_22
    return-void
.end method

.method public static wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .registers 3
    .param p0, "form"    # Ljava/lang/Object;
    .param p1, "syntax"    # Lkawa/lang/SyntaxForm;

    .line 936
    if-eqz p1, :cond_c

    instance-of v0, p0, Lgnu/expr/Expression;

    if-eqz v0, :cond_7

    goto :goto_c

    .line 939
    :cond_7
    invoke-static {p0, p1}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 937
    :cond_c
    :goto_c
    return-object p0
.end method


# virtual methods
.method apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "syntax"    # Lkawa/lang/Syntax;
    .param p2, "form"    # Lgnu/lists/Pair;

    .line 128
    sget-object v0, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    .line 129
    .local v0, "exp":Lgnu/expr/Expression;
    iget-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 130
    .local v1, "saveSyntax":Lkawa/lang/Syntax;
    iput-object p1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 133
    :try_start_6
    invoke-virtual {p1, p2, p0}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    move-object v0, v2

    .line 137
    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 138
    nop

    .line 139
    return-object v0

    .line 137
    :catchall_f
    move-exception v2

    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw v2
.end method

.method check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    .registers 10
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 251
    invoke-static {p1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 252
    .local v0, "d":Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 253
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 254
    .local v2, "dval":Lgnu/expr/Expression;
    const/4 v3, 0x0

    const-wide/32 v4, 0x8000

    if-eqz v2, :cond_72

    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 258
    :try_start_15
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_3b

    .line 260
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    check-cast v4, Lgnu/expr/ReferenceExp;

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 262
    .local v4, "context":Lgnu/expr/Declaration;
    if-eqz v4, :cond_2c

    .line 263
    iput-object v4, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    goto :goto_3a

    .line 264
    :cond_2c
    iget-object v5, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lkawa/lang/TemplateScope;

    if-eqz v5, :cond_3a

    .line 265
    iget-object v5, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v5, Lkawa/lang/TemplateScope;

    iget-object v5, v5, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v5, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 266
    .end local v4    # "context":Lgnu/expr/Declaration;
    :cond_3a
    :goto_3a
    goto :goto_49

    .line 267
    :cond_3b
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lkawa/lang/TemplateScope;

    if-eqz v4, :cond_49

    .line 268
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v4, Lkawa/lang/TemplateScope;

    iget-object v4, v4, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v4, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 269
    :cond_49
    :goto_49
    iget-object v4, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v2, v4}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_51

    move-object v1, v4

    .line 275
    :goto_50
    goto :goto_86

    .line 271
    :catchall_51
    move-exception v4

    .line 273
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to evaluate macro for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/Throwable;
    goto :goto_50

    .line 277
    :cond_72
    invoke-virtual {p1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-virtual {p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v4

    if-nez v4, :cond_86

    .line 279
    invoke-static {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v4

    .line 280
    .local v4, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v4, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    .end local v4    # "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    :cond_86
    :goto_86
    instance-of v4, v1, Lkawa/lang/Syntax;

    if-eqz v4, :cond_8d

    move-object v3, v1

    check-cast v3, Lkawa/lang/Syntax;

    :cond_8d
    return-object v3
.end method

.method public define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .registers 9
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "nameSyntax"    # Lkawa/lang/SyntaxForm;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;

    .line 1487
    if-eqz p2, :cond_e

    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1488
    .local v0, "aliasNeeded":Z
    :goto_f
    if-eqz v0, :cond_1b

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1b
    move-object v1, p1

    .line 1489
    .local v1, "declName":Ljava/lang/Object;
    :goto_1c
    const/16 v2, 0x77

    invoke-virtual {p3, v1, v2, p0}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 1490
    .local v2, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_33

    .line 1492
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 1493
    .local v3, "alias":Lgnu/expr/Declaration;
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {v4, v3}, Lkawa/lang/TemplateScope;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1495
    .end local v3    # "alias":Lgnu/expr/Declaration;
    :cond_33
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 1496
    return-object v2
.end method

.method public exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;
    .registers 8
    .param p1, "typeSpecPair"    # Lgnu/lists/Pair;

    .line 874
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 877
    .local v0, "saved":Ljava/lang/Object;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 878
    .local v1, "texp":Lgnu/expr/Expression;
    invoke-static {v1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 879
    nop

    instance-of v2, v1, Lgnu/expr/ErrorExp;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_7b

    if-eqz v2, :cond_18

    .line 880
    const/4 v2, 0x0

    .line 910
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v2

    .line 881
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_7b

    .line 882
    .local v2, "type":Lgnu/bytecode/Type;
    if-nez v2, :cond_3f

    .line 886
    :try_start_22
    iget-object v3, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v1, v3}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v3

    .line 887
    .local v3, "t":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_35

    .line 888
    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v2, v4

    goto :goto_3d

    .line 889
    :cond_35
    instance-of v4, v3, Lgnu/bytecode/Type;

    if-eqz v4, :cond_3d

    .line 890
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/Type;
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_3e

    move-object v2, v4

    .line 894
    .end local v3    # "t":Ljava/lang/Object;
    :cond_3d
    :goto_3d
    goto :goto_3f

    .line 892
    :catchall_3e
    move-exception v3

    .line 896
    :cond_3f
    :goto_3f
    if-nez v2, :cond_76

    .line 898
    :try_start_41
    instance-of v3, v1, Lgnu/expr/ReferenceExp;

    const/16 v4, 0x65

    if-eqz v3, :cond_6b

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type name \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v5, v1

    check-cast v5, Lgnu/expr/ReferenceExp;

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_70

    .line 902
    :cond_6b
    const-string v3, "invalid type spec (must be \"type\" or \'type or <type>)"

    invoke-virtual {p0, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 904
    :goto_70
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;
    :try_end_72
    .catchall {:try_start_41 .. :try_end_72} :catchall_7b

    .line 910
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v3

    .line 906
    :cond_76
    nop

    .line 910
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v2

    .end local v1    # "texp":Lgnu/expr/Expression;
    .end local v2    # "type":Lgnu/bytecode/Type;
    :catchall_7b
    move-exception v1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v1
.end method

.method public finishModule(Lgnu/expr/ModuleExp;)V
    .registers 11
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .line 1303
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    .line 1304
    .local v0, "moduleStatic":Z
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 1305
    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_8
    if-eqz v1, :cond_91

    .line 1307
    const-wide/16 v2, 0x200

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    const/16 v3, 0x65

    const-wide/16 v4, 0x400

    const-wide/16 v6, 0x800

    if-eqz v2, :cond_31

    .line 1309
    const-string v2, "\'"

    .line 1310
    .local v2, "msg1":Ljava/lang/String;
    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_23

    const-string v8, "\' exported but never defined"

    goto :goto_2e

    :cond_23
    invoke-virtual {v1, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_2c

    const-string v8, "\' declared static but never defined"

    goto :goto_2e

    :cond_2c
    const-string v8, "\' declared but never defined"

    .line 1316
    .local v8, "msg2":Ljava/lang/String;
    :goto_2e
    invoke-virtual {p0, v3, v1, v2, v8}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .end local v2    # "msg1":Ljava/lang/String;
    .end local v8    # "msg2":Ljava/lang/String;
    :cond_31
    const/16 v2, 0x4000

    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_41

    iget-boolean v2, p0, Lkawa/lang/Translator;->generateMain:Z

    if-eqz v2, :cond_66

    iget-boolean v2, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v2, :cond_66

    .line 1321
    :cond_41
    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1323
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1325
    const-wide/32 v4, 0x1000000

    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1326
    const-string v2, "\'"

    const-string v4, "\' is declared both private and exported"

    invoke-virtual {p0, v3, v1, v2, v4}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_5d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_66

    .line 1332
    :cond_62
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1334
    :cond_66
    :goto_66
    if-eqz v0, :cond_6c

    .line 1335
    invoke-virtual {v1, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_8b

    .line 1336
    :cond_6c
    const/high16 v2, 0x10000

    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {v1, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_7a
    sget v2, Lgnu/expr/Compilation;->moduleStatic:I

    if-ltz v2, :cond_86

    const/high16 v2, 0x20000

    invoke-virtual {p1, v2}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1340
    :cond_86
    const-wide/16 v2, 0x1000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1305
    :cond_8b
    :goto_8b
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto/16 :goto_8

    .line 1342
    .end local v1    # "decl":Lgnu/expr/Declaration;
    :cond_91
    return-void
.end method

.method public getCurrentSyntax()Lkawa/lang/Syntax;
    .registers 2

    .line 112
    iget-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object v0
.end method

.method public final getGlobalEnvironment()Lgnu/mapping/Environment;
    .registers 2

    .line 78
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "namespace"    # I

    .line 219
    iget-object v0, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 220
    .local v0, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 221
    return-object v0

    .line 222
    :cond_13
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v1

    return-object v1
.end method

.method public lookupGlobal(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 228
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "namespace"    # I

    .line 234
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 235
    .local v0, "module":Lgnu/expr/ModuleExp;
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v1

    .line 236
    .local v1, "decl":Lgnu/expr/Declaration;
    if-nez v1, :cond_16

    .line 238
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 241
    :cond_16
    return-object v1
.end method

.method public makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .registers 4
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "templateScope"    # Lgnu/expr/ScopeExp;

    .line 1421
    if-nez p2, :cond_3

    .line 1422
    return-object p1

    .line 1423
    :cond_3
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .registers 7
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "templateScope"    # Lgnu/expr/ScopeExp;

    .line 1430
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 1431
    .local v0, "alias":Lgnu/expr/Declaration;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 1432
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1433
    iput-object p3, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1434
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1435
    .local v2, "ref":Lgnu/expr/ReferenceExp;
    invoke-virtual {v2, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 1436
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1437
    return-object v0
.end method

.method public matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;
    .registers 4
    .param p1, "pair"    # Lgnu/lists/Pair;

    .line 210
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "quote"

    invoke-virtual {p0, v0, v1}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_28

    .line 213
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 214
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4
    .param p1, "form"    # Ljava/lang/Object;
    .param p2, "literal"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z
    .registers 6
    .param p1, "form"    # Ljava/lang/Object;
    .param p2, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p3, "literal"    # Lgnu/mapping/Symbol;

    .line 190
    nop

    .line 194
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 197
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 199
    :cond_c
    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_27

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 201
    iget-object v0, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 202
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_27

    .line 203
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 205
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_27
    if-ne p1, p3, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z
    .registers 6
    .param p1, "form"    # Ljava/lang/Object;
    .param p2, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p3, "literal"    # Ljava/lang/String;

    .line 169
    nop

    .line 173
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_c

    .line 176
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 178
    :cond_c
    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_27

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 180
    iget-object v0, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 181
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_27

    .line 182
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 184
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_27
    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p3, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .registers 4
    .param p1, "context"    # Lgnu/expr/Expression;
    .param p2, "member"    # Lgnu/expr/Expression;

    .line 463
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .registers 5
    .param p1, "ns"    # Lgnu/mapping/Namespace;
    .param p2, "member"    # Lgnu/expr/Expression;

    .line 453
    if-eqz p1, :cond_1a

    instance-of v0, p2, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_1a

    .line 455
    move-object v0, p2

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "mem":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 458
    .end local v0    # "mem":Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/Object;

    .line 566
    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-nez v0, :cond_55

    .line 569
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_55

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, "p":Lgnu/lists/Pair;
    invoke-static {v0}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v0, v2, :cond_55

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_55

    .line 574
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 575
    .local v0, "part1":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    .line 576
    .local v2, "part2":Lgnu/expr/Expression;
    invoke-virtual {p0, v0, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 577
    .local v3, "sym":Lgnu/mapping/Symbol;
    if-eqz v3, :cond_48

    .line 578
    return-object v3

    .line 579
    :cond_48
    invoke-static {v0, v2}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "combinedName":Ljava/lang/String;
    if-eqz v4, :cond_55

    .line 581
    sget-object v5, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v5, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    return-object v5

    .line 584
    .end local v0    # "part1":Lgnu/expr/Expression;
    .end local v1    # "p":Lgnu/lists/Pair;
    .end local v2    # "part2":Lgnu/expr/Expression;
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .end local v4    # "combinedName":Ljava/lang/String;
    :cond_55
    return-object p1
.end method

.method public namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;
    .registers 9
    .param p1, "context"    # Lgnu/expr/Expression;

    .line 421
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 423
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 424
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 426
    .local v2, "decl":Lgnu/expr/Declaration;
    if-eqz v2, :cond_25

    const-wide/32 v3, 0x10000

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_25

    .line 433
    :cond_18
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 435
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "val":Ljava/lang/Object;
    goto :goto_42

    .line 438
    .end local v3    # "val":Ljava/lang/Object;
    :cond_23
    const/4 v3, 0x0

    .restart local v3    # "val":Ljava/lang/Object;
    goto :goto_42

    .line 428
    .end local v3    # "val":Ljava/lang/Object;
    :cond_25
    :goto_25
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 429
    .local v3, "rsym":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_31

    move-object v4, v3

    check-cast v4, Lgnu/mapping/Symbol;

    goto :goto_3b

    :cond_31
    iget-object v4, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    .line 431
    .local v4, "sym":Lgnu/mapping/Symbol;
    :goto_3b
    iget-object v5, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v5, v4, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 432
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    .local v3, "val":Ljava/lang/Object;
    nop

    .line 439
    :goto_42
    instance-of v4, v3, Lgnu/mapping/Namespace;

    if-eqz v4, :cond_59

    .line 441
    move-object v4, v3

    check-cast v4, Lgnu/mapping/Namespace;

    .line 442
    .local v4, "ns":Lgnu/mapping/Namespace;
    invoke-virtual {v4}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "uri":Ljava/lang/String;
    if-eqz v5, :cond_58

    const-string v6, "class:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 444
    return-object v1

    .line 445
    :cond_58
    return-object v4

    .line 448
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "val":Ljava/lang/Object;
    .end local v4    # "ns":Lgnu/mapping/Namespace;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_59
    return-object v1
.end method

.method public noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "scope"    # Lgnu/expr/ScopeExp;

    .line 1266
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1267
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    .line 1268
    :cond_b
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1269
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1270
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public popForms(I)Ljava/lang/Object;
    .registers 6
    .param p1, "first"    # I

    .line 944
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 945
    .local v0, "last":I
    if-ne v0, p1, :cond_b

    .line 946
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 948
    :cond_b
    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_16

    .line 949
    iget-object v1, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "r":Ljava/lang/Object;
    goto :goto_2b

    .line 952
    .end local v1    # "r":Ljava/lang/Object;
    :cond_16
    new-instance v1, Lgnu/mapping/Values;

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    .line 953
    .local v1, "vals":Lgnu/mapping/Values;
    move v2, p1

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_2a

    .line 954
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 955
    .end local v2    # "i":I
    :cond_2a
    move-object v2, v1

    .line 957
    .local v1, "r":Ljava/lang/Object;
    :goto_2b
    iget-object v2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->setSize(I)V

    .line 958
    return-object v1
.end method

.method public popPositionOf(Ljava/lang/Object;)V
    .registers 4
    .param p1, "saved"    # Ljava/lang/Object;

    .line 852
    if-nez p1, :cond_3

    .line 853
    return-void

    .line 854
    :cond_3
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 855
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 856
    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    .line 857
    iget-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/PairWithPosition;

    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 858
    :cond_1d
    return-void
.end method

.method public popRenamedAlias(I)V
    .registers 7
    .param p1, "count"    # I

    .line 1472
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_35

    .line 1474
    iget-object v0, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/ScopeExp;

    .line 1475
    .local v0, "templateScope":Lgnu/expr/ScopeExp;
    iget-object v1, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 1476
    .local v1, "alias":Lgnu/expr/Declaration;
    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 1477
    .local v2, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1478
    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1479
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 1480
    .local v3, "old":Ljava/lang/Object;
    if-eqz v3, :cond_34

    .line 1481
    move-object v4, v3

    check-cast v4, Lgnu/expr/Declaration;

    invoke-virtual {v0, v4}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1482
    .end local v0    # "templateScope":Lgnu/expr/ScopeExp;
    .end local v1    # "alias":Lgnu/expr/Declaration;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "old":Ljava/lang/Object;
    :cond_34
    goto :goto_0

    .line 1483
    :cond_35
    return-void
.end method

.method public processAccesses()V
    .registers 9

    .line 1278
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_5

    .line 1279
    return-void

    .line 1280
    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1281
    .local v0, "sz":I
    iget-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1282
    .local v1, "saveScope":Lgnu/expr/ScopeExp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_53

    .line 1284
    iget-object v3, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 1285
    .local v3, "name":Ljava/lang/Object;
    iget-object v4, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/ScopeExp;

    .line 1286
    .local v4, "scope":Lgnu/expr/ScopeExp;
    iget-object v5, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v5, v4, :cond_25

    .line 1287
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1288
    :cond_25
    iget-object v5, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v5

    .line 1289
    .local v5, "decl":Lgnu/expr/Declaration;
    if-eqz v5, :cond_50

    const-wide/32 v6, 0x10000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-nez v6, :cond_50

    .line 1291
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    .line 1292
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 1293
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 1294
    const-wide/32 v6, 0x80000

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1282
    .end local v3    # "name":Ljava/lang/Object;
    .end local v4    # "scope":Lgnu/expr/ScopeExp;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_50
    add-int/lit8 v2, v2, 0x2

    goto :goto_c

    .line 1297
    .end local v2    # "i":I
    :cond_53
    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v2, v1, :cond_5a

    .line 1298
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1299
    :cond_5a
    return-void
.end method

.method public pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "pair"    # Ljava/lang/Object;

    .line 827
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_b

    .line 828
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p1

    .line 829
    :cond_b
    instance-of v0, p1, Lgnu/lists/PairWithPosition;

    if-nez v0, :cond_11

    .line 830
    const/4 v0, 0x0

    return-object v0

    .line 831
    :cond_11
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    .line 833
    .local v0, "ppair":Lgnu/lists/PairWithPosition;
    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v2

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v2

    if-eq v1, v2, :cond_3b

    goto :goto_3e

    .line 841
    :cond_3b
    iget-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .local v1, "saved":Ljava/lang/Object;
    goto :goto_47

    .line 838
    .end local v1    # "saved":Ljava/lang/Object;
    :cond_3e
    :goto_3e
    new-instance v1, Lgnu/lists/PairWithPosition;

    sget-object v2, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-direct {v1, p0, v2, v3}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 842
    .restart local v1    # "saved":Ljava/lang/Object;
    :goto_47
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 843
    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 844
    return-object v1
.end method

.method public pushRenamedAlias(Lgnu/expr/Declaration;)V
    .registers 6
    .param p1, "alias"    # Lgnu/expr/Declaration;

    .line 1455
    invoke-static {p1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1456
    .local v0, "decl":Lgnu/expr/Declaration;
    iget-object v1, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1457
    .local v1, "templateScope":Lgnu/expr/ScopeExp;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1458
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 1459
    .local v2, "old":Lgnu/expr/Declaration;
    if-eqz v2, :cond_1b

    .line 1460
    invoke-virtual {v1, v2}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1461
    :cond_1b
    invoke-virtual {v1, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1462
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    if-nez v3, :cond_29

    .line 1463
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    .line 1464
    :cond_29
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .registers 16
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .line 1359
    iget-object v0, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 1360
    .local v0, "numPending":I
    :goto_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    const/4 v2, 0x0

    if-ge v1, v0, :cond_84

    .line 1362
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/ModuleInfo;

    .line 1363
    .local v1, "info":Lgnu/expr/ModuleInfo;
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/ScopeExp;

    .line 1364
    .local v3, "defs":Lgnu/expr/ScopeExp;
    iget-object v4, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    .line 1365
    .local v4, "posExp":Lgnu/expr/Expression;
    iget-object v5, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "i":I
    .local v11, "i":I
    invoke-virtual {v5, v6}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/Integer;

    .line 1366
    .local v12, "savedSize":Ljava/lang/Integer;
    if-ne p1, v3, :cond_82

    .line 1369
    new-instance v5, Lgnu/expr/ReferenceExp;

    move-object v6, v2

    check-cast v6, Ljava/lang/Object;

    invoke-direct {v5, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v2, v5

    .line 1370
    .local v2, "savePos":Lgnu/expr/Expression;
    invoke-virtual {v2, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 1371
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1372
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v13

    .line 1373
    .local v13, "beforeSize":I
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v6, v1

    move-object v9, v3

    move-object v10, p0

    invoke-static/range {v5 .. v10}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 1375
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1376
    .local v5, "desiredPosition":I
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v13, :cond_7f

    .line 1379
    iget-object v6, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    .line 1380
    .local v6, "curSize":I
    sub-int v7, v6, v5

    .line 1382
    .local v7, "count":I
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    sub-int v9, v13, v5

    invoke-static {v8, v5, v9}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1383
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    sub-int v9, v6, v13

    invoke-static {v8, v13, v9}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1384
    iget-object v8, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-static {v8, v5, v7}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1386
    .end local v6    # "curSize":I
    .end local v7    # "count":I
    :cond_7f
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1388
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    .end local v2    # "savePos":Lgnu/expr/Expression;
    .end local v3    # "defs":Lgnu/expr/ScopeExp;
    .end local v4    # "posExp":Lgnu/expr/Expression;
    .end local v5    # "desiredPosition":I
    .end local v12    # "savedSize":Ljava/lang/Integer;
    .end local v13    # "beforeSize":I
    :cond_82
    move v1, v11

    goto :goto_d

    .line 1389
    .end local v11    # "i":I
    :cond_84
    iput-object v2, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    .line 1391
    invoke-virtual {p0}, Lkawa/lang/Translator;->processAccesses()V

    .line 1393
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setModule(Lgnu/expr/ModuleExp;)V

    .line 1394
    invoke-static {p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v1

    .line 1397
    .local v1, "save_comp":Lgnu/expr/Compilation;
    :try_start_90
    iget v2, p0, Lkawa/lang/Translator;->firstForm:I

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 1398
    iget v2, p0, Lkawa/lang/Translator;->firstForm:I

    invoke-direct {p0, v2, p1}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1400
    iget-boolean v2, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v2, :cond_aa

    .line 1401
    iget-object v2, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v2, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V
    :try_end_aa
    .catchall {:try_start_90 .. :try_end_aa} :catchall_af

    .line 1405
    :cond_aa
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 1406
    nop

    .line 1416
    return-void

    .line 1405
    :catchall_af
    move-exception v2

    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    goto :goto_b5

    :goto_b4
    throw v2

    :goto_b5
    goto :goto_b4
.end method

.method public rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "exp"    # Ljava/lang/Object;

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    .registers 19
    .param p1, "exp"    # Ljava/lang/Object;
    .param p2, "function"    # Z

    .line 592
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    instance-of v0, v2, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_28

    .line 594
    move-object v4, v2

    check-cast v4, Lkawa/lang/SyntaxForm;

    .line 595
    .local v4, "sf":Lkawa/lang/SyntaxForm;
    iget-object v5, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 598
    .local v5, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_f
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 599
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 600
    .local v0, "s":Lgnu/expr/Expression;
    nop

    .line 604
    invoke-virtual {v1, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v0

    .end local v0    # "s":Lgnu/expr/Expression;
    :catchall_23
    move-exception v0

    invoke-virtual {v1, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v0

    .line 607
    .end local v4    # "sf":Lkawa/lang/SyntaxForm;
    .end local v5    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_28
    instance-of v0, v2, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_34

    .line 608
    move-object v0, v2

    check-cast v0, Lgnu/lists/PairWithPosition;

    invoke-virtual {v1, v2, v3, v0}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 609
    :cond_34
    instance-of v0, v2, Lgnu/lists/Pair;

    if-eqz v0, :cond_40

    .line 610
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v1, v0, v3}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 611
    :cond_40
    instance-of v0, v2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_280

    invoke-virtual/range {p0 .. p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_280

    .line 613
    iget-object v0, v1, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, v2, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 614
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v4, 0x0

    .line 619
    .local v4, "cdecl":Lgnu/expr/Declaration;
    iget-object v5, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 620
    .local v5, "scope":Lgnu/expr/ScopeExp;
    if-nez v0, :cond_57

    const/4 v6, -0x1

    goto :goto_5d

    :cond_57
    iget-object v6, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v6}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v6

    .line 622
    .local v6, "decl_nesting":I
    :goto_5d
    instance-of v7, v2, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_6f

    move-object v7, v2

    check-cast v7, Lgnu/mapping/Symbol;

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 623
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "dname":Ljava/lang/String;
    goto :goto_71

    .line 626
    .end local v7    # "dname":Ljava/lang/String;
    :cond_6f
    const/4 v7, 0x0

    .line 627
    .restart local v7    # "dname":Ljava/lang/String;
    const/4 v5, 0x0

    .line 629
    :goto_71
    if-eqz v5, :cond_e8

    .line 631
    instance-of v8, v5, Lgnu/expr/LambdaExp;

    if-eqz v8, :cond_e5

    iget-object v8, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v8, v8, Lgnu/expr/ClassExp;

    if-eqz v8, :cond_e5

    move-object v8, v5

    check-cast v8, Lgnu/expr/LambdaExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 635
    iget-object v8, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-static {v8}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v8

    if-lt v6, v8, :cond_8f

    .line 636
    goto :goto_e8

    .line 637
    :cond_8f
    move-object v8, v5

    check-cast v8, Lgnu/expr/LambdaExp;

    .line 638
    .local v8, "caller":Lgnu/expr/LambdaExp;
    iget-object v9, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v9, Lgnu/expr/ClassExp;

    .line 639
    .local v9, "cexp":Lgnu/expr/ClassExp;
    invoke-virtual {v9}, Lgnu/expr/ClassExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v10

    .line 640
    .local v10, "ctype":Lgnu/bytecode/ClassType;
    invoke-static {v10, v7, v10}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v11

    .line 641
    .local v11, "part":Ljava/lang/Object;
    iget-object v12, v9, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v8, v12, :cond_b1

    iget-object v12, v9, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v8, v12, :cond_af

    iget-object v12, v8, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v12}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v12, 0x0

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v12, 0x1

    .line 645
    .local v12, "contextStatic":Z
    :goto_b2
    if-nez v11, :cond_c5

    .line 647
    if-eqz v12, :cond_b9

    const/16 v13, 0x53

    goto :goto_bb

    :cond_b9
    const/16 v13, 0x56

    .line 648
    .local v13, "mode":C
    :goto_bb
    iget-object v14, v1, Lkawa/lang/Translator;->language:Lgnu/expr/Language;

    invoke-static {v10, v7, v13, v10, v14}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v14

    .line 651
    .local v14, "methods":[Lgnu/expr/PrimProcedure;
    array-length v15, v14

    if-nez v15, :cond_c5

    .line 652
    goto :goto_e5

    .line 656
    .end local v13    # "mode":C
    .end local v14    # "methods":[Lgnu/expr/PrimProcedure;
    :cond_c5
    if-eqz v12, :cond_d3

    .line 657
    new-instance v13, Lgnu/expr/ReferenceExp;

    iget-object v14, v8, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v14, Lgnu/expr/ClassExp;

    iget-object v14, v14, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-direct {v13, v14}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .local v13, "part1":Lgnu/expr/Expression;
    goto :goto_dc

    .line 659
    .end local v13    # "part1":Lgnu/expr/Expression;
    :cond_d3
    new-instance v13, Lgnu/expr/ThisExp;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v14

    invoke-direct {v13, v14}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 660
    .restart local v13    # "part1":Lgnu/expr/Expression;
    :goto_dc
    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v14

    return-object v14

    .line 629
    .end local v8    # "caller":Lgnu/expr/LambdaExp;
    .end local v9    # "cexp":Lgnu/expr/ClassExp;
    .end local v10    # "ctype":Lgnu/bytecode/ClassType;
    .end local v11    # "part":Ljava/lang/Object;
    .end local v12    # "contextStatic":Z
    .end local v13    # "part1":Lgnu/expr/Expression;
    :cond_e5
    :goto_e5
    iget-object v5, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_71

    .line 666
    :cond_e8
    :goto_e8
    if-eqz v0, :cond_103

    .line 668
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    .line 669
    .local v8, "nameToLookup":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 670
    .end local p1    # "exp":Ljava/lang/Object;
    .local v2, "exp":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v9

    .line 671
    .local v9, "rexp":Lgnu/expr/ReferenceExp;
    if-eqz v9, :cond_100

    .line 673
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 674
    if-nez v0, :cond_100

    .line 676
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 677
    move-object v8, v2

    .line 680
    .end local v9    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_100
    move-object v9, v8

    move-object v8, v0

    goto :goto_107

    .line 683
    .end local v2    # "exp":Ljava/lang/Object;
    .end local v8    # "nameToLookup":Ljava/lang/Object;
    .restart local p1    # "exp":Ljava/lang/Object;
    :cond_103
    move-object/from16 v8, p1

    move-object v9, v8

    move-object v8, v0

    .line 685
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local p1    # "exp":Ljava/lang/Object;
    .restart local v2    # "exp":Ljava/lang/Object;
    .local v8, "decl":Lgnu/expr/Declaration;
    .local v9, "nameToLookup":Ljava/lang/Object;
    :goto_107
    move-object v10, v2

    check-cast v10, Lgnu/mapping/Symbol;

    .line 686
    .local v10, "symbol":Lgnu/mapping/Symbol;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v11

    .line 687
    .local v11, "separate":Z
    if-eqz v8, :cond_167

    .line 689
    iget-object v0, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    if-eqz v0, :cond_128

    invoke-virtual {v8}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v0

    if-eqz v0, :cond_128

    .line 690
    iget-object v0, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lkawa/lang/TemplateScope;

    iget-object v4, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    goto/16 :goto_22e

    .line 691
    :cond_128
    const-wide/32 v12, 0x100000

    invoke-virtual {v8, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_22e

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_22e

    .line 694
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v0

    move-object v5, v0

    .line 697
    :goto_13c
    if-eqz v5, :cond_14e

    .line 699
    iget-object v0, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iget-object v12, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v0, v12, :cond_14b

    .line 700
    nop

    .line 703
    invoke-virtual {v5}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    goto/16 :goto_22e

    .line 701
    :cond_14b
    iget-object v5, v5, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_13c

    .line 698
    :cond_14e
    new-instance v0, Ljava/lang/Error;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "internal error: missing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_167
    iget-object v0, v1, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    const/4 v12, 0x0

    if-eqz v3, :cond_171

    if-eqz v11, :cond_171

    sget-object v13, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_172

    :cond_171
    move-object v13, v12

    :goto_172
    invoke-virtual {v0, v10, v13}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 712
    .local v0, "loc":Lgnu/mapping/Location;
    if-eqz v0, :cond_17e

    .line 713
    invoke-virtual {v0}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v0

    move-object v13, v0

    goto :goto_17f

    .line 712
    :cond_17e
    move-object v13, v0

    .line 714
    .end local v0    # "loc":Lgnu/mapping/Location;
    .local v13, "loc":Lgnu/mapping/Location;
    :goto_17f
    nop

    instance-of v0, v13, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v0, :cond_219

    .line 716
    move-object v14, v13

    check-cast v14, Lgnu/kawa/reflect/FieldLocation;

    .line 719
    .local v14, "floc":Lgnu/kawa/reflect/FieldLocation;
    :try_start_187
    invoke-virtual {v14}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v0

    move-object v8, v0

    .line 720
    invoke-virtual {v1, v12}, Lkawa/lang/Translator;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_1b4

    sget-object v0, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    if-eq v8, v0, :cond_1b4

    const-string v0, "objectSyntax"

    invoke-virtual {v14}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    const-string v0, "kawa.standard.object"

    invoke-virtual {v14}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v12

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    .line 728
    :cond_1b2
    const/4 v8, 0x0

    goto :goto_1ef

    .line 729
    :cond_1b4
    iget-boolean v0, v1, Lkawa/lang/Translator;->immediate:Z

    if-eqz v0, :cond_1d3

    .line 731
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 733
    new-instance v0, Lgnu/expr/Declaration;

    const-string v12, "(module-instance)"

    invoke-direct {v0, v12}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    .line 734
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/kawa/reflect/FieldLocation;->getInstance()Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_1ef

    .line 737
    :cond_1d3
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 742
    invoke-virtual {v14}, Lgnu/kawa/reflect/FieldLocation;->getRClass()Ljava/lang/Class;

    move-result-object v0

    .line 744
    .local v0, "fclass":Ljava/lang/Class;
    if-eqz v0, :cond_1ec

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v15, v12

    .local v15, "floader":Ljava/lang/ClassLoader;
    instance-of v12, v12, Lgnu/bytecode/ZipLoader;

    if-nez v12, :cond_1ec

    instance-of v12, v15, Lgnu/bytecode/ArrayClassLoader;
    :try_end_1ea
    .catchall {:try_start_187 .. :try_end_1ea} :catchall_1f0

    if-eqz v12, :cond_1ed

    .line 748
    .end local v15    # "floader":Ljava/lang/ClassLoader;
    :cond_1ec
    const/4 v8, 0x0

    .line 749
    .end local v0    # "fclass":Ljava/lang/Class;
    :cond_1ed
    goto :goto_1ef

    .line 751
    :cond_1ee
    const/4 v8, 0x0

    .line 759
    :cond_1ef
    :goto_1ef
    goto :goto_218

    .line 753
    :catchall_1f0
    move-exception v0

    .line 755
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception loading \'"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\' - "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x65

    invoke-virtual {v1, v15, v12}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 758
    const/4 v8, 0x0

    .line 760
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v14    # "floc":Lgnu/kawa/reflect/FieldLocation;
    :goto_218
    goto :goto_22e

    .line 761
    :cond_219
    if-eqz v13, :cond_221

    invoke-virtual {v13}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    if-nez v0, :cond_22e

    .line 763
    :cond_221
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, v10, v1}, Lgnu/kawa/lispexpr/LispLanguage;->checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    .line 765
    .local v0, "e":Lgnu/expr/Expression;
    if-eqz v0, :cond_22e

    .line 766
    return-object v0

    .line 778
    .end local v0    # "e":Lgnu/expr/Expression;
    .end local v13    # "loc":Lgnu/mapping/Location;
    :cond_22e
    :goto_22e
    if-eqz v8, :cond_26b

    .line 783
    if-nez v3, :cond_241

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkawa/standard/object;

    if-eqz v0, :cond_241

    .line 785
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 787
    :cond_241
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v0

    instance-of v0, v0, Lkawa/lang/PatternScope;

    if-eqz v0, :cond_26b

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reference to pattern variable "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " outside syntax template"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 791
    :cond_26b
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v9, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 792
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0, v4}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 793
    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setLine(Lgnu/expr/Compilation;)V

    .line 794
    if-eqz v3, :cond_27f

    if-eqz v11, :cond_27f

    .line 795
    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 796
    :cond_27f
    return-object v0

    .line 798
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "exp":Ljava/lang/Object;
    .end local v4    # "cdecl":Lgnu/expr/Declaration;
    .end local v5    # "scope":Lgnu/expr/ScopeExp;
    .end local v6    # "decl_nesting":I
    .end local v7    # "dname":Ljava/lang/String;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "nameToLookup":Ljava/lang/Object;
    .end local v10    # "symbol":Lgnu/mapping/Symbol;
    .end local v11    # "separate":Z
    .restart local p1    # "exp":Ljava/lang/Object;
    :cond_280
    instance-of v0, v2, Lgnu/expr/LangExp;

    if-eqz v0, :cond_290

    .line 799
    move-object v0, v2

    check-cast v0, Lgnu/expr/LangExp;

    invoke-virtual {v0}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 800
    :cond_290
    instance-of v0, v2, Lgnu/expr/Expression;

    if-eqz v0, :cond_298

    .line 801
    move-object v0, v2

    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 802
    :cond_298
    sget-object v0, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    if-ne v2, v0, :cond_29f

    .line 803
    sget-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 805
    :cond_29f
    invoke-static {v2, v1}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0
.end method

.method public rewriteInBody(Ljava/lang/Object;)V
    .registers 5
    .param p1, "exp"    # Ljava/lang/Object;

    .line 532
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_21

    .line 534
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 535
    .local v0, "sf":Lkawa/lang/SyntaxForm;
    iget-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 538
    .local v1, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_9
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 539
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1c

    .line 543
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 544
    nop

    .line 545
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    goto :goto_43

    .line 543
    .restart local v0    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v1    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_1c
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v2

    .line 546
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_21
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_39

    .line 548
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 549
    .local v0, "vals":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 550
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 551
    .end local v0    # "vals":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_38
    goto :goto_43

    .line 553
    :cond_39
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 554
    :goto_43
    return-void
.end method

.method public rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;
    .registers 11
    .param p1, "exp"    # Ljava/lang/Object;

    .line 1182
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    .local v0, "saved":Ljava/lang/Object;
    new-instance v1, Lgnu/expr/LetExp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 1184
    .local v1, "defs":Lgnu/expr/LetExp;
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1185
    .local v3, "first":I
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v4, v1, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 1186
    iput-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1189
    const/4 v4, 0x1

    :try_start_17
    invoke-virtual {p0, p1, v1, v4}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v4

    .line 1190
    .local v4, "list":Lgnu/lists/LList;
    invoke-virtual {v4}, Lgnu/lists/LList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1191
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string v6, "body with no expressions"

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_2c
    invoke-virtual {v1}, Lgnu/expr/LetExp;->countNonDynamicDecls()I

    move-result v5

    .line 1193
    .local v5, "ndecls":I
    if-eqz v5, :cond_40

    .line 1195
    new-array v6, v5, [Lgnu/expr/Expression;

    .line 1196
    .local v6, "inits":[Lgnu/expr/Expression;
    move v7, v5

    .local v7, "i":I
    :goto_35
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3e

    .line 1197
    sget-object v8, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v8, v6, v7

    goto :goto_35

    .line 1198
    .end local v7    # "i":I
    :cond_3e
    iput-object v6, v1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 1200
    .end local v6    # "inits":[Lgnu/expr/Expression;
    :cond_40
    invoke-direct {p0, v4}, Lkawa/lang/Translator;->rewriteBody(Lgnu/lists/LList;)V

    .line 1201
    invoke-direct {p0, v3, v2}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v2

    .line 1202
    .local v2, "body":Lgnu/expr/Expression;
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_61

    .line 1203
    if-nez v5, :cond_54

    .line 1204
    nop

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v2

    .line 1205
    :cond_54
    :try_start_54
    iput-object v2, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 1206
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_61

    .line 1207
    nop

    .line 1211
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v1

    .line 1211
    .end local v2    # "body":Lgnu/expr/Expression;
    .end local v4    # "list":Lgnu/lists/LList;
    .end local v5    # "ndecls":I
    :catchall_61
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_6a

    :goto_69
    throw v2

    :goto_6a
    goto :goto_69
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;
    .registers 6
    .param p1, "pair"    # Lgnu/lists/Pair;
    .param p2, "syntax"    # Lkawa/lang/SyntaxForm;

    .line 87
    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v2, :cond_2a

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_14

    goto :goto_2a

    .line 90
    :cond_14
    iget-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 93
    .local v1, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_16
    invoke-interface {p2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 94
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_25

    .line 98
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v0

    :catchall_25
    move-exception v0

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v0

    .line 89
    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .registers 5
    .param p1, "pair"    # Lgnu/lists/Pair;
    .param p2, "function"    # Z

    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, "car":Ljava/lang/Object;
    instance-of v1, p1, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_10

    .line 106
    move-object v1, p1

    check-cast v1, Lgnu/lists/PairWithPosition;

    invoke-virtual {p0, v0, p2, v1}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 108
    :cond_10
    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .registers 20
    .param p1, "p"    # Lgnu/lists/Pair;
    .param p2, "function"    # Z

    .line 287
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v4

    .line 288
    .local v4, "func":Lgnu/expr/Expression;
    const/4 v0, 0x0

    .line 289
    .local v0, "proc":Ljava/lang/Object;
    instance-of v5, v4, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_1e

    .line 291
    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    .line 292
    instance-of v5, v0, Lkawa/lang/Syntax;

    if-eqz v5, :cond_1e

    .line 293
    move-object v3, v0

    check-cast v3, Lkawa/lang/Syntax;

    invoke-virtual {v1, v3, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 295
    :cond_1e
    const/4 v5, 0x0

    .line 296
    .local v5, "ref":Lgnu/expr/ReferenceExp;
    instance-of v6, v4, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_9f

    .line 298
    move-object v5, v4

    check-cast v5, Lgnu/expr/ReferenceExp;

    .line 299
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    .line 300
    .local v6, "decl":Lgnu/expr/Declaration;
    if-nez v6, :cond_7e

    .line 302
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    .line 305
    .local v7, "sym":Ljava/lang/Object;
    instance-of v8, v7, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_42

    invoke-virtual {v1, v7}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    .line 307
    move-object v8, v7

    check-cast v8, Lgnu/mapping/Symbol;

    .line 308
    .local v8, "symbol":Lgnu/mapping/Symbol;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v9

    .local v9, "name":Ljava/lang/String;
    goto :goto_4c

    .line 312
    .end local v8    # "symbol":Lgnu/mapping/Symbol;
    .end local v9    # "name":Ljava/lang/String;
    :cond_42
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 313
    .restart local v9    # "name":Ljava/lang/String;
    iget-object v8, v1, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v8, v9}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 315
    .restart local v8    # "symbol":Lgnu/mapping/Symbol;
    :goto_4c
    iget-object v10, v1, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5c

    sget-object v11, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_5d

    :cond_5c
    move-object v11, v12

    :goto_5d
    invoke-virtual {v10, v8, v11, v12}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 320
    .end local v0    # "proc":Ljava/lang/Object;
    .local v10, "proc":Ljava/lang/Object;
    instance-of v0, v10, Lkawa/lang/Syntax;

    if-eqz v0, :cond_6d

    .line 321
    move-object v0, v10

    check-cast v0, Lkawa/lang/Syntax;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 322
    :cond_6d
    instance-of v0, v10, Lkawa/lang/AutoloadProcedure;

    if-eqz v0, :cond_7c

    .line 326
    :try_start_71
    move-object v0, v10

    check-cast v0, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {v0}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v0
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_78} :catch_7a

    move-object v10, v0

    .line 331
    goto :goto_7c

    .line 328
    :catch_7a
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    .line 333
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v7    # "sym":Ljava/lang/Object;
    .end local v8    # "symbol":Lgnu/mapping/Symbol;
    .end local v9    # "name":Ljava/lang/String;
    :cond_7c
    :goto_7c
    move-object v0, v10

    goto :goto_8d

    .line 336
    .end local v10    # "proc":Ljava/lang/Object;
    .local v0, "proc":Ljava/lang/Object;
    :cond_7e
    iget-object v7, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 337
    .local v7, "saveContext":Lgnu/expr/Declaration;
    invoke-virtual {v1, v6}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v8

    .line 338
    .local v8, "syntax":Lkawa/lang/Syntax;
    if-eqz v8, :cond_8d

    .line 340
    invoke-virtual {v1, v8, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v3

    .line 341
    .local v3, "e":Lgnu/expr/Expression;
    iput-object v7, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 342
    return-object v3

    .line 346
    .end local v3    # "e":Lgnu/expr/Expression;
    .end local v7    # "saveContext":Lgnu/expr/Declaration;
    .end local v8    # "syntax":Lkawa/lang/Syntax;
    :cond_8d
    :goto_8d
    invoke-virtual {v5, v3}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 348
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lgnu/expr/Expression;->setFlag(I)V

    .line 351
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 352
    .local v6, "cdr":Ljava/lang/Object;
    invoke-static {v6}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v7

    .line 354
    .local v7, "cdr_length":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_c6

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "circular list is not allowed after "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 356
    :cond_c6
    if-gez v7, :cond_ee

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dotted list ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] is not allowed after "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 359
    :cond_ee
    const/4 v8, 0x0

    .line 360
    .local v8, "mapKeywordsToAttributes":Z
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 362
    .local v9, "vec":Ljava/util/Stack;
    iget-object v10, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 363
    .local v10, "save_scope":Lgnu/expr/ScopeExp;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f7
    const/4 v12, 0x0

    if-ge v11, v7, :cond_15c

    .line 365
    instance-of v13, v6, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_10c

    .line 367
    move-object v13, v6

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 368
    .local v13, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    .line 369
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v14

    invoke-virtual {v1, v14}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 371
    .end local v13    # "sf":Lkawa/lang/SyntaxForm;
    :cond_10c
    move-object v13, v6

    check-cast v13, Lgnu/lists/Pair;

    .line 372
    .local v13, "cdr_pair":Lgnu/lists/Pair;
    invoke-virtual {v1, v13, v12}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v14

    .line 373
    .local v14, "arg":Lgnu/expr/Expression;
    add-int/lit8 v11, v11, 0x1

    .line 375
    if-eqz v8, :cond_153

    .line 377
    and-int/lit8 v15, v11, 0x1

    if-nez v15, :cond_131

    .line 379
    const/4 v15, 0x2

    new-array v15, v15, [Lgnu/expr/Expression;

    .line 380
    .local v15, "aargs":[Lgnu/expr/Expression;
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/expr/Expression;

    aput-object v16, v15, v12

    .line 381
    aput-object v14, v15, v3

    .line 382
    new-instance v12, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    invoke-direct {v12, v3, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v14, v12

    .line 383
    .end local v15    # "aargs":[Lgnu/expr/Expression;
    goto :goto_153

    .line 387
    :cond_131
    instance-of v3, v14, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_151

    move-object v3, v14

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    .local v12, "value":Ljava/lang/Object;
    instance-of v3, v3, Lgnu/expr/Keyword;

    if-eqz v3, :cond_151

    if-ge v11, v7, :cond_151

    .line 390
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v15, v12

    check-cast v15, Lgnu/expr/Keyword;

    invoke-virtual {v15}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v15

    invoke-direct {v3, v15}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v14, v3

    goto :goto_153

    .line 392
    .end local v12    # "value":Ljava/lang/Object;
    :cond_151
    const/4 v3, 0x0

    move v8, v3

    .line 396
    :cond_153
    :goto_153
    invoke-virtual {v9, v14}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 398
    .end local v13    # "cdr_pair":Lgnu/lists/Pair;
    .end local v14    # "arg":Lgnu/expr/Expression;
    const/4 v3, 0x1

    goto :goto_f7

    .line 399
    .end local v11    # "i":I
    :cond_15c
    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v3

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 400
    .local v3, "args":[Lgnu/expr/Expression;
    invoke-virtual {v9, v3}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 402
    iget-object v11, v1, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v10, v11, :cond_16c

    .line 403
    invoke-virtual {v1, v10}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 405
    :cond_16c
    instance-of v11, v4, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_194

    move-object v11, v4

    check-cast v11, Lgnu/expr/ReferenceExp;

    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    sget-object v13, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    if-ne v11, v13, :cond_194

    .line 408
    aget-object v11, v3, v12

    .line 409
    .local v11, "part1":Lgnu/expr/Expression;
    const/4 v12, 0x1

    aget-object v12, v3, v12

    .line 410
    .local v12, "part2":Lgnu/expr/Expression;
    invoke-virtual {v1, v11, v12}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v13

    .line 411
    .local v13, "sym":Lgnu/mapping/Symbol;
    if-eqz v13, :cond_18d

    .line 412
    move/from16 v14, p2

    invoke-virtual {v1, v13, v14}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v15

    return-object v15

    .line 414
    :cond_18d
    move/from16 v14, p2

    invoke-static {v11, v12}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v15

    return-object v15

    .line 405
    .end local v11    # "part1":Lgnu/expr/Expression;
    .end local v12    # "part2":Lgnu/expr/Expression;
    .end local v13    # "sym":Lgnu/mapping/Symbol;
    :cond_194
    move/from16 v14, p2

    .line 416
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    check-cast v11, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v11, v4, v3}, Lgnu/kawa/lispexpr/LispLanguage;->makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v11

    return-object v11
.end method

.method public rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "exp"    # Ljava/lang/Object;
    .param p2, "function"    # Z
    .param p3, "pair"    # Lgnu/lists/PairWithPosition;

    .line 917
    invoke-virtual {p0, p3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 921
    .local v0, "saved":Ljava/lang/Object;
    const/4 v1, 0x0

    if-ne p1, p3, :cond_c

    .line 922
    :try_start_7
    invoke-virtual {p0, p3, p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .local v1, "result":Lgnu/expr/Expression;
    goto :goto_10

    .line 924
    .end local v1    # "result":Lgnu/expr/Expression;
    :cond_c
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    .line 925
    .restart local v1    # "result":Lgnu/expr/Expression;
    :goto_10
    :try_start_10
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 929
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 930
    nop

    .line 931
    return-object v1

    .line 929
    :catchall_18
    move-exception v2

    goto :goto_1b

    .end local v1    # "result":Lgnu/expr/Expression;
    :catchall_1a
    move-exception v2

    .restart local v1    # "result":Lgnu/expr/Expression;
    :goto_1b
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v2
.end method

.method public scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;
    .registers 13
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "makeList"    # Z

    .line 1097
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_7

    :cond_6
    move-object v1, v0

    .line 1098
    .local v1, "list":Lgnu/lists/LList;
    :goto_7
    const/4 v2, 0x0

    .line 1099
    .local v2, "lastPair":Lgnu/lists/Pair;
    :goto_8
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v3, :cond_c7

    .line 1101
    instance-of v3, p1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_58

    .line 1103
    move-object v3, p1

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 1104
    .local v3, "sf":Lkawa/lang/SyntaxForm;
    iget-object v4, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1107
    .local v4, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_15
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1108
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1109
    .local v5, "first":I
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p2, p3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v6

    .line 1110
    .local v6, "f":Lgnu/lists/LList;
    if-eqz p3, :cond_41

    .line 1112
    invoke-static {v6, v3}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_53

    .line 1113
    .end local v6    # "f":Lgnu/lists/LList;
    .local v0, "f":Lgnu/lists/LList;
    if-nez v2, :cond_39

    .line 1114
    nop

    .line 1123
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v0

    .line 1115
    :cond_39
    :try_start_39
    invoke-virtual {v2, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_53

    .line 1116
    nop

    .line 1123
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v1

    .line 1118
    .end local v0    # "f":Lgnu/lists/LList;
    .restart local v6    # "f":Lgnu/lists/LList;
    :cond_41
    :try_start_41
    iget-object v7, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v3}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_53

    .line 1119
    nop

    .line 1123
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v0

    .end local v5    # "first":I
    .end local v6    # "f":Lgnu/lists/LList;
    :catchall_53
    move-exception v0

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v0

    .line 1126
    .end local v3    # "sf":Lkawa/lang/SyntaxForm;
    .end local v4    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_58
    instance-of v3, p1, Lgnu/lists/Pair;

    if-eqz v3, :cond_bc

    .line 1128
    move-object v3, p1

    check-cast v3, Lgnu/lists/Pair;

    .line 1129
    .local v3, "pair":Lgnu/lists/Pair;
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    .line 1130
    .local v4, "first":I
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 1131
    invoke-virtual {p0}, Lkawa/lang/Translator;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8f

    .line 1136
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eq v0, v5, :cond_83

    .line 1137
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .line 1138
    :cond_83
    new-instance v0, Lgnu/lists/Pair;

    sget-object v5, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    invoke-direct {v0, v5, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 1139
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0

    .line 1141
    :cond_8f
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1142
    .local v5, "fsize":I
    if-eqz p3, :cond_b6

    .line 1144
    move v6, v4

    .local v6, "i":I
    :goto_98
    if-ge v6, v5, :cond_b1

    .line 1146
    iget-object v7, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v3, v7, v8}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 1148
    .local v7, "npair":Lgnu/lists/Pair;
    if-nez v2, :cond_aa

    .line 1149
    move-object v1, v7

    goto :goto_ad

    .line 1151
    :cond_aa
    invoke-virtual {v2, v7}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 1152
    :goto_ad
    move-object v2, v7

    .line 1144
    .end local v7    # "npair":Lgnu/lists/Pair;
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 1154
    .end local v6    # "i":I
    :cond_b1
    iget-object v6, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->setSize(I)V

    .line 1156
    :cond_b6
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 1157
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "first":I
    .end local v5    # "fsize":I
    goto/16 :goto_8

    .line 1160
    :cond_bc
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string v3, "body is not a proper list"

    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_c7
    return-object v1
.end method

.method public scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .registers 15
    .param p1, "st"    # Ljava/lang/Object;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;

    .line 963
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_35

    .line 965
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 966
    .local v0, "sf":Lkawa/lang/SyntaxForm;
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    .line 969
    .local v1, "save_scope":Lgnu/expr/ScopeExp;
    :try_start_b
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 970
    iget-object v2, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    .line 971
    .local v2, "first":I
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 972
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_30

    .line 977
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-void

    .end local v2    # "first":I
    :catchall_30
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v2

    .line 980
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    .end local v1    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_35
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_54

    .line 982
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_40

    .line 983
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_54

    .line 986
    :cond_40
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 987
    .local v0, "vals":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    array-length v2, v0

    if-ge v1, v2, :cond_53

    .line 988
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 989
    .end local v1    # "i":I
    :cond_53
    return-void

    .line 992
    .end local v0    # "vals":[Ljava/lang/Object;
    :cond_54
    :goto_54
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_166

    .line 994
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 995
    .local v0, "st_pair":Lgnu/lists/Pair;
    iget-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 996
    .local v1, "saveContext":Lgnu/expr/Declaration;
    const/4 v2, 0x0

    .line 997
    .local v2, "syntax":Lkawa/lang/Syntax;
    iget-object v3, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 998
    .local v3, "savedScope":Lgnu/expr/ScopeExp;
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 999
    .local v4, "savedPosition":Ljava/lang/Object;
    instance-of v5, p1, Lgnu/text/SourceLocator;

    if-eqz v5, :cond_74

    invoke-virtual {p2}, Lgnu/expr/ScopeExp;->getLineNumber()I

    move-result v5

    if-gez v5, :cond_74

    .line 1000
    move-object v5, p1

    check-cast v5, Lgnu/text/SourceLocator;

    invoke-virtual {p2, v5}, Lgnu/expr/ScopeExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 1003
    :cond_74
    :try_start_74
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 1004
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_8e

    .line 1006
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 1007
    .local v6, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v7

    invoke-virtual {p0, v7}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1008
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 1011
    .end local v6    # "sf":Lkawa/lang/SyntaxForm;
    :cond_8e
    instance-of v6, v5, Lgnu/lists/Pair;

    if-eqz v6, :cond_f5

    move-object v6, v5

    check-cast v6, Lgnu/lists/Pair;

    move-object v7, v6

    .local v7, "p":Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v6, v8, :cond_f5

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_f5

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v7, v6

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_f5

    .line 1016
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    .line 1017
    .local v6, "part1":Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    .line 1018
    .local v8, "part2":Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v9

    .line 1019
    .local v9, "value1":Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v10

    .line 1020
    .local v10, "value2":Ljava/lang/Object;
    instance-of v11, v9, Ljava/lang/Class;

    if-eqz v11, :cond_f0

    instance-of v11, v10, Lgnu/mapping/Symbol;
    :try_end_d9
    .catchall {:try_start_74 .. :try_end_d9} :catchall_15a

    if-eqz v11, :cond_f0

    .line 1024
    :try_start_db
    move-object v11, v10

    check-cast v11, Lgnu/mapping/Symbol;

    invoke-static {v9, v11}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    .line 1025
    nop

    instance-of v11, v5, Lkawa/lang/Syntax;

    if-eqz v11, :cond_ef

    .line 1026
    move-object v11, v5

    check-cast v11, Lkawa/lang/Syntax;
    :try_end_eb
    .catchall {:try_start_db .. :try_end_eb} :catchall_ed

    move-object v2, v11

    goto :goto_ef

    .line 1028
    :catchall_ed
    move-exception v11

    .line 1030
    .local v11, "ex":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 1031
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_ef
    :goto_ef
    goto :goto_f5

    .line 1034
    :cond_f0
    :try_start_f0
    invoke-virtual {p0, v6, v8}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v11

    move-object v5, v11

    .line 1037
    .end local v6    # "part1":Lgnu/expr/Expression;
    .end local v7    # "p":Lgnu/lists/Pair;
    .end local v8    # "part2":Lgnu/expr/Expression;
    .end local v9    # "value1":Ljava/lang/Object;
    .end local v10    # "value2":Ljava/lang/Object;
    :cond_f5
    :goto_f5
    instance-of v6, v5, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_126

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_126

    .line 1039
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 1040
    .local v7, "func":Lgnu/expr/Expression;
    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_125

    .line 1042
    move-object v8, v7

    check-cast v8, Lgnu/expr/ReferenceExp;

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    .line 1043
    .local v8, "decl":Lgnu/expr/Declaration;
    if-eqz v8, :cond_117

    .line 1044
    invoke-virtual {p0, v8}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v6

    move-object v2, v6

    goto :goto_125

    .line 1047
    :cond_117
    invoke-virtual {p0, v5, v6}, Lkawa/lang/Translator;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1048
    nop

    instance-of v6, v5, Lkawa/lang/Syntax;

    if-eqz v6, :cond_125

    .line 1049
    move-object v6, v5

    check-cast v6, Lkawa/lang/Syntax;

    move-object v2, v6

    .line 1052
    .end local v7    # "func":Lgnu/expr/Expression;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_125
    :goto_125
    goto :goto_12e

    .line 1056
    :cond_126
    sget-object v6, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    if-ne v5, v6, :cond_12e

    .line 1057
    move-object v6, v5

    check-cast v6, Lkawa/lang/Syntax;
    :try_end_12d
    .catchall {:try_start_f0 .. :try_end_12d} :catchall_15a

    move-object v2, v6

    .line 1061
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_12e
    :goto_12e
    iget-object v5, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v3, v5, :cond_135

    .line 1062
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_135
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1064
    nop

    .line 1065
    if-eqz v2, :cond_166

    .line 1067
    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 1068
    .local v5, "save_filename":Ljava/lang/String;
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v6

    .line 1069
    .local v6, "save_line":I
    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v7

    .line 1072
    .local v7, "save_column":I
    :try_start_147
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {v2, v0, p2, p0}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_153

    .line 1078
    iput-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    invoke-virtual {p0, v5, v6, v7}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .line 1078
    :catchall_153
    move-exception v8

    iput-object v1, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    invoke-virtual {p0, v5, v6, v7}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v8

    .line 1061
    .end local v5    # "save_filename":Ljava/lang/String;
    .end local v6    # "save_line":I
    .end local v7    # "save_column":I
    :catchall_15a
    move-exception v5

    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v3, v6, :cond_162

    .line 1062
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_162
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v5

    .line 1083
    .end local v0    # "st_pair":Lgnu/lists/Pair;
    .end local v1    # "saveContext":Lgnu/expr/Declaration;
    .end local v2    # "syntax":Lkawa/lang/Syntax;
    .end local v3    # "savedScope":Lgnu/expr/ScopeExp;
    .end local v4    # "savedPosition":Ljava/lang/Object;
    :cond_166
    iget-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1084
    return-void
.end method

.method public final selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setLineOf(Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 866
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_5

    .line 867
    return-void

    .line 868
    :cond_5
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 869
    return-void
.end method

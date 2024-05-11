.class public Lgnu/kawa/lispexpr/MakeXmlElement;
.super Lkawa/lang/Syntax;
.source "MakeXmlElement.java"


# static fields
.field public static final makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

.field static final typeNamespace:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lgnu/kawa/lispexpr/MakeXmlElement;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/MakeXmlElement;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    .line 20
    const-string v1, "$make-xml$"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/MakeXmlElement;->setName(Ljava/lang/String;)V

    .line 22
    const-string v0, "gnu.mapping.Namespace"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 21
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 27
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    .line 28
    .local v2, "pair1":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "namespaceList":Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 30
    .local v3, "obj":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 31
    .local v4, "nsSeen":Z
    iget-object v5, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 32
    .local v5, "saveBindings":Lgnu/xml/NamespaceBinding;
    move-object v6, v5

    move-object v7, v6

    move v6, v4

    move-object v4, v0

    .line 33
    .end local v0    # "namespaceList":Ljava/lang/Object;
    .local v4, "namespaceList":Ljava/lang/Object;
    .local v6, "nsSeen":Z
    .local v7, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_18
    nop

    instance-of v0, v4, Lgnu/lists/Pair;

    if-eqz v0, :cond_ed

    .line 35
    if-nez v6, :cond_24

    .line 37
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->letStart()V

    .line 38
    const/4 v0, 0x1

    move v6, v0

    .line 40
    :cond_24
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    .line 41
    .local v0, "namespacePair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    .line 42
    .local v8, "namespaceNode":Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 43
    .local v9, "nsPrefix":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3b

    const/4 v10, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    :goto_3f
    move-object v9, v10

    .line 44
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 45
    .local v10, "valueList":Ljava/lang/Object;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v12, "sbuf":Ljava/lang/StringBuilder;
    :goto_49
    instance-of v13, v10, Lgnu/lists/Pair;

    if-eqz v13, :cond_a8

    .line 48
    move-object v13, v10

    check-cast v13, Lgnu/lists/Pair;

    .line 49
    .local v13, "valuePair":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    .line 51
    .local v14, "valueForm":Ljava/lang/Object;
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v11

    const/4 v15, 0x2

    if-ne v11, v15, :cond_79

    instance-of v11, v14, Lgnu/lists/Pair;

    if-eqz v11, :cond_79

    move-object v11, v14

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    if-ne v11, v15, :cond_79

    .line 55
    move-object v11, v14

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .local v11, "value":Ljava/lang/Object;
    goto :goto_83

    .line 59
    .end local v11    # "value":Ljava/lang/Object;
    :cond_79
    const/4 v11, 0x0

    invoke-virtual {v1, v13, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v11

    .line 60
    .local v11, "valueExp":Lgnu/expr/Expression;
    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    .line 62
    .local v11, "value":Ljava/lang/Object;
    :goto_83
    if-nez v11, :cond_98

    .line 64
    invoke-virtual {v1, v13}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 65
    .local v15, "savePos":Ljava/lang/Object;
    move-object/from16 v16, v2

    .end local v2    # "pair1":Lgnu/lists/Pair;
    .local v16, "pair1":Lgnu/lists/Pair;
    const/16 v2, 0x65

    move-object/from16 v17, v4

    .end local v4    # "namespaceList":Ljava/lang/Object;
    .local v17, "namespaceList":Ljava/lang/Object;
    const-string v4, "namespace URI must be literal"

    invoke-virtual {v1, v2, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 66
    invoke-virtual {v1, v15}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 67
    .end local v15    # "savePos":Ljava/lang/Object;
    goto :goto_9f

    .line 69
    .end local v16    # "pair1":Lgnu/lists/Pair;
    .end local v17    # "namespaceList":Ljava/lang/Object;
    .restart local v2    # "pair1":Lgnu/lists/Pair;
    .restart local v4    # "namespaceList":Ljava/lang/Object;
    :cond_98
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "pair1":Lgnu/lists/Pair;
    .end local v4    # "namespaceList":Ljava/lang/Object;
    .restart local v16    # "pair1":Lgnu/lists/Pair;
    .restart local v17    # "namespaceList":Ljava/lang/Object;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    :goto_9f
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 71
    .end local v11    # "value":Ljava/lang/Object;
    .end local v13    # "valuePair":Lgnu/lists/Pair;
    .end local v14    # "valueForm":Ljava/lang/Object;
    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_49

    .line 72
    .end local v16    # "pair1":Lgnu/lists/Pair;
    .end local v17    # "namespaceList":Ljava/lang/Object;
    .restart local v2    # "pair1":Lgnu/lists/Pair;
    .restart local v4    # "namespaceList":Ljava/lang/Object;
    :cond_a8
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "pair1":Lgnu/lists/Pair;
    .end local v4    # "namespaceList":Ljava/lang/Object;
    .restart local v16    # "pair1":Lgnu/lists/Pair;
    .restart local v17    # "namespaceList":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "nsUri":Ljava/lang/String;
    new-instance v4, Lgnu/xml/NamespaceBinding;

    const-string v11, ""

    if-ne v2, v11, :cond_bc

    const/4 v11, 0x0

    goto :goto_bd

    :cond_bc
    move-object v11, v2

    :goto_bd
    invoke-direct {v4, v9, v11, v7}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v7, v4

    .line 81
    if-nez v9, :cond_ca

    .line 83
    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    .line 84
    .local v4, "namespace":Lgnu/mapping/Namespace;
    const-string v9, "[default-element-namespace]"

    goto :goto_ce

    .line 88
    .end local v4    # "namespace":Lgnu/mapping/Namespace;
    :cond_ca
    invoke-static {v9, v2}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v4

    .line 90
    .restart local v4    # "namespace":Lgnu/mapping/Namespace;
    :goto_ce
    sget-object v11, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v11, v9}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 91
    .local v11, "nsSymbol":Lgnu/mapping/Symbol;
    sget-object v13, Lgnu/kawa/lispexpr/MakeXmlElement;->typeNamespace:Lgnu/bytecode/ClassType;

    new-instance v14, Lgnu/expr/QuoteExp;

    invoke-direct {v14, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v13, v14}, Lkawa/lang/Translator;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v13

    .line 93
    .local v13, "decl":Lgnu/expr/Declaration;
    const-wide/32 v14, 0x206000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 95
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 96
    .end local v0    # "namespacePair":Lgnu/lists/Pair;
    .end local v2    # "nsUri":Ljava/lang/String;
    .end local v8    # "namespaceNode":Lgnu/lists/Pair;
    .end local v9    # "nsPrefix":Ljava/lang/String;
    .end local v10    # "valueList":Ljava/lang/Object;
    .end local v11    # "nsSymbol":Lgnu/mapping/Symbol;
    .end local v12    # "sbuf":Ljava/lang/StringBuilder;
    .end local v13    # "decl":Lgnu/expr/Declaration;
    .end local v17    # "namespaceList":Ljava/lang/Object;
    .local v4, "namespaceList":Ljava/lang/Object;
    move-object/from16 v2, v16

    goto/16 :goto_18

    .line 98
    .end local v16    # "pair1":Lgnu/lists/Pair;
    .local v2, "pair1":Lgnu/lists/Pair;
    :cond_ed
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "pair1":Lgnu/lists/Pair;
    .end local v4    # "namespaceList":Ljava/lang/Object;
    .restart local v16    # "pair1":Lgnu/lists/Pair;
    .restart local v17    # "namespaceList":Ljava/lang/Object;
    new-instance v0, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object v2, v0

    .line 99
    .local v2, "mkElement":Lgnu/kawa/xml/MakeElement;
    invoke-virtual {v2, v7}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 100
    iput-object v7, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 103
    if-eqz v6, :cond_106

    .line 104
    :try_start_fe
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->letEnter()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_102

    goto :goto_106

    .line 110
    :catchall_102
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_11c

    .line 105
    :cond_106
    :goto_106
    move-object/from16 v4, p1

    :try_start_108
    invoke-static {v4, v2, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 106
    .local v0, "result":Lgnu/expr/Expression;
    if-eqz v6, :cond_117

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v8
    :try_end_116
    .catchall {:try_start_108 .. :try_end_116} :catchall_11b

    goto :goto_118

    :cond_117
    move-object v8, v0

    .line 110
    :goto_118
    iput-object v5, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    return-object v8

    .end local v0    # "result":Lgnu/expr/Expression;
    :catchall_11b
    move-exception v0

    :goto_11c
    iput-object v5, v1, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    goto :goto_120

    :goto_11f
    throw v0

    :goto_120
    goto :goto_11f
.end method

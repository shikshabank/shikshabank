.class public Lkawa/standard/module_static;
.super Lkawa/lang/Syntax;
.source "module_static.java"


# static fields
.field public static final module_static:Lkawa/standard/module_static;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lkawa/standard/module_static;

    invoke-direct {v0}, Lkawa/standard/module_static;-><init>()V

    sput-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    .line 11
    const-string v1, "module-static"

    invoke-virtual {v0, v1}, Lkawa/standard/module_static;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .registers 20
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 16
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 17
    .local v2, "list":Ljava/lang/Object;
    instance-of v3, v0, Lgnu/expr/ModuleExp;

    const/4 v4, 0x1

    const/16 v5, 0x65

    if-nez v3, :cond_30

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' not at module level"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 20
    return v4

    .line 22
    :cond_30
    move-object v3, v0

    check-cast v3, Lgnu/expr/ModuleExp;

    .line 23
    .local v3, "mexp":Lgnu/expr/ModuleExp;
    instance-of v6, v2, Lgnu/lists/Pair;

    const v7, 0x8000

    const/high16 v8, 0x10000

    if-eqz v6, :cond_62

    move-object v6, v2

    check-cast v6, Lgnu/lists/Pair;

    move-object v9, v6

    .end local p1    # "st":Lgnu/lists/Pair;
    .local v9, "st":Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v10, :cond_64

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_64

    .line 27
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v10, :cond_5d

    .line 28
    invoke-virtual {v3, v8}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_130

    .line 30
    :cond_5d
    invoke-virtual {v3, v7}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_130

    .line 23
    .end local v9    # "st":Lgnu/lists/Pair;
    .restart local p1    # "st":Lgnu/lists/Pair;
    :cond_62
    move-object/from16 v9, p1

    .line 32
    .end local p1    # "st":Lgnu/lists/Pair;
    .restart local v9    # "st":Lgnu/lists/Pair;
    :cond_64
    instance-of v6, v2, Lgnu/lists/Pair;

    const/4 v10, 0x0

    const/16 v11, 0x27

    if-eqz v6, :cond_da

    move-object v6, v2

    check-cast v6, Lgnu/lists/Pair;

    move-object v9, v6

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v12, :cond_da

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_da

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v9, v6

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    const-string v12, "quote"

    invoke-virtual {v1, v6, v12}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 37
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    move-object v9, v6

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v6, v12, :cond_bb

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/mapping/SimpleSymbol;

    if-eqz v6, :cond_bb

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "init-run"

    if-ne v6, v12, :cond_bb

    .line 42
    invoke-virtual {v3, v7}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 43
    const/high16 v6, 0x40000

    invoke-virtual {v3, v6}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto/16 :goto_130

    .line 47
    :cond_bb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid quoted symbol for \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 48
    return v10

    .line 53
    :cond_da
    invoke-virtual {v3, v8}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 56
    :goto_dd
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v6, :cond_130

    .line 58
    instance-of v6, v2, Lgnu/lists/Pair;

    if-eqz v6, :cond_111

    move-object v6, v2

    check-cast v6, Lgnu/lists/Pair;

    move-object v9, v6

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/mapping/Symbol;

    if-nez v6, :cond_f2

    goto :goto_111

    .line 64
    :cond_f2
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/Symbol;

    .line 65
    .local v6, "symbol":Lgnu/mapping/Symbol;
    invoke-virtual {v0, v6}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v12

    .line 66
    .local v12, "decl":Lgnu/expr/Declaration;
    const-wide/16 v13, 0x200

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_107

    .line 67
    invoke-static {v12, v9}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 68
    :cond_107
    const-wide/16 v13, 0x800

    invoke-virtual {v12, v13, v14}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 69
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 70
    .end local v6    # "symbol":Lgnu/mapping/Symbol;
    .end local v12    # "decl":Lgnu/expr/Declaration;
    goto :goto_dd

    .line 61
    :cond_111
    :goto_111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid syntax in \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 62
    return v10

    .line 72
    :cond_130
    :goto_130
    invoke-virtual {v3, v8}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_141

    invoke-virtual {v3, v7}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_141

    .line 74
    const-string v6, "inconsistent module-static specifiers"

    invoke-virtual {v1, v5, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 75
    :cond_141
    return v4
.end method

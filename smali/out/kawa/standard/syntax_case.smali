.class public Lkawa/standard/syntax_case;
.super Lkawa/lang/Syntax;
.source "syntax_case.java"


# static fields
.field public static final syntax_case:Lkawa/standard/syntax_case;


# instance fields
.field call_error:Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lkawa/standard/syntax_case;

    invoke-direct {v0}, Lkawa/standard/syntax_case;-><init>()V

    sput-object v0, Lkawa/standard/syntax_case;->syntax_case:Lkawa/standard/syntax_case;

    .line 11
    const-string v1, "syntax-case"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_case;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "kind"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 166
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 167
    .local v0, "tr":Lkawa/lang/Translator;
    if-eqz v0, :cond_2d

    .line 169
    invoke-virtual {v0}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v1

    .line 170
    .local v1, "syntax":Lkawa/lang/Syntax;
    if-nez v1, :cond_11

    const-string v2, "some syntax"

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "name":Ljava/lang/String;
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no matching case while expanding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 168
    .end local v1    # "syntax":Lkawa/lang/Syntax;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no match in syntax-case"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 20

    .line 18
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 19
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v0, v5, :cond_54

    .line 27
    new-array v0, v8, [Lgnu/expr/Expression;

    .line 28
    new-instance v3, Lgnu/expr/QuoteExp;

    const-string v5, "syntax-case"

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v7

    .line 29
    new-instance v3, Lgnu/expr/ReferenceExp;

    iget-object v2, v2, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v3, v0, v6

    .line 30
    iget-object v2, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    if-nez v2, :cond_4c

    .line 32
    const-string v2, "kawa.standard.syntax_case"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 33
    new-array v3, v8, [Lgnu/bytecode/Type;

    .line 34
    sget-object v5, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v7

    .line 35
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v5, v3, v6

    .line 36
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v6, 0x9

    const-string v7, "error"

    invoke-virtual {v2, v7, v3, v5, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 39
    new-instance v3, Lgnu/expr/PrimProcedure;

    invoke-direct {v3, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    iput-object v3, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    .line 41
    :cond_4c
    new-instance v2, Lgnu/expr/ApplyExp;

    iget-object v3, v1, Lkawa/standard/syntax_case;->call_error:Lgnu/expr/PrimProcedure;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v2

    .line 43
    :cond_54
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    :try_start_58
    instance-of v9, v0, Lgnu/lists/Pair;

    if-eqz v9, :cond_160

    move-object v9, v0

    check-cast v9, Lgnu/lists/Pair;

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lgnu/lists/Pair;

    if-nez v10, :cond_69

    goto/16 :goto_160

    .line 50
    :cond_69
    check-cast v9, Lgnu/lists/Pair;

    .line 51
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v10

    .line 52
    iget-object v11, v3, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    iput-object v11, v10, Lkawa/lang/PatternScope;->matchArray:Lgnu/expr/Declaration;

    .line 53
    invoke-virtual {v3, v10}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 57
    :goto_7b
    instance-of v13, v12, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_87

    .line 59
    move-object v11, v12

    check-cast v11, Lkawa/lang/SyntaxForm;

    .line 60
    invoke-interface {v11}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_7b

    .line 63
    :cond_87
    instance-of v13, v12, Lgnu/lists/Pair;

    if-nez v13, :cond_95

    .line 64
    const-string v0, "missing syntax-case output expression"

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_91
    .catchall {:try_start_58 .. :try_end_91} :catchall_168

    .line 111
    :goto_91
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v0

    .line 66
    :cond_95
    :try_start_95
    iget-object v13, v10, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    .line 67
    new-instance v14, Lkawa/lang/SyntaxPattern;

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    iget-object v15, v2, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    invoke-direct {v14, v9, v15, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 69
    invoke-virtual {v14}, Lkawa/lang/SyntaxPattern;->varCount()I

    move-result v9

    .line 70
    iget v15, v2, Lkawa/standard/syntax_case_work;->maxVars:I

    if-le v9, v15, :cond_b0

    .line 71
    iput v9, v2, Lkawa/standard/syntax_case_work;->maxVars:I

    .line 73
    :cond_b0
    new-instance v15, Lgnu/expr/BlockExp;

    invoke-direct {v15}, Lgnu/expr/BlockExp;-><init>()V

    .line 74
    const/4 v8, 0x4

    new-array v8, v8, [Lgnu/expr/Expression;

    .line 75
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v8, v7

    .line 76
    new-instance v6, Lgnu/expr/ReferenceExp;

    iget-object v7, v2, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v7, 0x1

    aput-object v6, v8, v7

    .line 77
    new-instance v6, Lgnu/expr/ReferenceExp;

    iget-object v7, v3, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    invoke-direct {v6, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v7, 0x2

    aput-object v6, v8, v7

    .line 78
    const/4 v6, 0x3

    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v14

    invoke-direct {v7, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v7, v8, v6

    .line 79
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/PrimProcedure;

    sget-object v14, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    invoke-direct {v7, v14, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 82
    sub-int/2addr v9, v13

    .line 83
    new-array v4, v9, [Lgnu/expr/Expression;

    .line 84
    nop

    :goto_ef
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_f8

    .line 85
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v7, v4, v9

    goto :goto_ef

    .line 86
    :cond_f8
    iput-object v4, v10, Lkawa/lang/PatternScope;->inits:[Lgnu/expr/Expression;

    .line 89
    check-cast v12, Lgnu/lists/Pair;

    .line 90
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v7, :cond_109

    .line 91
    invoke-virtual {v3, v12, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_133

    .line 94
    :cond_109
    invoke-virtual {v3, v12, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 95
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_158

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_124

    goto :goto_158

    .line 98
    :cond_124
    new-instance v8, Lgnu/expr/IfExp;

    invoke-virtual {v3, v7, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    new-instance v9, Lgnu/expr/ExitExp;

    invoke-direct {v9, v15}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct {v8, v4, v7, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v4, v8

    .line 101
    :goto_133
    invoke-virtual {v10, v4}, Lkawa/lang/PatternScope;->setBody(Lgnu/expr/Expression;)V

    .line 103
    invoke-virtual {v3, v10}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 104
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 105
    new-instance v4, Lgnu/expr/IfExp;

    new-instance v7, Lgnu/expr/ExitExp;

    invoke-direct {v7, v15}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/BlockExp;)V

    invoke-direct {v4, v6, v10, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Lgnu/expr/BlockExp;->setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    :try_end_153
    .catchall {:try_start_95 .. :try_end_153} :catchall_168

    .line 107
    nop

    .line 111
    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v15

    .line 97
    :cond_158
    :goto_158
    :try_start_158
    const-string v0, "syntax-case:  bad clause"

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_91

    .line 49
    :cond_160
    :goto_160
    const-string v0, "syntax-case:  bad clause list"

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0
    :try_end_166
    .catchall {:try_start_158 .. :try_end_166} :catchall_168

    goto/16 :goto_91

    .line 111
    :catchall_168
    move-exception v0

    invoke-virtual {v3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_16e

    :goto_16d
    throw v0

    :goto_16e
    goto :goto_16d
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 15
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 117
    new-instance v0, Lkawa/standard/syntax_case_work;

    invoke-direct {v0}, Lkawa/standard/syntax_case_work;-><init>()V

    .line 119
    .local v0, "work":Lkawa/standard/syntax_case_work;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_ae

    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_ae

    .line 122
    const/4 v2, 0x2

    new-array v3, v2, [Lgnu/expr/Expression;

    .line 123
    .local v3, "linits":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/LetExp;

    invoke-direct {v4, v3}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 124
    .local v4, "let":Lgnu/expr/LetExp;
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    iput-object v6, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    .line 126
    iget-object v6, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 127
    .local v6, "matchArrayOuter":Lgnu/expr/Declaration;
    invoke-virtual {v4, v5}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 128
    .local v7, "matchArray":Lgnu/expr/Declaration;
    sget-object v8, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 129
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 130
    iput-object v7, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 131
    iget-object v9, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    invoke-virtual {v9, v8}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 132
    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 134
    move-object p1, v1

    check-cast p1, Lgnu/lists/Pair;

    .line 135
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v3, v10

    .line 136
    iget-object v9, v0, Lkawa/standard/syntax_case_work;->inputExpression:Lgnu/expr/Declaration;

    aget-object v11, v3, v10

    invoke-virtual {v9, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 137
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 139
    move-object p1, v1

    check-cast p1, Lgnu/lists/Pair;

    .line 140
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v5, p2}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lkawa/standard/syntax_case_work;->literal_identifiers:[Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v1, v0, p2}, Lkawa/standard/syntax_case;->rewriteClauses(Ljava/lang/Object;Lkawa/standard/syntax_case_work;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 145
    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 147
    const-string v5, "kawa.lang.SyntaxPattern"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    const-string v9, "allocVars"

    invoke-virtual {v5, v9, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    .line 149
    .local v5, "allocVars":Lgnu/bytecode/Method;
    new-array v2, v2, [Lgnu/expr/Expression;

    .line 150
    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/QuoteExp;

    iget v11, v0, Lkawa/standard/syntax_case_work;->maxVars:I

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    invoke-direct {v9, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v9, v2, v10

    .line 151
    if-nez v6, :cond_98

    .line 152
    sget-object v9, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v9, v2, v8

    goto :goto_9f

    .line 154
    :cond_98
    new-instance v9, Lgnu/expr/ReferenceExp;

    invoke-direct {v9, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v9, v2, v8

    .line 155
    :goto_9f
    new-instance v9, Lgnu/expr/ApplyExp;

    invoke-direct {v9, v5, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v9, v3, v8

    .line 156
    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 157
    iput-object v6, p2, Lkawa/lang/Translator;->matchArray:Lgnu/expr/Declaration;

    .line 158
    return-object v4

    .line 160
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v3    # "linits":[Lgnu/expr/Expression;
    .end local v4    # "let":Lgnu/expr/LetExp;
    .end local v5    # "allocVars":Lgnu/bytecode/Method;
    .end local v6    # "matchArrayOuter":Lgnu/expr/Declaration;
    .end local v7    # "matchArray":Lgnu/expr/Declaration;
    :cond_ae
    const-string v2, "insufficiant arguments to syntax-case"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

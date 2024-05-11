.class public abstract Lgnu/kawa/lispexpr/LispLanguage;
.super Lgnu/expr/Language;
.source "LispLanguage.java"


# static fields
.field public static final bracket_apply_sym:Lgnu/mapping/Symbol;

.field public static final bracket_list_sym:Lgnu/mapping/Symbol;

.field public static getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation; = null

.field public static final lookup_sym:Lgnu/mapping/Symbol;

.field public static final quasiquote_sym:Ljava/lang/String; = "quasiquote"

.field public static final quote_sym:Ljava/lang/String; = "quote"

.field public static final unquote_sym:Ljava/lang/String; = "unquote"

.field public static final unquotesplicing_sym:Ljava/lang/String; = "unquote-splicing"


# instance fields
.field public defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 25
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$lookup$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    .line 28
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$bracket-list$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_list_sym:Lgnu/mapping/Symbol;

    .line 32
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$bracket-apply$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->bracket_apply_sym:Lgnu/mapping/Symbol;

    .line 34
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    const-string v1, "gnu.kawa.functions.GetNamedPart"

    const-string v2, "getNamedPart"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    .line 36
    invoke-virtual {v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 39
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->createReadTable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    return-void
.end method

.method public static langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "sym"    # Ljava/lang/Object;

    .line 176
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, p0}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createReadTable()Lgnu/kawa/lispexpr/ReadTable;
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .registers 7
    .param p1, "mod"    # Lgnu/expr/ModuleExp;
    .param p2, "fvalue"    # Ljava/lang/Object;
    .param p3, "fld"    # Lgnu/bytecode/Field;

    .line 129
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 130
    .local v0, "fdecl":Lgnu/expr/Declaration;
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 131
    .local v1, "isFinal":Z
    :goto_f
    if-eqz v1, :cond_18

    instance-of v2, p2, Lkawa/lang/Syntax;

    if-eqz v2, :cond_18

    .line 132
    invoke-virtual {v0}, Lgnu/expr/Declaration;->setSyntax()V

    .line 133
    :cond_18
    return-object v0
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "fname"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 146
    .local v0, "property":Ljava/lang/Object;
    :goto_a
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    iget-object v2, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v2, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-static {v1, v2, v0, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    .line 149
    .local v1, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v1}, Lgnu/kawa/reflect/StaticFieldLocation;->setSyntax()V

    .line 150
    return-void
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 3
    .param p1, "sym"    # Ljava/lang/Object;

    .line 181
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 182
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispLanguage;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0

    .line 183
    :cond_c
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    return-object v0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .registers 5
    .param p1, "lexer"    # Lgnu/text/Lexer;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .line 51
    new-instance v0, Lkawa/lang/Translator;

    invoke-direct {v0, p0, p2, p3}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .registers 4
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 46
    new-instance v0, Lgnu/kawa/lispexpr/LispReader;

    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "func"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;

    .line 165
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 3
    .param p1, "exps"    # [Lgnu/expr/Expression;

    .line 160
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, p1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .registers 14
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 57
    move-object v0, p1

    check-cast v0, Lkawa/lang/Translator;

    .line 58
    .local v0, "tr":Lkawa/lang/Translator;
    iget-object v1, v0, Lkawa/lang/Translator;->lexer:Lgnu/text/Lexer;

    .line 59
    .local v1, "lexer":Lgnu/text/Lexer;
    iget-object v2, v0, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    .line 60
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    new-instance v3, Lgnu/mapping/Values;

    invoke-direct {v3}, Lgnu/mapping/Values;-><init>()V

    .line 61
    .local v3, "forms":Lgnu/mapping/Values;
    move-object v4, v1

    check-cast v4, Lgnu/kawa/lispexpr/LispReader;

    .line 62
    .local v4, "reader":Lgnu/kawa/lispexpr/LispReader;
    invoke-static {v0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v5

    .line 65
    .local v5, "saveComp":Lgnu/expr/Compilation;
    :try_start_13
    iget-object v6, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eqz v6, :cond_1f

    .line 67
    iget-object v6, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    invoke-virtual {v0, v6, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 68
    const/4 v6, 0x0

    iput-object v6, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 72
    :cond_1f
    :goto_1f
    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LispReader;->readCommand()Ljava/lang/Object;

    move-result-object v6

    .line 73
    .local v6, "sexp":Ljava/lang/Object;
    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_86

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_32

    .line 75
    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_56

    .line 76
    nop

    .line 115
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return v9

    .line 79
    :cond_32
    :try_start_32
    invoke-virtual {v0, v6, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 80
    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_75

    .line 82
    invoke-virtual {v0}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 87
    :goto_43
    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v7

    .line 88
    .local v7, "ch":I
    if-ltz v7, :cond_56

    const/16 v10, 0xd

    if-eq v7, v10, :cond_56

    const/16 v10, 0xa

    if-ne v7, v10, :cond_52

    .line 89
    goto :goto_56

    .line 90
    :cond_52
    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 91
    .end local v7    # "ch":I
    goto :goto_43

    .line 101
    .end local v6    # "sexp":Ljava/lang/Object;
    :cond_56
    :goto_56
    invoke-virtual {v1}, Lgnu/text/Lexer;->peek()I

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_63

    .line 102
    const-string v6, "An unexpected close paren was read."

    invoke-virtual {v1, v6}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 105
    :cond_63
    invoke-virtual {v0, v2}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V

    .line 107
    and-int/lit8 v6, p2, 0x8

    if-nez v6, :cond_6c

    .line 109
    iput v9, v0, Lkawa/lang/Translator;->firstForm:I

    .line 111
    :cond_6c
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lkawa/lang/Translator;->setState(I)V
    :try_end_70
    .catchall {:try_start_32 .. :try_end_70} :catchall_86

    .line 115
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 116
    nop

    .line 117
    return v8

    .line 95
    .restart local v6    # "sexp":Ljava/lang/Object;
    :cond_75
    and-int/lit8 v7, p2, 0x8

    if-eqz v7, :cond_85

    :try_start_79
    invoke-virtual {v0}, Lkawa/lang/Translator;->getState()I

    move-result v7
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_86

    const/4 v9, 0x2

    if-lt v7, v9, :cond_85

    .line 98
    nop

    .line 115
    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return v8

    .line 100
    .end local v6    # "sexp":Ljava/lang/Object;
    :cond_85
    goto :goto_1f

    .line 115
    :catchall_86
    move-exception v6

    invoke-static {v5}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    goto :goto_8c

    :goto_8b
    throw v6

    :goto_8c
    goto :goto_8b
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 123
    move-object v0, p1

    check-cast v0, Lkawa/lang/Translator;

    .line 124
    .local v0, "tr":Lkawa/lang/Translator;
    invoke-virtual {v0}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 125
    return-void
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Lgnu/expr/Keyword;

    return v0
.end method

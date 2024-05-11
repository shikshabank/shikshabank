.class public Lkawa/lib/kawa/regex;
.super Lgnu/expr/ModuleBody;
.source "regex.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nregex.scm\nScheme\n*S Scheme\n*F\n+ 1 regex.scm\n/u2/home/jis/ai2-kawa/kawa/lib/kawa/regex.scm\n*L\n1#1,82:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/kawa/regex;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final regex$Mnmatch:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnquote:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnsplit:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-replace*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "regex-replace"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "regex-split"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "regex-match-positions"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "regex-match"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "regex-match?"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "regex-quote"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "loop"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/kawa/regex;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lkawa/lib/kawa/regex;

    invoke-direct {v7}, Lkawa/lib/kawa/regex;-><init>()V

    sput-object v7, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x2

    const/16 v10, 0x1001

    invoke-direct {v8, v7, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/kawa/regex;->regex$Mnquote:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x3

    const/16 v9, 0x4002

    invoke-direct {v6, v7, v8, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/kawa/regex;->regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x6

    invoke-direct {v5, v7, v6, v4, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/kawa/regex;->regex$Mnmatch:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x9

    invoke-direct {v4, v7, v5, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/kawa/regex;->regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xc

    const/16 v5, 0x2002

    invoke-direct {v3, v7, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/kawa/regex;->regex$Mnsplit:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xd

    const/16 v4, 0x3003

    invoke-direct {v2, v7, v3, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/kawa/regex;->regex$Mnreplace:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    invoke-direct {v1, v7, v2, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/kawa/regex;->regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

    invoke-virtual {v7}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z
    .registers 8
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 9
    nop

    .line 11
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_6
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_b

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_20

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, -0x2

    const-string v0, "rex"

    invoke-direct {p2, p1, v0, p3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    move-object v1, v3

    .line 12
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_20
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 13
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 14
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    return v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .registers 11
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 16
    nop

    .line 18
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_6
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_b

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_20

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, -0x2

    const-string v0, "rex"

    invoke-direct {p2, p1, v0, p3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v6, v2

    move-object v1, v6

    .line 19
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_20
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 22
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "igroup":I
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v3, "r":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 24
    :goto_34
    if-gez v2, :cond_37

    .line 29
    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    goto :goto_54

    .line 25
    .restart local v2    # "igroup":I
    :cond_37
    nop

    .line 26
    nop

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .local v4, "start":I
    move v4, v5

    .line 28
    if-gez v4, :cond_43

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4b

    .line 29
    :cond_43
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v4    # "start":I
    :goto_4b
    invoke-static {v5, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .restart local v3    # "r":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    :cond_52
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_54
    return-object v3
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .registers 12
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 33
    nop

    .line 35
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_6
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_b

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_20

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, -0x2

    const-string v0, "rex"

    invoke-direct {p2, p1, v0, p3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v7, v2

    move-object v1, v7

    .line 36
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_20
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 37
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "igroup":I
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v3, "r":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 41
    :goto_34
    if-gez v2, :cond_37

    .line 46
    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    goto :goto_5c

    .line 42
    .restart local v2    # "igroup":I
    :cond_37
    nop

    .line 43
    nop

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .local v4, "start":I
    move v4, v5

    .line 45
    if-gez v4, :cond_43

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_53

    .line 46
    :cond_43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .end local v4    # "start":I
    :goto_53
    invoke-static {v5, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .restart local v3    # "r":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    :cond_5a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_5c
    return-object v3
.end method

.method public static regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 6
    nop

    .line 7
    if-nez p0, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 55
    nop

    .line 56
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    :try_start_6
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_c

    move-object v2, v1

    move-object v3, p0

    goto :goto_20

    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "repl":Ljava/lang/Object;
    :catch_c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "rex"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "repl":Ljava/lang/Object;
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 57
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_20
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 58
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 59
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v1

    .line 60
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 62
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    .line 61
    :cond_4c
    if-nez p2, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_53
    invoke-virtual {v2, v3, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    goto :goto_5f

    .line 58
    :cond_5e
    move-object v1, p1

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :goto_5f
    return-object v1
.end method

.method public static regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 68
    new-instance v0, Lkawa/lib/kawa/regex$frame;

    invoke-direct {v0}, Lkawa/lib/kawa/regex$frame;-><init>()V

    iput-object p2, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    .line 69
    instance-of v1, p0, Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    :try_start_c
    move-object v1, p0

    check-cast v1, Ljava/util/regex/Pattern;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_22

    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "repl":Ljava/lang/Object;
    :catch_10
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "rex"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "repl":Ljava/lang/Object;
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_22
    move-object v3, v2

    .line 70
    .local v1, "rex":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iput-object v3, v0, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    .line 69
    nop

    .line 71
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v0, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    .line 72
    iget-object v3, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    invoke-static {v3}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 73
    iget-object v2, v0, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    iput-object v2, v0, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    invoke-virtual {v0}, Lkawa/lib/kawa/regex$frame;->lambda1loop()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 82
    :cond_42
    iget-object v3, v0, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    iget-object v0, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    if-nez v0, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4d
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    :goto_51
    return-object v0
.end method

.method public static regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .registers 6
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 50
    nop

    .line 51
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    :try_start_6
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_b

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_20

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    :catch_b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "rex"

    invoke-direct {v0, p1, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    move-object v1, v3

    .line 52
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_20
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "parts":[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 6
    :try_start_5
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_c

    invoke-static {p2}, Lkawa/lib/kawa/regex;->regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "regex-quote"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_16
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_52

    .line 50
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    :try_start_b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-split"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :sswitch_1b
    :try_start_1b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-match-positions"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_2b
    :try_start_2b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_32

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_32
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-match"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_3b
    :try_start_3b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_49

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_48

    :cond_46
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_48
    return-object p1

    :catch_49
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-match?"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_3b
        0x6 -> :sswitch_2b
        0x9 -> :sswitch_1b
        0xc -> :sswitch_b
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "regex-match-positions"

    const-string v1, "regex-match"

    const-string v2, "regex-match?"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_8e

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_12
    :try_start_12
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_19

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_19
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p4, "regex-replace*"

    invoke-direct {p2, p1, p4, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 55
    :sswitch_22
    :try_start_22
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_24} :catch_29

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_29
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p4, "regex-replace"

    invoke-direct {p2, p1, p4, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :sswitch_32
    :try_start_32
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_34} :catch_47

    :try_start_34
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_3b} :catch_40

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :catch_40
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_47
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_4e
    :try_start_4e
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_50} :catch_63

    :try_start_50
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_57} :catch_5c

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :catch_5c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :catch_63
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_6a
    :try_start_6a
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_6c} :catch_86

    :try_start_6c
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_73
    .catch Ljava/lang/ClassCastException; {:try_start_6c .. :try_end_73} :catch_7f

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_7c

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7e

    :cond_7c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7e
    return-object p1

    .line 10
    :catch_7f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :catch_86
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_6a
        0x6 -> :sswitch_4e
        0x9 -> :sswitch_32
        0xd -> :sswitch_22
        0xe -> :sswitch_12
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const-string v0, "regex-match-positions"

    const-string v1, "regex-match"

    const-string v2, "regex-match?"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_98

    .line 33
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_13
    :try_start_13
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_15} :catch_36

    :try_start_15
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_1c} :catch_2f

    :try_start_1c
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_23} :catch_28

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :catch_28
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_36
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_3d
    :try_start_3d
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_3d .. :try_end_3f} :catch_60

    :try_start_3f
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_3f .. :try_end_46} :catch_59

    :try_start_46
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_4d} :catch_52

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :catch_52
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_59
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :catch_60
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_67
    :try_start_67
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_69
    .catch Ljava/lang/ClassCastException; {:try_start_67 .. :try_end_69} :catch_91

    :try_start_69
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_70
    .catch Ljava/lang/ClassCastException; {:try_start_69 .. :try_end_70} :catch_8a

    :try_start_70
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_70 .. :try_end_77} :catch_83

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_80

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_82

    :cond_80
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_82
    return-object p1

    .line 10
    :catch_83
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_8a
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :catch_91
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :sswitch_data_98
    .sparse-switch
        0x3 -> :sswitch_67
        0x6 -> :sswitch_3d
        0x9 -> :sswitch_13
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_12
    const p1, -0xbffff

    return p1

    :cond_16
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_48

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 50
    :sswitch_f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1c

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1c
    return v3

    .line 33
    :sswitch_1d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2a

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2a
    return v3

    .line 16
    :sswitch_2b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_38

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_38
    return v3

    .line 9
    :sswitch_39
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_46

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_46
    return v3

    nop

    :sswitch_data_48
    .sparse-switch
        0x3 -> :sswitch_39
        0x6 -> :sswitch_2b
        0x9 -> :sswitch_1d
        0xc -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_60

    .line 9
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 68
    :sswitch_f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1e
    return v3

    .line 55
    :sswitch_1f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2e
    return v3

    .line 33
    :sswitch_2f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_3e
    return v3

    .line 16
    :sswitch_3f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_4e
    return v3

    .line 9
    :sswitch_4f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_5e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_5e
    return v3

    nop

    :sswitch_data_60
    .sparse-switch
        0x3 -> :sswitch_4f
        0x6 -> :sswitch_3f
        0x9 -> :sswitch_2f
        0xd -> :sswitch_1f
        0xe -> :sswitch_f
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_46

    .line 9
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 33
    :sswitch_f
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_20

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_20
    return v3

    .line 16
    :sswitch_21
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_32

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_32
    return v3

    .line 9
    :sswitch_33
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_44

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_44
    return v3

    nop

    :sswitch_data_46
    .sparse-switch
        0x3 -> :sswitch_33
        0x6 -> :sswitch_21
        0x9 -> :sswitch_f
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    nop

    .line 9
    nop

    .line 16
    nop

    .line 33
    nop

    .line 50
    nop

    .line 55
    nop

    .line 68
    return-void
.end method

.class public abstract Lgnu/expr/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final FUNCTION_NAMESPACE:I = 0x2

.field public static final NAMESPACE_PREFIX_NAMESPACE:I = 0x4

.field public static final PARSE_CURRENT_NAMES:I = 0x2

.field public static final PARSE_EXPLICIT:I = 0x40

.field public static final PARSE_FOR_APPLET:I = 0x10

.field public static final PARSE_FOR_EVAL:I = 0x3

.field public static final PARSE_FOR_SERVLET:I = 0x20

.field public static final PARSE_IMMEDIATE:I = 0x1

.field public static final PARSE_ONE_LINE:I = 0x4

.field public static final PARSE_PROLOG:I = 0x8

.field public static final VALUE_NAMESPACE:I = 0x1

.field protected static final current:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Lgnu/expr/Language;",
            ">;"
        }
    .end annotation
.end field

.field static envCounter:I

.field protected static env_counter:I

.field protected static global:Lgnu/expr/Language;

.field static languages:[[Ljava/lang/String;

.field public static requirePedantic:Z


# instance fields
.field protected environ:Lgnu/mapping/Environment;

.field protected userEnv:Lgnu/mapping/Environment;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 26
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    .line 36
    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V

    .line 62
    const/16 v0, 0x8

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "scheme"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, ".scm"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, ".sc"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "kawa.standard.Scheme"

    const/4 v8, 0x3

    aput-object v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "krl"

    aput-object v4, v3, v5

    const-string v4, ".krl"

    aput-object v4, v3, v6

    const-string v4, "gnu.kawa.brl.BRL"

    aput-object v4, v3, v7

    aput-object v3, v1, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v9, "brl"

    aput-object v9, v3, v5

    const-string v9, ".brl"

    aput-object v9, v3, v6

    aput-object v4, v3, v7

    aput-object v3, v1, v7

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const-string v9, "emacs"

    aput-object v9, v4, v5

    const-string v9, "elisp"

    aput-object v9, v4, v6

    const-string v9, "emacs-lisp"

    aput-object v9, v4, v7

    const-string v9, ".el"

    aput-object v9, v4, v8

    const-string v9, "gnu.jemacs.lang.ELisp"

    aput-object v9, v4, v2

    aput-object v4, v1, v8

    new-array v4, v3, [Ljava/lang/String;

    const-string v9, "xquery"

    aput-object v9, v4, v5

    const-string v9, ".xquery"

    aput-object v9, v4, v6

    const-string v9, ".xq"

    aput-object v9, v4, v7

    const-string v9, ".xql"

    aput-object v9, v4, v8

    const-string v9, "gnu.xquery.lang.XQuery"

    aput-object v9, v4, v2

    aput-object v4, v1, v2

    new-array v4, v8, [Ljava/lang/String;

    const-string v9, "q2"

    aput-object v9, v4, v5

    const-string v9, ".q2"

    aput-object v9, v4, v6

    const-string v9, "gnu.q2.lang.Q2"

    aput-object v9, v4, v7

    aput-object v4, v1, v3

    new-array v4, v2, [Ljava/lang/String;

    const-string v9, "xslt"

    aput-object v9, v4, v5

    const-string v9, "xsl"

    aput-object v9, v4, v6

    const-string v9, ".xsl"

    aput-object v9, v4, v7

    const-string v9, "gnu.kawa.xslt.XSLT"

    aput-object v9, v4, v8

    const/4 v9, 0x6

    aput-object v4, v1, v9

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "commonlisp"

    aput-object v4, v0, v5

    const-string v4, "common-lisp"

    aput-object v4, v0, v6

    const-string v4, "clisp"

    aput-object v4, v0, v7

    const-string v4, "lisp"

    aput-object v4, v0, v8

    const-string v4, ".lisp"

    aput-object v4, v0, v2

    const-string v2, ".lsp"

    aput-object v2, v0, v3

    const-string v2, ".cl"

    aput-object v2, v0, v9

    const-string v2, "gnu.commonlisp.lang.CommonLisp"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    aput-object v0, v1, v3

    sput-object v1, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 954
    sput v5, Lgnu/expr/Language;->env_counter:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Lgnu/expr/KawaConvert;->getInstance()Lgnu/lists/Convert;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/Convert;->setInstance(Lgnu/lists/Convert;)V

    .line 224
    return-void
.end method

.method public static detect(Lgnu/mapping/InPort;)Lgnu/expr/Language;
    .registers 3
    .param p0, "port"    # Lgnu/mapping/InPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lgnu/mapping/InPort;->mark(I)V

    .line 129
    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/InPort;->readLine(Ljava/lang/StringBuffer;C)V

    .line 130
    invoke-virtual {p0}, Lgnu/mapping/InPort;->reset()V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    return-object v1
.end method

.method public static detect(Ljava/io/InputStream;)Lgnu/expr/Language;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_8

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 110
    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v1, :cond_19

    .line 111
    goto :goto_2d

    .line 112
    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 113
    .local v2, "c":I
    if-ltz v2, :cond_2d

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2d

    const/16 v3, 0xd

    if-ne v2, v3, :cond_28

    .line 114
    goto :goto_2d

    .line 115
    :cond_28
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    .end local v2    # "c":I
    goto :goto_12

    .line 117
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->detect(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    return-object v1
.end method

.method public static detect(Ljava/lang/String;)Lgnu/expr/Language;
    .registers 9
    .param p0, "line"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "str":Ljava/lang/String;
    const-string v1, "kawa:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "k":I
    if-ltz v1, :cond_2f

    .line 145
    add-int/lit8 v2, v1, 0x5

    .line 146
    .local v2, "i":I
    move v3, v2

    .line 148
    .local v3, "j":I
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_22

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 150
    :cond_22
    if-le v3, v2, :cond_2f

    .line 152
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "w":Ljava/lang/String;
    invoke-static {v4}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v5

    .line 154
    .local v5, "lang":Lgnu/expr/Language;
    if-eqz v5, :cond_2f

    .line 155
    return-object v5

    .line 159
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "w":Ljava/lang/String;
    .end local v5    # "lang":Lgnu/expr/Language;
    :cond_2f
    const-string v2, "-*- scheme -*-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "scheme"

    if-ltz v2, :cond_3e

    .line 160
    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2

    .line 161
    :cond_3e
    const-string v2, "-*- xquery -*-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "xquery"

    if-ltz v2, :cond_4d

    .line 162
    invoke-static {v4}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2

    .line 163
    :cond_4d
    const-string v2, "-*- emacs-lisp -*-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5c

    .line 164
    const-string v2, "elisp"

    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2

    .line 165
    :cond_5c
    const-string v2, "-*- common-lisp -*-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_ac

    const-string v2, "-*- lisp -*-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6d

    goto :goto_ac

    .line 169
    :cond_6d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    const/4 v7, 0x1

    if-ne v5, v6, :cond_7f

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_92

    :cond_7f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_97

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "xquery "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 171
    :cond_92
    invoke-static {v4}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2

    .line 172
    :cond_97
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_aa

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_aa

    .line 173
    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2

    .line 174
    :cond_aa
    const/4 v2, 0x0

    return-object v2

    .line 167
    :cond_ac
    :goto_ac
    const-string v2, "common-lisp"

    invoke-static {v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultLanguage()Lgnu/expr/Language;
    .registers 2

    .line 32
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Language;

    .line 33
    .local v0, "lang":Lgnu/expr/Language;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    sget-object v1, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    :goto_e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/expr/Language;
    .registers 9
    .param p0, "name"    # Ljava/lang/String;

    .line 193
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v0, v0

    .line 194
    .local v0, "langCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_6
    if-ge v1, v0, :cond_31

    .line 196
    sget-object v4, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 197
    .local v4, "names":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 198
    .local v5, "nameCount":I
    move v6, v5

    .local v6, "j":I
    :cond_10
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2e

    .line 200
    if-eqz p0, :cond_1e

    aget-object v7, v4, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 205
    :cond_1e
    :try_start_1e
    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_24} :catch_2d

    .line 213
    .local v2, "langClass":Ljava/lang/Class;
    nop

    .line 214
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-static {v3, v2}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;

    move-result-object v3

    return-object v3

    .line 207
    .end local v2    # "langClass":Ljava/lang/Class;
    :catch_2d
    move-exception v7

    .line 194
    .end local v4    # "names":[Ljava/lang/String;
    .end local v5    # "nameCount":I
    .end local v6    # "j":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 218
    .end local v1    # "i":I
    :cond_31
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;)Lgnu/expr/Language;
    .registers 7
    .param p0, "langName"    # Ljava/lang/String;
    .param p1, "langClass"    # Ljava/lang/Class;

    .line 231
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_55

    .line 234
    .local v1, "args":[Ljava/lang/Class;
    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "capitalizedName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "methodName":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_44

    .line 244
    .end local v0    # "capitalizedName":Ljava/lang/String;
    .end local v3    # "methodName":Ljava/lang/String;
    .local v4, "method":Ljava/lang/reflect/Method;
    goto :goto_4c

    .line 240
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_44
    move-exception v0

    move-object v3, v2

    .line 242
    .local v0, "ex":Ljava/lang/Exception;
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_46
    const-string v4, "getInstance"

    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 245
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :goto_4c
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Language;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_55

    return-object v0

    .line 247
    .end local v1    # "args":[Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_55
    move-exception v0

    .line 249
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 251
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_66

    .line 252
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "th":Ljava/lang/Throwable;
    goto :goto_67

    .line 254
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_66
    move-object v1, v0

    .line 256
    .restart local v1    # "th":Ljava/lang/Throwable;
    :goto_67
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 179
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 180
    .local v0, "dot":I
    if-lez v0, :cond_13

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    .line 183
    .local v1, "lang":Lgnu/expr/Language;
    if-eqz v1, :cond_13

    .line 184
    return-object v1

    .line 186
    .end local v1    # "lang":Lgnu/expr/Language;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getLanguages()[[Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    return-object v0
.end method

.method public static registerLanguage([Ljava/lang/String;)V
    .registers 5
    .param p0, "langMapping"    # [Ljava/lang/String;

    .line 92
    sget-object v0, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[Ljava/lang/String;

    .line 93
    .local v1, "newLangs":[[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p0, v1, v0

    .line 95
    sput-object v1, Lgnu/expr/Language;->languages:[[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static restoreCurrent(Lgnu/expr/Language;)V
    .registers 2
    .param p0, "saved"    # Lgnu/expr/Language;

    .line 52
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static setCurrentLanguage(Lgnu/expr/Language;)V
    .registers 2
    .param p0, "language"    # Lgnu/expr/Language;

    .line 40
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static declared-synchronized setDefaults(Lgnu/expr/Language;)V
    .registers 4
    .param p0, "lang"    # Lgnu/expr/Language;

    const-class v0, Lgnu/expr/Language;

    monitor-enter v0

    .line 840
    :try_start_3
    invoke-static {p0}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 841
    sput-object p0, Lgnu/expr/Language;->global:Lgnu/expr/Language;

    .line 845
    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {}, Lgnu/expr/BuiltinEnvironment;->getInstance()Lgnu/expr/BuiltinEnvironment;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 846
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Environment;->setGlobal(Lgnu/mapping/Environment;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 847
    :cond_19
    monitor-exit v0

    return-void

    .line 839
    .end local p0    # "lang":Lgnu/expr/Language;
    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;
    .registers 3
    .param p0, "language"    # Lgnu/expr/Language;

    .line 45
    sget-object v0, Lgnu/expr/Language;->current:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Language;

    .line 46
    .local v1, "save":Lgnu/expr/Language;
    invoke-virtual {v0, p0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    return-object v1
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 573
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 575
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 576
    .local v0, "t":Lgnu/bytecode/Type;
    if-nez v0, :cond_1b

    .line 577
    return-object v1

    .line 578
    :cond_1b
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_2a

    .line 580
    .end local v0    # "t":Lgnu/bytecode/Type;
    :cond_20
    invoke-static {p0}, Lgnu/bytecode/Type;->isValidJavaTypeName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 581
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 584
    .restart local v0    # "t":Lgnu/bytecode/Type;
    :goto_2a
    return-object v0

    .line 583
    .end local v0    # "t":Lgnu/bytecode/Type;
    :cond_2b
    return-object v1
.end method

.method public static unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 8
    .param p0, "t1"    # Lgnu/bytecode/Type;
    .param p1, "t2"    # Lgnu/bytecode/Type;

    .line 692
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_6

    .line 693
    sget-object p0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 694
    :cond_6
    sget-object v0, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_c

    .line 695
    sget-object p1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 696
    :cond_c
    if-ne p0, p1, :cond_f

    .line 697
    return-object p0

    .line 698
    :cond_f
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_5c

    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_5c

    .line 700
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    .local v0, "sig1":C
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 702
    .local v1, "sig2":C
    if-ne v0, v1, :cond_2b

    .line 703
    return-object p0

    .line 704
    :cond_2b
    const/16 v2, 0x4a

    const/16 v3, 0x53

    const/16 v4, 0x42

    const/16 v5, 0x49

    if-eq v0, v4, :cond_39

    if-eq v0, v3, :cond_39

    if-ne v0, v5, :cond_3e

    :cond_39
    if-eq v1, v5, :cond_5b

    if-ne v1, v2, :cond_3e

    goto :goto_5b

    .line 706
    :cond_3e
    if-eq v1, v4, :cond_44

    if-eq v1, v3, :cond_44

    if-ne v1, v5, :cond_49

    :cond_44
    if-eq v0, v5, :cond_5a

    if-ne v0, v2, :cond_49

    goto :goto_5a

    .line 708
    :cond_49
    const/16 v2, 0x44

    const/16 v3, 0x46

    if-ne v0, v3, :cond_52

    if-ne v1, v2, :cond_52

    .line 709
    return-object p1

    .line 710
    :cond_52
    if-ne v1, v3, :cond_57

    if-ne v0, v2, :cond_57

    .line 711
    return-object p0

    .line 712
    :cond_57
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v2

    .line 707
    :cond_5a
    :goto_5a
    return-object p0

    .line 705
    :cond_5b
    :goto_5b
    return-object p1

    .line 716
    .end local v0    # "sig1":C
    .end local v1    # "sig2":C
    :cond_5c
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v0
.end method


# virtual methods
.method public final asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .registers 4
    .param p1, "spec"    # Ljava/lang/Object;

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v0

    .line 617
    .local v0, "type":Lgnu/bytecode/Type;
    if-nez v0, :cond_b

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/Type;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method public booleanObject(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "b"    # Z

    .line 269
    if-eqz p1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0
.end method

.method public coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 830
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 835
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .registers 20
    .param p1, "mod"    # Lgnu/expr/ModuleExp;
    .param p2, "fvalue"    # Ljava/lang/Object;
    .param p3, "fld"    # Lgnu/bytecode/Field;

    .line 721
    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "fname":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 723
    .local v2, "ftype":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    .line 728
    .local v3, "isAlias":Z
    const/4 v4, 0x0

    .line 729
    .local v4, "externalAccess":Z
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    const/4 v7, 0x1

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    .line 730
    .local v5, "isFinal":Z
    :goto_1d
    const-string v8, "$instance"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    move v9, v8

    .local v9, "isImportedInstance":Z
    if-eqz v8, :cond_28

    .line 731
    move-object v8, v1

    .local v8, "fdname":Ljava/lang/Object;
    goto :goto_4f

    .line 732
    .end local v8    # "fdname":Ljava/lang/Object;
    :cond_28
    if-eqz v5, :cond_36

    instance-of v8, v0, Lgnu/mapping/Named;

    if-eqz v8, :cond_36

    .line 733
    move-object v8, v0

    check-cast v8, Lgnu/mapping/Named;

    invoke-interface {v8}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "fdname":Ljava/lang/Object;
    goto :goto_4f

    .line 737
    .end local v8    # "fdname":Ljava/lang/Object;
    :cond_36
    const-string v8, "$Prvt$"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 739
    const/4 v4, 0x1

    .line 740
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    :cond_47
    invoke-static {v1, v7}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 744
    .restart local v8    # "fdname":Ljava/lang/Object;
    :goto_4f
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_65

    .line 746
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleExp;->getNamespaceUri()Ljava/lang/String;

    move-result-object v10

    .line 747
    .local v10, "uri":Ljava/lang/String;
    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 749
    .local v11, "sname":Ljava/lang/String;
    if-nez v10, :cond_61

    .line 750
    invoke-static {v11}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v8

    goto :goto_65

    .line 752
    :cond_61
    invoke-static {v10, v11}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 754
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "sname":Ljava/lang/String;
    :cond_65
    :goto_65
    if-eqz v3, :cond_6c

    sget-object v10, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v11, p0

    goto :goto_76

    :cond_6c
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    .line 756
    .local v10, "dtype":Lgnu/bytecode/Type;
    :goto_76
    move-object/from16 v12, p1

    invoke-virtual {v12, v8, v10}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v13

    .line 757
    .local v13, "fdecl":Lgnu/expr/Declaration;
    invoke-virtual/range {p3 .. p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_86

    const/4 v14, 0x1

    goto :goto_87

    :cond_86
    const/4 v14, 0x0

    .line 758
    .local v14, "isStatic":Z
    :goto_87
    if-eqz v3, :cond_a2

    .line 760
    invoke-virtual {v13, v7}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 761
    instance-of v7, v2, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_c5

    move-object v7, v2

    check-cast v7, Lgnu/bytecode/ClassType;

    const-string v15, "gnu.mapping.ThreadLocation"

    invoke-virtual {v7, v15}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 763
    const-wide/32 v6, 0x10000000

    invoke-virtual {v13, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_c5

    .line 765
    :cond_a2
    if-eqz v5, :cond_c5

    instance-of v6, v2, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_c5

    .line 767
    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 768
    invoke-virtual {v13, v7}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    goto :goto_c5

    .line 769
    :cond_b4
    move-object v6, v2

    check-cast v6, Lgnu/bytecode/ClassType;

    const-string v7, "gnu.mapping.Namespace"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->isSubclass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 770
    const-wide/32 v6, 0x200000

    invoke-virtual {v13, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 772
    :cond_c5
    :goto_c5
    if-eqz v14, :cond_cc

    .line 773
    const-wide/16 v6, 0x800

    invoke-virtual {v13, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 774
    :cond_cc
    move-object/from16 v6, p3

    iput-object v6, v13, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 775
    if-eqz v5, :cond_db

    if-nez v3, :cond_db

    .line 776
    move-object v7, v1

    .end local v1    # "fname":Ljava/lang/String;
    .local v7, "fname":Ljava/lang/String;
    const-wide/16 v0, 0x4000

    invoke-virtual {v13, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_dc

    .line 775
    .end local v7    # "fname":Ljava/lang/String;
    .restart local v1    # "fname":Ljava/lang/String;
    :cond_db
    move-object v7, v1

    .line 777
    .end local v1    # "fname":Ljava/lang/String;
    .restart local v7    # "fname":Ljava/lang/String;
    :goto_dc
    if-eqz v9, :cond_e4

    .line 778
    const-wide/32 v0, 0x40000000

    invoke-virtual {v13, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 779
    :cond_e4
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 780
    if-eqz v4, :cond_f0

    .line 781
    const-wide/32 v0, 0x80020

    invoke-virtual {v13, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 782
    :cond_f0
    return-object v13
.end method

.method protected defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "fname"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    .line 327
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;

    .line 352
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/Language;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method protected defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "fname"    # Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 339
    .local v0, "property":Ljava/lang/Object;
    :goto_a
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 340
    .local v1, "sym":Lgnu/mapping/Symbol;
    iget-object v2, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v2, v1, v0, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v2

    .line 342
    .local v2, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v2}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    .line 343
    return-void
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "sym"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/Object;

    .line 318
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 319
    .local v0, "s":Lgnu/mapping/Symbol;
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public final defineFunction(Lgnu/mapping/Named;)V
    .registers 6
    .param p1, "proc"    # Lgnu/mapping/Named;

    .line 358
    invoke-interface {p1}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    goto :goto_14

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 361
    .local v1, "sym":Lgnu/mapping/Symbol;
    :goto_14
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 363
    .local v2, "property":Ljava/lang/Object;
    :goto_1e
    iget-object v3, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v3, v1, v2, p1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method public defineFunction(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "proc"    # Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 373
    .local v0, "property":Ljava/lang/Object;
    :goto_a
    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 821
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfNEq()V

    .line 822
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 823
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 824
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 825
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 826
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "value"    # Z
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 811
    if-eqz p1, :cond_5

    sget-object v0, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    goto :goto_7

    :cond_5
    sget-object v0, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    :goto_7
    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 813
    return-void
.end method

.method public final eval(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .registers 5
    .param p1, "port"    # Lgnu/mapping/InPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 879
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 880
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v1

    .line 883
    .local v1, "oldIndex":I
    :try_start_8
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V

    .line 884
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object v2

    .line 886
    :catchall_10
    move-exception v2

    .line 888
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 889
    throw v2
.end method

.method public final eval(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 873
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    goto :goto_d

    :cond_8
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    :goto_d
    invoke-virtual {p0, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final eval(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    .registers 8
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 938
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 939
    .local v0, "messages":Lgnu/text/SourceMessages;
    invoke-static {p0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v1

    .line 942
    .local v1, "saveLang":Lgnu/expr/Language;
    const/4 v2, 0x3

    :try_start_a
    invoke-virtual {p0, p1, v0, v2}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v2

    .line 943
    .local v2, "comp":Lgnu/expr/Compilation;
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v2, v4, v4}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_41

    .line 947
    nop

    .end local v2    # "comp":Lgnu/expr/Compilation;
    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 948
    nop

    .line 949
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_22

    .line 952
    return-void

    .line 950
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid syntax in eval form:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :catchall_41
    move-exception v2

    invoke-static {v1}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    throw v2
.end method

.method public eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V
    .registers 7
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 922
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    goto :goto_d

    :cond_8
    new-instance v0, Lgnu/mapping/InPort;

    invoke-direct {v0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    .line 923
    .local v0, "port":Lgnu/mapping/InPort;
    :goto_d
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    .line 924
    .local v1, "ctx":Lgnu/mapping/CallContext;
    iget-object v2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 927
    .local v2, "save":Lgnu/lists/Consumer;
    :try_start_13
    iput-object p2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 928
    invoke-virtual {p0, v0, v1}, Lgnu/expr/Language;->eval(Lgnu/mapping/InPort;Lgnu/mapping/CallContext;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 932
    iput-object v2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 933
    nop

    .line 934
    return-void

    .line 932
    :catchall_1c
    move-exception v3

    iput-object v2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v3
.end method

.method public final eval(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 916
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 917
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/Consumer;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 910
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Lgnu/lists/Consumer;)V

    .line 911
    return-void
.end method

.method public final eval(Ljava/lang/String;Lgnu/lists/PrintConsumer;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "out"    # Lgnu/lists/PrintConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 904
    invoke-virtual {p0, p2}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->eval(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 905
    return-void
.end method

.method public final eval(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 896
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->eval(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 897
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 567
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .registers 5
    .param p1, "lexer"    # Lgnu/text/Lexer;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .line 454
    new-instance v0, Lgnu/expr/Compilation;

    invoke-direct {v0, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;
    .registers 3
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 388
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 389
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-object v0

    .line 390
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "fld"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 379
    return-object v1

    .line 380
    :cond_8
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 382
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    return-object v0

    .line 383
    :cond_1b
    return-object v1
.end method

.method public final getEnvironment()Lgnu/mapping/Environment;
    .registers 2

    .line 298
    iget-object v0, p0, Lgnu/expr/Language;->userEnv:Lgnu/mapping/Environment;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .registers 3
    .param p1, "readable"    # Z

    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLangEnvironment()Lgnu/mapping/Environment;
    .registers 2

    .line 308
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public final getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 556
    invoke-virtual {p1}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 558
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 559
    .local v0, "clas":Ljava/lang/Class;
    if-eqz v0, :cond_11

    .line 560
    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 562
    .end local v0    # "clas":Ljava/lang/Class;
    :cond_11
    return-object p1
.end method

.method public abstract getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 445
    .local v1, "dot":I
    if-ltz v1, :cond_16

    .line 446
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_16
    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .registers 3
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method public final getNewEnvironment()Lgnu/mapping/Environment;
    .registers 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "environment-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lgnu/expr/Language;->envCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/Language;->envCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 435
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    goto :goto_d

    :cond_8
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 437
    .local v0, "oport":Lgnu/mapping/OutPort;
    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 438
    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .registers 5

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "property":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 853
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 854
    :cond_9
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v2, "default-prompter"

    invoke-virtual {p0, v2}, Lgnu/expr/Language;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Procedure;

    .line 856
    .local v1, "prompter":Lgnu/mapping/Procedure;
    if-eqz v1, :cond_1d

    .line 857
    return-object v1

    .line 859
    :cond_1d
    new-instance v2, Lgnu/expr/SimplePrompter;

    invoke-direct {v2}, Lgnu/expr/SimplePrompter;-><init>()V

    return-object v2
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;
    .registers 12
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "lenient"    # Z

    .line 627
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_24

    .line 629
    move-object v0, p1

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 630
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/bytecode/Type;

    if-eqz v1, :cond_13

    .line 631
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/Type;

    return-object v1

    .line 632
    :cond_13
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1f

    .line 633
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 634
    :cond_1f
    invoke-virtual {p0, v0, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 636
    .end local v0    # "value":Ljava/lang/Object;
    :cond_24
    instance-of v0, p1, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_f5

    .line 638
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 639
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 640
    .local v2, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_b3

    .line 643
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p1

    .line 644
    instance-of v5, p1, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_5d

    const-wide/16 v5, 0x4000

    invoke-virtual {v2, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 648
    move-object v1, p1

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 649
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v4

    return-object v4

    .line 651
    .end local v1    # "val":Ljava/lang/Object;
    :cond_5d
    instance-of v5, p1, Lgnu/expr/ClassExp;

    if-nez v5, :cond_a8

    instance-of v5, p1, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_66

    goto :goto_a8

    .line 656
    :cond_66
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_9a

    instance-of v5, p1, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_9a

    .line 659
    move-object v5, p1

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 660
    .local v5, "val":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/mapping/Location;

    if-eqz v6, :cond_99

    .line 662
    move-object v6, v5

    check-cast v6, Lgnu/mapping/Location;

    .line 663
    .local v6, "loc":Lgnu/mapping/Location;
    invoke-virtual {v6}, Lgnu/mapping/Location;->isBound()Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 664
    invoke-virtual {v6}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 665
    :cond_8d
    instance-of v7, v6, Lgnu/mapping/Named;

    if-nez v7, :cond_92

    .line 666
    return-object v1

    .line 667
    :cond_92
    move-object v7, v6

    check-cast v7, Lgnu/mapping/Named;

    invoke-interface {v7}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v3

    .line 669
    .end local v5    # "val":Ljava/lang/Object;
    .end local v6    # "loc":Lgnu/mapping/Location;
    :cond_99
    goto :goto_b3

    .line 670
    :cond_9a
    const-wide/32 v5, 0x10000

    invoke-virtual {v2, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 671
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 653
    :cond_a8
    :goto_a8
    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 654
    move-object v1, p1

    check-cast v1, Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v1

    return-object v1

    .line 673
    :cond_b3
    :goto_b3
    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 674
    .restart local v5    # "val":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/bytecode/Type;

    if-eqz v6, :cond_c3

    .line 675
    move-object v1, v5

    check-cast v1, Lgnu/bytecode/Type;

    return-object v1

    .line 676
    :cond_c3
    instance-of v6, v5, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v6, :cond_cf

    .line 677
    move-object v1, v5

    check-cast v1, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v1

    return-object v1

    .line 678
    :cond_cf
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 679
    .local v6, "len":I
    const/4 v7, 0x2

    if-le v6, v7, :cond_f4

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_f4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_f4

    .line 681
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 682
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/Object;
    .end local v6    # "len":I
    :cond_f4
    goto :goto_fe

    .line 683
    :cond_f5
    instance-of v0, p1, Lgnu/expr/ClassExp;

    if-nez v0, :cond_ff

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_fe

    goto :goto_ff

    .line 687
    :cond_fe
    :goto_fe
    return-object v1

    .line 685
    :cond_ff
    :goto_ff
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "clas"    # Ljava/lang/Class;

    .line 551
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeFor(Ljava/lang/Object;Z)Lgnu/bytecode/Type;
    .registers 5
    .param p1, "spec"    # Ljava/lang/Object;
    .param p2, "lenient"    # Z

    .line 594
    instance-of v0, p1, Lgnu/bytecode/Type;

    if-eqz v0, :cond_8

    .line 595
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    return-object v0

    .line 596
    :cond_8
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_14

    .line 597
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 598
    :cond_14
    if-eqz p2, :cond_38

    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_2f

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_2f

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2b
    instance-of v0, p1, Lgnu/lists/CharSeq;

    if-eqz v0, :cond_38

    .line 603
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 604
    :cond_38
    instance-of v0, p1, Lgnu/mapping/Namespace;

    if-eqz v0, :cond_5b

    .line 606
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_5b

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 608
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 610
    .end local v0    # "uri":Ljava/lang/String;
    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 589
    invoke-static {p1}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .registers 4
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "namespace"    # I

    .line 806
    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasSeparateFunctionNamespace()Z
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 264
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public loadClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 399
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_36

    .line 404
    .local v0, "clas":Ljava/lang/Class;
    nop

    .line 407
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, "inst":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 409
    instance-of v2, v1, Lgnu/expr/ModuleBody;

    if-eqz v2, :cond_1a

    .line 410
    move-object v2, v1

    check-cast v2, Lgnu/expr/ModuleBody;

    invoke-virtual {v2}, Lgnu/expr/ModuleBody;->run()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1c

    .line 415
    .end local v1    # "inst":Ljava/lang/Object;
    :cond_1a
    nop

    .line 416
    return-void

    .line 412
    :catch_1c
    move-exception v1

    .line 414
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lgnu/mapping/WrappedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 401
    .end local v0    # "clas":Ljava/lang/Class;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_36
    move-exception v0

    const/4 v1, 0x0

    .line 403
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    .local v1, "clas":Ljava/lang/Class;
    throw v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupBuiltin(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 5
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 312
    iget-object v0, p0, Lgnu/expr/Language;->environ:Lgnu/mapping/Environment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public noValue()Ljava/lang/Object;
    .registers 2

    .line 275
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;
    .registers 6
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .registers 6
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "options"    # I
    .param p4, "info"    # Lgnu/expr/ModuleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .registers 6
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "info"    # Lgnu/expr/ModuleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p3}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    .registers 10
    .param p1, "lexer"    # Lgnu/text/Lexer;
    .param p2, "options"    # I
    .param p3, "info"    # Lgnu/expr/ModuleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 514
    .local v0, "messages":Lgnu/text/SourceMessages;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lgnu/expr/Language;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v1, p0}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v1

    goto :goto_16

    :cond_11
    new-instance v1, Lgnu/expr/NameLookup;

    invoke-direct {v1, p0}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    .line 517
    .local v1, "lexical":Lgnu/expr/NameLookup;
    :goto_16
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 518
    .local v2, "immediate":Z
    :goto_1e
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Language;->getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;

    move-result-object v4

    .line 519
    .local v4, "tr":Lgnu/expr/Compilation;
    sget-boolean v5, Lgnu/expr/Language;->requirePedantic:Z

    if-eqz v5, :cond_28

    .line 520
    iput-boolean v3, v4, Lgnu/expr/Compilation;->pedantic:Z

    .line 521
    :cond_28
    if-nez v2, :cond_2c

    .line 522
    iput-boolean v3, v4, Lgnu/expr/Compilation;->mustCompile:Z

    .line 523
    :cond_2c
    iput-boolean v2, v4, Lgnu/expr/Compilation;->immediate:Z

    .line 524
    iput p2, v4, Lgnu/expr/Compilation;->langOptions:I

    .line 525
    and-int/lit8 v5, p2, 0x40

    if-eqz v5, :cond_36

    .line 526
    iput-boolean v3, v4, Lgnu/expr/Compilation;->explicit:Z

    .line 527
    :cond_36
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_3d

    .line 528
    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 529
    :cond_3d
    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    .line 530
    if-eqz p3, :cond_45

    .line 531
    invoke-virtual {p3, v4}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 532
    :cond_45
    invoke-virtual {p0, v4, p2}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 533
    const/4 v3, 0x0

    return-object v3

    .line 534
    :cond_4d
    invoke-virtual {v4}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ne v5, v3, :cond_57

    .line 535
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 536
    :cond_57
    return-object v4
.end method

.method public abstract parse(Lgnu/expr/Compilation;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .registers 2
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 547
    return-void
.end method

.method public runAsApplication([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;

    .line 958
    invoke-static {p0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 959
    invoke-static {p1}, Lkawa/repl;->main([Ljava/lang/String;)V

    .line 960
    return-void
.end method

.class public Lkawa/lang/AutoloadSyntax;
.super Lkawa/lang/Syntax;
.source "AutoloadSyntax.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field className:Ljava/lang/String;

.field env:Lgnu/mapping/Environment;

.field loaded:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/Environment;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "env"    # Lgnu/mapping/Environment;

    .line 40
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkawa/lang/AutoloadSyntax;->env:Lgnu/mapping/Environment;

    .line 43
    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lkawa/lang/GenericError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while autoloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    const-string v2, ""

    goto :goto_28

    :cond_20
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method load()V
    .registers 5

    .line 80
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "name":Ljava/lang/String;
    :try_start_4
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lkawa/lang/Syntax;

    if-eqz v2, :cond_25

    .line 86
    move-object v2, v1

    check-cast v2, Lkawa/lang/Syntax;

    iput-object v2, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    .line 87
    if-eqz v0, :cond_68

    invoke-virtual {v2}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_68

    .line 88
    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v2, v0}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    goto :goto_68

    .line 91
    :cond_25
    const-string v2, "failed to autoload valid syntax object "

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_2a} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_2a} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2a} :catch_54
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_2a} :catch_32
    .catch Lgnu/mapping/WrongArguments; {:try_start_4 .. :try_end_2a} :catch_2b

    goto :goto_68

    .line 101
    .end local v1    # "value":Ljava/lang/Object;
    :catch_2b
    move-exception v1

    .line 102
    .local v1, "ex":Lgnu/mapping/WrongArguments;
    const-string v2, "type error"

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_69

    .line 99
    .end local v1    # "ex":Lgnu/mapping/WrongArguments;
    :catch_32
    move-exception v1

    .line 100
    .local v1, "e":Lgnu/mapping/UnboundLocationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing symbol \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .end local v1    # "e":Lgnu/mapping/UnboundLocationException;
    goto :goto_68

    .line 97
    :catch_54
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "illegal access in class "

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_68

    .line 95
    :catch_5b
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/InstantiationException;
    const-string v2, "failed to instantiate class "

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .end local v1    # "ex":Ljava/lang/InstantiationException;
    goto :goto_68

    .line 93
    :catch_62
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "failed to find class "

    invoke-direct {p0, v2}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    .line 102
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_68
    :goto_68
    nop

    .line 103
    :goto_69
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .line 47
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/AutoloadSyntax;->setName(Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 5
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 124
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v0, :cond_1c

    .line 128
    :try_start_4
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_7
    .catch Lkawa/lang/GenericError; {:try_start_4 .. :try_end_7} :catch_12
    .catch Lgnu/mapping/WrongType; {:try_start_4 .. :try_end_7} :catch_8

    .line 137
    goto :goto_1c

    .line 134
    :catch_8
    move-exception v0

    .line 136
    .local v0, "e":Lgnu/mapping/WrongType;
    invoke-virtual {v0}, Lgnu/mapping/WrongType;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 130
    .end local v0    # "e":Lgnu/mapping/WrongType;
    :catch_12
    move-exception v0

    .line 132
    .local v0, "e":Lkawa/lang/GenericError;
    invoke-virtual {v0}, Lkawa/lang/GenericError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 139
    .end local v0    # "e":Lkawa/lang/GenericError;
    :cond_1c
    :goto_1c
    iget-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 140
    .local v0, "saveSyntax":Lkawa/lang/Syntax;
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    iput-object v1, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 143
    :try_start_22
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v1, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2b

    .line 147
    iput-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object v1

    :catchall_2b
    move-exception v1

    iput-object v0, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw v1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .registers 6
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 107
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v0, :cond_11

    .line 111
    :try_start_4
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_7} :catch_8

    .line 117
    goto :goto_11

    .line 113
    :catch_8
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 116
    return-void

    .line 119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_11
    :goto_11
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v0, p1, p2, p3}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 53
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "#<syntax "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 56
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    :cond_1e
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-eqz v1, :cond_28

    .line 60
    const-string v1, "autoloaded>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 63
    :cond_28
    const-string v1, "autoload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :goto_37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

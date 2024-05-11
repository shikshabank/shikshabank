.class public Lgnu/kawa/slib/ppfile$frame0;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile$frame;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nppfile.scm\nScheme\n*S Scheme\n*F\n+ 1 ppfile.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm\n*L\n34#1,31:34\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field port:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/ppfile$frame;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/ppfile.scm:34"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/ppfile$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 34
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 34
    const-string v0, "char=?"

    .line 35
    nop

    .line 37
    nop

    .line 45
    nop

    .line 53
    nop

    .line 37
    nop

    .line 64
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    nop

    .line 38
    :goto_10
    invoke-static {v1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v2, :cond_1c

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_aa

    :cond_1c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_aa

    :cond_20
    const/4 v2, 0x1

    :try_start_21
    move-object v3, v1

    check-cast v3, Lgnu/text/Char;
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_24} :catch_ed

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharWhitespace(Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 40
    sget-object v1, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_3e
    sget-object v3, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    const/4 v4, 0x2

    :try_start_41
    move-object v5, v1

    check-cast v5, Lgnu/text/Char;
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_41 .. :try_end_44} :catch_e6

    invoke-static {v3, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 43
    nop

    .line 45
    nop

    .line 46
    :goto_4c
    invoke-static {v1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz v2, :cond_57

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_59

    :cond_57
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    :goto_59
    goto :goto_aa

    .line 46
    :cond_5a
    sget-object v2, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    :try_start_5c
    check-cast v1, Lgnu/text/Char;
    :try_end_5e
    .catch Ljava/lang/ClassCastException; {:try_start_5c .. :try_end_5e} :catch_8c

    invoke-static {v2, v1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 48
    sget-object v1, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    .line 51
    :cond_78
    sget-object v1, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4c

    .line 47
    :catch_8c
    move-exception p1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, p1, v0, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 44
    :cond_93
    nop

    .line 53
    nop

    .line 54
    iget-object v1, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    :try_start_97
    check-cast v1, Lgnu/mapping/InPort;
    :try_end_99
    .catch Ljava/lang/ClassCastException; {:try_start_97 .. :try_end_99} :catch_dd

    invoke-static {v1}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    if-eqz v2, :cond_a8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_aa

    :cond_a8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 63
    :goto_aa
    return-object p1

    .line 57
    :cond_ab
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, p0, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    iget-object v3, v3, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v3, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_db

    .line 61
    sget-object v1, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v2, p0, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    :cond_db
    goto/16 :goto_10

    .line 54
    :catch_dd
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "read"

    invoke-direct {v0, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 42
    :catch_e6
    move-exception p1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, p1, v0, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 39
    :catch_ed
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "char-whitespace?"

    invoke-direct {v0, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_f7

    :goto_f6
    throw v0

    :goto_f7
    goto :goto_f6
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 34
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

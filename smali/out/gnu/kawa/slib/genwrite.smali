.class public Lgnu/kawa/slib/genwrite;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngenwrite.scm\nScheme\n*S Scheme\n*F\n+ 1 genwrite.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/genwrite.scm\n*L\n6#1,230:6\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/genwrite;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/math/IntNum;

.field static final Lit16:Lgnu/math/IntNum;

.field static final Lit17:Lgnu/math/IntNum;

.field static final Lit18:Lgnu/math/IntNum;

.field static final Lit19:Lgnu/math/IntNum;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final generic$Mnwrite:Lgnu/expr/ModuleMethod;

.field public static final reverse$Mnstring$Mnappend:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "reverse-string-append"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/genwrite;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "generic-write"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/genwrite;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "unquote-splicing"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "unquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "quasiquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-DO"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-BEGIN"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-LET"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-AND"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-CASE"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-COND"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-IF"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-LAMBDA"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-expr-list"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "pp-expr"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    const/16 v2, 0x32

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit18:Lgnu/math/IntNum;

    const/4 v2, 0x1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    const/16 v2, 0x8

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit16:Lgnu/math/IntNum;

    const/4 v2, 0x7

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit15:Lgnu/math/IntNum;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "do"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "let"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "or"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "and"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "case"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "cond"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "set!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "if"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "define"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "letrec"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "let*"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "lambda"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    const/16 v2, 0xa

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/genwrite;->Lit0:Lgnu/text/Char;

    new-instance v2, Lgnu/kawa/slib/genwrite;

    invoke-direct {v2}, Lgnu/kawa/slib/genwrite;-><init>()V

    sput-object v2, Lgnu/kawa/slib/genwrite;->$instance:Lgnu/kawa/slib/genwrite;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xc

    const/16 v5, 0x4004

    invoke-direct {v3, v2, v4, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/genwrite;->generic$Mnwrite:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xd

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v3, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/genwrite;->reverse$Mnstring$Mnappend:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "isDisplay"    # Ljava/lang/Object;
    .param p2, "width"    # Ljava/lang/Object;
    .param p3, "output"    # Ljava/lang/Object;

    .line 6
    new-instance v0, Lgnu/kawa/slib/genwrite$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/genwrite$frame;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    move-object/from16 v2, p2

    iput-object v2, v0, Lgnu/kawa/slib/genwrite$frame;->width:Ljava/lang/Object;

    move-object/from16 v3, p3

    iput-object v3, v0, Lgnu/kawa/slib/genwrite$frame;->output:Ljava/lang/Object;

    .line 8
    nop

    .line 15
    nop

    .line 18
    nop

    .line 26
    nop

    .line 29
    nop

    .line 52
    nop

    .line 8
    iget-object v4, v0, Lgnu/kawa/slib/genwrite$frame;->width:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_74

    .line 215
    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit0:Lgnu/text/Char;

    invoke-static {v4, v5}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    .line 52
    move-object v6, v5

    .local v6, "col":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    move-object/from16 v8, p0

    .local v8, "obj":Ljava/lang/Object;
    move-object v7, v0

    new-instance v9, Lgnu/kawa/slib/genwrite$frame0;

    invoke-direct {v9}, Lgnu/kawa/slib/genwrite$frame0;-><init>()V

    iput-object v7, v9, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    .line 54
    nop

    .line 61
    nop

    .line 67
    nop

    .line 83
    iget-object v10, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    .line 103
    nop

    .line 111
    nop

    .line 115
    nop

    .line 132
    nop

    .line 163
    iget-object v11, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    .line 166
    iget-object v12, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    .line 169
    iget-object v13, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    .line 172
    iget-object v14, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    .line 175
    iget-object v15, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    .line 178
    iget-object v1, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    .line 181
    iget-object v2, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    .line 186
    iget-object v3, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    .line 189
    move-object/from16 v16, v7

    .end local v7    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    .local v16, "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    iget-object v7, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    .line 194
    nop

    .line 196
    nop

    .line 198
    nop

    .line 200
    iput-object v7, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    iput-object v3, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    iput-object v2, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    iput-object v1, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    iput-object v15, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    iput-object v14, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    iput-object v13, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    iput-object v12, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    iput-object v11, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    iput-object v10, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    .line 54
    nop

    .line 212
    iget-object v1, v9, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {v9, v8, v6, v5, v1}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v6    # "col":Ljava/lang/Object;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v16    # "closureEnv":Lgnu/kawa/slib/genwrite$frame;
    invoke-virtual {v0, v4, v1}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p0

    goto :goto_7c

    .line 216
    :cond_74
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7c
    return-object v0
.end method

.method public static lambda23revStringAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p0, "l"    # Ljava/lang/Object;
    .param p1, "i"    # Ljava/lang/Object;

    const-string v0, "string-ref"

    const-string v1, "string-set!"

    const-string v2, "string-length"

    .line 222
    nop

    .line 223
    invoke-static {p0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b5

    .line 224
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    .line 225
    .local v3, "str":Ljava/lang/Object;
    :try_start_15
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_18} :catch_ae

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v6, 0x0

    .line 224
    .local v5, "len":I
    nop

    .line 226
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/kawa/slib/genwrite;->lambda23revStringAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v3

    .line 227
    .local v6, "result":Ljava/lang/Object;
    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    :try_start_39
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3c} :catch_a7

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "k":Ljava/lang/Object;
    .local v7, "j":Ljava/lang/Object;
    :goto_50
    sget-object v8, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_a6

    .line 229
    nop

    .line 230
    :try_start_5f
    move-object v8, v6

    check-cast v8, Lgnu/lists/CharSeq;
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_62} :catch_9f

    const/4 v9, 0x2

    :try_start_63
    move-object v10, v2

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_6a
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_6a} :catch_98

    :try_start_6a
    move-object v11, v3

    check-cast v11, Ljava/lang/CharSequence;
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_6d} :catch_91

    :try_start_6d
    move-object v12, v7

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_6d .. :try_end_74} :catch_8a

    invoke-static {v11, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v8, v10, v9}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 231
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v8, v7, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v8, v2, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_50

    .line 230
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "str":Ljava/lang/Object;
    .end local v5    # "len":I
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "j":Ljava/lang/Object;
    .end local p0    # "l":Ljava/lang/Object;
    .end local p1    # "i":Ljava/lang/Object;
    :catch_8a
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v9, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_91
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_98
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v9, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_9f
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 228
    .restart local p0    # "l":Ljava/lang/Object;
    .restart local p1    # "i":Ljava/lang/Object;
    :cond_a6
    goto :goto_c0

    .line 227
    .end local p0    # "l":Ljava/lang/Object;
    .end local p1    # "i":Ljava/lang/Object;
    :catch_a7
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 225
    :catch_ae
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 233
    .restart local p0    # "l":Ljava/lang/Object;
    .restart local p1    # "i":Ljava/lang/Object;
    :cond_b5
    :try_start_b5
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_bc
    .catch Ljava/lang/ClassCastException; {:try_start_b5 .. :try_end_bc} :catch_c1

    invoke-static {v0}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_c0
    return-object v6

    .end local p0    # "l":Ljava/lang/Object;
    .end local p1    # "i":Ljava/lang/Object;
    :catch_c1
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "make-string"

    invoke-direct {v0, p0, v1, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_cb

    :goto_ca
    throw v0

    :goto_cb
    goto :goto_ca
.end method

.method public static reverseStringAppend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "l"    # Ljava/lang/Object;

    .line 220
    nop

    .line 222
    nop

    .line 235
    sget-object v0, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/kawa/slib/genwrite;->lambda23revStringAppend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 220
    invoke-static {p2}, Lgnu/kawa/slib/genwrite;->reverseStringAppend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 6
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    .line 220
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_15

    .line 6
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_15
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 6
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 220
    return-void
.end method
